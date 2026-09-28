package com.carocean.navicar.util;

import android.util.Log;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes.dex */
public class ExcutorUtils {
    /* JADX WARN: Code duplicated, block: B:59:0x00ef A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:60:0x00f1 A[Catch: Exception -> 0x00ed, TryCatch #0 {Exception -> 0x00ed, blocks: (B:56:0x00e9, B:60:0x00f1, B:62:0x00f6), top: B:66:0x00e9 }] */
    /* JADX WARN: Code duplicated, block: B:62:0x00f6 A[Catch: Exception -> 0x00ed, TRY_LEAVE, TryCatch #0 {Exception -> 0x00ed, blocks: (B:56:0x00e9, B:60:0x00f1, B:62:0x00f6), top: B:66:0x00e9 }] */
    /* JADX WARN: Code duplicated, block: B:66:0x00e9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static void sudo(String[] strArr, AtcLogoUtils.LogoSetCallBack logoSetCallBack) {
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2;
        DataOutputStream dataOutputStream = null;
        try {
            try {
                Process processExec = Runtime.getRuntime().exec("su");
                DataOutputStream dataOutputStream2 = new DataOutputStream(processExec.getOutputStream());
                try {
                    bufferedReader = new BufferedReader(new InputStreamReader(processExec.getInputStream()));
                    try {
                        bufferedReader2 = new BufferedReader(new InputStreamReader(processExec.getErrorStream()));
                        try {
                            try {
                                for (String str : strArr) {
                                    dataOutputStream2.writeBytes(str + "\n");
                                }
                                dataOutputStream2.writeBytes("exit\n");
                                dataOutputStream2.flush();
                                while (true) {
                                    String line = bufferedReader.readLine();
                                    if (line == null) {
                                        break;
                                    } else {
                                        Log.i("SU", "result: " + line);
                                    }
                                }
                                while (true) {
                                    String line2 = bufferedReader2.readLine();
                                    if (line2 == null) {
                                        break;
                                    } else {
                                        Log.i("SU", "error: " + line2);
                                    }
                                }
                                processExec.waitFor();
                                processExec.exitValue();
                                if (logoSetCallBack != null) {
                                    logoSetCallBack.onFinish(AtcLogoUtils.LogoSetResult.SUCCESS);
                                }
                                dataOutputStream2.close();
                                bufferedReader.close();
                                bufferedReader2.close();
                            } catch (IOException | InterruptedException e) {
                                e = e;
                                dataOutputStream = dataOutputStream2;
                                try {
                                    e.printStackTrace();
                                    if (logoSetCallBack != null) {
                                        logoSetCallBack.onFinish(AtcLogoUtils.LogoSetResult.EXCEPTION);
                                    }
                                    if (dataOutputStream != null) {
                                        dataOutputStream.close();
                                    }
                                    if (bufferedReader != null) {
                                        bufferedReader.close();
                                    }
                                    if (bufferedReader2 != null) {
                                        bufferedReader2.close();
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    if (dataOutputStream != null) {
                                        try {
                                            dataOutputStream.close();
                                            if (bufferedReader != null) {
                                                bufferedReader.close();
                                            }
                                            if (bufferedReader2 != null) {
                                                bufferedReader2.close();
                                            }
                                        } catch (Exception e2) {
                                            e2.printStackTrace();
                                            throw th;
                                        }
                                    } else {
                                        if (bufferedReader != null) {
                                            bufferedReader.close();
                                        }
                                        if (bufferedReader2 != null) {
                                            bufferedReader2.close();
                                        }
                                    }
                                    throw th;
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            dataOutputStream = dataOutputStream2;
                            if (dataOutputStream != null) {
                                dataOutputStream.close();
                                if (bufferedReader != null) {
                                    bufferedReader.close();
                                }
                                if (bufferedReader2 != null) {
                                    bufferedReader2.close();
                                }
                            } else {
                                if (bufferedReader != null) {
                                    bufferedReader.close();
                                }
                                if (bufferedReader2 != null) {
                                    bufferedReader2.close();
                                }
                            }
                            throw th;
                        }
                    } catch (IOException | InterruptedException e3) {
                        e = e3;
                        bufferedReader2 = null;
                    } catch (Throwable th3) {
                        th = th3;
                        bufferedReader2 = null;
                    }
                } catch (IOException | InterruptedException e4) {
                    e = e4;
                    bufferedReader = null;
                    bufferedReader2 = null;
                } catch (Throwable th4) {
                    th = th4;
                    bufferedReader = null;
                    bufferedReader2 = null;
                }
            } catch (Exception e5) {
                e5.printStackTrace();
            }
        } catch (IOException | InterruptedException e6) {
            e = e6;
            bufferedReader = null;
            bufferedReader2 = null;
        } catch (Throwable th5) {
            th = th5;
            bufferedReader = null;
            bufferedReader2 = null;
        }
    }
}
