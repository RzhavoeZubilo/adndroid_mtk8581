.class Lcom/autochips/bluetooth/ExtendUtil$1;
.super Ljava/lang/Object;
.source "ExtendUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/ExtendUtil;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/ExtendUtil;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/ExtendUtil;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/autochips/bluetooth/ExtendUtil$1;->this$0:Lcom/autochips/bluetooth/ExtendUtil;

    iput-object p2, p0, Lcom/autochips/bluetooth/ExtendUtil$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/autochips/bluetooth/ExtendUtil$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 69
    iget-object v0, p0, Lcom/autochips/bluetooth/ExtendUtil$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "navi.intent.action.ACTION_BLUETOOTH_SERVICE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x2

    const-string v7, "MCU_KEY_VALUE"

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_8

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BTServiceOnReceive cmdCode="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v10, p0, Lcom/autochips/bluetooth/ExtendUtil$1;->val$intent:Landroid/content/Intent;

    const-string v11, "CMD_CODE"

    invoke-virtual {v10, v11, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "ExtendUtil"

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BTServiceOnReceive MCU_KEY_VALUE="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v12, p0, Lcom/autochips/bluetooth/ExtendUtil$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v12, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/autochips/bluetooth/ExtendUtil$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v11, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 121
    :pswitch_1
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->syncTxzContacts()V

    goto/16 :goto_0

    .line 108
    :pswitch_2
    iget-object v0, p0, Lcom/autochips/bluetooth/ExtendUtil$1;->val$intent:Landroid/content/Intent;

    const-string v11, "bt.local.name"

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CMD_BT_SET_LOCAL_NAME:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {}, Lcom/autochips/bluetooth/info/BTStateManager;->getInstance()Lcom/autochips/bluetooth/info/BTStateManager;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/autochips/bluetooth/info/BTStateManager;->setLocalBTName(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 114
    :pswitch_3
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getSCOConnectState()I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 115
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->disConnectSCOAudio()V

    goto :goto_0

    .line 116
    :cond_0
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getSCOConnectState()I

    move-result v0

    if-ne v0, v6, :cond_1

    .line 117
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->connectSCOAudio()V

    goto :goto_0

    .line 97
    :pswitch_4
    invoke-static {}, Lcom/autochips/bluetooth/info/BTStateManager;->getInstance()Lcom/autochips/bluetooth/info/BTStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTStateManager;->closeBT()V

    goto :goto_0

    .line 100
    :pswitch_5
    invoke-static {}, Lcom/autochips/bluetooth/info/BTStateManager;->getInstance()Lcom/autochips/bluetooth/info/BTStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTStateManager;->openBT()V

    goto :goto_0

    .line 89
    :pswitch_6
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->redial()V

    goto :goto_0

    .line 85
    :pswitch_7
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->endCall()V

    goto :goto_0

    .line 93
    :pswitch_8
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->rejectCall()V

    goto :goto_0

    .line 75
    :pswitch_9
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->acceptCall()V

    goto :goto_0

    .line 79
    :pswitch_a
    iget-object v0, p0, Lcom/autochips/bluetooth/ExtendUtil$1;->val$intent:Landroid/content/Intent;

    const-string v10, "bt.call.phoneNumber"

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 80
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 81
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/autochips/bluetooth/info/BTCallManager;->call(Ljava/lang/String;)V

    .line 125
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/ExtendUtil$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    goto/16 :goto_1

    .line 157
    :cond_2
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->endCall()V

    goto/16 :goto_1

    .line 129
    :cond_3
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result v0

    if-eq v0, v6, :cond_4

    .line 130
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result v0

    if-eq v0, v3, :cond_4

    .line 131
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 132
    :cond_4
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->acceptCall()V

    goto/16 :goto_1

    .line 134
    :cond_5
    iget-object v0, p0, Lcom/autochips/bluetooth/ExtendUtil$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/autochips/bluetooth/util/StaticUtil;->isCurrentApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 136
    iget-object v0, p0, Lcom/autochips/bluetooth/ExtendUtil$1;->this$0:Lcom/autochips/bluetooth/ExtendUtil;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/ExtendUtil;->access$000(Lcom/autochips/bluetooth/ExtendUtil;I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 137
    iget-object v0, p0, Lcom/autochips/bluetooth/ExtendUtil$1;->this$0:Lcom/autochips/bluetooth/ExtendUtil;

    invoke-static {v0}, Lcom/autochips/bluetooth/ExtendUtil;->access$100(Lcom/autochips/bluetooth/ExtendUtil;)V

    goto/16 :goto_1

    .line 141
    :cond_6
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getConnectState()I

    move-result v0

    if-ne v0, v8, :cond_7

    move v1, v8

    .line 147
    :cond_7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 148
    iget-object v2, p0, Lcom/autochips/bluetooth/ExtendUtil$1;->val$context:Landroid/content/Context;

    const-class v3, Lcom/autochips/bluetooth/MainActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "BTFragmentId"

    .line 149
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 150
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 151
    iget-object v1, p0, Lcom/autochips/bluetooth/ExtendUtil$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 161
    :cond_8
    iget-object v0, p0, Lcom/autochips/bluetooth/ExtendUtil$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v10, "navi.intent.action.ACTION_BLUETOOTH_WINDOW_MOVE_TOP"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 162
    iget-object v0, p0, Lcom/autochips/bluetooth/ExtendUtil$1;->this$0:Lcom/autochips/bluetooth/ExtendUtil;

    iget-object v0, v0, Lcom/autochips/bluetooth/ExtendUtil;->naviCallDialog:Lcom/autochips/bluetooth/fragment/NaviCallDialog;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->moveWindowToTop()V

    goto/16 :goto_1

    .line 163
    :cond_9
    iget-object v0, p0, Lcom/autochips/bluetooth/ExtendUtil$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v10, "navi.intent.action.ACTION_MCU_KEY_COMMAND"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 164
    iget-object v0, p0, Lcom/autochips/bluetooth/ExtendUtil$1;->val$intent:Landroid/content/Intent;

    const/4 v10, -0x1

    invoke-virtual {v0, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v7, 0x30

    if-eq v0, v7, :cond_b

    const/16 v7, 0x31

    if-eq v0, v7, :cond_a

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 194
    :pswitch_b
    iget-object v0, p0, Lcom/autochips/bluetooth/ExtendUtil$1;->this$0:Lcom/autochips/bluetooth/ExtendUtil;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/ExtendUtil;->access$000(Lcom/autochips/bluetooth/ExtendUtil;I)Z

    goto :goto_1

    .line 191
    :pswitch_c
    iget-object v0, p0, Lcom/autochips/bluetooth/ExtendUtil$1;->this$0:Lcom/autochips/bluetooth/ExtendUtil;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/ExtendUtil;->access$000(Lcom/autochips/bluetooth/ExtendUtil;I)Z

    goto :goto_1

    .line 188
    :pswitch_d
    iget-object v0, p0, Lcom/autochips/bluetooth/ExtendUtil$1;->this$0:Lcom/autochips/bluetooth/ExtendUtil;

    invoke-static {v0, v4}, Lcom/autochips/bluetooth/ExtendUtil;->access$000(Lcom/autochips/bluetooth/ExtendUtil;I)Z

    goto :goto_1

    .line 185
    :pswitch_e
    iget-object v0, p0, Lcom/autochips/bluetooth/ExtendUtil$1;->this$0:Lcom/autochips/bluetooth/ExtendUtil;

    invoke-static {v0, v5}, Lcom/autochips/bluetooth/ExtendUtil;->access$000(Lcom/autochips/bluetooth/ExtendUtil;I)Z

    goto :goto_1

    .line 182
    :pswitch_f
    iget-object v0, p0, Lcom/autochips/bluetooth/ExtendUtil$1;->this$0:Lcom/autochips/bluetooth/ExtendUtil;

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/ExtendUtil;->access$000(Lcom/autochips/bluetooth/ExtendUtil;I)Z

    goto :goto_1

    .line 179
    :pswitch_10
    iget-object v0, p0, Lcom/autochips/bluetooth/ExtendUtil$1;->this$0:Lcom/autochips/bluetooth/ExtendUtil;

    invoke-static {v0, v2}, Lcom/autochips/bluetooth/ExtendUtil;->access$000(Lcom/autochips/bluetooth/ExtendUtil;I)Z

    goto :goto_1

    .line 176
    :pswitch_11
    iget-object v0, p0, Lcom/autochips/bluetooth/ExtendUtil$1;->this$0:Lcom/autochips/bluetooth/ExtendUtil;

    invoke-static {v0, v3}, Lcom/autochips/bluetooth/ExtendUtil;->access$000(Lcom/autochips/bluetooth/ExtendUtil;I)Z

    goto :goto_1

    .line 173
    :pswitch_12
    iget-object v0, p0, Lcom/autochips/bluetooth/ExtendUtil$1;->this$0:Lcom/autochips/bluetooth/ExtendUtil;

    invoke-static {v0, v6}, Lcom/autochips/bluetooth/ExtendUtil;->access$000(Lcom/autochips/bluetooth/ExtendUtil;I)Z

    goto :goto_1

    .line 170
    :pswitch_13
    iget-object v0, p0, Lcom/autochips/bluetooth/ExtendUtil$1;->this$0:Lcom/autochips/bluetooth/ExtendUtil;

    invoke-static {v0, v8}, Lcom/autochips/bluetooth/ExtendUtil;->access$000(Lcom/autochips/bluetooth/ExtendUtil;I)Z

    goto :goto_1

    .line 167
    :pswitch_14
    iget-object v0, p0, Lcom/autochips/bluetooth/ExtendUtil$1;->this$0:Lcom/autochips/bluetooth/ExtendUtil;

    invoke-static {v0, v9}, Lcom/autochips/bluetooth/ExtendUtil;->access$000(Lcom/autochips/bluetooth/ExtendUtil;I)Z

    goto :goto_1

    .line 201
    :cond_a
    iget-object v0, p0, Lcom/autochips/bluetooth/ExtendUtil$1;->this$0:Lcom/autochips/bluetooth/ExtendUtil;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/ExtendUtil;->access$000(Lcom/autochips/bluetooth/ExtendUtil;I)Z

    goto :goto_1

    .line 197
    :cond_b
    iget-object v0, p0, Lcom/autochips/bluetooth/ExtendUtil$1;->this$0:Lcom/autochips/bluetooth/ExtendUtil;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/ExtendUtil;->access$000(Lcom/autochips/bluetooth/ExtendUtil;I)Z

    :cond_c
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method
