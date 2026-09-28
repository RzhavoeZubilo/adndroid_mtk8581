.class public Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PairedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PairedAdapter"


# instance fields
.field private bluetoothDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/model/MyBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/app/Activity;

.field private handler:Landroid/os/Handler;

.field private layoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/model/MyBluetoothDevice;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;->handler:Landroid/os/Handler;

    .line 40
    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;->context:Landroid/app/Activity;

    .line 41
    iput-object p2, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;->bluetoothDevices:Ljava/util/List;

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;)Landroid/app/Activity;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;->context:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;)Landroid/os/Handler;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;->handler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;->bluetoothDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 12

    .line 59
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;->bluetoothDevices:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setting onBindViewHolder:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/autochips/bluetooth/util/StaticUtil;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PairedAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    check-cast p1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;

    .line 62
    iget-object v0, p1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->deviceName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    const/16 v2, 0xd

    const/16 v3, 0xb

    const/16 v4, 0x10

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v0, v1, :cond_0

    .line 64
    invoke-virtual {p2, v4}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getConnectState(I)I

    move-result v0

    if-ne v0, v9, :cond_0

    .line 66
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;->context:Landroid/app/Activity;

    sget v1, Lcom/autochips/bluetooth/setting/module/R$string;->item_paired_two:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    iget-object v1, p1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->stateTextView:Landroid/widget/TextView;

    new-array v10, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getBattery()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getSignal()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v9

    invoke-static {v0, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->delButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_2

    .line 69
    :cond_0
    invoke-virtual {p2, v4}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getConnectState(I)I

    move-result v0

    if-eq v0, v6, :cond_6

    .line 70
    invoke-virtual {p2, v2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getConnectState(I)I

    move-result v0

    if-eq v0, v6, :cond_6

    .line 71
    invoke-virtual {p2, v3}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getConnectState(I)I

    move-result v0

    if-ne v0, v6, :cond_1

    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual {p2, v4}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getConnectState(I)I

    move-result v0

    if-eq v0, v7, :cond_5

    .line 75
    invoke-virtual {p2, v2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getConnectState(I)I

    move-result v0

    if-eq v0, v7, :cond_5

    .line 76
    invoke-virtual {p2, v3}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getConnectState(I)I

    move-result v0

    if-ne v0, v7, :cond_2

    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getBondState()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 80
    iget-object v0, p1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->stateTextView:Landroid/widget/TextView;

    sget v1, Lcom/autochips/bluetooth/setting/module/R$string;->f_paired:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 81
    iget-object v0, p1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->delButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2

    .line 82
    :cond_3
    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getBondState()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 83
    iget-object v0, p1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->stateTextView:Landroid/widget/TextView;

    sget v1, Lcom/autochips/bluetooth/setting/module/R$string;->f_pairing:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 84
    iget-object v0, p1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->delButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2

    .line 86
    :cond_4
    iget-object v0, p1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->stateTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->delButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2

    .line 77
    :cond_5
    :goto_0
    iget-object v0, p1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->stateTextView:Landroid/widget/TextView;

    sget v1, Lcom/autochips/bluetooth/setting/module/R$string;->f_disconnecting:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 78
    iget-object v0, p1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->delButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2

    .line 72
    :cond_6
    :goto_1
    iget-object v0, p1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->stateTextView:Landroid/widget/TextView;

    sget v1, Lcom/autochips/bluetooth/setting/module/R$string;->f_connecting:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 73
    iget-object v0, p1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->delButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 89
    :goto_2
    invoke-virtual {p2, v3}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getConnectState(I)I

    move-result v0

    const-string v1, "A:%s"

    if-eq v0, v9, :cond_a

    if-eq v0, v5, :cond_9

    if-eq v0, v6, :cond_8

    if-eq v0, v7, :cond_7

    goto :goto_3

    .line 100
    :cond_7
    iget-object v0, p1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->a2dpState:Landroid/widget/TextView;

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;->context:Landroid/app/Activity;

    sget v11, Lcom/autochips/bluetooth/setting/module/R$string;->f_disconnecting:I

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v8

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 97
    :cond_8
    iget-object v0, p1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->a2dpState:Landroid/widget/TextView;

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;->context:Landroid/app/Activity;

    sget v11, Lcom/autochips/bluetooth/setting/module/R$string;->f_connecting:I

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v8

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 94
    :cond_9
    iget-object v0, p1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->a2dpState:Landroid/widget/TextView;

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;->context:Landroid/app/Activity;

    sget v11, Lcom/autochips/bluetooth/setting/module/R$string;->item_paired_four:I

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v8

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 91
    :cond_a
    iget-object v0, p1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->a2dpState:Landroid/widget/TextView;

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;->context:Landroid/app/Activity;

    sget v11, Lcom/autochips/bluetooth/setting/module/R$string;->item_paired_three:I

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v8

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    const/16 v0, 0x11

    .line 103
    invoke-virtual {p2, v0}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getConnectState(I)I

    move-result v0

    const-string v1, "P:%s"

    if-eq v0, v9, :cond_e

    if-eq v0, v5, :cond_d

    if-eq v0, v6, :cond_c

    if-eq v0, v7, :cond_b

    goto :goto_4

    .line 114
    :cond_b
    iget-object v0, p1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->pbapState:Landroid/widget/TextView;

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;->context:Landroid/app/Activity;

    sget v11, Lcom/autochips/bluetooth/setting/module/R$string;->f_disconnecting:I

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v8

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 111
    :cond_c
    iget-object v0, p1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->pbapState:Landroid/widget/TextView;

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;->context:Landroid/app/Activity;

    sget v11, Lcom/autochips/bluetooth/setting/module/R$string;->f_connecting:I

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v8

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 108
    :cond_d
    iget-object v0, p1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->pbapState:Landroid/widget/TextView;

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;->context:Landroid/app/Activity;

    sget v11, Lcom/autochips/bluetooth/setting/module/R$string;->item_paired_four:I

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v8

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 105
    :cond_e
    iget-object v0, p1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->pbapState:Landroid/widget/TextView;

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;->context:Landroid/app/Activity;

    sget v11, Lcom/autochips/bluetooth/setting/module/R$string;->item_paired_three:I

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v8

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :goto_4
    invoke-virtual {p2, v4}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getConnectState(I)I

    move-result v0

    const-string v1, "H:%s"

    if-eq v0, v9, :cond_12

    if-eq v0, v5, :cond_11

    if-eq v0, v6, :cond_10

    if-eq v0, v7, :cond_f

    goto :goto_5

    .line 128
    :cond_f
    iget-object v0, p1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->hfpState:Landroid/widget/TextView;

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;->context:Landroid/app/Activity;

    sget v10, Lcom/autochips/bluetooth/setting/module/R$string;->f_disconnecting:I

    invoke-virtual {v4, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 125
    :cond_10
    iget-object v0, p1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->hfpState:Landroid/widget/TextView;

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;->context:Landroid/app/Activity;

    sget v10, Lcom/autochips/bluetooth/setting/module/R$string;->f_connecting:I

    invoke-virtual {v4, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 122
    :cond_11
    iget-object v0, p1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->hfpState:Landroid/widget/TextView;

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;->context:Landroid/app/Activity;

    sget v10, Lcom/autochips/bluetooth/setting/module/R$string;->item_paired_four:I

    invoke-virtual {v4, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 119
    :cond_12
    iget-object v0, p1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->hfpState:Landroid/widget/TextView;

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;->context:Landroid/app/Activity;

    sget v10, Lcom/autochips/bluetooth/setting/module/R$string;->item_paired_three:I

    invoke-virtual {v4, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :goto_5
    invoke-virtual {p2, v2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getConnectState(I)I

    move-result v0

    const-string v1, "R:%s"

    if-eq v0, v9, :cond_16

    if-eq v0, v5, :cond_15

    if-eq v0, v6, :cond_14

    if-eq v0, v7, :cond_13

    goto :goto_6

    .line 142
    :cond_13
    iget-object v0, p1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->avrcpState:Landroid/widget/TextView;

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;->context:Landroid/app/Activity;

    sget v4, Lcom/autochips/bluetooth/setting/module/R$string;->f_disconnecting:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 139
    :cond_14
    iget-object v0, p1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->avrcpState:Landroid/widget/TextView;

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;->context:Landroid/app/Activity;

    sget v4, Lcom/autochips/bluetooth/setting/module/R$string;->f_connecting:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 136
    :cond_15
    iget-object v0, p1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->avrcpState:Landroid/widget/TextView;

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;->context:Landroid/app/Activity;

    sget v4, Lcom/autochips/bluetooth/setting/module/R$string;->item_paired_four:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 133
    :cond_16
    iget-object v0, p1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->avrcpState:Landroid/widget/TextView;

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;->context:Landroid/app/Activity;

    sget v4, Lcom/autochips/bluetooth/setting/module/R$string;->item_paired_three:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :goto_6
    iget-object v0, p1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->parentView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 146
    iget-object v0, p1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->delButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 147
    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getOperator()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    .line 148
    iget-object p1, p1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->operate:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    .line 150
    :cond_17
    iget-object v0, p1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->operate:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iget-object p1, p1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->operate:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getOperator()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 48
    new-instance p2, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;

    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/autochips/bluetooth/setting/module/R$layout;->item_paired:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;-><init>(Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;Landroid/view/View;)V

    return-object p2
.end method
