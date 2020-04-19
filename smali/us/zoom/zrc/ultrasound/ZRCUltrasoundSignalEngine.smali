.class public Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;
.super Ljava/lang/Object;
.source "ZRCUltrasoundSignalEngine.java"

# interfaces
.implements Lus/zoom/zrc/model/AppStateMonitor$AppStateListener;
.implements Lus/zoom/zrc/model/AppEngine$IUltrasoundWhiteListListener;


# static fields
.field private static final ACTION_RESTART_ALARM:Ljava/lang/String; = "us.zoom.zrc.action.ZRCUltrasoundSignalEngine.RESTART"

.field static final PAIRING_CODE_WAITING:Ljava/lang/String; = "000000"

.field private static final SETTINGS_KEY_ULTRASOUND_SHARING:Ljava/lang/String; = "direct_sharing_with_ultrasound"

.field private static final TAG:Ljava/lang/String; = "ZRCUltrasoundSignalEngine"

.field private static sInstance:Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;


# instance fields
.field private mAudioReceiver:Landroid/content/BroadcastReceiver;

.field private mGlobalUIListener:Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListener;

.field private mHandler:Landroid/os/Handler;

.field private mHdmiPlugin:Z

.field private mHeadsetPlugin:Z

.field private mIPresentationEvent:Lus/zoom/zrc/model/AppEngine$IPresentationEvent;

.field private mIWebPullCallBackEvent:Lus/zoom/zrc/model/AppEngine$IWebPullCallBackEvent;

.field private mIZRPtEvent:Lus/zoom/zrc/model/AppEngine$IZRPtEvent;

.field private mLoginEvent:Lus/zoom/zrc/model/AppEngine$ILoginEvent;

.field private mMeetingEvent:Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

.field private mPlayer:Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;

.field private mRestartUltrasoundIntent:Landroid/app/PendingIntent;

.field private mRestartUltrasoundReceiver:Landroid/content/BroadcastReceiver;

.field private mShutDownReceiver:Landroid/content/BroadcastReceiver;

.field private mToken:Ljava/lang/Object;

.field private mUltrasoundDisabled:Z

.field private mWhiteList:Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;

