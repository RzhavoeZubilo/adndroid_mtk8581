# Handoff: ГУ ZLH (UIS8581A) завис в Fast boot после OTA 6.67 — восстановление с Windows

Документ для агента (и человека), который продолжит работу на ПК с Windows. Язык общения с владельцем — русский.

## 1. Устройство

- Магнитола BMW, производитель ZONGHENGTD (ZLH), SoC Unisoc **UIS8581A**, платформа `uis8581a2h10_Automotive`, Android 10 (`QP1A.190711.020`, userdebug/test-keys).
- Была прошивка `ZLH_BM_OS_6.27` (MCU `ZLH_BML240303A_8581`), дисплей 1920x720.
- Загрузчик показывает вверху слева надпись **«Fast boot»** и логотип. Других экранов нет.

## 2. Что произошло (хронология)

1. Собрана кастомная прошивка 6.67 (`work/new_667_firmware`, патчи CaroceanCanZH, CaroceanLauncher, CKXSystemInit).
2. Первая попытка: «Package verify failure» — zip не был подписан. Устройство доверяет только AOSP testkey (`/system/etc/security/otacerts.zip`). Исправлено: `tools/sign_ota.py` (whole-file подпись, SHA-1, detached PKCS#7).
3. Вторая попытка: подпись прошла, recovery записал `spl`, `spl_bk`, `uboot`, `uboot_bak`, `sml(_bak)`, `tos(_bak)`, `teecfg(_bak)`, `dtbo`, затем `product`, `vendor`, и упал на **system**: `E1001: Failed to update system image`, `Error in @/cache/recovery/block.map (status 7)`.
   - Причина: `system.transfer.list` (`new 2,0,402027`) не соответствовал `system.new.dat` (401329 блоков, собран по другому списку). Исправлено в `tools/build_ota.py`.
4. После падения `boot.img` не записан (в `updater-script` он пишется последним). Остались: новые загрузчики/dtbo/product/vendor, недописанная `system`, **старый `boot`**. Система не загружается, загрузчик уходит в fastboot.
5. Магнитола несколько раз перезагружалась, сама входила в recovery с командой `--wipe_data`, отформатировала `/data` («Data wipe complete. Rebooting») и снова ушла в «Fast boot». Меню recovery больше не появляется. Флешка в порту не помогает.
6. На Mac (Apple Silicon) при подключении кабеля к магнитоле в fastboot `system_profiler SPUSBDataType`, `ioreg` и `fastboot devices` пусты. Кабели проверены (data-кабель, два разных), порты USB1 и USB2 магнитолы пробованы.

## 3. Правильный пакет обновления (готов)

- Путь: `BMW_OS_8581_1920_720_6.67/HUTUpdate/os/update.zip` (копия: `work/new_667_firmware/update.zip`).
- Размер 1906806102 байт, SHA-1 `39bf1f4424864a9619c04cec21f56d1c898d9fda`.
- Проверка подписи: `python3 tools/sign_ota.py --verify <update.zip>` (нужен openssl).
- Пересборка: `python3 tools/build_ota.py work/new_667_firmware/unsigned_update.zip work/new_667_firmware/system.img <out.zip>` (нужен `brotli`).
- Эта же копия лежит на USB-флешке владельца (`HUTUpdate/os/update.zip`, плюс исправленные `update/system.*`).
- `updater-script` пишет разделы по путям `/dev/block/platform/soc/soc:ap-ahb/20600000.sdio/by-name/<name>` и `/dev/block/mmcblk0boot0|1`. `dynamic_partitions_op_list` меняет размеры `product`, `vendor`, `system` в super (system 1650896896 байт; образ 1646702592).

## 4. Цель

Вернуть магнитолу в рабочее состояние. Приоритеты:

1. Попасть в **recovery** и поставить `update.zip` (`Apply update from ADB`/`SD card`), либо
2. Получить доступ к fastboot/BROM и прошить разделы напрямую (`boot` из `update.zip`, затем остальное по необходимости), либо
3. Получить заводской образ восстановления от производителя/продавца.

## 5. Шаги на Windows

1. Поставить Android platform-tools (`adb`, `fastboot`). Подключить магнитолу кабелем, пока на экране «Fast boot». Если Windows не видит устройства, перезапустить зажигание и подключиться сразу после включения (окно подключения у загрузчика может быть коротким).
2. «Диспетчер устройств»: смотреть новое устройство (Android, Unisoc, Spreadtrum, «Unknown»), VID/PID (вероятно `18d1:d00d`, `1782:4d00`, `1782:4d10`). Если устройство «Unknown», поставить драйвер (Google USB Driver / Unisoc SPD driver, либо Zadig/WinUSB).
3. Если fastboot виден:
   - `fastboot devices`, `fastboot getvar all` (сохранить вывод в `docs/`);
   - `fastboot reboot recovery` (если не сработает: `fastboot oem reboot-recovery`, `fastboot reboot-recovery`);
   - в recovery: `adb devices` → `adb sideload update.zip`, либо выбрать файл с флешки.
   - Если recovery недоступен, но fastboot есть: записать `boot` из `update.zip` (`unzip update.zip boot.img; fastboot flash boot boot.img`) и проверить загрузку. Динамические разделы (`super`) fastboot u-boot может не принимать, `system.img` отдельно через fastboot без fastbootd прошить нельзя.
4. Если fastboot не виден ни на каком порту: подключение по USB, вероятно, невозможно из этого режима (порты магнитолы «хост»). Тогда:
   - Spreadtrum BROM/Research Download: драйвер SPD, утилита ResearchDownload/UpgradeDownload с FDL и PAC-пакетом прошивки. PAC и FDL для UIS8581A нужно получить у ZLH/продавца, самим их не подбирать вслепую;
   - вход в режим загрузки обычно требует test point на плате или специальной комбинации — только по схеме от производителя;
   - UART-консоль платы для чтения лога загрузчика.

## 6. Ограничения и осторожность

- Не пытаться «угадывать» комбинации кнопок и не закорачивать контакты без схемы.
- Не писать в `spl`, `uboot`, `sml`, `tos`, `teecfg` ничего, кроме содержимого штатного `update.zip` (они уже записаны версией 6.67, с резервными копиями `_bak`).
- Любые команды записи в разделы согласовывать с владельцем.
- Нельзя считать, что `/data` содержит что-либо: он отформатирован.
- Ничего не коммитить в репозиторий без просьбы владельца (`work/` и `*.zip` игнорируются git).

## 7. Информация для обращения в поддержку

- Производитель/прошивка: ZONGHENGTD, `ZLH_BM_OS_6.27`, MCU `ZLH_BML240303A_8581`, платформа `ZONGHENGTD-uis8581a2h10_Automotive`.
- SN `381002C0844E7900`, ID `0C28C2466FE95B6F80C33438D61483C3`, KEY `ZWLABCAB72` (с экрана «Об устройстве»).
- Симптом: после установки OTA через recovery остаётся «Fast boot», recovery недоступен, USB-подключения к fastboot нет.
