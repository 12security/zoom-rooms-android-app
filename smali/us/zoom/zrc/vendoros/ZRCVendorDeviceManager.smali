.class public Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;
.super Ljava/lang/Object;
.source "ZRCVendorDeviceManager.java"


# static fields
.field private static sInstance:Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;


# instance fields
.field private activationCodeReceiver:Landroid/content/BroadcastReceiver;

.field private pairingCodeReceiver:Landroid/content/BroadcastReceiver;

.field private pairingNotification:Lus/zoom/zrc/base/notification/INotification;

.field private waitingForLogin:Z

.field private waitingForPairing:Z

.field private webLoginNotification:Lus/zoom/zrc/base/notification/INotification;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager$1;-><init>(Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;)V

    iput-object v0, p0, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;->pairingCodeReceiver:Landroid/content/BroadcastReceiver;

    .line 40
    new-instance v0, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager$2;

    invoke-direct {v0, p0}, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager$2;-><init>(Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;)V

    iput-object v0, p0, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;->activationCodeReceiver:Landroid/content/BroadcastReceiver;

    .line 47
    new-instance v0, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager$3;

    invoke-direct {v0, p0}, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager$3;-><init>(Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;)V

    iput-object v0, p0, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;->pairingNotification:Lus/zoom/zrc/base/notification/INotification;

    .line 63
    new-instance v0, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager$4;

    invoke-direct {v0, p0}, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager$4;-><init>(Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;)V

    iput-object v0, p0, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;->webLoginNotification:Lus/zoom/zrc/base/notification/INotification;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;->onSystemPairingCodeReady()V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;->onSystemActivationCodeReady()V

    return-void
.end method

