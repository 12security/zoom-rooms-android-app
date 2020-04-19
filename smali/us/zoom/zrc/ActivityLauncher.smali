.class public Lus/zoom/zrc/ActivityLauncher;
.super Ljava/lang/Object;
.source "ActivityLauncher.java"


# static fields
.field private static instance:Lus/zoom/zrc/ActivityLauncher;


# instance fields
.field private model:Lus/zoom/zrc/model/Model;

.field private phoneCallLauncher:Lus/zoom/zrc/phonecall/PhoneCallLauncher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/ActivityLauncher;->model:Lus/zoom/zrc/model/Model;

    .line 51
    new-instance v0, Lus/zoom/zrc/phonecall/PhoneCallLauncher;

    invoke-direct {v0}, Lus/zoom/zrc/phonecall/PhoneCallLauncher;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/ActivityLauncher;->phoneCallLauncher:Lus/zoom/zrc/phonecall/PhoneCallLauncher;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/ActivityLauncher;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lus/zoom/zrc/ActivityLauncher;->onConnectionClosed(I)V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/ActivityLauncher;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lus/zoom/zrc/ActivityLauncher;->onZoomRoomLoggedInAtPairedMode(I)V

    return-void
.end method

.method static synthetic access$1000(Lus/zoom/zrc/ActivityLauncher;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->onConfReady()V

    return-void
.end method

.method static synthetic access$1100(Lus/zoom/zrc/ActivityLauncher;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->onMeetingExited()V

    return-void
.end method

.method static synthetic access$1200(Lus/zoom/zrc/ActivityLauncher;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->onEnterSipCall()V

    return-void
.end method

.method static synthetic access$1300(Lus/zoom/zrc/ActivityLauncher;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lus/zoom/zrc/ActivityLauncher;->onDialOutPstnCall(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    return-void
.end method

.method static synthetic access$1400(Lus/zoom/zrc/ActivityLauncher;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->onRemoteControlRestartRoom()V

    return-void
.end method

.method static synthetic access$1500(Lus/zoom/zrc/ActivityLauncher;Z)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lus/zoom/zrc/ActivityLauncher;->onRecordingConsentNotification(Z)V

    return-void
.end method

.method static synthetic access$1600(Lus/zoom/zrc/ActivityLauncher;ZI)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/ActivityLauncher;->onNeedWaitForHost(ZI)V

    return-void
.end method

.method static synthetic access$1700(Lus/zoom/zrc/ActivityLauncher;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->onAirplayBlackMagicStatusChanged()V

    return-void
.end method

.method static synthetic access$1800(Lus/zoom/zrc/ActivityLauncher;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->onDeleteZoomRoomsFromWeb()V

    return-void
.end method

.method static synthetic access$1900(Lus/zoom/zrc/ActivityLauncher;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lus/zoom/zrc/ActivityLauncher;->onShowMeetingErrorMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lus/zoom/zrc/ActivityLauncher;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->onControllerLoggedInAtPairedMode()V

    return-void
.end method

.method static synthetic access$2000(Lus/zoom/zrc/ActivityLauncher;ZZZ)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrc/ActivityLauncher;->onPSTNCallOutResult(ZZZ)V

    return-void
.end method

.method static synthetic access$2100(Lus/zoom/zrc/ActivityLauncher;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->onSwitchToNormalMeeting()V

    return-void
.end method

.method static synthetic access$2200(Lus/zoom/zrc/ActivityLauncher;)Landroid/content/Context;
    .locals 0

    .line 45
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/zrc/ActivityLauncher;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->onZoomRoomSignedOut()V

    return-void
.end method

.method static synthetic access$400(Lus/zoom/zrc/ActivityLauncher;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lus/zoom/zrc/ActivityLauncher;->onConnectedToZoomRoom(I)V

    return-void
.end method

.method static synthetic access$500(Lus/zoom/zrc/ActivityLauncher;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->onInitConnectionFinished()V

    return-void
.end method

.method static synthetic access$600(Lus/zoom/zrc/ActivityLauncher;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lus/zoom/zrc/ActivityLauncher;->onNewLicenseKey(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lus/zoom/zrc/ActivityLauncher;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->onLogout()V

    return-void
.end method

.method static synthetic access$800(Lus/zoom/zrc/ActivityLauncher;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->onSwitchWorkMode()V

    return-void
.end method

.method static synthetic access$900(Lus/zoom/zrc/ActivityLauncher;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->onUserRefreshZAKError()V

    return-void
.end method

.method private varargs closeActivitiesExcept([Ljava/lang/Class;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 578
    :goto_0
    invoke-static {}, Lus/zoom/androidlib/app/ZMActivity;->getInProcessActivityCountInStack()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 579
    invoke-static {v1}, Lus/zoom/androidlib/app/ZMActivity;->getInProcessActivityInStackAt(I)Lus/zoom/androidlib/app/ZMActivity;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    if-eqz p1, :cond_2

    .line 586
    array-length v3, p1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, p1, v4

    .line 587
    invoke-virtual {v5, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_3

    .line 594
    invoke-virtual {v2}, Lus/zoom/androidlib/app/ZMActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_3

    .line 595
    invoke-virtual {v2}, Lus/zoom/androidlib/app/ZMActivity;->finish()V

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static closeActivity(Ljava/lang/Class;)Z
    .locals 4
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 616
    :goto_0
    invoke-static {}, Lus/zoom/androidlib/app/ZMActivity;->getInProcessActivityCountInStack()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 617
    invoke-static {v1}, Lus/zoom/androidlib/app/ZMActivity;->getInProcessActivityInStackAt(I)Lus/zoom/androidlib/app/ZMActivity;

    move-result-object v2

    if-nez v2, :cond_0

    return v0

    .line 621
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lus/zoom/androidlib/app/ZMActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 622
    invoke-virtual {v2}, Lus/zoom/androidlib/app/ZMActivity;->finish()V

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static getActivity(Ljava/lang/Class;)Lus/zoom/androidlib/app/ZMActivity;
    .locals 3
    .param p0    # Ljava/lang/Class;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lus/zoom/androidlib/app/ZMActivity;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 632
    :goto_0
    invoke-static {}, Lus/zoom/androidlib/app/ZMActivity;->getInProcessActivityCountInStack()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 633
    invoke-static {v0}, Lus/zoom/androidlib/app/ZMActivity;->getInProcessActivityInStackAt(I)Lus/zoom/androidlib/app/ZMActivity;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 637
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lus/zoom/androidlib/app/ZMActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .line 570
    invoke-static {}, Lus/zoom/androidlib/app/ZMActivity;->getFrontActivity()Lus/zoom/androidlib/app/ZMActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 572
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getDefault()Lus/zoom/zrc/ActivityLauncher;
    .locals 1

    .line 54
    sget-object v0, Lus/zoom/zrc/ActivityLauncher;->instance:Lus/zoom/zrc/ActivityLauncher;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lus/zoom/zrc/ActivityLauncher;

    invoke-direct {v0}, Lus/zoom/zrc/ActivityLauncher;-><init>()V

    sput-object v0, Lus/zoom/zrc/ActivityLauncher;->instance:Lus/zoom/zrc/ActivityLauncher;

    .line 57
    :cond_0
    sget-object v0, Lus/zoom/zrc/ActivityLauncher;->instance:Lus/zoom/zrc/ActivityLauncher;

    return-object v0
.end method

.method private static varargs isAnyActivityDisplayed([Ljava/lang/Class;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 601
    :goto_0
    invoke-static {}, Lus/zoom/androidlib/app/ZMActivity;->getInProcessActivityCountInStack()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 602
    invoke-static {v1}, Lus/zoom/androidlib/app/ZMActivity;->getInProcessActivityInStackAt(I)Lus/zoom/androidlib/app/ZMActivity;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 606
    :cond_0
    array-length v3, p0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, p0, v4

    .line 607
    invoke-virtual {v5, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Lus/zoom/androidlib/app/ZMActivity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public static isGoingToShowPresentation()Z
    .locals 1

    .line 654
    sget-boolean v0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isPendingToShow:Z

    return v0
.end method

.method public static isMeetingDisplayed()Z
    .locals 3

    const/4 v0, 0x1

    .line 650
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lus/zoom/zrc/MeetingActivity;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lus/zoom/zrc/ActivityLauncher;->isAnyActivityDisplayed([Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static isPresentationDisplayed()Z
    .locals 1

    .line 645
    const-class v0, Lus/zoom/zrc/PTActivity;

    invoke-static {v0}, Lus/zoom/zrc/ActivityLauncher;->getActivity(Ljava/lang/Class;)Lus/zoom/androidlib/app/ZMActivity;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/PTActivity;

    if-eqz v0, :cond_0

    .line 646
    invoke-virtual {v0}, Lus/zoom/zrc/PTActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isPresentationDisplayed(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onAirplayBlackMagicStatusChanged()V
    .locals 5

    .line 464
    iget-object v0, p0, Lus/zoom/zrc/ActivityLauncher;->model:Lus/zoom/zrc/model/Model;

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getWorkMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    return-void

    .line 468
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    return-void

    .line 472
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isInAirHostShare()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 473
    invoke-static {}, Lus/zoom/zrc/ActivityLauncher;->isGoingToShowPresentation()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "weird case! dispatch notification into share fragment"

    .line 474
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 475
    invoke-static {}, Lus/zoom/zrc/PTActivity;->dispatchAirplayBlackMagicStatusChanged()V

    :cond_2
    return-void

    .line 480
    :cond_3
    invoke-static {}, Lus/zoom/zrc/ActivityLauncher;->isPresentationDisplayed()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 484
    :cond_4
    invoke-static {}, Lus/zoom/androidlib/app/ZMActivity;->getFrontActivity()Lus/zoom/androidlib/app/ZMActivity;

    move-result-object v0

    instance-of v0, v0, Lus/zoom/zrc/PTActivity;

    if-nez v0, :cond_5

    .line 485
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lus/zoom/zrc/PTActivity;

    invoke-static {v0, v3}, Lus/zoom/zrc/utils/ZRCUIUtils;->safeStartActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 488
    :cond_5
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAirPlayBlackMagicStatus()Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;

    move-result-object v0

    .line 490
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->getInstructionDisplayState()I

    move-result v3

    const/16 v4, 0x1e

    if-ne v3, v1, :cond_6

    const-string v0, "ZR is showing share iPhone/iPad instruction, launch sharing instruction in PreMeeting."

    .line 491
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 492
    sget-object v0, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_iOS:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    invoke-static {v0, v4, v2}, Lus/zoom/zrc/PTActivity;->launchPresentationPage(Lus/zoom/zrc/share_camera/model/ZRCSharingType;IZ)V

    goto :goto_0

    .line 493
    :cond_6
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isAirHostClientConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "AirHost got connected, auto launch sharing iPhone/iPad instruction in PreMeeting."

    .line 494
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    sget-object v0, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_iOS:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    const/4 v1, 0x1

    invoke-static {v0, v4, v1}, Lus/zoom/zrc/PTActivity;->launchPresentationPage(Lus/zoom/zrc/share_camera/model/ZRCSharingType;IZ)V

    :cond_7
    :goto_0
    return-void
.end method

.method private onConfReady()V
    .locals 1

    .line 371
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 376
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->showMeetingUI()V

    return-void
.end method

.method private onConnectedToZoomRoom(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 317
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->showPreMeetingUI()V

    goto :goto_0

    .line 319
    :cond_0
    invoke-direct {p0, p1}, Lus/zoom/zrc/ActivityLauncher;->onConnectionClosed(I)V

    :goto_0
    return-void
.end method

.method private onConnectionClosed(I)V
    .locals 3

    const/4 v0, 0x1

    .line 291
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lus/zoom/zrc/login/LoginActivity;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lus/zoom/zrc/ActivityLauncher;->closeActivitiesExcept([Ljava/lang/Class;)V

    .line 292
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lus/zoom/zrc/login/LoginActivity;->showConnectionClosed(Landroid/content/Context;I)V

    return-void
.end method

.method private onControllerLoggedInAtPairedMode()V
    .locals 3

    const/4 v0, 0x1

    .line 311
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lus/zoom/zrc/login/LoginActivity;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lus/zoom/zrc/ActivityLauncher;->closeActivitiesExcept([Ljava/lang/Class;)V

    .line 312
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->showPreMeetingUI()V

    return-void
.end method

.method private onDeleteZoomRoomsFromWeb()V
    .locals 1

    .line 566
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/login/LoginActivity;->showDeleteZoomRoomsFromWeb(Landroid/content/Context;)V

    return-void
.end method

.method private onDialOutPstnCall(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 2

    .line 406
    iget-object v0, p0, Lus/zoom/zrc/ActivityLauncher;->phoneCallLauncher:Lus/zoom/zrc/phonecall/PhoneCallLauncher;

    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/phonecall/PhoneCallLauncher;->launchPstnCall(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    return-void
.end method

.method private onEnterSipCall()V
    .locals 2

    .line 398
    iget-object v0, p0, Lus/zoom/zrc/ActivityLauncher;->model:Lus/zoom/zrc/model/Model;

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getWorkMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    return-void

    .line 402
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/ActivityLauncher;->phoneCallLauncher:Lus/zoom/zrc/phonecall/PhoneCallLauncher;

    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/phonecall/PhoneCallLauncher;->launchSipCall(Landroid/content/Context;)V

    return-void
.end method

.method private onInitConnectionFinished()V
    .locals 4

    .line 324
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 325
    iget-object v1, p0, Lus/zoom/zrc/ActivityLauncher;->model:Lus/zoom/zrc/model/Model;

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getRoomInfo()Lus/zoom/zrcsdk/model/ZRCRoomInfo;

    move-result-object v1

    .line 327
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "ERROR: connected to ZR, but roomInfo is null!!!"

    const/4 v2, 0x0

    .line 328
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 329
    invoke-static {v0, v1}, Lus/zoom/zrc/login/LoginActivity;->showConnectWithZoomRoomError(Landroid/content/Context;I)V

    return-void

    .line 333
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getUserProfile()Lus/zoom/zrc/model/ZRCUserProfile;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 334
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->isNull()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, -0x1

    iget-object v3, p0, Lus/zoom/zrc/ActivityLauncher;->model:Lus/zoom/zrc/model/Model;

    .line 335
    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->getLoginType()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 336
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->getLoginType()I

    move-result v1

    iget-object v2, p0, Lus/zoom/zrc/ActivityLauncher;->model:Lus/zoom/zrc/model/Model;

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getLoginType()I

    move-result v2

    if-eq v1, v2, :cond_1

    const/16 v1, -0x2710

    .line 337
    invoke-static {v0, v1}, Lus/zoom/zrc/login/LoginActivity;->showConnectWithZoomRoomError(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method private onLogout()V
    .locals 3

    .line 346
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v1, v0, :cond_0

    .line 347
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/login/LoginActivity;->showLogoutInPairingMode(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 349
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lus/zoom/zrc/login/LoginActivity;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lus/zoom/zrc/ActivityLauncher;->closeActivitiesExcept([Ljava/lang/Class;)V

    .line 350
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/login/LoginActivity;->show(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private onMeetingExited()V
    .locals 2

    .line 388
    iget-object v0, p0, Lus/zoom/zrc/ActivityLauncher;->model:Lus/zoom/zrc/model/Model;

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getWorkMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    return-void

    .line 392
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 393
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/phonecall/SipPhoneCallActivity;->show(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private onNeedWaitForHost(ZI)V
    .locals 2

    .line 448
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getWorkMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    return-void

    .line 451
    :cond_0
    invoke-static {p1, p2}, Lus/zoom/zrc/PTActivity;->showNeedWaitingForHost(ZI)V

    return-void
.end method

.method private onNewLicenseKey(Ljava/lang/String;)V
    .locals 1

    .line 342
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lus/zoom/zrc/login/LoginActivity;->showAutoLogin(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private onPSTNCallOutResult(ZZZ)V
    .locals 2

    .line 410
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getWorkMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    return-void

    :cond_2
    if-eqz p3, :cond_3

    return-void

    .line 426
    :cond_3
    invoke-static {}, Lus/zoom/zrc/ActivityLauncher;->isPresentationDisplayed()Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 430
    :cond_4
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 431
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getMeetingListItem()Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    move-result-object p1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    .line 432
    :goto_0
    iget-object p2, p0, Lus/zoom/zrc/ActivityLauncher;->phoneCallLauncher:Lus/zoom/zrc/phonecall/PhoneCallLauncher;

    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lus/zoom/zrc/phonecall/PhoneCallLauncher;->launchPstnCall(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    return-void
.end method

.method private onRecordingConsentNotification(Z)V
    .locals 2

    .line 441
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getWorkMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    return-void

    .line 444
    :cond_0
    invoke-static {p1}, Lus/zoom/zrc/MeetingActivity;->showRecordingConsent(Z)V

    return-void
.end method

.method private onRemoteControlRestartRoom()V
    .locals 3

    const/4 v0, 0x1

    .line 436
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lus/zoom/zrc/login/LoginActivity;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lus/zoom/zrc/ActivityLauncher;->closeActivitiesExcept([Ljava/lang/Class;)V

    .line 437
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/login/LoginActivity;->show(Landroid/content/Context;)V

    return-void
.end method

.method private onShowMeetingErrorMessage(Ljava/lang/String;)V
    .locals 2

    .line 500
    iget-object v0, p0, Lus/zoom/zrc/ActivityLauncher;->model:Lus/zoom/zrc/model/Model;

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getWorkMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    return-void

    .line 503
    :cond_0
    invoke-static {p1}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 504
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method private onSwitchToNormalMeeting()V
    .locals 1

    .line 381
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingType()I

    move-result v0

    if-nez v0, :cond_0

    .line 382
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->showMeetingUI()V

    :cond_0
    return-void
.end method

.method private onSwitchWorkMode()V
    .locals 3

    .line 359
    invoke-static {}, Lus/zoom/androidlib/app/ZMActivity;->getFrontActivity()Lus/zoom/androidlib/app/ZMActivity;

    move-result-object v0

    .line 360
    instance-of v1, v0, Lus/zoom/zrc/ZRCActivity;

    if-eqz v1, :cond_0

    .line 361
    move-object v1, v0

    check-cast v1, Lus/zoom/zrc/ZRCActivity;

    sget v2, Lus/zoom/zrcbox/R$string;->connecting_to_zp:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lus/zoom/zrc/ZRCActivity;->showWaitingDialog(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private onUserRefreshZAKError()V
    .locals 3

    const/4 v0, 0x1

    .line 366
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lus/zoom/zrc/login/LoginActivity;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lus/zoom/zrc/ActivityLauncher;->closeActivitiesExcept([Ljava/lang/Class;)V

    .line 367
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/login/LoginActivity;->showUserRefreshZAKError(Landroid/content/Context;)V

    return-void
.end method

.method private onZoomRoomLoggedInAtPairedMode(I)V
    .locals 3

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 301
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lus/zoom/zrc/login/LoginActivity;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lus/zoom/zrc/ActivityLauncher;->closeActivitiesExcept([Ljava/lang/Class;)V

    .line 302
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lus/zoom/zrc/login/LoginActivity;->showZoomRoomLoggedIn(Landroid/content/Context;I)V

    return-void
.end method

.method private onZoomRoomSignedOut()V
    .locals 3

    const/4 v0, 0x1

    .line 306
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lus/zoom/zrc/login/LoginActivity;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lus/zoom/zrc/ActivityLauncher;->closeActivitiesExcept([Ljava/lang/Class;)V

    .line 307
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/login/LoginActivity;->showZoomRoomSignedOut(Landroid/content/Context;)V

    return-void
.end method

.method private showControllerUI()V
    .locals 4

    .line 509
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    .line 510
    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lus/zoom/zrc/PTActivity;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lus/zoom/zrc/incoming/IncomingCallActivity;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {p0, v1}, Lus/zoom/zrc/ActivityLauncher;->closeActivitiesExcept([Ljava/lang/Class;)V

    .line 511
    invoke-static {v0, v3}, Lus/zoom/zrc/PTActivity;->show(Landroid/content/Context;Z)V

    return-void
.end method

.method private showMeetingUI()V
    .locals 5

    .line 521
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 523
    iget-object v1, p0, Lus/zoom/zrc/ActivityLauncher;->model:Lus/zoom/zrc/model/Model;

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getWorkMode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v4, v1, :cond_0

    .line 524
    new-array v1, v3, [Ljava/lang/Class;

    const-class v3, Lus/zoom/zrp/ZRPPanelActivity;

    aput-object v3, v1, v2

    invoke-direct {p0, v1}, Lus/zoom/zrc/ActivityLauncher;->closeActivitiesExcept([Ljava/lang/Class;)V

    .line 525
    invoke-static {v0}, Lus/zoom/zrp/ZRPPanelActivity;->show(Landroid/content/Context;)V

    goto :goto_0

    .line 527
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingType()I

    move-result v0

    const-string v1, "show %s meeting ui"

    .line 528
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingType;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x0

    .line 538
    invoke-direct {p0, v0}, Lus/zoom/zrc/ActivityLauncher;->onDialOutPstnCall(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    goto :goto_0

    .line 535
    :pswitch_1
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->startSharingMeeting()V

    goto :goto_0

    .line 532
    :pswitch_2
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->startNormalMeeting()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showPanelUI()V
    .locals 4

    .line 515
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    .line 516
    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lus/zoom/zrp/ZRPPanelActivity;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v1}, Lus/zoom/zrc/ActivityLauncher;->closeActivitiesExcept([Ljava/lang/Class;)V

    .line 517
    invoke-static {v0}, Lus/zoom/zrp/ZRPPanelActivity;->show(Landroid/content/Context;)V

    return-void
.end method

.method private showPreMeetingUI()V
    .locals 2

    .line 455
    iget-object v0, p0, Lus/zoom/zrc/ActivityLauncher;->model:Lus/zoom/zrc/model/Model;

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getWorkMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 456
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->showPanelUI()V

    goto :goto_0

    .line 458
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->showControllerUI()V

    :goto_0
    return-void
.end method

.method private startNormalMeeting()V
    .locals 3

    const/4 v0, 0x3

    .line 545
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lus/zoom/zrc/PTActivity;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lus/zoom/zrc/MeetingActivity;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Lus/zoom/zrc/incoming/IncomingCallActivity;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lus/zoom/zrc/ActivityLauncher;->closeActivitiesExcept([Ljava/lang/Class;)V

    .line 546
    invoke-static {}, Lus/zoom/androidlib/app/ZMActivity;->getFrontActivity()Lus/zoom/androidlib/app/ZMActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 547
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/MeetingActivity;

    invoke-static {v0, v1}, Lus/zoom/zrc/utils/ZRCUIUtils;->safeStartActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 550
    :cond_0
    invoke-static {}, Lus/zoom/androidlib/app/ForegroundTaskManager;->getInstance()Lus/zoom/androidlib/app/ForegroundTaskManager;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/ActivityLauncher$24;

    invoke-direct {v1, p0}, Lus/zoom/zrc/ActivityLauncher$24;-><init>(Lus/zoom/zrc/ActivityLauncher;)V

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/app/ForegroundTaskManager;->runInForeground(Lus/zoom/androidlib/app/ForegroundTask;)V

    :goto_0
    return-void
.end method

.method private startSharingMeeting()V
    .locals 1

    .line 562
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/PTActivity;->showSharingMeeting(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method launchActivityByAppState(Landroid/content/Context;)V
    .locals 3

    .line 254
    iget-object v0, p0, Lus/zoom/zrc/ActivityLauncher;->model:Lus/zoom/zrc/model/Model;

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 278
    :pswitch_0
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->showPanelUI()V

    goto :goto_0

    .line 269
    :pswitch_1
    new-array v0, v2, [Ljava/lang/Class;

    const-class v2, Lus/zoom/zrc/login/LoginActivity;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lus/zoom/zrc/ActivityLauncher;->closeActivitiesExcept([Ljava/lang/Class;)V

    .line 270
    invoke-static {p1}, Lus/zoom/zrc/login/LoginActivity;->showWorkModeSelection(Landroid/content/Context;)V

    goto :goto_0

    .line 283
    :pswitch_2
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 284
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->showMeetingUI()V

    goto :goto_0

    .line 273
    :pswitch_3
    iget-object p1, p0, Lus/zoom/zrc/ActivityLauncher;->phoneCallLauncher:Lus/zoom/zrc/phonecall/PhoneCallLauncher;

    invoke-virtual {p1}, Lus/zoom/zrc/phonecall/PhoneCallLauncher;->resumeSipPhoneCallActivity()V

    .line 274
    invoke-direct {p0}, Lus/zoom/zrc/ActivityLauncher;->showPreMeetingUI()V

    goto :goto_0

    .line 265
    :pswitch_4
    new-array v0, v2, [Ljava/lang/Class;

    const-class v2, Lus/zoom/zrc/login/LoginActivity;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lus/zoom/zrc/ActivityLauncher;->closeActivitiesExcept([Ljava/lang/Class;)V

    .line 266
    invoke-static {p1}, Lus/zoom/zrc/login/LoginActivity;->show(Landroid/content/Context;)V

    goto :goto_0

    .line 259
    :pswitch_5
    invoke-static {}, Lus/zoom/zrc/login/AutoLoginManager;->getInstance()Lus/zoom/zrc/login/AutoLoginManager;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/login/AutoLoginManager;->loginWithPushedCode()V

    :cond_0
    :goto_0
    :pswitch_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 3

    .line 228
    iget-object v0, p0, Lus/zoom/zrc/ActivityLauncher;->model:Lus/zoom/zrc/model/Model;

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/ActivityLauncher;->model:Lus/zoom/zrc/model/Model;

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isAuthenticated()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZRC launching, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrc/ActivityLauncher;->model:Lus/zoom/zrc/model/Model;

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getLoginType()I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "have Google token"

    goto :goto_0

    :cond_1
    const-string v2, "have Zoom token"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    iget-object v0, p0, Lus/zoom/zrc/ActivityLauncher;->model:Lus/zoom/zrc/model/Model;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->setAppState(I)V

    goto :goto_1

    :cond_2
    const-string v0, "ZRC launching, unauthenticated"

    .line 236
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lus/zoom/zrc/ActivityLauncher;->model:Lus/zoom/zrc/model/Model;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->setAppState(I)V

    :goto_1
    return-void
.end method

.method public release()V
    .locals 2

    .line 223
    iget-object v0, p0, Lus/zoom/zrc/ActivityLauncher;->phoneCallLauncher:Lus/zoom/zrc/phonecall/PhoneCallLauncher;

    invoke-virtual {v0}, Lus/zoom/zrc/phonecall/PhoneCallLauncher;->release()V

    .line 224
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->removeNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;)V

    return-void
.end method

.method public setup()V
    .locals 3

    .line 61
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->ConnectionClosed:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v2, Lus/zoom/zrc/ActivityLauncher$1;

    invoke-direct {v2, p0}, Lus/zoom/zrc/ActivityLauncher$1;-><init>(Lus/zoom/zrc/ActivityLauncher;)V

    invoke-virtual {v0, p0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 67
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->ZRLoggedInAtPairedMode:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v2, Lus/zoom/zrc/ActivityLauncher$2;

    invoke-direct {v2, p0}, Lus/zoom/zrc/ActivityLauncher$2;-><init>(Lus/zoom/zrc/ActivityLauncher;)V

    invoke-virtual {v0, p0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 73
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->ControllerLoggedInAtPairedMode:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v2, Lus/zoom/zrc/ActivityLauncher$3;

    invoke-direct {v2, p0}, Lus/zoom/zrc/ActivityLauncher$3;-><init>(Lus/zoom/zrc/ActivityLauncher;)V

    invoke-virtual {v0, p0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 79
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->ZR_SignOut:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v2, Lus/zoom/zrc/ActivityLauncher$4;

    invoke-direct {v2, p0}, Lus/zoom/zrc/ActivityLauncher$4;-><init>(Lus/zoom/zrc/ActivityLauncher;)V

    invoke-virtual {v0, p0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 85
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->ConnectingFinished:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v2, Lus/zoom/zrc/ActivityLauncher$5;

    invoke-direct {v2, p0}, Lus/zoom/zrc/ActivityLauncher$5;-><init>(Lus/zoom/zrc/ActivityLauncher;)V

    invoke-virtual {v0, p0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 91
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->InitConnectionFinished:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v2, Lus/zoom/zrc/ActivityLauncher$6;

    invoke-direct {v2, p0}, Lus/zoom/zrc/ActivityLauncher$6;-><init>(Lus/zoom/zrc/ActivityLauncher;)V

    invoke-virtual {v0, p0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 97
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->AutoLogin:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v2, Lus/zoom/zrc/ActivityLauncher$7;

    invoke-direct {v2, p0}, Lus/zoom/zrc/ActivityLauncher$7;-><init>(Lus/zoom/zrc/ActivityLauncher;)V

    invoke-virtual {v0, p0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 103
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->Logout:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v2, Lus/zoom/zrc/ActivityLauncher$8;

    invoke-direct {v2, p0}, Lus/zoom/zrc/ActivityLauncher$8;-><init>(Lus/zoom/zrc/ActivityLauncher;)V

    invoke-virtual {v0, p0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 109
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->SwitchingWorkMode:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v2, Lus/zoom/zrc/ActivityLauncher$9;

    invoke-direct {v2, p0}, Lus/zoom/zrc/ActivityLauncher$9;-><init>(Lus/zoom/zrc/ActivityLauncher;)V

    invoke-virtual {v0, p0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 115
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->UserRefreshZAKError:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v2, Lus/zoom/zrc/ActivityLauncher$10;

    invoke-direct {v2, p0}, Lus/zoom/zrc/ActivityLauncher$10;-><init>(Lus/zoom/zrc/ActivityLauncher;)V

    invoke-virtual {v0, p0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 121
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->OnConfReady:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v2, Lus/zoom/zrc/ActivityLauncher$11;

    invoke-direct {v2, p0}, Lus/zoom/zrc/ActivityLauncher$11;-><init>(Lus/zoom/zrc/ActivityLauncher;)V

    invoke-virtual {v0, p0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 127
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->OnMeetingExitedNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v2, Lus/zoom/zrc/ActivityLauncher$12;

    invoke-direct {v2, p0}, Lus/zoom/zrc/ActivityLauncher$12;-><init>(Lus/zoom/zrc/ActivityLauncher;)V

    invoke-virtual {v0, p0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 133
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/UserEvent;->EnterSipCall:Lus/zoom/zrc/base/notification/UserEvent;

    new-instance v2, Lus/zoom/zrc/ActivityLauncher$13;

    invoke-direct {v2, p0}, Lus/zoom/zrc/ActivityLauncher$13;-><init>(Lus/zoom/zrc/ActivityLauncher;)V

    invoke-virtual {v0, p0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 139
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/UserEvent;->DialOutPstnCall:Lus/zoom/zrc/base/notification/UserEvent;

    new-instance v2, Lus/zoom/zrc/ActivityLauncher$14;

    invoke-direct {v2, p0}, Lus/zoom/zrc/ActivityLauncher$14;-><init>(Lus/zoom/zrc/ActivityLauncher;)V

    invoke-virtual {v0, p0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 150
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->RemoteControlRestartRoom:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v2, Lus/zoom/zrc/ActivityLauncher$15;

    invoke-direct {v2, p0}, Lus/zoom/zrc/ActivityLauncher$15;-><init>(Lus/zoom/zrc/ActivityLauncher;)V

    invoke-virtual {v0, p0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 157
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->OnRecordingConsentNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v2, Lus/zoom/zrc/ActivityLauncher$16;

    invoke-direct {v2, p0}, Lus/zoom/zrc/ActivityLauncher$16;-><init>(Lus/zoom/zrc/ActivityLauncher;)V

    invoke-virtual {v0, p0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 164
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->NeedWaitForHost:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v2, Lus/zoom/zrc/ActivityLauncher$17;

    invoke-direct {v2, p0}, Lus/zoom/zrc/ActivityLauncher$17;-><init>(Lus/zoom/zrc/ActivityLauncher;)V

    invoke-virtual {v0, p0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 172
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->OnUpdateAirPlayBlackMagicStatus:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v2, Lus/zoom/zrc/ActivityLauncher$18;

    invoke-direct {v2, p0}, Lus/zoom/zrc/ActivityLauncher$18;-><init>(Lus/zoom/zrc/ActivityLauncher;)V

    invoke-virtual {v0, p0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 179
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->DeleteZoomRoomsFromWeb:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v2, Lus/zoom/zrc/ActivityLauncher$19;

    invoke-direct {v2, p0}, Lus/zoom/zrc/ActivityLauncher$19;-><init>(Lus/zoom/zrc/ActivityLauncher;)V

    invoke-virtual {v0, p0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 186
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->OnMeetingErrorNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v2, Lus/zoom/zrc/ActivityLauncher$20;

    invoke-direct {v2, p0}, Lus/zoom/zrc/ActivityLauncher$20;-><init>(Lus/zoom/zrc/ActivityLauncher;)V

    invoke-virtual {v0, p0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 194
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->OnMeetingEndedNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v2, Lus/zoom/zrc/ActivityLauncher$21;

    invoke-direct {v2, p0}, Lus/zoom/zrc/ActivityLauncher$21;-><init>(Lus/zoom/zrc/ActivityLauncher;)V

    invoke-virtual {v0, p0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 202
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->PSTNCallOutResult:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v2, Lus/zoom/zrc/ActivityLauncher$22;

    invoke-direct {v2, p0}, Lus/zoom/zrc/ActivityLauncher$22;-><init>(Lus/zoom/zrc/ActivityLauncher;)V

    invoke-virtual {v0, p0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 212
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/UserEvent;->SwitchToNormalMeeting:Lus/zoom/zrc/base/notification/UserEvent;

    new-instance v2, Lus/zoom/zrc/ActivityLauncher$23;

    invoke-direct {v2, p0}, Lus/zoom/zrc/ActivityLauncher$23;-><init>(Lus/zoom/zrc/ActivityLauncher;)V

    invoke-virtual {v0, p0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 219
    iget-object v0, p0, Lus/zoom/zrc/ActivityLauncher;->phoneCallLauncher:Lus/zoom/zrc/phonecall/PhoneCallLauncher;

    invoke-virtual {v0}, Lus/zoom/zrc/phonecall/PhoneCallLauncher;->setup()V

    return-void
.end method
