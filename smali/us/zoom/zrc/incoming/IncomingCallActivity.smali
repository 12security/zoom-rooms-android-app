.class public Lus/zoom/zrc/incoming/IncomingCallActivity;
.super Lus/zoom/zrc/ZRCActivity;
.source "IncomingCallActivity.java"

# interfaces
.implements Lus/zoom/zrc/incoming/IncomingCallView$Listener;


# static fields
.field private static final CALL_TYPE_MEETING:I = 0x0

.field private static final CALL_TYPE_SIP:I = 0x1

.field private static final CALL_TYPE_SIP_TO_MEETING:I = 0x2

.field private static final INCOMING_CALL_EVENTS:[Lus/zoom/zrc/base/notification/NotificationEvent;

.field private static final INCOMING_CALL_NOTIFICATION:Lus/zoom/zrc/base/notification/INotification;

.field private static final TAG:Ljava/lang/String; = "IncomingCallActivity"

.field private static cachedCalls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lus/zoom/zrcsdk/model/ZRCIncomingCall;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static handler:Landroid/os/Handler;

.field private static isLaunchingActivity:Z

.field private static uiListener:Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListenerAdapter;


# instance fields
.field private checkingExpiredTimerRunner:Ljava/lang/Runnable;

.field private hasAcceptedSipCall:Z

.field private incomingCallViewContainer:Landroid/view/ViewGroup;

.field private isPortraitLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lus/zoom/zrc/incoming/IncomingCallActivity;->handler:Landroid/os/Handler;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lus/zoom/zrc/incoming/IncomingCallActivity;->cachedCalls:Ljava/util/Map;

    .line 64
    new-instance v0, Lus/zoom/zrc/incoming/IncomingCallActivity$1;

    invoke-direct {v0}, Lus/zoom/zrc/incoming/IncomingCallActivity$1;-><init>()V

    sput-object v0, Lus/zoom/zrc/incoming/IncomingCallActivity;->uiListener:Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListenerAdapter;

    const/16 v0, 0x8

    .line 74
    new-array v0, v0, [Lus/zoom/zrc/base/notification/NotificationEvent;

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->OnEnterState:Lus/zoom/zrc/base/notification/ModelEvent;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->IncomingCallNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->SIPCallInviteToJoinMeetingNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->SipCallTerminatedNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->JoinSipCallToMeetingResult:Lus/zoom/zrc/base/notification/ModelEvent;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->ConnectionClosed:Lus/zoom/zrc/base/notification/ModelEvent;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->TreatedIncomingCall:Lus/zoom/zrc/base/notification/ModelEvent;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->AnswerIncomingCallResult:Lus/zoom/zrc/base/notification/ModelEvent;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lus/zoom/zrc/incoming/IncomingCallActivity;->INCOMING_CALL_EVENTS:[Lus/zoom/zrc/base/notification/NotificationEvent;

    .line 85
    new-instance v0, Lus/zoom/zrc/incoming/IncomingCallActivity$2;

    invoke-direct {v0}, Lus/zoom/zrc/incoming/IncomingCallActivity$2;-><init>()V

    sput-object v0, Lus/zoom/zrc/incoming/IncomingCallActivity;->INCOMING_CALL_NOTIFICATION:Lus/zoom/zrc/base/notification/INotification;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lus/zoom/zrc/ZRCActivity;-><init>()V

    const/4 v0, 0x0

    .line 242
    iput-boolean v0, p0, Lus/zoom/zrc/incoming/IncomingCallActivity;->hasAcceptedSipCall:Z

    return-void
.end method

.method private acceptInviteMeet(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)V
    .locals 1

    .line 499
    invoke-direct {p0, p1}, Lus/zoom/zrc/incoming/IncomingCallActivity;->declineAllOtherIncomingCalls(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)V

    .line 500
    invoke-direct {p0}, Lus/zoom/zrc/incoming/IncomingCallActivity;->removeAllIncomingCallViews()V

    .line 501
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->acceptIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)V

    return-void
.end method

.method private acceptSip(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 1

    .line 505
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->acceptIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)V

    .line 506
    invoke-direct {p0, p1}, Lus/zoom/zrc/incoming/IncomingCallActivity;->onSipAccepted(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    .line 507
    invoke-direct {p0}, Lus/zoom/zrc/incoming/IncomingCallActivity;->declineToMeetingCallAndRemoveView()V

    return-void
.end method

.method private acceptUpgradeSip(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)V
    .locals 1

    .line 518
    invoke-direct {p0, p1}, Lus/zoom/zrc/incoming/IncomingCallActivity;->declineAllOtherIncomingCalls(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)V

    .line 519
    invoke-direct {p0}, Lus/zoom/zrc/incoming/IncomingCallActivity;->removeAllIncomingCallViews()V

    .line 521
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->joinSipCallToMeeting(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .line 52
    sget-object v0, Lus/zoom/zrc/incoming/IncomingCallActivity;->cachedCalls:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100()V
    .locals 0

    .line 52
    invoke-static {}, Lus/zoom/zrc/incoming/IncomingCallActivity;->showIncomingCallActivity()V

    return-void
.end method

.method static synthetic access$1000(Lus/zoom/zrc/incoming/IncomingCallActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lus/zoom/zrc/incoming/IncomingCallActivity;->handleDisconnected()V

    return-void
.end method

.method static synthetic access$1100(Lus/zoom/zrc/incoming/IncomingCallActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lus/zoom/zrc/incoming/IncomingCallActivity;->onCheckingExpiredIncomingCall()V

    return-void
.end method

.method static synthetic access$1200()Landroid/os/Handler;
    .locals 1

    .line 52
    sget-object v0, Lus/zoom/zrc/incoming/IncomingCallActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 52
    sget-boolean v0, Lus/zoom/zrc/incoming/IncomingCallActivity;->isLaunchingActivity:Z

    return v0
.end method

.method static synthetic access$300(Lus/zoom/zrc/incoming/IncomingCallActivity;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lus/zoom/zrc/incoming/IncomingCallActivity;->handleJoinSipCallToMeetingResult(I)V

    return-void
.end method

.method static synthetic access$400(Lus/zoom/zrc/incoming/IncomingCallActivity;Lus/zoom/zrcsdk/model/ZRCIncomingCall;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/incoming/IncomingCallActivity;->handleReceivedIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingCall;I)V

    return-void
.end method

.method static synthetic access$500(Lus/zoom/zrc/incoming/IncomingCallActivity;Lus/zoom/zrcsdk/model/ZRCIncomingCall;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lus/zoom/zrc/incoming/IncomingCallActivity;->handleReceivedIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)V

    return-void
.end method

.method static synthetic access$600(Lus/zoom/zrc/incoming/IncomingCallActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lus/zoom/zrc/incoming/IncomingCallActivity;->handleAppStateChanged()V

    return-void
.end method

.method static synthetic access$700(Lus/zoom/zrc/incoming/IncomingCallActivity;Lus/zoom/zrcsdk/model/ZRCIncomingCall;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/incoming/IncomingCallActivity;->handleReceivedSipCallTerminated(Lus/zoom/zrcsdk/model/ZRCIncomingCall;I)V

    return-void
.end method

.method static synthetic access$800(Lus/zoom/zrc/incoming/IncomingCallActivity;Lus/zoom/zrcsdk/model/ZRCIncomingCall;Z)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/incoming/IncomingCallActivity;->handleReceivedTreatedIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingCall;Z)V

    return-void
.end method

.method static synthetic access$900(Lus/zoom/zrc/incoming/IncomingCallActivity;ZLjava/lang/String;Lus/zoom/zrcsdk/model/ZRCIncomingCall;Z)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lus/zoom/zrc/incoming/IncomingCallActivity;->handleAnswerIncomingCallResult(ZLjava/lang/String;Lus/zoom/zrcsdk/model/ZRCIncomingCall;Z)V

    return-void
.end method

.method private declineAllOtherIncomingCalls(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)V
    .locals 4

    const/4 v0, 0x0

    .line 614
    :goto_0
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingCallActivity;->incomingCallViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 615
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingCallActivity;->incomingCallViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/incoming/IncomingCallView;

    .line 616
    invoke-virtual {v1}, Lus/zoom/zrc/incoming/IncomingCallView;->getIncomingCall()Lus/zoom/zrcsdk/model/ZRCIncomingCall;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 617
    invoke-virtual {v2, p1}, Lus/zoom/zrcsdk/model/ZRCIncomingCall;->isSameCallerWith(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 620
    :cond_0
    instance-of v1, v1, Lus/zoom/zrc/incoming/SipUpgradeToMeetingView;

    if-eqz v1, :cond_1

    .line 621
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    invoke-virtual {v1, v2}, Lus/zoom/zrc/model/Model;->hangupSipCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    goto :goto_1

    .line 623
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1, v2}, Lus/zoom/zrc/model/Model;->declineIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private declineToMeetingCallAndRemoveView()V
    .locals 4

    const/4 v0, 0x0

    .line 632
    :goto_0
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingCallActivity;->incomingCallViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 633
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingCallActivity;->incomingCallViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/incoming/IncomingCallView;

    .line 634
    invoke-virtual {v1}, Lus/zoom/zrc/incoming/IncomingCallView;->getIncomingCall()Lus/zoom/zrcsdk/model/ZRCIncomingCall;

    move-result-object v2

    .line 635
    instance-of v3, v1, Lus/zoom/zrc/incoming/SipUpgradeToMeetingView;

    if-eqz v3, :cond_0

    .line 636
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    invoke-virtual {v3, v2}, Lus/zoom/zrc/model/Model;->hangupSipCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    .line 637
    invoke-direct {p0, v1}, Lus/zoom/zrc/incoming/IncomingCallActivity;->removeIncomingCallView(Lus/zoom/zrc/incoming/IncomingCallView;)V

    goto :goto_1

    .line 640
    :cond_0
    instance-of v3, v2, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;

    if-eqz v3, :cond_1

    .line 641
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3, v2}, Lus/zoom/zrc/model/Model;->declineIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)V

    .line 642
    invoke-direct {p0, v1}, Lus/zoom/zrc/incoming/IncomingCallActivity;->removeIncomingCallView(Lus/zoom/zrc/incoming/IncomingCallView;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getIncomingCallView(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)Lus/zoom/zrc/incoming/IncomingCallView;
    .locals 3

    const/4 v0, 0x0

    .line 543
    :goto_0
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingCallActivity;->incomingCallViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 544
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingCallActivity;->incomingCallViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/incoming/IncomingCallView;

    .line 545
    invoke-virtual {v1}, Lus/zoom/zrc/incoming/IncomingCallView;->getIncomingCall()Lus/zoom/zrcsdk/model/ZRCIncomingCall;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 546
    invoke-virtual {v2, p1}, Lus/zoom/zrcsdk/model/ZRCIncomingCall;->isSameCallerWith(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private goNextUI()V
    .locals 2

    .line 648
    iget-boolean v0, p0, Lus/zoom/zrc/incoming/IncomingCallActivity;->hasAcceptedSipCall:Z

    if-nez v0, :cond_0

    return-void

    .line 652
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    .line 653
    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 654
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/UserEvent;->EnterSipCall:Lus/zoom/zrc/base/notification/UserEvent;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;)V

    :cond_1
    return-void
.end method

.method private handleAnswerIncomingCallResult(ZLjava/lang/String;Lus/zoom/zrcsdk/model/ZRCIncomingCall;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 385
    invoke-static {p2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    .line 386
    invoke-direct {p0, p3, p4}, Lus/zoom/zrc/incoming/IncomingCallActivity;->handleReceivedTreatedIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingCall;Z)V

    :cond_0
    return-void
.end method

.method private handleAppStateChanged()V
    .locals 4

    .line 391
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x7

    const/4 v3, 0x5

    if-eq v3, v0, :cond_0

    if-eq v1, v0, :cond_0

    if-eq v2, v0, :cond_0

    .line 395
    invoke-direct {p0}, Lus/zoom/zrc/incoming/IncomingCallActivity;->removeAllIncomingCallViews()V

    goto :goto_0

    :cond_0
    if-eq v2, v0, :cond_1

    if-ne v1, v0, :cond_2

    .line 397
    :cond_1
    invoke-direct {p0}, Lus/zoom/zrc/incoming/IncomingCallActivity;->handleMeetingOrSipInfoChanged()V

    :cond_2
    :goto_0
    return-void
.end method

.method private handleDisconnected()V
    .locals 2

    const-string v0, "Disconnected, dismiss incoming call notification."

    const/4 v1, 0x0

    .line 409
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 411
    invoke-direct {p0}, Lus/zoom/zrc/incoming/IncomingCallActivity;->removeAllIncomingCallViews()V

    return-void
.end method

.method private handleJoinSipCallToMeetingResult(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 380
    invoke-direct {p0}, Lus/zoom/zrc/incoming/IncomingCallActivity;->removeAllIncomingCallViews()V

    :cond_0
    return-void
.end method

.method private handleMeetingOrSipInfoChanged()V
    .locals 2

    const/4 v0, 0x0

    .line 402
    :goto_0
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingCallActivity;->incomingCallViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 403
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingCallActivity;->incomingCallViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/incoming/IncomingCallView;

    .line 404
    invoke-virtual {v1}, Lus/zoom/zrc/incoming/IncomingCallView;->updateMeetingOrSipInfo()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleReceivedIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)V
    .locals 1

    .line 303
    instance-of v0, p1, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 304
    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/incoming/IncomingCallActivity;->handleReceivedIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingCall;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 306
    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/incoming/IncomingCallActivity;->handleReceivedIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingCall;I)V

    :goto_0
    return-void
.end method

.method private handleReceivedIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingCall;I)V
    .locals 4

    .line 311
    invoke-direct {p0, p1}, Lus/zoom/zrc/incoming/IncomingCallActivity;->mergeIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)Lus/zoom/zrc/incoming/IncomingCallView;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 316
    :cond_0
    iget-boolean v0, p0, Lus/zoom/zrc/incoming/IncomingCallActivity;->isPortraitLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lus/zoom/zrc/incoming/IncomingCallActivity;->incomingCallViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const-string v0, "For portrait layout: auto decline the 3rd incoming: %s"

    const/4 v3, 0x1

    .line 317
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v0, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne p2, v2, :cond_1

    .line 319
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    invoke-virtual {p2, p1}, Lus/zoom/zrc/model/Model;->hangupSipCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    goto :goto_0

    .line 321
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2, p1}, Lus/zoom/zrc/model/Model;->declineIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)V

    :goto_0
    return-void

    .line 326
    :cond_2
    sget-object v0, Lus/zoom/zrc/incoming/IncomingCallActivity;->cachedCalls:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    packed-switch p2, :pswitch_data_0

    const-string v0, "IncomingCallActivity"

    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleReceivedIncomingCall() called with: call = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "], type = ["

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 336
    :pswitch_0
    new-instance p2, Lus/zoom/zrc/incoming/SipUpgradeToMeetingView;

    invoke-direct {p2, p0}, Lus/zoom/zrc/incoming/SipUpgradeToMeetingView;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 333
    :pswitch_1
    new-instance p2, Lus/zoom/zrc/incoming/IncomingSipCallView;

    invoke-direct {p2, p0}, Lus/zoom/zrc/incoming/IncomingSipCallView;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 330
    :pswitch_2
    new-instance p2, Lus/zoom/zrc/incoming/IncomingCallView;

    invoke-direct {p2, p0}, Lus/zoom/zrc/incoming/IncomingCallView;-><init>(Landroid/content/Context;)V

    .line 343
    :goto_1
    invoke-virtual {p2, p0}, Lus/zoom/zrc/incoming/IncomingCallView;->setListener(Lus/zoom/zrc/incoming/IncomingCallView$Listener;)V

    .line 344
    invoke-virtual {p2}, Lus/zoom/zrc/incoming/IncomingCallView;->updateMeetingOrSipInfo()V

    .line 345
    invoke-virtual {p2, p1}, Lus/zoom/zrc/incoming/IncomingCallView;->setIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)V

    .line 346
    iget-object p1, p0, Lus/zoom/zrc/incoming/IncomingCallActivity;->incomingCallViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 348
    invoke-direct {p0}, Lus/zoom/zrc/incoming/IncomingCallActivity;->layoutIncomingCallViews()V

    .line 351
    new-instance p1, Lus/zoom/zrc/incoming/IncomingCallActivity$3;

    invoke-direct {p1, p0, p2}, Lus/zoom/zrc/incoming/IncomingCallActivity$3;-><init>(Lus/zoom/zrc/incoming/IncomingCallActivity;Lus/zoom/zrc/incoming/IncomingCallView;)V

    invoke-virtual {p2, p1}, Lus/zoom/zrc/incoming/IncomingCallView;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleReceivedSipCallTerminated(Lus/zoom/zrcsdk/model/ZRCIncomingCall;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x5

    if-ne p2, v1, :cond_0

    const-string p1, "IncomingCallActivity"

    const-string p2, "The sip service has been stopped. Remove all sip calls from UI."

    .line 361
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    invoke-direct {p0}, Lus/zoom/zrc/incoming/IncomingCallActivity;->removeAllSipView()V

    goto :goto_0

    :cond_0
    const-string p2, "user has terminate the call, remove it from UI: %s"

    const/4 v1, 0x1

    .line 364
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {p2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    invoke-direct {p0, p1}, Lus/zoom/zrc/incoming/IncomingCallActivity;->removeIncomingCallView(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)V

    :goto_0
    return-void
.end method

.method private handleReceivedTreatedIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingCall;Z)V
    .locals 5

    const-string v0, "the incoming call has been %s from ZR, dismiss it."

    const/4 v1, 0x1

    .line 371
    new-array v2, v1, [Ljava/lang/Object;

    if-eqz p2, :cond_0

    const-string v3, "accepted"

    goto :goto_0

    :cond_0
    const-string v3, "declined"

    :goto_0
    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    .line 372
    instance-of p2, p1, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    if-eqz p2, :cond_1

    .line 373
    iput-boolean v1, p0, Lus/zoom/zrc/incoming/IncomingCallActivity;->hasAcceptedSipCall:Z

    .line 375
    :cond_1
    invoke-direct {p0, p1}, Lus/zoom/zrc/incoming/IncomingCallActivity;->removeIncomingCallView(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)V

    return-void
.end method

.method private layoutIncomingCallViews()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 555
    :goto_0
    iget-object v2, p0, Lus/zoom/zrc/incoming/IncomingCallActivity;->incomingCallViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 556
    iget-object v2, p0, Lus/zoom/zrc/incoming/IncomingCallActivity;->incomingCallViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lus/zoom/zrc/incoming/IncomingCallView;

    .line 557
    invoke-virtual {v2, v1, v0}, Lus/zoom/zrc/incoming/IncomingCallView;->layoutIncomingCall(IF)V

    .line 558
    invoke-virtual {v2}, Lus/zoom/zrc/incoming/IncomingCallView;->getChildLayoutBottom()F

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private mergeIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)Lus/zoom/zrc/incoming/IncomingCallView;
    .locals 3

    const/4 v0, 0x0

    .line 602
    :goto_0
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingCallActivity;->incomingCallViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 603
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingCallActivity;->incomingCallViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/incoming/IncomingCallView;

    .line 604
    invoke-virtual {v1}, Lus/zoom/zrc/incoming/IncomingCallView;->getIncomingCall()Lus/zoom/zrcsdk/model/ZRCIncomingCall;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 605
    invoke-virtual {v2, p1}, Lus/zoom/zrcsdk/model/ZRCIncomingCall;->isSameCallerWith(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 606
    invoke-virtual {v1, p1}, Lus/zoom/zrc/incoming/IncomingCallView;->setIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)V

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private onCheckingExpiredIncomingCall()V
    .locals 11

    .line 435
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 436
    :goto_0
    iget-object v3, p0, Lus/zoom/zrc/incoming/IncomingCallActivity;->incomingCallViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 437
    iget-object v3, p0, Lus/zoom/zrc/incoming/IncomingCallActivity;->incomingCallViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lus/zoom/zrc/incoming/IncomingCallView;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 440
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 444
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 445
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lus/zoom/zrc/incoming/IncomingCallView;

    .line 446
    invoke-virtual {v4}, Lus/zoom/zrc/incoming/IncomingCallView;->getIncomingCall()Lus/zoom/zrcsdk/model/ZRCIncomingCall;

    move-result-object v5

    .line 447
    instance-of v6, v5, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;

    if-eqz v6, :cond_2

    .line 448
    check-cast v5, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;

    .line 449
    invoke-virtual {v5}, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->getExpireTime()J

    move-result-wide v6

    sub-long v6, v2, v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-ltz v10, :cond_2

    const-string v6, "call is expired: %s"

    const/4 v7, 0x1

    .line 450
    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v1

    invoke-static {v6, v7}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 451
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v6

    invoke-virtual {v6, v5}, Lus/zoom/zrc/model/Model;->declineIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)V

    .line 452
    invoke-direct {p0, v4}, Lus/zoom/zrc/incoming/IncomingCallActivity;->removeIncomingCallView(Lus/zoom/zrc/incoming/IncomingCallView;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private onSipAccepted(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 1

    const/4 v0, 0x1

    .line 511
    iput-boolean v0, p0, Lus/zoom/zrc/incoming/IncomingCallActivity;->hasAcceptedSipCall:Z

    .line 512
    invoke-static {}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->obtainInstance()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->acceptIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    .line 513
    invoke-direct {p0, p1}, Lus/zoom/zrc/incoming/IncomingCallActivity;->removeIncomingCallView(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)V

    return-void
.end method

.method public static release()V
    .locals 3

    .line 235
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/incoming/IncomingCallActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->removeNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;)V

    .line 236
    invoke-static {}, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->getInstance()Lus/zoom/zrc/base/app/ZRCUIElementsManager;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/incoming/IncomingCallActivity;->uiListener:Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListenerAdapter;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->removeListener(Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListener;)V

    return-void
.end method

.method private removeAllIncomingCallViews()V
    .locals 1

    .line 573
    sget-object v0, Lus/zoom/zrc/incoming/IncomingCallActivity;->cachedCalls:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 574
    iget-object v0, p0, Lus/zoom/zrc/incoming/IncomingCallActivity;->incomingCallViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 575
    invoke-static {}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->getInstance()Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendLeaveInComingState()V

    .line 576
    invoke-virtual {p0}, Lus/zoom/zrc/incoming/IncomingCallActivity;->finish()V

    return-void
.end method

.method private removeAllSipView()V
    .locals 3

    const/4 v0, 0x0

    .line 563
    :goto_0
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingCallActivity;->incomingCallViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 564
    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingCallActivity;->incomingCallViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/incoming/IncomingCallView;

    .line 565
    invoke-virtual {v1}, Lus/zoom/zrc/incoming/IncomingCallView;->getIncomingCall()Lus/zoom/zrcsdk/model/ZRCIncomingCall;

    move-result-object v2

    .line 566
    instance-of v2, v2, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    if-eqz v2, :cond_0

    .line 567
    invoke-direct {p0, v1}, Lus/zoom/zrc/incoming/IncomingCallActivity;->removeIncomingCallView(Lus/zoom/zrc/incoming/IncomingCallView;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeIncomingCallView(Lus/zoom/zrc/incoming/IncomingCallView;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 585
    :cond_0
    sget-object v0, Lus/zoom/zrc/incoming/IncomingCallActivity;->cachedCalls:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCIncomingCall;

    .line 586
    invoke-virtual {p1}, Lus/zoom/zrc/incoming/IncomingCallView;->getIncomingCall()Lus/zoom/zrcsdk/model/ZRCIncomingCall;

    move-result-object v2

    invoke-virtual {v1, v2}, Lus/zoom/zrcsdk/model/ZRCIncomingCall;->isSameCallerWith(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 587
    sget-object v0, Lus/zoom/zrc/incoming/IncomingCallActivity;->cachedCalls:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/incoming/IncomingCallActivity;->incomingCallViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 593
    iget-object p1, p0, Lus/zoom/zrc/incoming/IncomingCallActivity;->incomingCallViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_3

    .line 594
    invoke-direct {p0}, Lus/zoom/zrc/incoming/IncomingCallActivity;->layoutIncomingCallViews()V

    goto :goto_0

    .line 596
    :cond_3
    invoke-static {}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->getInstance()Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/statenotify/ZRCStateBroadcastSender;->sendLeaveInComingState()V

    .line 597
    invoke-virtual {p0}, Lus/zoom/zrc/incoming/IncomingCallActivity;->finish()V

    :goto_0
    return-void
.end method

.method private removeIncomingCallView(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)V
    .locals 0

    .line 536
    invoke-direct {p0, p1}, Lus/zoom/zrc/incoming/IncomingCallActivity;->getIncomingCallView(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)Lus/zoom/zrc/incoming/IncomingCallView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 538
    invoke-direct {p0, p1}, Lus/zoom/zrc/incoming/IncomingCallActivity;->removeIncomingCallView(Lus/zoom/zrc/incoming/IncomingCallView;)V

    :cond_0
    return-void
.end method

.method public static setup()V
    .locals 7

    .line 228
    sget-object v0, Lus/zoom/zrc/incoming/IncomingCallActivity;->INCOMING_CALL_EVENTS:[Lus/zoom/zrc/base/notification/NotificationEvent;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 229
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v4

    const-class v5, Lus/zoom/zrc/incoming/IncomingCallActivity;

    sget-object v6, Lus/zoom/zrc/incoming/IncomingCallActivity;->INCOMING_CALL_NOTIFICATION:Lus/zoom/zrc/base/notification/INotification;

    invoke-virtual {v4, v5, v3, v6}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 231
    :cond_0
    invoke-static {}, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->getInstance()Lus/zoom/zrc/base/app/ZRCUIElementsManager;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/incoming/IncomingCallActivity;->uiListener:Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListenerAdapter;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->addListener(Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListener;)V

    return-void
.end method

.method private static showIncomingCallActivity()V
    .locals 2

    .line 218
    invoke-static {}, Lus/zoom/androidlib/app/ZMActivity;->getFrontActivity()Lus/zoom/androidlib/app/ZMActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 220
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    .line 222
    :cond_0
    const-class v1, Lus/zoom/zrc/incoming/IncomingCallActivity;

    invoke-static {v0, v1}, Lus/zoom/zrc/utils/ZRCUIUtils;->safeStartActivity(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x1

    .line 223
    sput-boolean v0, Lus/zoom/zrc/incoming/IncomingCallActivity;->isLaunchingActivity:Z

    return-void
.end method

.method private startCheckingExpiredTimer()V
    .locals 4

    .line 415
    invoke-direct {p0}, Lus/zoom/zrc/incoming/IncomingCallActivity;->stopCheckingExpiredTimer()V

    .line 416
    iget-object v0, p0, Lus/zoom/zrc/incoming/IncomingCallActivity;->checkingExpiredTimerRunner:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 417
    new-instance v0, Lus/zoom/zrc/incoming/IncomingCallActivity$4;

    invoke-direct {v0, p0}, Lus/zoom/zrc/incoming/IncomingCallActivity$4;-><init>(Lus/zoom/zrc/incoming/IncomingCallActivity;)V

    iput-object v0, p0, Lus/zoom/zrc/incoming/IncomingCallActivity;->checkingExpiredTimerRunner:Ljava/lang/Runnable;

    .line 425
    :cond_0
    sget-object v0, Lus/zoom/zrc/incoming/IncomingCallActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingCallActivity;->checkingExpiredTimerRunner:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopCheckingExpiredTimer()V
    .locals 2

    .line 429
    iget-object v0, p0, Lus/zoom/zrc/incoming/IncomingCallActivity;->checkingExpiredTimerRunner:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 430
    sget-object v1, Lus/zoom/zrc/incoming/IncomingCallActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 281
    invoke-super {p0}, Lus/zoom/zrc/ZRCActivity;->finish()V

    const/4 v0, 0x0

    .line 282
    sput-boolean v0, Lus/zoom/zrc/incoming/IncomingCallActivity;->isLaunchingActivity:Z

    .line 283
    invoke-direct {p0}, Lus/zoom/zrc/incoming/IncomingCallActivity;->goNextUI()V

    return-void
.end method

.method public onAcceptIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingCall;Lus/zoom/zrc/incoming/IncomingCallView;Lus/zoom/zrc/incoming/IncomingCallView$ActionType;)V
    .locals 3

    const-string p2, "user accept call: %s, type: %s"

    const/4 v0, 0x2

    .line 460
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p3, v0, v2

    invoke-static {p2, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    sget-object p2, Lus/zoom/zrc/incoming/IncomingCallActivity$5;->$SwitchMap$us$zoom$zrc$incoming$IncomingCallView$ActionType:[I

    invoke-virtual {p3}, Lus/zoom/zrc/incoming/IncomingCallView$ActionType;->ordinal()I

    move-result p3

    aget p2, p2, p3

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 486
    :pswitch_0
    instance-of p2, p1, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    if-nez p2, :cond_0

    const-string p1, "IncomingCallActivity"

    const-string p2, "The user clicked to hold and accept a sip call, but the call is not sip."

    .line 487
    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 490
    :cond_0
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    .line 491
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2, p1}, Lus/zoom/zrc/model/Model;->holdAndAcceptSipCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    .line 492
    invoke-direct {p0, p1}, Lus/zoom/zrc/incoming/IncomingCallActivity;->onSipAccepted(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    .line 493
    invoke-direct {p0}, Lus/zoom/zrc/incoming/IncomingCallActivity;->declineToMeetingCallAndRemoveView()V

    goto :goto_0

    .line 475
    :pswitch_1
    instance-of p2, p1, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    if-nez p2, :cond_1

    const-string p1, "IncomingCallActivity"

    const-string p2, "The user clicked to end and accept a sip call, but the call is not sip."

    .line 476
    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 479
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    .line 480
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2, p1}, Lus/zoom/zrc/model/Model;->endAndAcceptSipCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    .line 481
    invoke-direct {p0, p1}, Lus/zoom/zrc/incoming/IncomingCallActivity;->onSipAccepted(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    .line 482
    invoke-direct {p0}, Lus/zoom/zrc/incoming/IncomingCallActivity;->declineToMeetingCallAndRemoveView()V

    goto :goto_0

    .line 467
    :pswitch_2
    instance-of p2, p1, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    if-eqz p2, :cond_2

    .line 468
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    invoke-direct {p0, p1}, Lus/zoom/zrc/incoming/IncomingCallActivity;->acceptSip(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    goto :goto_0

    .line 470
    :cond_2
    invoke-direct {p0, p1}, Lus/zoom/zrc/incoming/IncomingCallActivity;->acceptInviteMeet(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)V

    goto :goto_0

    .line 463
    :pswitch_3
    invoke-direct {p0, p1}, Lus/zoom/zrc/incoming/IncomingCallActivity;->acceptUpgradeSip(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x1

    .line 276
    invoke-virtual {p0, v0}, Lus/zoom/zrc/incoming/IncomingCallActivity;->moveTaskToBack(Z)Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 246
    invoke-static {p0}, Lus/zoom/androidlib/util/UIUtil;->isTabletOrTV(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lus/zoom/zrc/incoming/IncomingCallActivity;->isPortraitLayout:Z

    const/4 v0, 0x0

    .line 248
    invoke-virtual {p0, v0}, Lus/zoom/zrc/incoming/IncomingCallActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 249
    invoke-super {p0, p1}, Lus/zoom/zrc/ZRCActivity;->onCreate(Landroid/os/Bundle;)V

    .line 250
    invoke-virtual {p0}, Lus/zoom/zrc/incoming/IncomingCallActivity;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    .line 251
    invoke-virtual {p0}, Lus/zoom/zrc/incoming/IncomingCallActivity;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    .line 252
    invoke-virtual {p0}, Lus/zoom/zrc/incoming/IncomingCallActivity;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    new-array v0, v1, [Lus/zoom/zrc/base/notification/NotificationEvent;

    const/4 v1, 0x0

    sget-object v2, Lus/zoom/zrc/base/notification/ModelEvent;->MeetingTypeChanged:Lus/zoom/zrc/base/notification/ModelEvent;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerNotification([Lus/zoom/zrc/base/notification/NotificationEvent;)V

    .line 254
    sget p1, Lus/zoom/zrcbox/R$layout;->incoming_call_main:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/incoming/IncomingCallActivity;->setContentView(I)V

    .line 255
    sget p1, Lus/zoom/zrcbox/R$id;->incoming_call_container:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/incoming/IncomingCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lus/zoom/zrc/incoming/IncomingCallActivity;->incomingCallViewContainer:Landroid/view/ViewGroup;

    .line 257
    sget-object p1, Lus/zoom/zrc/incoming/IncomingCallActivity;->cachedCalls:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 258
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCIncomingCall;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lus/zoom/zrc/incoming/IncomingCallActivity;->handleReceivedIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingCall;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDeclineIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingCall;Lus/zoom/zrc/incoming/IncomingCallView;Lus/zoom/zrc/incoming/IncomingCallView$ActionType;)V
    .locals 2

    const-string p2, "user decline call: %s"

    const/4 v0, 0x1

    .line 526
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 527
    sget-object p2, Lus/zoom/zrc/incoming/IncomingCallView$ActionType;->TYPE_DECLINE_UPGRADE:Lus/zoom/zrc/incoming/IncomingCallView$ActionType;

    if-ne p3, p2, :cond_0

    .line 528
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    move-object p3, p1

    check-cast p3, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    invoke-virtual {p2, p3}, Lus/zoom/zrc/model/Model;->hangupSipCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    goto :goto_0

    .line 530
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2, p1}, Lus/zoom/zrc/model/Model;->declineIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)V

    .line 532
    :goto_0
    invoke-direct {p0, p1}, Lus/zoom/zrc/incoming/IncomingCallActivity;->removeIncomingCallView(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 270
    invoke-super {p0}, Lus/zoom/zrc/ZRCActivity;->onPause()V

    .line 271
    invoke-direct {p0}, Lus/zoom/zrc/incoming/IncomingCallActivity;->stopCheckingExpiredTimer()V

    return-void
.end method

.method public onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 0

    .line 296
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/ZRCActivity;->onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    .line 297
    sget-object p2, Lus/zoom/zrc/base/notification/ModelEvent;->MeetingTypeChanged:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, p2, :cond_0

    .line 298
    invoke-direct {p0}, Lus/zoom/zrc/incoming/IncomingCallActivity;->handleMeetingOrSipInfoChanged()V

    :cond_0
    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 288
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/ZRCActivity;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 289
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->meetingInfo:I

    if-eq p1, p2, :cond_0

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->sipCallInfos:I

    if-eq p1, p2, :cond_0

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->airPlayBlackMagicStatus:I

    if-ne p1, p2, :cond_1

    .line 290
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/incoming/IncomingCallActivity;->handleMeetingOrSipInfoChanged()V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 264
    invoke-super {p0}, Lus/zoom/zrc/ZRCActivity;->onResume()V

    .line 265
    invoke-direct {p0}, Lus/zoom/zrc/incoming/IncomingCallActivity;->startCheckingExpiredTimer()V

    return-void
.end method