.method static synthetic access$202(Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;->waitingForPairing:Z

    return p1
.end method

.method static synthetic access$300(Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;->onWebLoginFinished(I)V

    return-void
.end method

.method static synthetic access$400(Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;->onUpgradeDeviceROMNotification(Ljava/lang/String;)V

    return-void
.end method

.method private getDeviceId()Ljava/lang/String;
    .locals 3

    .line 125
    invoke-static {}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getInstance()Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 130
    :cond_0
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isRunInNeatPad()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "neat-"

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "neat-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_1
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isRunInPolycom()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "poly-"

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "poly-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getInstance()Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;
    .locals 1

    .line 73
    sget-object v0, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;->sInstance:Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;

    invoke-direct {v0}, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;-><init>()V

    sput-object v0, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;->sInstance:Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;

    .line 76
    :cond_0
    sget-object v0, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;->sInstance:Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;

    return-object v0
.end method

.method private onSystemActivationCodeReady()V
    .locals 8

    .line 179
    invoke-static {}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getInstance()Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->supportsActivationCode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "This device do NOT support auto login!"

    .line 180
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 184
    :cond_0
    invoke-static {}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getInstance()Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getActivationCode()Ljava/lang/String;

    move-result-object v0

    .line 186
    iget-boolean v2, p0, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;->waitingForLogin:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const-string v2, "auto login in progress, ignore %s"

    .line 187
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 191
    :cond_1
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "received event activation code ready, but can\'t get from system"

    .line 192
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 196
    :cond_2
    invoke-static {}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getInstance()Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getWorkMode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const-string v2, ""

    goto :goto_0

    :pswitch_0
    const-string v2, "scheduling display"

    goto :goto_0

    :pswitch_1
    const-string v2, "controller"

    .line 210
    :goto_0
    iput-boolean v3, p0, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;->waitingForLogin:Z

    .line 212
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "ActivationCode"

    .line 213
    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "WorkMode"

    .line 214
    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-static {}, Lus/zoom/zrcsdk/util/ZRCTimeUtils;->getCurrentTimeStamp()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AutoSignInSequence"

    .line 216
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "onSystemActivationCodeReady code:%s, mode:%s, sequence:%s"

    const/4 v7, 0x3

    .line 218
    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v1

    aput-object v2, v7, v3

    const/4 v0, 0x2

    aput-object v5, v7, v0

    invoke-static {v6, v7}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    invoke-static {}, Lus/zoom/zrc/login/AutoLoginManager;->getInstance()Lus/zoom/zrc/login/AutoLoginManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lus/zoom/zrc/login/AutoLoginManager;->receiveCode(Landroid/os/Bundle;)V

    .line 221
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->WebLoginFinished:Lus/zoom/zrc/base/notification/ModelEvent;

    iget-object v2, p0, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;->webLoginNotification:Lus/zoom/zrc/base/notification/INotification;

    invoke-virtual {v0, p0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onSystemPairingCodeReady()V
    .locals 5

    .line 143
    invoke-static {}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getInstance()Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->supportsPairingCode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "This device do NOT support auto pair!"

    .line 144
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 148
    :cond_0
    invoke-static {}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getInstance()Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getPairingCode()Ljava/lang/String;

    move-result-object v0

    .line 150
    iget-boolean v2, p0, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;->waitingForPairing:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const-string v2, "auto pair in progress, ignore %s"

    .line 151
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 155
    :cond_1
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "received event pairing code ready, but can\'t get from system"

    .line 156
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    const/4 v2, 0x2

    .line 160
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v4

    if-eq v2, v4, :cond_3

    const-string v0, "ZRC is paired or logged in %s, ignore pairing code!"

    .line 161
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v3

    invoke-static {v3}, Lus/zoom/zrc/model/ZRCState;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    const/4 v2, -0x1

    .line 165
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrc/model/Model;->getLoginType()I

    move-result v4

    if-eq v2, v4, :cond_4

    const-string v0, "ZRC is paired or logged in %s, ignore pairing code!"

    .line 166
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->getLoginType()I

    move-result v3

    invoke-static {v3}, Lus/zoom/zrcsdk/model/LoginEmailType;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    const-string v2, "onSystemPairingCodeReady: %s"

    .line 170
    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-static {v2, v4}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    iput-boolean v3, p0, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;->waitingForPairing:Z

    .line 174
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v1

    .line 175
    invoke-static {v1, v0}, Lus/zoom/zrc/login/LoginActivity;->autoPairingWidthKey(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private onUpgradeDeviceROMNotification(Ljava/lang/String;)V
    .locals 3

    .line 238
    invoke-static {}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getInstance()Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->supportsAccessZoomCloud4Command()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 239
    invoke-static {p1}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "received upgrade device ROM notification, but with a empty url!"

    .line 240
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "onUpgradeDeviceROMNotification url:%s"

    const/4 v2, 0x1

    .line 242
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    invoke-static {}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getInstance()Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->accessZoomCloudForCommand(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "This device do not have capability ZRAPI_SYSTEM_CAP_ACCESS_ZOOM_CLOUD_4_COMMAND"

    .line 246
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private onWebLoginFinished(I)V
    .locals 5

    const/4 v0, 0x0

    .line 225
    iput-boolean v0, p0, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;->waitingForLogin:Z

    .line 227
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v1

    sget-object v2, Lus/zoom/zrc/base/notification/ModelEvent;->WebLoginFinished:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {v1, p0, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->removeNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;)V

    .line 229
    new-instance v1, Landroid/content/Intent;

    const-string v2, "us.zoom.zr.event.ZOOM_ROOMS_LOGIN_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "state"

    .line 230
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 232
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v2

    const-string v3, "onWebLoginFinished result:%s"

    const/4 v4, 0x1

    .line 233
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    invoke-static {v3, v4}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public release()V
    .locals 2

    .line 112
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    .line 114
    invoke-static {}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getInstance()Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->supportsPairingCode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;->pairingCodeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 117
    :cond_0
    invoke-static {}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getInstance()Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->supportsActivationCode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    iget-object v1, p0, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;->activationCodeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 121
    :cond_1
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->removeNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;)V

    return-void
.end method

.method public setup()V
    .locals 3

    .line 83
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    .line 85
    invoke-static {}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getInstance()Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->supportsSystemManager()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-direct {p0}, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 88
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v2

    invoke-virtual {v2, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->setVendorOSDeviceId(Ljava/lang/String;)V

    .line 92
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "us.zoom.zr.vendoros.event.PAIRING_CODE_READY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 93
    iget-object v2, p0, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;->pairingCodeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "us.zoom.zr.vendoros.event.ACTIVATION_CODE_READY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 96
    iget-object v2, p0, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;->activationCodeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->UpgradeDeviceROMNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v2, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager$5;

    invoke-direct {v2, p0}, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager$5;-><init>(Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;)V

    invoke-virtual {v0, p0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 107
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->QueryWithPairingCodeFinished:Lus/zoom/zrc/base/notification/ModelEvent;

    iget-object v2, p0, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;->pairingNotification:Lus/zoom/zrc/base/notification/INotification;

    invoke-virtual {v0, p0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 108
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->ConnectingFinished:Lus/zoom/zrc/base/notification/ModelEvent;

    iget-object v2, p0, Lus/zoom/zrc/vendoros/ZRCVendorDeviceManager;->pairingNotification:Lus/zoom/zrc/base/notification/INotification;

    invoke-virtual {v0, p0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    return-void
.end method
