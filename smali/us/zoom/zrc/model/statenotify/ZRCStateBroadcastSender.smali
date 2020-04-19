.class public Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;
.super Lus/zoom/zrc/model/statenotify/StateListenerAdapter;
.source "ZRCStateBroadcastSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$VendorOSQueryReceiver;,
        Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$EndCallReceiver;,
        Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$QueryZoomInfoReceiver;
    }
.end annotation


# static fields
.field private static instance:Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;


# instance fields
.field private endCallReceiver:Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$EndCallReceiver;

.field private exitingMeeting:Z

.field private inCallState:I

.field private incomingCallState:I

.field private muteState:Ljava/lang/Boolean;

.field private pairState:I

.field private propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

.field private queryReceiver:Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$QueryZoomInfoReceiver;

.field private vendorOSQueryReceiver:Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$VendorOSQueryReceiver;

.field private zrpState:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 104
    invoke-direct {p0}, Lus/zoom/zrc/model/statenotify/StateListenerAdapter;-><init>()V

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->inCallState:I

    .line 78
    iput v0, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->incomingCallState:I

    .line 79
    iput v0, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->pairState:I

    .line 81
    iput v0, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->zrpState:I

    .line 84
    new-instance v0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$QueryZoomInfoReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$QueryZoomInfoReceiver;-><init>(Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$1;)V

    iput-object v0, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->queryReceiver:Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$QueryZoomInfoReceiver;

    .line 85
    new-instance v0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$VendorOSQueryReceiver;

    invoke-direct {v0, p0, v1}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$VendorOSQueryReceiver;-><init>(Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$1;)V

    iput-object v0, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->vendorOSQueryReceiver:Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$VendorOSQueryReceiver;

    .line 87
    new-instance v0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$EndCallReceiver;

    invoke-direct {v0, p0, v1}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$EndCallReceiver;-><init>(Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$1;)V

    iput-object v0, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->endCallReceiver:Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$EndCallReceiver;

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->exitingMeeting:Z

    .line 90
    new-instance v0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$1;-><init>(Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;)V

    iput-object v0, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    return-void
.end method

.method static synthetic access$1000(Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;)I
    .locals 0

    .line 73
    invoke-direct {p0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->getCurrentInCallStateForQuery()I

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;ZI)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendVendorOSInCallStateEvent(ZI)V

    return-void
.end method

