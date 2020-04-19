.class public Lus/zoom/zrc/model/RoomSystemDialSessionHelper;
.super Ljava/lang/Object;
.source "RoomSystemDialSessionHelper.java"


# static fields
.field private static final AUTO_END_RUNNABLE_TIME:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "RoomSystemDialSessionHelper"

.field private static instance:Lus/zoom/zrc/model/RoomSystemDialSessionHelper;


# instance fields
.field private autoEndRunnable:Ljava/lang/Runnable;

.field public lastSuccessData:Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mConfApp:Lus/zoom/zrcsdk/ConfApp;

.field private mPtApp:Lus/zoom/zrcsdk/PTApp;

.field private mainHandler:Landroid/os/Handler;

.field private model:Lus/zoom/zrc/model/Model;


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    .line 44
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->mPtApp:Lus/zoom/zrcsdk/PTApp;

    .line 45
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->model:Lus/zoom/zrc/model/Model;

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->mainHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->lastSuccessData:Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    .line 51
    new-instance v0, Lus/zoom/zrc/model/RoomSystemDialSessionHelper$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper$1;-><init>(Lus/zoom/zrc/model/RoomSystemDialSessionHelper;)V

    iput-object v0, p0, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->autoEndRunnable:Ljava/lang/Runnable;

    .line 93
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    .line 94
    new-instance v1, Lus/zoom/zrc/model/RoomSystemDialSessionHelper$2;

    invoke-direct {v1, p0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper$2;-><init>(Lus/zoom/zrc/model/RoomSystemDialSessionHelper;)V

    .line 136
    sget-object v2, Lus/zoom/zrc/base/notification/ModelEvent;->OnCallStatus:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {v0, p0, v2, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 137
    sget-object v2, Lus/zoom/zrc/base/notification/ModelEvent;->OnMeetingExitedNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {v0, p0, v2, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 138
    sget-object v2, Lus/zoom/zrc/base/notification/ModelEvent;->ParticipantChanged:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {v0, p0, v2, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 139
    sget-object v2, Lus/zoom/zrc/base/notification/ModelEvent;->OnRoomSystemCallingStatus:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {v0, p0, v2, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 140
    sget-object v2, Lus/zoom/zrc/base/notification/ModelEvent;->OnInviteRoomSystemManuallyResult:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {v0, p0, v2, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 141
    sget-object v2, Lus/zoom/zrc/base/notification/ModelEvent;->ConnectionClosed:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {v0, p0, v2, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 142
    sget-object v2, Lus/zoom/zrc/base/notification/ModelEvent;->UpdateRoomSystemCallingUserInfo:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {v0, p0, v2, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 143
    sget-object v2, Lus/zoom/zrc/base/notification/UserEvent;->EnterSipCall:Lus/zoom/zrc/base/notification/UserEvent;

    invoke-virtual {v0, p0, v2, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 144
    sget-object v2, Lus/zoom/zrc/base/notification/ModelEvent;->OnAskToJoinThirdPartyMeeting:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {v0, p0, v2, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 145
    sget-object v2, Lus/zoom/zrc/base/notification/ModelEvent;->OnUpdateAirPlayBlackMagicStatus:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {v0, p0, v2, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 146
    sget-object v2, Lus/zoom/zrc/base/notification/ModelEvent;->InSilentModeStateChanged:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {v0, p0, v2, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 147
    sget-object v2, Lus/zoom/zrc/base/notification/ModelEvent;->OnGoingToBeInMeetingNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {v0, p0, v2, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/model/RoomSystemDialSessionHelper;)Z
    .locals 0

    .line 38
    invoke-direct {p0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->checkToEnd()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/model/RoomSystemDialSessionHelper;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->checkAndExecuteWaitingCallRoomSystem()V

    return-void
.end method

.method static synthetic access$200(Lus/zoom/zrc/model/RoomSystemDialSessionHelper;Ljava/util/List;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->onParticipantChanged(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lus/zoom/zrc/model/RoomSystemDialSessionHelper;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->onRoomSystemCallingStatus(I)V

    return-void
.end method

.method static synthetic access$400(Lus/zoom/zrc/model/RoomSystemDialSessionHelper;Z)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->onInviteRoomSystemManuallyResult(Z)V

    return-void
.end method

.method static synthetic access$500(Lus/zoom/zrc/model/RoomSystemDialSessionHelper;ILjava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->onRoomSystemCallingUserInfo(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lus/zoom/zrc/model/RoomSystemDialSessionHelper;Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->onUpdateAirPlayBlackMagicStatus(Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;)V

    return-void
.end method

.method static synthetic access$700(Lus/zoom/zrc/model/RoomSystemDialSessionHelper;Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->onAskToJoinThirdPartyMeeting(Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;)V

    return-void
.end method

.method static synthetic access$800(Lus/zoom/zrc/model/RoomSystemDialSessionHelper;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->onSelfInSilentModeChanged()V

    return-void
.end method

.method private cancelByExpel()V
    .locals 3

    .line 349
    invoke-virtual {p0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getSessionStatus()Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    move-result-object v0

    .line 350
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getUserId()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RoomSystemDialSessionHelper"

    const-string v1, "cancelByExpel() called:userId == 0"

    const/4 v2, 0x0

    .line 352
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/16 v1, 0x78

    .line 355
    invoke-virtual {p0, v1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->setRoomSystemStatusAndNotify(I)V

    .line 356
    iget-object v1, p0, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    invoke-virtual {v1, v0}, Lus/zoom/zrcsdk/ConfApp;->expelUser(I)I

    return-void
.end method

.method private checkAndExecuteWaitingCallRoomSystem()V
    .locals 2

    .line 288
    invoke-virtual {p0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getSessionStatus()Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getStatus()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    return-void

    .line 290
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->doCallRoomSystem()V

    return-void
.end method

.method private checkParticipantInSilentMode(Lus/zoom/zrcsdk/model/ZRCParticipant;)V
    .locals 1

    .line 547
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isInSilentMode()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 550
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getSessionStatus()Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getSituation()I

    move-result p1

    const/16 v0, 0x12c

    if-eq p1, v0, :cond_1

    .line 556
    invoke-virtual {p0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->forceEndRoomSystemUISession()V

    goto :goto_0

    :cond_1
    const/16 p1, 0x3f2

    .line 553
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->setRoomSystemStatusAndNotify(I)V

    :goto_0
    return-void
.end method

.method private checkParticipantLeft(Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;)Z
    .locals 3

    .line 524
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;->getEvent()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 527
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getDefault()Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getSessionStatus()Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    move-result-object p1

    .line 528
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getSituation()I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_3

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_3

    const/16 v2, 0x12c

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 531
    :cond_1
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getStatus()I

    move-result p1

    const/16 v1, 0x78

    if-ne p1, v1, :cond_2

    const/16 p1, 0x2711

    .line 532
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->setRoomSystemStatusAndNotify(I)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x3f2

    .line 534
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->setRoomSystemStatusAndNotify(I)V

    goto :goto_0

    :cond_3
    const/16 p1, 0x270f

    .line 539
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->setRoomSystemStatusAndNotify(I)V

    :goto_0
    return v0
.end method

.method private checkToEnd()Z
    .locals 3

    .line 588
    invoke-virtual {p0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getSessionStatus()Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    move-result-object v0

    .line 589
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getSituation()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 590
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getStatus()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x2711

    .line 591
    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->setRoomSystemStatusAndNotify(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private doCallRoomSystem()V
    .locals 4

    .line 294
    invoke-virtual {p0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getSessionStatus()Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getStatus()I

    move-result v1

    .line 296
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->canCall()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x6e

    .line 298
    invoke-virtual {p0, v1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->setRoomSystemStatusAndNotify(I)V

    .line 299
    iget-object v1, p0, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getAddressToCall()Ljava/lang/String;

    move-result-object v2

    .line 300
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getProtocolType()I

    move-result v0

    .line 299
    invoke-virtual {v1, v2, v0}, Lus/zoom/zrcsdk/ConfApp;->inviteLegacyRoomSystemWithIpOrE164Number(Ljava/lang/String;I)I

    goto :goto_0

    :cond_0
    const-string v0, "RoomSystemDialSessionHelper"

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndExecuteWaitingCallRoomSystem() called with wrong status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static declared-synchronized getDefault()Lus/zoom/zrc/model/RoomSystemDialSessionHelper;
    .locals 2

    const-class v0, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    monitor-enter v0

    .line 85
    :try_start_0
    sget-object v1, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->instance:Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    invoke-direct {v1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;-><init>()V

    sput-object v1, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->instance:Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    .line 88
    :cond_0
    sget-object v1, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->instance:Lus/zoom/zrc/model/RoomSystemDialSessionHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private newRoomSystemSession(ILus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;)V
    .locals 3

    const-string v0, "RoomSystemDialSessionHelper"

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newRoomSystemSession() called with: situation = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    new-instance v0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;-><init>()V

    .line 218
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->setSituation(I)V

    const/4 p1, -0x1

    .line 219
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->setStatus(I)V

    if-eqz p2, :cond_0

    .line 221
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getIpOrE164Number()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->setIpOrE164Number(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getDtmfKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->setDtmfKey(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getServiceProvider()I

    move-result p1

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->setServiceProvider(I)V

    .line 224
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getProtocolType()I

    move-result p1

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->setProtocolType(I)V

    .line 226
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/Model;->setRoomSystemSessionStatus(Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;)V

    return-void
.end method

.method private onAskToJoinThirdPartyMeeting(Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 574
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getSessionStatus()Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 575
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->isInUISession()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 576
    :cond_1
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getOriginalThirdPartyMeeting()Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0x2711

    .line 578
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->setRoomSystemStatusAndNotify(I)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method private onInviteRoomSystemManuallyResult(Z)V
    .locals 3

    .line 406
    invoke-virtual {p0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getSessionStatus()Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    move-result-object v0

    .line 407
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getStatus()I

    move-result v1

    const/16 v2, 0x6e

    if-eq v1, v2, :cond_2

    const/16 v2, 0x78

    if-eq v1, v2, :cond_0

    const-string p1, "RoomSystemDialSessionHelper"

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInviteRoomSystemManuallyResult() called with: currentStatus = ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move p1, v1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/16 p1, 0x270f

    goto :goto_0

    .line 416
    :cond_1
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getPreviousStatus()I

    move-result p1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const/16 p1, 0x270e

    goto :goto_0

    :cond_3
    const/4 p1, 0x3

    :goto_0
    if-ne p1, v1, :cond_4

    return-void

    .line 423
    :cond_4
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->setRoomSystemStatusAndNotify(I)V

    return-void
.end method

.method private onParticipantChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;",
            ">;)V"
        }
    .end annotation

    .line 499
    invoke-virtual {p0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getSessionStatus()Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    move-result-object v0

    .line 500
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->isInUISession()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 503
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getUserId()I

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 507
    :cond_1
    invoke-static {p1, v1}, Lus/zoom/zrcsdk/model/ZRCUserChangedEntityUtils;->getById(Ljava/util/List;I)Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 511
    :cond_2
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->setZrcUserChangedEntity(Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;)V

    .line 512
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->checkParticipantLeft(Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 515
    :cond_3
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;->getParticipant()Lus/zoom/zrcsdk/model/ZRCParticipant;

    move-result-object p1

    if-nez p1, :cond_4

    const-string p1, "RoomSystemDialSessionHelper"

    const-string v0, "ParticipantChanged() called with: participant == null"

    const/4 v1, 0x0

    .line 517
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 520
    :cond_4
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->checkParticipantInSilentMode(Lus/zoom/zrcsdk/model/ZRCParticipant;)V

    return-void
.end method

.method private onRoomSystemCallingStatus(I)V
    .locals 4

    .line 427
    invoke-virtual {p0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getSessionStatus()Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    move-result-object v0

    .line 428
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->isCallingStarted()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "RoomSystemDialSessionHelper"

    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRoomSystemCallingStatus() called with: status = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], but the current status = ["

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getStatus()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 432
    :cond_0
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->setRoomSystemStatusAndNotify(I)V

    return-void
.end method

.method private onRoomSystemCallingUserInfo(ILjava/lang/String;)V
    .locals 5

    .line 438
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "RoomSystemDialSessionHelper"

    const-string p2, "onRoomSystemCallingUserInfo() called with: meetingInfo == null"

    .line 440
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 443
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isWebinar()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 447
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getSessionStatus()Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    move-result-object v2

    .line 449
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getStatus()I

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "RoomSystemDialSessionHelper"

    .line 450
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRoomSystemCallingUserInfo() called with: userId = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], userName = ["

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], but the current status = ["

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getStatus()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    .line 450
    invoke-static {v0, p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    const/4 v3, 0x0

    .line 455
    invoke-virtual {v2, v3}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->setZrcUserChangedEntity(Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;)V

    .line 456
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isWaitingRoom()Z

    move-result v0

    if-nez v0, :cond_3

    .line 457
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->setParticipantDataReceived(ILjava/lang/String;)V

    return-void

    .line 460
    :cond_3
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getParticipantList()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/ZRCParticipantList;->getParticipantByUserId(I)Lus/zoom/zrcsdk/model/ZRCParticipant;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v2, "RoomSystemDialSessionHelper"

    .line 462
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRoomSystemCallingUserInfo() called with: userId = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], but can not find participant"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 464
    :cond_4
    invoke-virtual {p0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getSessionStatus()Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    move-result-object v2

    .line 465
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getSituation()I

    move-result v2

    const/16 v3, 0x64

    if-eq v2, v3, :cond_8

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_8

    const/16 v1, 0x12c

    if-eq v2, v1, :cond_5

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_7

    .line 475
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isInSilentMode()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/16 p1, 0x3f2

    .line 478
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->setRoomSystemStatusAndNotify(I)V

    goto :goto_1

    .line 476
    :cond_7
    :goto_0
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->setParticipantDataReceived(ILjava/lang/String;)V

    goto :goto_1

    :cond_8
    if-eqz v0, :cond_9

    .line 469
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isInSilentMode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 470
    :cond_9
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p1, v2, v1

    invoke-virtual {v0, v2}, Lus/zoom/zrc/model/Model;->requestPutOutSilentMode([I)Z

    .line 472
    :cond_a
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->setParticipantDataReceived(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method private onSelfInSilentModeChanged()V
    .locals 1

    .line 492
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isInSilentMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 495
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->forceEndRoomSystemUISession()V

    return-void
.end method

.method private onUpdateAirPlayBlackMagicStatus(Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 564
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isAirHostClientConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 565
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isDirectPresentationConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 566
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isSharingBlackMagic()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    return-void

    .line 569
    :cond_2
    invoke-direct {p0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->checkToEnd()Z

    return-void
.end method

.method private realCancel()V
    .locals 4

    .line 334
    invoke-virtual {p0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getSessionStatus()Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->canCancelCall()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x78

    .line 337
    invoke-virtual {p0, v1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->setRoomSystemStatusAndNotify(I)V

    .line 338
    iget-object v1, p0, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    .line 339
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getIpOrE164Number()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getProtocolType()I

    move-result v0

    .line 338
    invoke-virtual {v1, v2, v0}, Lus/zoom/zrcsdk/ConfApp;->cancelInvitingLegacyRoomSystemWithIpOrE164Number(Ljava/lang/String;I)I

    goto :goto_0

    :cond_0
    const-string v1, "RoomSystemDialSessionHelper"

    .line 341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelRoomSystem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private setParticipantDataReceived(ILjava/lang/String;)V
    .locals 1

    .line 485
    invoke-virtual {p0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getSessionStatus()Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    move-result-object v0

    .line 486
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->setUserId(I)V

    .line 487
    invoke-virtual {v0, p2}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->setUserName(Ljava/lang/String;)V

    const/16 p1, 0x3e9

    .line 488
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->setRoomSystemStatusAndNotify(I)V

    return-void
.end method

.method public static supportDialDtmf()Z
    .locals 1

    .line 80
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsH323Dtmf()Z

    move-result v0

    return v0
.end method

.method public static supportInviteRoomSystemAndDialPreMeeting()Z
    .locals 4

    .line 61
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsCrcCalloutOnly()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isCrcCalloutOnlyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 64
    :goto_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->isStandaloneZRP()Z

    move-result v3

    if-nez v3, :cond_2

    .line 65
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->isStandaloneDigitalSignage()Z

    move-result v3

    if-nez v3, :cond_2

    .line 66
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->isH323Enabled()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 67
    :goto_1
    invoke-static {}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->supportDialDtmf()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public static supportInviteRoomSystemInMeeting()Z
    .locals 4

    .line 71
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    .line 72
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsCrcCalloutOnly()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isCrcCalloutOnlyEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isCallingRoomSystemEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    return v2
.end method


# virtual methods
.method public cancelRoomSystem()V
    .locals 4

    .line 310
    invoke-virtual {p0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getSessionStatus()Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getSituation()I

    move-result v1

    const/16 v2, 0x12c

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 313
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getStatus()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3e9

    if-eq v1, v2, :cond_1

    const/16 v2, 0x270e

    if-eq v1, v2, :cond_2

    const-string v1, "RoomSystemDialSessionHelper"

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelRoomSystem() called:status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getStatus()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 320
    :cond_1
    invoke-direct {p0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->cancelByExpel()V

    goto :goto_0

    .line 316
    :cond_2
    invoke-direct {p0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->realCancel()V

    :goto_0
    return-void
.end method

.method public checkRoomSystemOnMeetingEnd()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 373
    iput-object v0, p0, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->lastSuccessData:Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    const/16 v0, 0x2711

    .line 374
    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->setRoomSystemStatusAndNotify(I)V

    return-void
.end method

.method public endRoomSystem()V
    .locals 2

    .line 363
    invoke-virtual {p0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getSessionStatus()Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getStatus()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 365
    iget-object v0, p0, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->model:Lus/zoom/zrc/model/Model;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->exitMeeting(Z)Z

    goto :goto_0

    :cond_0
    const/16 v0, 0x2711

    .line 367
    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->setRoomSystemStatusAndNotify(I)V

    :goto_0
    return-void
.end method

.method public forceEndRoomSystemUISession()V
    .locals 1

    const/16 v0, 0x2711

    .line 382
    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->setRoomSystemStatusAndNotify(I)V

    return-void
.end method

.method public getOrNewInviteRoomSystemSession()V
    .locals 4

    .line 230
    invoke-virtual {p0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getSessionStatus()Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getSituation()I

    move-result v1

    const/16 v2, 0x12c

    if-ne v1, v2, :cond_1

    .line 232
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getStatus()I

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getStatus()I

    move-result v1

    const/16 v3, 0x3e9

    if-eq v1, v3, :cond_0

    .line 234
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getStatus()I

    move-result v1

    const/16 v3, 0x2711

    if-eq v1, v3, :cond_0

    .line 235
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getStatus()I

    move-result v0

    const/16 v1, 0x3f2

    if-ne v0, v1, :cond_2

    .line 236
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->lastSuccessData:Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    invoke-direct {p0, v2, v0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->newRoomSystemSession(ILus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;)V

    goto :goto_0

    .line 239
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->lastSuccessData:Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    invoke-direct {p0, v2, v0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->newRoomSystemSession(ILus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getSessionStatus()Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;
    .locals 1

    .line 151
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getRoomSystemSessionStatus()Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    move-result-object v0

    return-object v0
.end method

.method public newRoomSystemSession(I)V
    .locals 1

    const/4 v0, 0x0

    .line 212
    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->newRoomSystemSession(ILus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;)V

    return-void
.end method

.method newRoomSystemSession(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 4

    const-string v0, "RoomSystemDialSessionHelper"

    const-string v1, "newRoomSystemSession() called with: zrcThirdPartyMeeting = [*]"

    const/4 v2, 0x0

    .line 178
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getThirdPartyMeeting()Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->getServiceProvider()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    .line 187
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->getSipAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    if-ne v1, v2, :cond_2

    .line 195
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->getH323Address()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 197
    :cond_2
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->getSipAddress()Ljava/lang/String;

    move-result-object v2

    .line 199
    :goto_1
    new-instance v3, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    invoke-direct {v3}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;-><init>()V

    .line 200
    invoke-virtual {v3, v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->setOriginalThirdPartyMeeting(Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;)V

    .line 201
    invoke-virtual {v3, p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->setOriginalMeetingListItem(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    const/16 p1, 0x64

    .line 202
    invoke-virtual {v3, p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->setSituation(I)V

    const/4 p1, -0x1

    .line 203
    invoke-virtual {v3, p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->setStatus(I)V

    .line 204
    invoke-virtual {v3, v1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->setProtocolType(I)V

    .line 205
    invoke-virtual {v3, v2}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->setIpOrE164Number(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->getMeetingNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->setDtmfKey(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->getServiceProvider()I

    move-result p1

    invoke-virtual {v3, p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->setServiceProvider(I)V

    .line 208
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1, v3}, Lus/zoom/zrc/model/Model;->setRoomSystemSessionStatus(Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;)V

    return-void
.end method

.method public sendDTMF(Ljava/lang/String;)I
    .locals 3

    .line 387
    invoke-virtual {p0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getSessionStatus()Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    move-result-object v0

    .line 388
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getUserId()I

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "RoomSystemDialSessionHelper"

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDTMF() called with: roomStatus.getUserId() = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getUserId()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, -0x1

    return p1

    .line 392
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getUserId()I

    move-result v0

    invoke-virtual {v1, p1, v0}, Lus/zoom/zrcsdk/ConfApp;->sendDTMF(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public setRoomSystemStatusAndNotify(I)V
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 156
    invoke-virtual {p0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getSessionStatus()Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getStatus()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x2711

    if-ne v1, v3, :cond_0

    const-string v0, "RoomSystemDialSessionHelper"

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRoomSystemStatusAndNotify() called when the session is ended, with: status = ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v1, "RoomSystemDialSessionHelper"

    .line 161
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRoomSystemStatusAndNotify() called with: previous status = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getPreviousStatus()I

    move-result v5

    invoke-static {v5}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->statusToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]; current status = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getStatus()I

    move-result v5

    invoke-static {v5}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->statusToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]; new status = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-static {p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->statusToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "];"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    .line 161
    invoke-static {v1, v4, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    if-eq p1, v3, :cond_1

    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->autoEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 167
    :cond_2
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->cloneBasicData()Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->lastSuccessData:Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    .line 174
    :goto_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->setRoomSystemSessionStatus(I)V

    return-void
.end method

.method public startAutoEnd()V
    .locals 4

    .line 398
    iget-object v0, p0, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->autoEndRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stopAutoEnd()V
    .locals 2

    .line 402
    iget-object v0, p0, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->autoEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public tryCallRoomSystem()V
    .locals 4

    .line 260
    invoke-virtual {p0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getSessionStatus()Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->isDataValidToCall()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v0, "RoomSystemDialSessionHelper"

    const-string v1, "tryCallRoomSystem() called:!roomStatus.isDataValidToCall"

    .line 262
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 265
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getMeetingStatus()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 266
    invoke-direct {p0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->doCallRoomSystem()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x64

    .line 268
    invoke-virtual {p0, v1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->setRoomSystemStatusAndNotify(I)V

    .line 271
    invoke-virtual {p0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getSessionStatus()Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getSituation()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_2

    const/16 v2, 0x1e

    .line 275
    :cond_2
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getOriginalMeetingListItem()Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->mPtApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v1, v2, v0}, Lus/zoom/zrcsdk/PTApp;->startInstantMeeting(ILus/zoom/zrcsdk/model/ZRCMeetingListItem;)I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x2711

    .line 279
    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->setRoomSystemStatusAndNotify(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public tryCallRoomSystem(ILjava/lang/String;)V
    .locals 2

    .line 249
    invoke-virtual {p0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getSessionStatus()Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getSituation()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    .line 250
    invoke-virtual {p0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getSessionStatus()Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->setProtocolType(I)V

    .line 251
    invoke-virtual {p0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getSessionStatus()Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    move-result-object p1

    invoke-virtual {p1, p2}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->setIpOrE164Number(Ljava/lang/String;)V

    .line 253
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->tryCallRoomSystem()V

    return-void
.end method