.field private modelPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mHeadsetPlugin:Z

    .line 77
    iput-boolean v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mHdmiPlugin:Z

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mToken:Ljava/lang/Object;

    .line 86
    new-instance v0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$1;-><init>(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;)V

    iput-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mShutDownReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    new-instance v0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$2;

    invoke-direct {v0, p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$2;-><init>(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;)V

    iput-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mGlobalUIListener:Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListener;

    .line 113
    new-instance v0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$3;

    invoke-direct {v0, p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$3;-><init>(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;)V

    iput-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mLoginEvent:Lus/zoom/zrc/model/AppEngine$ILoginEvent;

    .line 147
    new-instance v0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$4;

    invoke-direct {v0, p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$4;-><init>(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;)V

    iput-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mMeetingEvent:Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    .line 170
    new-instance v0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$5;

    invoke-direct {v0, p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$5;-><init>(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;)V

    iput-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mIPresentationEvent:Lus/zoom/zrc/model/AppEngine$IPresentationEvent;

    .line 187
    new-instance v0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$6;

    invoke-direct {v0, p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$6;-><init>(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;)V

    iput-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mIWebPullCallBackEvent:Lus/zoom/zrc/model/AppEngine$IWebPullCallBackEvent;

    .line 199
    new-instance v0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$7;

    invoke-direct {v0, p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$7;-><init>(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;)V

    iput-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mIZRPtEvent:Lus/zoom/zrc/model/AppEngine$IZRPtEvent;

    .line 207
    new-instance v0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$8;

    invoke-direct {v0, p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$8;-><init>(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;)V

    iput-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mAudioReceiver:Landroid/content/BroadcastReceiver;

    .line 227
    new-instance v0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$9;

    invoke-direct {v0, p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$9;-><init>(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;)V

    iput-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->modelPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    .line 239
    invoke-static {}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;->getInstance()Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mWhiteList:Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->stopUltrasound()V

    return-void
.end method

.method static synthetic access$1000(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->setupRestartUltrasoundAlarm()V

    return-void
.end method

.method static synthetic access$1100(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;)Landroid/os/Handler;
    .locals 0

    .line 58
    iget-object p0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->checkAndPlaySharePairingCode()V

    return-void
.end method

.method static synthetic access$300(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->checkAndPlayFeedback()V

    return-void
.end method

.method static synthetic access$400(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->onParingCodeChanged()V

    return-void
.end method

.method static synthetic access$500(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->onLoginInfoChanged()V

    return-void
.end method

.method static synthetic access$600(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mHeadsetPlugin:Z

    return p0
.end method

.method static synthetic access$602(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mHeadsetPlugin:Z

    return p1
.end method

.method static synthetic access$700(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mHdmiPlugin:Z

    return p0
.end method

.method static synthetic access$702(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mHdmiPlugin:Z

    return p1
.end method

.method static synthetic access$800(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->onUltrasoundPlayerCandidateDeviceChanged()V

    return-void
.end method

.method static synthetic access$900(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;)Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;
    .locals 0

    .line 58
    iget-object p0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mPlayer:Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;

    return-object p0
.end method

.method private checkAndPlayFeedback()V
    .locals 4

    .line 436
    invoke-virtual {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->isSupportedDevice()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 437
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->isUiActive()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 438
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->isControllerMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 443
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->isUltrasoundPlayerCandidateDevice()Z

    move-result v0

    if-nez v0, :cond_1

    .line 444
    sget-object v0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->TAG:Ljava/lang/String;

    const-string v1, "This is NOT the candidate ultrasound player"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 445
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->stopUltrasound()V

    return-void

    .line 449
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_3

    iget-boolean v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mHeadsetPlugin:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mHdmiPlugin:Z

    if-eqz v0, :cond_3

    .line 452
    :cond_2
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->stopUltrasound()V

    return-void

    .line 456
    :cond_3
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getParticipantList()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object v0

    .line 457
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->getPairingCode()Ljava/lang/String;

    move-result-object v1

    .line 458
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->isUltrasoundDisabled()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    if-eqz v0, :cond_5

    .line 459
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_5

    .line 463
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mPlayer:Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->setMaxLoopCount(I)V

    .line 464
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mPlayer:Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;

    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mToken:Ljava/lang/Object;

    sget-object v2, Lus/zoom/ultrasound/ZRCUltrasoundAction;->FEEDBACK_DETECT:Lus/zoom/ultrasound/ZRCUltrasoundAction;

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->play(Ljava/lang/Object;Lus/zoom/ultrasound/ZRCUltrasoundAction;Ljava/lang/String;)Z

    :cond_5
    return-void

    .line 439
    :cond_6
    :goto_0
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->stopUltrasound()V

    return-void
.end method

.method private checkAndPlaySharePairingCode()V
    .locals 6

    .line 379
    invoke-static {}, Lus/zoom/zrcsdk/util/ZRCNativeBuildConfig;->buildForUltrasoundPlayerStressTest()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 380
    invoke-virtual {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->isSupportedDevice()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 381
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->isUltrasoundDisabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 382
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->isUiActive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 383
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->isControllerMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->isPairedWithoutLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->stopUltrasound()V

    return-void

    .line 393
    :cond_1
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->isUltrasoundPlayerCandidateDevice()Z

    move-result v0

    if-nez v0, :cond_2

    .line 394
    sget-object v0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->TAG:Ljava/lang/String;

    const-string v2, "This is NOT the candidate ultrasound player"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->stopUltrasound()V

    return-void

    .line 399
    :cond_2
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getOperationTimeStatus()Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->isShouldDimScreenFromZR()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 400
    sget-object v0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->TAG:Ljava/lang/String;

    const-string v2, "Out of operation time, do not play ultrasound"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->stopUltrasound()V

    return-void

    .line 405
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_6

    iget-boolean v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mHeadsetPlugin:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mHdmiPlugin:Z

    if-eqz v0, :cond_6

    .line 408
    :cond_4
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->stopUltrasound()V

    return-void

    .line 384
    :cond_5
    :goto_0
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->stopUltrasound()V

    return-void

    .line 413
    :cond_6
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v0

    .line 414
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->getPairingCode()Ljava/lang/String;

    move-result-object v2

    .line 416
    iget-object v3, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mPlayer:Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;

    invoke-virtual {v3, v1}, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->setMaxLoopCount(I)V

    const/4 v3, 0x5

    if-ne v3, v0, :cond_7

    .line 417
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 418
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mPlayer:Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;

    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mToken:Ljava/lang/Object;

    sget-object v3, Lus/zoom/ultrasound/ZRCUltrasoundAction;->PAIRCODE_PRE_MEETING_BROADCAST:Lus/zoom/ultrasound/ZRCUltrasoundAction;

    invoke-virtual {v0, v1, v3, v2}, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->play(Ljava/lang/Object;Lus/zoom/ultrasound/ZRCUltrasoundAction;Ljava/lang/String;)Z

    goto :goto_1

    :cond_7
    const/4 v3, 0x7

    if-ne v3, v0, :cond_8

    .line 419
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 420
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mPlayer:Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;

    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mToken:Ljava/lang/Object;

    sget-object v3, Lus/zoom/ultrasound/ZRCUltrasoundAction;->PAIRCODE_INMEETING_BROADCAST:Lus/zoom/ultrasound/ZRCUltrasoundAction;

    invoke-virtual {v0, v1, v3, v2}, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->play(Ljava/lang/Object;Lus/zoom/ultrasound/ZRCUltrasoundAction;Ljava/lang/String;)Z

    goto :goto_1

    :cond_8
    const/4 v3, 0x6

    if-ne v3, v0, :cond_9

    .line 422
    invoke-static {v2}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 423
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mPlayer:Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;

    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mToken:Ljava/lang/Object;

    sget-object v2, Lus/zoom/ultrasound/ZRCUltrasoundAction;->PAIRCODE_PRE_MEETING_BROADCAST:Lus/zoom/ultrasound/ZRCUltrasoundAction;

    const-string v3, "000000"

    invoke-virtual {v0, v1, v2, v3}, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->play(Ljava/lang/Object;Lus/zoom/ultrasound/ZRCUltrasoundAction;Ljava/lang/String;)Z

    goto :goto_1

    .line 426
    :cond_9
    sget-object v3, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->TAG:Ljava/lang/String;

    const-string v4, "stop ultrasound, appState=%s, pairingCode=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Lus/zoom/zrc/model/ZRCState;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v0, 0x1

    aput-object v2, v5, v0

    invoke-static {v3, v4, v5}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    invoke-static {}, Lus/zoom/zrcsdk/util/ZRCNativeBuildConfig;->buildForUltrasoundPlayerStressTest()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 428
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mPlayer:Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;

    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mToken:Ljava/lang/Object;

    sget-object v2, Lus/zoom/ultrasound/ZRCUltrasoundAction;->PAIRCODE_PRE_MEETING_BROADCAST:Lus/zoom/ultrasound/ZRCUltrasoundAction;

    const-string v3, "000000"

    invoke-virtual {v0, v1, v2, v3}, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->play(Ljava/lang/Object;Lus/zoom/ultrasound/ZRCUltrasoundAction;Ljava/lang/String;)Z

    goto :goto_1

    .line 430
    :cond_a
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->stopUltrasound()V

    :cond_b
    :goto_1
    return-void
.end method

.method public static declared-synchronized getInstance()Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;
    .locals 2

    const-class v0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;

    monitor-enter v0

    .line 243
    :try_start_0
    sget-object v1, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->sInstance:Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;

    if-nez v1, :cond_0

    .line 244
    new-instance v1, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;

    invoke-direct {v1}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;-><init>()V

    sput-object v1, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->sInstance:Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;

    .line 246
    :cond_0
    sget-object v1, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->sInstance:Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getPairingCode()Ljava/lang/String;
    .locals 1

    .line 358
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAirPlayBlackMagicStatus()Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;

    move-result-object v0

    .line 359
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->getDirectPresentationPairingCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isControllerMode()Z
    .locals 2

    .line 375
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->getWorkMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isUiActive()Z
    .locals 1

    .line 369
    invoke-static {}, Lus/zoom/androidlib/app/ZMActivity;->getFrontActivity()Lus/zoom/androidlib/app/ZMActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMActivity;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isUltrasoundDisabled()Z
    .locals 1

    .line 363
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getLoginInfo()Lus/zoom/zrcsdk/model/LoginInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/LoginInfo;->isUltrasonicDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isUltrasoundPlayerCandidateDevice()Z
    .locals 2

    .line 612
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsPlayUltrasound()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsMultiControllers()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 617
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getUltrasoundPlayerCandidateDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 619
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    return v0

    .line 622
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private onLoginInfoChanged()V
    .locals 4

    .line 341
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->isUltrasoundDisabled()Z

    move-result v0

    .line 342
    iget-boolean v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mUltrasoundDisabled:Z

    if-eq v0, v1, :cond_0

    .line 343
    sget-object v1, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoginInfoChanged ultrasoundDisabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    iput-boolean v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mUltrasoundDisabled:Z

    .line 345
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->checkAndPlaySharePairingCode()V

    :cond_0
    return-void
.end method

.method private onParingCodeChanged()V
    .locals 0

    .line 337
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->checkAndPlaySharePairingCode()V

    return-void
.end method

.method private onUltrasoundPlayerCandidateDeviceChanged()V
    .locals 0

    .line 626
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->checkAndPlaySharePairingCode()V

    return-void
.end method

.method private releaseRestartUltrasoundAlarm()V
    .locals 5

    .line 594
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    .line 595
    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mRestartUltrasoundIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v1, "alarm"

    .line 596
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    if-eqz v1, :cond_0

    .line 598
    iget-object v3, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mRestartUltrasoundIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 600
    :cond_0
    sget-object v1, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->TAG:Ljava/lang/String;

    const-string v3, "releaseRestartUltrasoundAlarm failed!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 602
    :goto_0
    iput-object v2, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mRestartUltrasoundIntent:Landroid/app/PendingIntent;

    .line 604
    :cond_1
    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mRestartUltrasoundReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    .line 605
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 606
    iput-object v2, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mRestartUltrasoundReceiver:Landroid/content/BroadcastReceiver;

    :cond_2
    return-void
.end method

.method private setupRestartUltrasoundAlarm()V
    .locals 7

    .line 531
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    .line 533
    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mRestartUltrasoundReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 534
    new-instance v1, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$10;

    invoke-direct {v1, p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$10;-><init>(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;)V

    iput-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mRestartUltrasoundReceiver:Landroid/content/BroadcastReceiver;

    .line 558
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "us.zoom.zrc.action.ZRCUltrasoundSignalEngine.RESTART"

    .line 559
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.DATE_CHANGED"

    .line 560
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    .line 561
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 562
    iget-object v2, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mRestartUltrasoundReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 566
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 567
    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    const/16 v3, 0xb

    const/4 v4, 0x0

    .line 568
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    .line 569
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    .line 570
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    .line 571
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 572
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    .line 573
    invoke-virtual {v2, v1, v3}, Ljava/util/Calendar;->add(II)V

    .line 576
    :cond_1
    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mRestartUltrasoundIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_2

    .line 577
    new-instance v1, Landroid/content/Intent;

    const-string v5, "us.zoom.zrc.action.ZRCUltrasoundSignalEngine.RESTART"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x8000000

    invoke-static {v0, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mRestartUltrasoundIntent:Landroid/app/PendingIntent;

    :cond_2
    const-string v1, "alarm"

    .line 580
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-eqz v0, :cond_4

    .line 582
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-ge v1, v5, :cond_3

    .line 583
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mRestartUltrasoundIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v5, v6, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 585
    :cond_3
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mRestartUltrasoundIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v5, v6, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 587
    :goto_0
    sget-object v0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setup restart ultrasound player at time:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lus/zoom/zrcsdk/util/ZRCTimeUtils;->logTimeInMillis(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 589
    :cond_4
    sget-object v0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->TAG:Ljava/lang/String;

    const-string v1, "setupRestartUltrasoundAlarm failed!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private stopUltrasound()V
    .locals 2

    .line 469
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mPlayer:Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;

    invoke-virtual {v0}, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mPlayer:Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;

    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mToken:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->stop(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private updateUltrasoundCapability()V
    .locals 3

    .line 518
    invoke-virtual {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->isSupportedDevice()Z

    move-result v0

    .line 519
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getControllerDeviceCapability()Lus/zoom/zrcsdk/model/ZRCControllerDeviceCapability;

    move-result-object v1

    .line 520
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCControllerDeviceCapability;->get_ultrasound_capability()Z

    move-result v2

    if-eq v0, v2, :cond_0

    .line 521
    invoke-virtual {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->isSupportedDevice()Z

    move-result v2

    invoke-virtual {v1, v2}, Lus/zoom/zrcsdk/model/ZRCControllerDeviceCapability;->set_ultrasound_capability(Z)V

    .line 522
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->updateDeviceCapability()V

    if-eqz v0, :cond_0

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateUltrasoundCapability: it\'s supported device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;->ME:Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 302
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mIZRPtEvent:Lus/zoom/zrc/model/AppEngine$IZRPtEvent;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppEngine;->removeZRPtEventListener(Lus/zoom/zrc/model/AppEngine$IZRPtEvent;)V

    .line 303
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mLoginEvent:Lus/zoom/zrc/model/AppEngine$ILoginEvent;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppEngine;->removeLoginListener(Lus/zoom/zrc/model/AppEngine$ILoginEvent;)V

    .line 304
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mMeetingEvent:Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppEngine;->removeZRMeetingEventListener(Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;)V

    .line 305
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mIPresentationEvent:Lus/zoom/zrc/model/AppEngine$IPresentationEvent;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppEngine;->removePresentationListener(Lus/zoom/zrc/model/AppEngine$IPresentationEvent;)V

    .line 306
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->removeUltrasoundWhiteListListener(Lus/zoom/zrc/model/AppEngine$IUltrasoundWhiteListListener;)V

    .line 307
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mIWebPullCallBackEvent:Lus/zoom/zrc/model/AppEngine$IWebPullCallBackEvent;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppEngine;->removeWebPullCallBackListener(Lus/zoom/zrc/model/AppEngine$IWebPullCallBackEvent;)V

    .line 308
    invoke-static {}, Lus/zoom/zrc/model/AppStateMonitor;->getInstance()Lus/zoom/zrc/model/AppStateMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppStateMonitor;->removeAppStateListener(Lus/zoom/zrc/model/AppStateMonitor$AppStateListener;)V

    .line 309
    invoke-static {}, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->getInstance()Lus/zoom/zrc/base/app/ZRCUIElementsManager;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mGlobalUIListener:Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListener;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->removeListener(Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListener;)V

    .line 310
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->modelPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 312
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mPlayer:Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;

    invoke-virtual {v0}, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->release()V

    .line 314
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isRunInCrestronTSW()Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mAudioReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/ZRCApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 317
    :cond_0
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mShutDownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/ZRCApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 319
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mWhiteList:Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;

    invoke-virtual {v0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;->release()V

    .line 322
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->releaseRestartUltrasoundAlarm()V

    return-void
.end method

.method public init()V
    .locals 3

    .line 250
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mWhiteList:Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;

    invoke-virtual {v0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;->setup()V

    .line 251
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mIZRPtEvent:Lus/zoom/zrc/model/AppEngine$IZRPtEvent;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppEngine;->addZRPtEventListener(Lus/zoom/zrc/model/AppEngine$IZRPtEvent;)V

    .line 253
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mLoginEvent:Lus/zoom/zrc/model/AppEngine$ILoginEvent;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppEngine;->addLoginListener(Lus/zoom/zrc/model/AppEngine$ILoginEvent;)V

    .line 255
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mIPresentationEvent:Lus/zoom/zrc/model/AppEngine$IPresentationEvent;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppEngine;->addPresentationListener(Lus/zoom/zrc/model/AppEngine$IPresentationEvent;)V

    .line 257
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mMeetingEvent:Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppEngine;->addZRMeetingEventListener(Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;)V

    .line 259
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->addUltrasoundWhiteListListener(Lus/zoom/zrc/model/AppEngine$IUltrasoundWhiteListListener;)V

    .line 261
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mIWebPullCallBackEvent:Lus/zoom/zrc/model/AppEngine$IWebPullCallBackEvent;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppEngine;->addWebPullCallBackListener(Lus/zoom/zrc/model/AppEngine$IWebPullCallBackEvent;)V

    .line 263
    invoke-static {}, Lus/zoom/zrc/model/AppStateMonitor;->getInstance()Lus/zoom/zrc/model/AppStateMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppStateMonitor;->addAppStateListener(Lus/zoom/zrc/model/AppStateMonitor$AppStateListener;)V

    .line 265
    invoke-static {}, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->getInstance()Lus/zoom/zrc/base/app/ZRCUIElementsManager;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mGlobalUIListener:Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListener;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->addListener(Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListener;)V

    .line 267
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->modelPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 269
    invoke-static {}, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->getInstance()Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mPlayer:Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;

    .line 270
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isRunInCrestronMercury()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mPlayer:Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->setStreamType(I)V

    .line 274
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->checkAndPlaySharePairingCode()V

    .line 276
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 278
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isRunInCrestronTSW()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.HEADSET_PLUG"

    .line 279
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    const-string v1, "android.intent.action.HEADSET_PLUG"

    .line 282
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.action.HDMI_AUDIO_PLUG"

    .line 283
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    :cond_1
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mAudioReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lus/zoom/zrc/ZRCApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 289
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 290
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.QUICKBOOT_POWEROFF"

    .line 291
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mShutDownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lus/zoom/zrc/ZRCApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 294
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->isUltrasoundDisabled()Z

    move-result v0

    iput-boolean v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mUltrasoundDisabled:Z

    .line 298
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->setupRestartUltrasoundAlarm()V

    return-void
.end method

.method public isDebugConfigEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 350
    invoke-virtual {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->isSupportedDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mPlayer:Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;

    invoke-virtual {v0}, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSupportedDevice()Z
    .locals 4

    .line 500
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mWhiteList:Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;

    invoke-virtual {v0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;->isSupportedDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->isDebugConfigEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 503
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isRunInYealinkCP960()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 505
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isYealinkCP960HasUltrasoundCapability()Z

    move-result v0

    if-nez v0, :cond_2

    .line 508
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This CP960 has NO capability for ultrasound: hwversion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->getHardwareVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return v0
.end method

.method public onAppStateChanged(II)V
    .locals 0

    .line 327
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->checkAndPlaySharePairingCode()V

    return-void
.end method

.method public onUltrasoundWhiteListUpdated([Ljava/lang/String;)V
    .locals 0

    .line 332
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->updateUltrasoundCapability()V

    .line 333
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->checkAndPlaySharePairingCode()V

    return-void
.end method

.method public setUltrasoundSharingEnabled(Z)V
    .locals 3

    .line 475
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    const-string v1, "zrc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/ZRCApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 476
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "direct_sharing_with_ultrasound"

    .line 477
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 478
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 479
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 481
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->updateUltrasoundCapability()V

    if-eqz p1, :cond_0

    .line 484
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->checkAndPlaySharePairingCode()V

    goto :goto_0

    .line 486
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->stopUltrasound()V

    :goto_0
    return-void
.end method

.method public shouldDisableVolumeChange()Z
    .locals 1

    .line 354
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->mPlayer:Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;

    invoke-virtual {v0}, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->shouldMaxStreamVolumeWhenPlaying()Z

    move-result v0

    return v0
.end method