.method static synthetic access$300(Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->onModelPropertyChanged(I)V

    return-void
.end method

.method static synthetic access$400(Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->exitingMeeting:Z

    return p0
.end method

.method static synthetic access$402(Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->exitingMeeting:Z

    return p1
.end method

.method static synthetic access$500(Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendEnterInCallState()V

    return-void
.end method

.method static synthetic access$600(Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendLeaveInCallState()V

    return-void
.end method

.method static synthetic access$700(Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;II)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->onEnterState(II)V

    return-void
.end method

.method static synthetic access$800(Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;Z)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendAudioMuteStateEvent(Z)V

    return-void
.end method

.method static synthetic access$900(Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendEventsForQuery(I)V

    return-void
.end method

.method private addNotificationForInCallStateBroadcast()V
    .locals 3

    .line 176
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/UserEvent;->ShowPresentation:Lus/zoom/zrc/base/notification/UserEvent;

    new-instance v2, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$3;

    invoke-direct {v2, p0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$3;-><init>(Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;)V

    invoke-virtual {v0, p0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 183
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/UserEvent;->StopPresentation:Lus/zoom/zrc/base/notification/UserEvent;

    new-instance v2, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$4;

    invoke-direct {v2, p0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$4;-><init>(Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;)V

    invoke-virtual {v0, p0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 190
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->OnEnterState:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v2, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$5;

    invoke-direct {v2, p0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$5;-><init>(Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;)V

    invoke-virtual {v0, p0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 199
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->InSilentModeStateChanged:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v2, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$6;

    invoke-direct {v2, p0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$6;-><init>(Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;)V

    invoke-virtual {v0, p0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    return-void
.end method

.method private getCurrentInCallStateForQuery()I
    .locals 2

    .line 537
    invoke-direct {p0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->hasOtherInCallState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 539
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static getInstance()Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;
    .locals 1

    .line 98
    sget-object v0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->instance:Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;

    invoke-direct {v0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;-><init>()V

    sput-object v0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->instance:Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;

    .line 101
    :cond_0
    sget-object v0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->instance:Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;

    return-object v0
.end method

.method private hasIncomingCall()Z
    .locals 1

    .line 323
    invoke-static {}, Lus/zoom/androidlib/app/ZMActivity;->getFrontActivity()Lus/zoom/androidlib/app/ZMActivity;

    move-result-object v0

    instance-of v0, v0, Lus/zoom/zrc/incoming/IncomingCallActivity;

    return v0
.end method

.method private hasOtherInCallState()Z
    .locals 4

    .line 327
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x7

    if-eq v1, v3, :cond_0

    const/4 v3, 0x6

    if-eq v1, v3, :cond_0

    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    return v2

    .line 336
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingStatus()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    .line 338
    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    invoke-static {}, Lus/zoom/zrc/ActivityLauncher;->isPresentationDisplayed()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private isInCallState()Z
    .locals 2

    .line 343
    iget v0, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->inCallState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isMyAudioMuted()Z
    .locals 4

    .line 446
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x1

    if-eq v1, v0, :cond_0

    .line 447
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    invoke-static {}, Lus/zoom/zrc/ActivityLauncher;->isPresentationDisplayed()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 452
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAudioStatus()Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    move-result-object v0

    .line 453
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/SipCallInfoList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 454
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->isSipMuted()Z

    move-result v0

    return v0

    .line 455
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v3

    if-ne v1, v3, :cond_4

    .line 456
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->isInSilentMode()Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    if-eqz v0, :cond_3

    .line 460
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->isMuted()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 463
    :cond_4
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isCurrentSelectedMicrophoneMuted()Z

    move-result v0

    return v0
.end method

.method private isPairedWithZoomRoom()Z
    .locals 2

    .line 361
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v1, v0, :cond_1

    const/4 v1, 0x6

    if-eq v1, v0, :cond_1

    const/4 v1, 0x7

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private onEnterState(II)V
    .locals 3

    const-string v0, "onEnterState oldState %s >> newState %s "

    const/4 v1, 0x2

    .line 255
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Lus/zoom/zrc/model/ZRCState;->toString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1}, Lus/zoom/zrc/model/ZRCState;->toString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    invoke-direct {p0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->isPairedWithZoomRoom()Z

    move-result p2

    invoke-direct {p0, p2}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendPairStateChanged(I)V

    const/4 p2, 0x6

    if-ne p1, p2, :cond_0

    .line 260
    invoke-direct {p0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendConnectingCallState()V

    :cond_0
    return-void
.end method

.method private onModelPropertyChanged(I)V
    .locals 2

    .line 309
    sget v0, Landroidx/databinding/library/baseAdapters/BR;->audioStatus:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_2

    sget v0, Landroidx/databinding/library/baseAdapters/BR;->sipMuted:I

    if-eq v0, p1, :cond_2

    sget v0, Landroidx/databinding/library/baseAdapters/BR;->currentSelectedMicrophoneMuted:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 312
    :cond_0
    sget v0, Landroidx/databinding/library/baseAdapters/BR;->sipCallInfos:I

    if-ne v0, p1, :cond_3

    .line 313
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sipCall changed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/SipCallInfoList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 315
    invoke-direct {p0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendEnterInCallState()V

    goto :goto_1

    .line 317
    :cond_1
    invoke-direct {p0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendLeaveInCallState()V

    goto :goto_1

    .line 310
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "audioStatus or sipCallMuted changed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->isMyAudioMuted()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    invoke-direct {p0, v1}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendAudioMuteStateEvent(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method private sendAudioMuteStateEvent(Z)V
    .locals 5

    .line 469
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getWorkMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    return-void

    .line 473
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->isMyAudioMuted()Z

    move-result v0

    if-nez p1, :cond_1

    .line 475
    iget-object p1, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->muteState:Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-ne p1, v0, :cond_1

    return-void

    .line 478
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->muteState:Ljava/lang/Boolean;

    .line 480
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object p1

    .line 481
    new-instance v2, Landroid/content/Intent;

    const-string v3, "us.zoom.zrc.action.MIC_MUTE_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "state"

    .line 483
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 484
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p1, "send broadcast %s, state=%s"

    const/4 v2, 0x2

    .line 485
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "us.zoom.zrc.action.MIC_MUTE_STATE_CHANGED"

    aput-object v4, v2, v3

    invoke-static {v0}, Lus/zoom/zrc/model/statenotify/ZRCStateIntents;->muteState2String(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {p1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private sendConnectingCallState()V
    .locals 2

    .line 243
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getWorkMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    return-void

    .line 247
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->isInCallState()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x2

    .line 251
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendInCallStateEvent(I)V

    return-void
.end method

.method private sendEnterInCallState()V
    .locals 2

    .line 222
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getWorkMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    return-void

    .line 225
    :cond_0
    invoke-direct {p0, v1}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendInCallStateEvent(I)V

    const/4 v0, 0x0

    .line 226
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendAudioMuteStateEvent(Z)V

    return-void
.end method

.method private sendEnterInComingState()V
    .locals 2

    .line 208
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getWorkMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    return-void

    .line 211
    :cond_0
    invoke-direct {p0, v1}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendIncomingCallStateEvent(I)V

    return-void
.end method

.method private sendEventsForQuery(I)V
    .locals 1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 531
    :pswitch_0
    iget p1, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->zrpState:I

    invoke-direct {p0, v0, p1}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendZRPStateEvent(ZI)V

    goto :goto_0

    .line 528
    :pswitch_1
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendAudioMuteStateEvent(Z)V

    goto :goto_0

    .line 522
    :pswitch_2
    invoke-direct {p0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->getCurrentInCallStateForQuery()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendInCallStateEvent(ZI)V

    goto :goto_0

    .line 525
    :pswitch_3
    invoke-direct {p0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->hasIncomingCall()Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendIncomingCallStateEvent(ZI)V

    goto :goto_0

    .line 519
    :pswitch_4
    invoke-direct {p0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->isPairedWithZoomRoom()Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendPairStateChanged(ZI)V

    goto :goto_0

    .line 512
    :pswitch_5
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendEventsForQuery(I)V

    const/4 p1, 0x3

    .line 513
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendEventsForQuery(I)V

    const/4 p1, 0x2

    .line 514
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendEventsForQuery(I)V

    const/4 p1, 0x4

    .line 515
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendEventsForQuery(I)V

    const/4 p1, 0x5

    .line 516
    :try_start_0
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendEventsForQuery(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendInCallStateEvent(I)V
    .locals 1

    const/4 v0, 0x0

    .line 388
    invoke-direct {p0, v0, p1}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendInCallStateEvent(ZI)V

    return-void
.end method

.method private sendInCallStateEvent(ZI)V
    .locals 4

    if-nez p1, :cond_0

    .line 392
    iget v0, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->inCallState:I

    if-ne v0, p2, :cond_0

    return-void

    .line 395
    :cond_0
    iput p2, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->inCallState:I

    .line 396
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string p1, "sendInCallStateEvent no context to send!"

    .line 398
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 401
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "us.zoom.zrc.action.IN_CALL_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "state"

    .line 402
    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 403
    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 405
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendVendorOSInCallStateEvent(ZI)V

    const-string p1, "send broadcast %s, state=%s"

    const/4 v0, 0x2

    .line 407
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "us.zoom.zrc.action.IN_CALL_STATE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Lus/zoom/zrc/model/statenotify/ZRCStateIntents;->inCallState2String(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private sendIncomingCallStateEvent(I)V
    .locals 1

    const/4 v0, 0x0

    .line 368
    invoke-direct {p0, v0, p1}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendIncomingCallStateEvent(ZI)V

    return-void
.end method

.method private sendIncomingCallStateEvent(ZI)V
    .locals 3

    if-nez p1, :cond_0

    .line 372
    iget p1, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->incomingCallState:I

    if-ne p1, p2, :cond_0

    return-void

    .line 375
    :cond_0
    iput p2, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->incomingCallState:I

    .line 376
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const-string p1, "sendIncomingCallStateEvent no context to send!"

    .line 378
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 381
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "us.zoom.zrc.action.INCOMING_CALL_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "state"

    .line 382
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 383
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p1, "send broadcast %s, state=%s"

    const/4 v1, 0x2

    .line 384
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "us.zoom.zrc.action.INCOMING_CALL_STATE_CHANGED"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    invoke-static {p2}, Lus/zoom/zrc/model/statenotify/ZRCStateIntents;->incomingCallState2String(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v0

    invoke-static {p1, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private sendLeaveInCallState()V
    .locals 2

    .line 230
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getWorkMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    return-void

    .line 234
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->hasOtherInCallState()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 235
    invoke-direct {p0, v1}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendAudioMuteStateEvent(Z)V

    goto :goto_0

    .line 237
    :cond_1
    invoke-direct {p0, v1}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendInCallStateEvent(I)V

    .line 238
    invoke-direct {p0, v1}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendAudioMuteStateEvent(Z)V

    :goto_0
    return-void
.end method

.method private sendPairStateChanged(I)V
    .locals 1

    const/4 v0, 0x0

    .line 424
    invoke-direct {p0, v0, p1}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendPairStateChanged(ZI)V

    return-void
.end method

.method private sendPairStateChanged(ZI)V
    .locals 4

    if-nez p1, :cond_0

    .line 428
    iget p1, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->pairState:I

    if-ne p1, p2, :cond_0

    return-void

    .line 431
    :cond_0
    iput p2, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->pairState:I

    .line 432
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const-string p1, "sendPairStateChanged no context to send!"

    .line 434
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 437
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getIpAddressOfZoomRoom()Ljava/lang/String;

    move-result-object v1

    .line 438
    new-instance v2, Landroid/content/Intent;

    const-string v3, "us.zoom.zrc.action.PAIR_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "ip_address"

    .line 439
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "state"

    .line 440
    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 441
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p1, "send broadcast %s, ip=%s. state=%s"

    const/4 v2, 0x3

    .line 442
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "us.zoom.zrc.action.PAIR_STATE_CHANGED"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    invoke-static {p2}, Lus/zoom/zrc/model/statenotify/ZRCStateIntents;->pairState2String(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v0

    invoke-static {p1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private sendVendorOSInCallStateEvent(ZI)V
    .locals 4

    .line 411
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    .line 412
    invoke-static {}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getInstance()Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->supportsVendorOS()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 413
    new-instance v1, Landroid/content/Intent;

    const-string v2, "us.zoom.zr.event.ZOOM_ROOMS_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "is_query"

    .line 414
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "state"

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 415
    :goto_0
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-nez p2, :cond_1

    const-string p1, "idle_duration"

    .line 417
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getRoomIdleDuration()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 419
    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method private sendZRPStateEvent(ZI)V
    .locals 2

    .line 493
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getWorkMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 497
    iget p1, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->zrpState:I

    if-ne p1, p2, :cond_1

    return-void

    .line 501
    :cond_1
    iput p2, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->zrpState:I

    .line 503
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object p1

    .line 504
    new-instance v0, Landroid/content/Intent;

    const-string v1, "us.zoom.zrc.action.SCHEDULING_DISPLAY_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "state"

    .line 505
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 506
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2

    .line 108
    invoke-static {}, Lus/zoom/zrc/model/AppStateMonitor;->getInstance()Lus/zoom/zrc/model/AppStateMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppStateMonitor;->addAppStateListener(Lus/zoom/zrc/model/AppStateMonitor$AppStateListener;)V

    .line 109
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->addZRMeetingStatusChangeListener(Lus/zoom/zrc/model/AppEngine$IZRMeetingStatusEvent;)V

    .line 110
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->addSipServiceListener(Lus/zoom/zrc/model/AppEngine$ISipServiceEvent;)V

    .line 111
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->addPresentationListener(Lus/zoom/zrc/model/AppEngine$IPresentationEvent;)V

    .line 112
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->addZRConnectionEventListener(Lus/zoom/zrc/model/AppEngine$IZRConnectionEvent;)V

    .line 113
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->addZRPtEventListener(Lus/zoom/zrc/model/AppEngine$IZRPtEvent;)V

    .line 115
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "us.zoom.zrc.action.QUERY_ZOOM_INFO"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->queryReceiver:Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$QueryZoomInfoReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    invoke-static {}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getInstance()Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->supportsVendorOS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "us.zoom.zr.vendoros.event.QUERY_ZOOM_ROOMS_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->vendorOSQueryReceiver:Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$VendorOSQueryReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendLeaveInComingState()V

    .line 128
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isRunInCrestronTSW()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "us.zoom.zrc.action.END_CALL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->endCallReceiver:Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$EndCallReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p1

    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnMeetingExitedNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v1, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$2;

    invoke-direct {v1, p0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$2;-><init>(Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;)V

    invoke-virtual {p1, p0, v0, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 141
    :cond_1
    invoke-direct {p0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->addNotificationForInCallStateBroadcast()V

    .line 143
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/Model;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 144
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/SipCallInfoList;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    const/4 p1, 0x0

    .line 147
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendZRPStateEvent(I)V

    return-void
.end method

.method public bridge synthetic onAppStateChanged(II)V
    .locals 0

    .line 73
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/model/statenotify/StateListenerAdapter;->onAppStateChanged(II)V

    return-void
.end method

.method public onClose(I)V
    .locals 0

    .line 355
    invoke-super {p0, p1}, Lus/zoom/zrc/model/statenotify/StateListenerAdapter;->onClose(I)V

    .line 356
    invoke-virtual {p0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendLeaveInComingState()V

    .line 357
    invoke-direct {p0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendLeaveInCallState()V

    return-void
.end method

.method public onConnect(I)V
    .locals 0

    .line 348
    invoke-super {p0, p1}, Lus/zoom/zrc/model/statenotify/StateListenerAdapter;->onConnect(I)V

    .line 349
    invoke-virtual {p0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendLeaveInComingState()V

    .line 350
    invoke-direct {p0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendLeaveInCallState()V

    return-void
.end method

.method public onIncomingCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 2

    .line 300
    invoke-super {p0, p1}, Lus/zoom/zrc/model/statenotify/StateListenerAdapter;->onIncomingCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    if-nez p1, :cond_0

    return-void

    .line 304
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sip is coming: send the in coming state 1. status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    invoke-direct {p0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendEnterInComingState()V

    return-void
.end method

.method public onIncomingCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;)V
    .locals 2

    .line 290
    invoke-super {p0, p1}, Lus/zoom/zrc/model/statenotify/StateListenerAdapter;->onIncomingCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;)V

    if-nez p1, :cond_0

    return-void

    .line 294
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Meeting is inviting: send the in coming state 1. status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    invoke-direct {p0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendEnterInComingState()V

    return-void
.end method

.method public onSIPCallStatusNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;I)V
    .locals 2

    .line 266
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/model/statenotify/StateListenerAdapter;->onSIPCallStatusNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;I)V

    .line 267
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSIPCallStatusNotification >> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, 0xf

    if-eq p2, p1, :cond_0

    .line 269
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sip call is stopped: send in-coming state 0. SipCallStatus: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    invoke-virtual {p0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendLeaveInComingState()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSIPCallTerminatedNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;I)V
    .locals 0

    .line 73
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/model/statenotify/StateListenerAdapter;->onSIPCallTerminatedNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;I)V

    return-void
.end method

.method public bridge synthetic onSendFailed(I)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Lus/zoom/zrc/model/statenotify/StateListenerAdapter;->onSendFailed(I)V

    return-void
.end method

.method public bridge synthetic onStartSharingMeetingNotification(Z)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Lus/zoom/zrc/model/statenotify/StateListenerAdapter;->onStartSharingMeetingNotification(Z)V

    return-void
.end method

.method public bridge synthetic onUpdateAirPlayBlackMagicStatus(Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Lus/zoom/zrc/model/statenotify/StateListenerAdapter;->onUpdateAirPlayBlackMagicStatus(Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;)V

    return-void
.end method

.method public bridge synthetic onUpdateMeetingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Lus/zoom/zrc/model/statenotify/StateListenerAdapter;->onUpdateMeetingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V

    return-void
.end method

.method public bridge synthetic onUpdateMySipPhoneAudioResult(I)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Lus/zoom/zrc/model/statenotify/StateListenerAdapter;->onUpdateMySipPhoneAudioResult(I)V

    return-void
.end method

.method public bridge synthetic onUpdateMySipPhoneAudioStatus(Z)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Lus/zoom/zrc/model/statenotify/StateListenerAdapter;->onUpdateMySipPhoneAudioStatus(Z)V

    return-void
.end method

.method public bridge synthetic onUpdateSipService(Lus/zoom/zrcsdk/model/ZRCSipService;)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Lus/zoom/zrc/model/statenotify/StateListenerAdapter;->onUpdateSipService(Lus/zoom/zrcsdk/model/ZRCSipService;)V

    return-void
.end method

.method public onZRMeetingStatusChange(I)V
    .locals 2

    .line 276
    invoke-super {p0, p1}, Lus/zoom/zrc/model/statenotify/StateListenerAdapter;->onZRMeetingStatusChange(I)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const-string p1, "In meeting"

    .line 278
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    invoke-direct {p0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendEnterInCallState()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const-string p1, "Connecting Meeting"

    .line 281
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string p1, "Not in meeting"

    .line 283
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    invoke-direct {p0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendLeaveInCallState()V

    :goto_0
    return-void
.end method

.method public release(Landroid/content/Context;)V
    .locals 1

    .line 151
    invoke-static {}, Lus/zoom/zrc/model/AppStateMonitor;->getInstance()Lus/zoom/zrc/model/AppStateMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppStateMonitor;->removeAppStateListener(Lus/zoom/zrc/model/AppStateMonitor$AppStateListener;)V

    .line 152
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->removeZRMeetingStatusChangeEventListener(Lus/zoom/zrc/model/AppEngine$IZRMeetingStatusEvent;)V

    .line 153
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->removeSipServiceListener(Lus/zoom/zrc/model/AppEngine$ISipServiceEvent;)V

    .line 154
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->removePresentationListener(Lus/zoom/zrc/model/AppEngine$IPresentationEvent;)V

    .line 155
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->removeZRConnectionEventListener(Lus/zoom/zrc/model/AppEngine$IZRConnectionEvent;)V

    .line 156
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->removeZRPtEventListener(Lus/zoom/zrc/model/AppEngine$IZRPtEvent;)V

    .line 157
    iget-object v0, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->queryReceiver:Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$QueryZoomInfoReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 159
    invoke-static {}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getInstance()Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->supportsVendorOS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->vendorOSQueryReceiver:Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$VendorOSQueryReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 163
    :cond_0
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isRunInCrestronTSW()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->endCallReceiver:Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender$EndCallReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 170
    :cond_1
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lus/zoom/zrc/base/notification/NotificationCenter;->removeNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;)V

    .line 171
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/Model;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 172
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/SipCallInfoList;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    return-void
.end method

.method public sendLeaveInComingState()V
    .locals 2

    .line 215
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getWorkMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 218
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendIncomingCallStateEvent(I)V

    return-void
.end method

.method public sendZRPStateEvent(I)V
    .locals 1

    const/4 v0, 0x0

    .line 489
    invoke-direct {p0, v0, p1}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendZRPStateEvent(ZI)V

    return-void
.end method
