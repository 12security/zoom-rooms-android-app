.class public Lus/zoom/zrc/phonecall/PhoneCallLauncher;
.super Ljava/lang/Object;
.source "PhoneCallLauncher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneCallLauncher"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/phonecall/PhoneCallLauncher;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lus/zoom/zrc/phonecall/PhoneCallLauncher;->checkToRestore(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    return-void
.end method

.method private checkToRestore(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "PhoneCallLauncher"

    const-string v1, "checkToRestore() called with: call = null"

    .line 96
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 99
    :cond_0
    invoke-static {}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getInstance()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 100
    invoke-virtual {v1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 101
    :cond_2
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getStatus()I

    move-result p1

    invoke-static {p1}, Lus/zoom/zrcsdk/model/ZRCSIPCallStatus;->shouldAccept(I)Z

    move-result p1

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 102
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getWorkMode()I

    move-result p1

    if-ne p1, v2, :cond_3

    .line 104
    invoke-static {}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->obtainInstance()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    .line 105
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p1

    sget-object v0, Lus/zoom/zrc/base/notification/UserEvent;->EnterSipCall:Lus/zoom/zrc/base/notification/UserEvent;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public launchPstnCall(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 3

    .line 47
    invoke-static {}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->obtainInstance()Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;

    .line 49
    invoke-static {}, Lus/zoom/androidlib/app/ZMActivity;->getFrontActivity()Lus/zoom/androidlib/app/ZMActivity;

    move-result-object v0

    .line 50
    instance-of v1, v0, Lus/zoom/zrc/phonecall/PstnPhoneCallActivity;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMActivity;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-static {}, Lus/zoom/zrc/ActivityLauncher;->isMeetingDisplayed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lus/zoom/zrc/ActivityLauncher;->isPresentationDisplayed()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "launchPstnCall show call UI: meeting=%s"

    const/4 v1, 0x1

    .line 55
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-static {p1, p2}, Lus/zoom/zrc/phonecall/PstnPhoneCallActivity;->show(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    :cond_1
    return-void
.end method

.method public launchSipCall(Landroid/content/Context;)V
    .locals 3

    .line 61
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 63
    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 66
    invoke-static {p1}, Lus/zoom/zrc/phonecall/SipPhoneCallActivity;->show(Landroid/content/Context;)V

    goto :goto_1

    .line 69
    :cond_1
    invoke-static {}, Lus/zoom/zrc/ActivityLauncher;->isPresentationDisplayed()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 71
    :cond_2
    invoke-static {}, Lus/zoom/zrc/ActivityLauncher;->isGoingToShowPresentation()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    invoke-static {}, Lus/zoom/zrc/PTActivity;->showPhoneInPresentation()V

    goto :goto_1

    .line 74
    :cond_3
    invoke-static {p1}, Lus/zoom/zrc/phonecall/SipPhoneCallActivity;->show(Landroid/content/Context;)V

    :goto_1
    return-void
.end method

.method public release()V
    .locals 2

    .line 43
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->removeNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;)V

    return-void
.end method

.method public resumeSipPhoneCallActivity()V
    .locals 2

    .line 80
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 81
    const-class v1, Lus/zoom/zrc/phonecall/SipPhoneCallActivity;

    invoke-static {v1}, Lus/zoom/zrc/ActivityLauncher;->getActivity(Ljava/lang/Class;)Lus/zoom/androidlib/app/ZMActivity;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/phonecall/SipPhoneCallActivity;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 84
    invoke-static {}, Lus/zoom/androidlib/app/ForegroundTaskManager;->getInstance()Lus/zoom/androidlib/app/ForegroundTaskManager;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/phonecall/PhoneCallLauncher$2;

    invoke-direct {v1, p0}, Lus/zoom/zrc/phonecall/PhoneCallLauncher$2;-><init>(Lus/zoom/zrc/phonecall/PhoneCallLauncher;)V

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/app/ForegroundTaskManager;->runInForeground(Lus/zoom/androidlib/app/ForegroundTask;)V

    :cond_0
    return-void
.end method

.method public setup()V
    .locals 4

    .line 31
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/phonecall/PhoneCallLauncher;

    sget-object v2, Lus/zoom/zrc/base/notification/BasicEvent;->All:Lus/zoom/zrc/base/notification/BasicEvent;

    new-instance v3, Lus/zoom/zrc/phonecall/PhoneCallLauncher$1;

    invoke-direct {v3, p0}, Lus/zoom/zrc/phonecall/PhoneCallLauncher$1;-><init>(Lus/zoom/zrc/phonecall/PhoneCallLauncher;)V

    invoke-virtual {v0, v1, v2, v3}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    return-void
.end method
