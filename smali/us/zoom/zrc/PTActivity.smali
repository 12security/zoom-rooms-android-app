.class public Lus/zoom/zrc/PTActivity;
.super Lus/zoom/zrc/ZRCActivity;
.source "PTActivity.java"

# interfaces
.implements Lus/zoom/zrc/model/AppEngine$IZRPtEvent;
.implements Lus/zoom/zrc/view/PTMenuView$IPTMenuViewSelected;
.implements Lus/zoom/zrc/model/AppEngine$IZRMeetingStatusEvent;
.implements Lus/zoom/zrc/model/AppEngine$IWebEvent;
.implements Lus/zoom/zrc/view/JoinMeetingFragment$OnClickJoinMeetingBtnListener;
.implements Lus/zoom/zrc/view/IMAddrBookListFragment$OnClickMeetingNowBtnListener;
.implements Lus/zoom/zrc/model/AppEngine$IWebPullCallBackEvent;
.implements Lus/zoom/zrc/model/AppEngine$IWebinarRoleChangedEvent;


# static fields
.field public static final MEETING_REQUEST_CODE:I = 0x1

.field public static final ROLL_BACK_PT_MENU_TIME:J = 0x927c0L

.field private static final TAG:Ljava/lang/String; = "PTActivity"


# instance fields
.field private final dismissTask:Ljava/lang/Runnable;

.field private lastFullFunctionality:Z

.field private lastPublicRoomEnabledValue:Z

.field private listener:Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;

.field private mControlSystemFragment:Lus/zoom/zrc/control_system/ControlSystemFragment;

.field private mDialFragment:Lus/zoom/zrc/view/DialFragment;

.field private mEnterPasswordDialogDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

.field private mFragmentList:[Landroidx/fragment/app/Fragment;

.field private mHandler:Landroid/os/Handler;

.field private mIMAddrBookListFragment:Lus/zoom/zrc/view/IMAddrBookListFragment;

.field private mJoinMeetingFragment:Lus/zoom/zrc/view/JoinMeetingFragment;

.field private mJoinOnlyModeFragment:Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;

.field private mMeetingListFragment:Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;

.field private mPTMenuView:Lus/zoom/zrc/view/PTMenuView;

.field private mPresentationFragment:Lus/zoom/zrc/view/PresentationFragment;

.field private mSelectedFragment:Landroidx/fragment/app/Fragment;

.field private mSettingsFragment:Lus/zoom/zrc/settings/SettingsFragment;

.field private mWaitingForHostDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

.field private meetingAlertManager:Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

.field private onTimeNextMeetingAlarmRunnable:Ljava/lang/Runnable;

.field private preMeetingPhoneFragment:Lus/zoom/zrc/view/PreMeetingPhoneFragment;

.field private rollBackPtMenuRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 116
    invoke-direct {p0}, Lus/zoom/zrc/ZRCActivity;-><init>()V

    .line 144
    new-instance v0, Lus/zoom/zrc/PTActivity$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/PTActivity$1;-><init>(Lus/zoom/zrc/PTActivity;)V

    iput-object v0, p0, Lus/zoom/zrc/PTActivity;->listener:Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;

    .line 160
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lus/zoom/zrc/PTActivity;->mHandler:Landroid/os/Handler;

    .line 165
    new-instance v0, Lus/zoom/zrc/PTActivity$2;

    invoke-direct {v0, p0}, Lus/zoom/zrc/PTActivity$2;-><init>(Lus/zoom/zrc/PTActivity;)V

    iput-object v0, p0, Lus/zoom/zrc/PTActivity;->onTimeNextMeetingAlarmRunnable:Ljava/lang/Runnable;

    .line 174
    new-instance v0, Lus/zoom/zrc/PTActivity$3;

    invoke-direct {v0, p0}, Lus/zoom/zrc/PTActivity$3;-><init>(Lus/zoom/zrc/PTActivity;)V

    iput-object v0, p0, Lus/zoom/zrc/PTActivity;->rollBackPtMenuRunnable:Ljava/lang/Runnable;

    .line 1722
    new-instance v0, Lus/zoom/zrc/PTActivity$19;

    invoke-direct {v0, p0}, Lus/zoom/zrc/PTActivity$19;-><init>(Lus/zoom/zrc/PTActivity;)V

    iput-object v0, p0, Lus/zoom/zrc/PTActivity;->dismissTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/PTActivity;)Lus/zoom/zrc/base/app/ZRCAlertDialog;
    .locals 0

    .line 116
    iget-object p0, p0, Lus/zoom/zrc/PTActivity;->mWaitingForHostDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/PTActivity;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;Z)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/PTActivity;->triggerNextMeetingAlarm(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;Z)V

    return-void
.end method

.method static synthetic access$1000(Lus/zoom/zrc/PTActivity;)Lus/zoom/zrc/view/JoinMeetingFragment;
    .locals 0

    .line 116
    iget-object p0, p0, Lus/zoom/zrc/PTActivity;->mJoinMeetingFragment:Lus/zoom/zrc/view/JoinMeetingFragment;

    return-object p0
.end method

.method static synthetic access$1100(Lus/zoom/zrc/PTActivity;I)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lus/zoom/zrc/PTActivity;->showWaitingForHostDialog(I)V

    return-void
.end method

.method static synthetic access$1200(Lus/zoom/zrc/PTActivity;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lus/zoom/zrc/PTActivity;->dismissWaitingForHostDialog()V

    return-void
.end method

.method static synthetic access$1300(Lus/zoom/zrc/PTActivity;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lus/zoom/zrc/PTActivity;->doShowPhoneInPresentation()V

    return-void
.end method

.method static synthetic access$1400(Lus/zoom/zrc/PTActivity;ZZ)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/PTActivity;->dismissMeetingAlert(ZZ)V

    return-void
.end method

.method static synthetic access$200(Lus/zoom/zrc/PTActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 116
    iget-object p0, p0, Lus/zoom/zrc/PTActivity;->onTimeNextMeetingAlarmRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/zrc/PTActivity;)Landroid/os/Handler;
    .locals 0

    .line 116
    iget-object p0, p0, Lus/zoom/zrc/PTActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lus/zoom/zrc/PTActivity;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lus/zoom/zrc/PTActivity;->onPtMenuAutoRollBack()V

    return-void
.end method

.method static synthetic access$500(Lus/zoom/zrc/PTActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 116
    iget-object p0, p0, Lus/zoom/zrc/PTActivity;->rollBackPtMenuRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$600(Lus/zoom/zrc/PTActivity;)Lus/zoom/zrc/view/PTMenuView;
    .locals 0

    .line 116
    iget-object p0, p0, Lus/zoom/zrc/PTActivity;->mPTMenuView:Lus/zoom/zrc/view/PTMenuView;

    return-object p0
.end method

.method static synthetic access$700(Lus/zoom/zrc/PTActivity;)Lus/zoom/zrc/base/app/ZRCAlertDialog;
    .locals 0

    .line 116
    iget-object p0, p0, Lus/zoom/zrc/PTActivity;->mEnterPasswordDialogDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    return-object p0
.end method

.method static synthetic access$800(Lus/zoom/zrc/PTActivity;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lus/zoom/zrc/PTActivity;->cancelEnterPasswordDialog()V

    return-void
.end method

.method static synthetic access$900(Lus/zoom/zrc/PTActivity;Lus/zoom/zrcsdk/model/LoginInfo;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lus/zoom/zrc/PTActivity;->handleLoginInfoPullBack(Lus/zoom/zrcsdk/model/LoginInfo;)V

    return-void
.end method

.method private askToJoinThirdPartyMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 2

    .line 1565
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->meetingAlertManager:Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    invoke-virtual {v0}, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->isMeetingAlertOn()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 1573
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v0

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getThirdPartyMeeting()Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->isValidThirdPartyMeetingAndAllowed(Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "PTActivity"

    const-string v0, "!meetingInfoProxy.isValidThirdPartyMeetingAndAllowed"

    const/4 v1, 0x0

    .line 1574
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1578
    :cond_2
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isAutoStartScheduleMeeting()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 1583
    :cond_3
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->startMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    const/4 p1, 0x1

    .line 1584
    invoke-direct {p0, p1, p1}, Lus/zoom/zrc/PTActivity;->dismissMeetingAlert(ZZ)V

    return-void
.end method

.method private cancelEnterPasswordDialog()V
    .locals 1

    .line 840
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ConfApp;->cancelEnteringMeetingPassword()I

    .line 841
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->dismissWaitingDialog()V

    .line 842
    invoke-direct {p0}, Lus/zoom/zrc/PTActivity;->dismissEnterPasswordDialog()V

    return-void
.end method

.method private checkToShowFeedbackDialog(Ljava/lang/String;)V
    .locals 2

    .line 1233
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x5

    .line 1237
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v1

    if-eq v0, v1, :cond_1

    return-void

    .line 1241
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getUserProfile()Lus/zoom/zrc/model/ZRCUserProfile;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 1245
    :cond_2
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isPostMeetingFeedbackEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 1249
    :cond_3
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-static {v0, p1}, Lus/zoom/zrc/view/SimpleFeedbackFragment;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/String;)V

    return-void
.end method

.method public static closePresentation()V
    .locals 2

    .line 1588
    invoke-static {}, Lus/zoom/androidlib/app/ForegroundTaskManager;->getInstance()Lus/zoom/androidlib/app/ForegroundTaskManager;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/PTActivity$14;

    invoke-direct {v1}, Lus/zoom/zrc/PTActivity$14;-><init>()V

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/app/ForegroundTaskManager;->runInForeground(Lus/zoom/androidlib/app/ForegroundTask;)V

    return-void
.end method

.method private dismissEnterPasswordDialog()V
    .locals 3

    .line 846
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mEnterPasswordDialogDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 847
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mEnterPasswordDialogDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 849
    sget v1, Lus/zoom/zrcbox/R$id;->edit_text:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "input_method"

    .line 851
    invoke-virtual {p0, v1}, Lus/zoom/zrc/PTActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_0

    .line 853
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 856
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mEnterPasswordDialogDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->dismiss()V

    :cond_1
    return-void
.end method

.method private dismissMeetingAlert(ZZ)V
    .locals 3

    const-string v0, "PTActivity"

    .line 734
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissMeetingAlert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 735
    invoke-direct {p0, p1, p2, v0}, Lus/zoom/zrc/PTActivity;->dismissNextMeetingAlert(ZZZ)V

    return-void
.end method

.method private dismissMeetingAlertAtTime(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 4

    .line 739
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->calculateReleaseTime(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)J

    move-result-wide v0

    .line 740
    iget-object p1, p0, Lus/zoom/zrc/PTActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lus/zoom/zrc/PTActivity;->dismissTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 741
    iget-object p1, p0, Lus/zoom/zrc/PTActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lus/zoom/zrc/PTActivity;->dismissTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p1, "PTActivity"

    .line 742
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dismissMeeting Alert At Time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private dismissNextMeetingAlert(ZZZ)V
    .locals 4

    const-string v0, "PTActivity"

    .line 711
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissNextMeetingAlert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 713
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->meetingAlertManager:Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    invoke-virtual {v0}, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->isActivityPresented()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->meetingAlertManager:Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    invoke-virtual {v0}, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 714
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->meetingAlertManager:Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    invoke-virtual {v0}, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 715
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->meetingAlertManager:Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    invoke-virtual {v0, v2}, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->setMeetingAlertOnController(Z)V

    :cond_0
    if-eqz p1, :cond_2

    .line 721
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/zrc/PTActivity;->dismissTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p3, :cond_1

    .line 723
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p3

    invoke-virtual {p3}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object p3

    invoke-virtual {p3}, Lus/zoom/zrcsdk/PTApp;->closeUpcomingMeetingAlert()I

    .line 725
    :cond_1
    iget-object p3, p0, Lus/zoom/zrc/PTActivity;->meetingAlertManager:Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    invoke-virtual {p3, v2}, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->setMeetingAlertOnTV(Z)V

    :cond_2
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 729
    iget-object p1, p0, Lus/zoom/zrc/PTActivity;->meetingAlertManager:Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->setCurrentMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    :cond_3
    return-void
.end method

.method private dismissWaitingForHostDialog()V
    .locals 1

    .line 895
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mWaitingForHostDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mWaitingForHostDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public static dispatchAirplayBlackMagicStatusChanged()V
    .locals 2

    .line 1694
    invoke-static {}, Lus/zoom/androidlib/app/ForegroundTaskManager;->getInstance()Lus/zoom/androidlib/app/ForegroundTaskManager;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/PTActivity$17;

    invoke-direct {v1}, Lus/zoom/zrc/PTActivity$17;-><init>()V

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/app/ForegroundTaskManager;->runInForeground(Lus/zoom/androidlib/app/ForegroundTask;)V

    return-void
.end method

.method private doShowPhoneInPresentation()V
    .locals 3

    .line 1715
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;

    if-eqz v0, :cond_0

    .line 1716
    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1717
    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$string;->local_share:I

    invoke-virtual {v1, v2}, Lus/zoom/zrc/ZRCApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getDisplayInformation()V
    .locals 5

    .line 1269
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1270
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    const-string v1, " resolution"

    .line 1271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the screen size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1272
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1273
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1274
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    const-string v1, " resolution"

    .line 1275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scale= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private handleLoginInfoPullBack(Lus/zoom/zrcsdk/model/LoginInfo;)V
    .locals 4

    .line 1089
    iget-boolean v0, p0, Lus/zoom/zrc/PTActivity;->isTablet:Z

    if-nez v0, :cond_0

    return-void

    .line 1093
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mPresentationFragment:Lus/zoom/zrc/view/PresentationFragment;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/PresentationFragment;->LoginInfoPullBack(Lus/zoom/zrcsdk/model/LoginInfo;)V

    .line 1095
    iget-boolean v0, p0, Lus/zoom/zrc/PTActivity;->lastPublicRoomEnabledValue:Z

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->isPublicRoomEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    .line 1096
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->isPublicRoomEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1097
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mPTMenuView:Lus/zoom/zrc/view/PTMenuView;

    invoke-virtual {v0, p0}, Lus/zoom/zrc/view/PTMenuView;->init(Landroid/content/Context;)V

    .line 1098
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mFragmentList:[Landroidx/fragment/app/Fragment;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lus/zoom/zrc/PTActivity;->initSelectedView(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 1100
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mPTMenuView:Lus/zoom/zrc/view/PTMenuView;

    invoke-virtual {v0, p0}, Lus/zoom/zrc/view/PTMenuView;->init(Landroid/content/Context;)V

    .line 1101
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mFragmentList:[Landroidx/fragment/app/Fragment;

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lus/zoom/zrc/PTActivity;->initSelectedView(Landroidx/fragment/app/Fragment;)V

    .line 1103
    :goto_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->isPublicRoomEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lus/zoom/zrc/PTActivity;->lastPublicRoomEnabledValue:Z

    goto :goto_1

    .line 1104
    :cond_2
    iget-boolean v0, p0, Lus/zoom/zrc/PTActivity;->lastFullFunctionality:Z

    invoke-direct {p0}, Lus/zoom/zrc/PTActivity;->isFullFunctionality()Z

    move-result v1

    if-eq v0, v1, :cond_3

    const-string v0, ""

    .line 1105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "full functionality changed!!! billingType="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getBillingType()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", freeTrailDays="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getFreeTrialDays()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1106
    iget-object p1, p0, Lus/zoom/zrc/PTActivity;->mFragmentList:[Landroidx/fragment/app/Fragment;

    aget-object p1, p1, v2

    invoke-direct {p0, p1}, Lus/zoom/zrc/PTActivity;->initSelectedView(Landroidx/fragment/app/Fragment;)V

    .line 1107
    invoke-direct {p0}, Lus/zoom/zrc/PTActivity;->isFullFunctionality()Z

    move-result p1

    iput-boolean p1, p0, Lus/zoom/zrc/PTActivity;->lastFullFunctionality:Z

    :cond_3
    :goto_1
    return-void
.end method

.method private initSelectedView(Landroidx/fragment/app/Fragment;)V
    .locals 7

    .line 335
    iget-boolean v0, p0, Lus/zoom/zrc/PTActivity;->isTablet:Z

    if-nez v0, :cond_0

    return-void

    .line 336
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 338
    invoke-direct {p0}, Lus/zoom/zrc/PTActivity;->isFullFunctionality()Z

    move-result v1

    if-nez v1, :cond_3

    .line 339
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mIMAddrBookListFragment:Lus/zoom/zrc/view/IMAddrBookListFragment;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mMeetingListFragment:Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mPresentationFragment:Lus/zoom/zrc/view/PresentationFragment;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mDialFragment:Lus/zoom/zrc/view/DialFragment;

    if-ne v0, p1, :cond_2

    .line 343
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/PTActivity;->mJoinOnlyModeFragment:Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;

    .line 346
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/PTActivity;->mPTMenuView:Lus/zoom/zrc/view/PTMenuView;

    invoke-virtual {p1}, Lus/zoom/zrc/view/PTMenuView;->selectMeetingNowView()V

    goto/16 :goto_a

    .line 348
    :cond_3
    iget-object v1, p0, Lus/zoom/zrc/PTActivity;->mJoinOnlyModeFragment:Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;

    invoke-virtual {v1}, Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 349
    iget-object v1, p0, Lus/zoom/zrc/PTActivity;->mJoinOnlyModeFragment:Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 357
    :cond_4
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getLoginInfo()Lus/zoom/zrcsdk/model/LoginInfo;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 358
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/LoginInfo;->isPublicRoomEnabled()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/LoginInfo;->isStandaloneDigitalSignage()Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x1

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_7

    .line 360
    iget-object v4, p0, Lus/zoom/zrc/PTActivity;->mIMAddrBookListFragment:Lus/zoom/zrc/view/IMAddrBookListFragment;

    if-ne p1, v4, :cond_6

    .line 361
    iget-object v4, p0, Lus/zoom/zrc/PTActivity;->mPTMenuView:Lus/zoom/zrc/view/PTMenuView;

    invoke-virtual {v4, v3}, Lus/zoom/zrc/view/PTMenuView;->selectViewByIndex(I)V

    .line 362
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 363
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 364
    iput-object p1, p0, Lus/zoom/zrc/PTActivity;->mSelectedFragment:Landroidx/fragment/app/Fragment;

    goto :goto_1

    .line 366
    :cond_6
    iget-object v4, p0, Lus/zoom/zrc/PTActivity;->mFragmentList:[Landroidx/fragment/app/Fragment;

    aget-object v5, v4, v3

    if-eqz v5, :cond_7

    .line 367
    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 368
    iget-object v4, p0, Lus/zoom/zrc/PTActivity;->mFragmentList:[Landroidx/fragment/app/Fragment;

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_7
    :goto_1
    if-eqz v1, :cond_8

    .line 377
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/LoginInfo;->isPublicRoomEnabled()Z

    move-result v4

    if-nez v4, :cond_8

    const/4 v4, 0x1

    goto :goto_2

    :cond_8
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_a

    .line 379
    iget-object v4, p0, Lus/zoom/zrc/PTActivity;->mMeetingListFragment:Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;

    if-ne p1, v4, :cond_9

    .line 380
    iget-object v4, p0, Lus/zoom/zrc/PTActivity;->mPTMenuView:Lus/zoom/zrc/view/PTMenuView;

    invoke-virtual {v4, v2}, Lus/zoom/zrc/view/PTMenuView;->selectViewByIndex(I)V

    .line 381
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 382
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 383
    iput-object p1, p0, Lus/zoom/zrc/PTActivity;->mSelectedFragment:Landroidx/fragment/app/Fragment;

    goto :goto_3

    .line 385
    :cond_9
    iget-object v4, p0, Lus/zoom/zrc/PTActivity;->mFragmentList:[Landroidx/fragment/app/Fragment;

    aget-object v5, v4, v2

    if-eqz v5, :cond_a

    .line 386
    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 387
    iget-object v4, p0, Lus/zoom/zrc/PTActivity;->mFragmentList:[Landroidx/fragment/app/Fragment;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 396
    :cond_a
    :goto_3
    iget-object v4, p0, Lus/zoom/zrc/PTActivity;->mFragmentList:[Landroidx/fragment/app/Fragment;

    const/4 v5, 0x2

    aget-object v6, v4, v5

    if-ne p1, v6, :cond_b

    .line 397
    iget-object v4, p0, Lus/zoom/zrc/PTActivity;->mPTMenuView:Lus/zoom/zrc/view/PTMenuView;

    invoke-virtual {v4, v5}, Lus/zoom/zrc/view/PTMenuView;->selectViewByIndex(I)V

    .line 398
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 399
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 400
    iput-object p1, p0, Lus/zoom/zrc/PTActivity;->mSelectedFragment:Landroidx/fragment/app/Fragment;

    goto :goto_4

    .line 402
    :cond_b
    aget-object v6, v4, v5

    if-eqz v6, :cond_c

    .line 403
    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 404
    iget-object v4, p0, Lus/zoom/zrc/PTActivity;->mFragmentList:[Landroidx/fragment/app/Fragment;

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 412
    :cond_c
    :goto_4
    iget-object v4, p0, Lus/zoom/zrc/PTActivity;->mFragmentList:[Landroidx/fragment/app/Fragment;

    const/4 v5, 0x3

    aget-object v6, v4, v5

    if-ne p1, v6, :cond_d

    .line 413
    iget-object v4, p0, Lus/zoom/zrc/PTActivity;->mPTMenuView:Lus/zoom/zrc/view/PTMenuView;

    invoke-virtual {v4, v5}, Lus/zoom/zrc/view/PTMenuView;->selectViewByIndex(I)V

    .line 414
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 415
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 416
    iput-object p1, p0, Lus/zoom/zrc/PTActivity;->mSelectedFragment:Landroidx/fragment/app/Fragment;

    goto :goto_5

    .line 418
    :cond_d
    aget-object v6, v4, v5

    if-eqz v6, :cond_e

    .line 419
    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 420
    iget-object v4, p0, Lus/zoom/zrc/PTActivity;->mFragmentList:[Landroidx/fragment/app/Fragment;

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_e
    :goto_5
    if-eqz v1, :cond_f

    .line 429
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/LoginInfo;->isStandaloneDigitalSignage()Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_6

    :cond_f
    const/4 v2, 0x0

    :goto_6
    if-eqz v2, :cond_11

    .line 431
    iget-object v1, p0, Lus/zoom/zrc/PTActivity;->mFragmentList:[Landroidx/fragment/app/Fragment;

    const/4 v2, 0x4

    aget-object v3, v1, v2

    if-ne p1, v3, :cond_10

    .line 432
    iget-object v1, p0, Lus/zoom/zrc/PTActivity;->mPTMenuView:Lus/zoom/zrc/view/PTMenuView;

    invoke-virtual {v1, v2}, Lus/zoom/zrc/view/PTMenuView;->selectViewByIndex(I)V

    .line 433
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 434
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 435
    iput-object p1, p0, Lus/zoom/zrc/PTActivity;->mSelectedFragment:Landroidx/fragment/app/Fragment;

    goto :goto_7

    .line 437
    :cond_10
    aget-object v3, v1, v2

    if-eqz v3, :cond_11

    .line 438
    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 439
    iget-object v1, p0, Lus/zoom/zrc/PTActivity;->mFragmentList:[Landroidx/fragment/app/Fragment;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 448
    :cond_11
    :goto_7
    iget-object v1, p0, Lus/zoom/zrc/PTActivity;->mFragmentList:[Landroidx/fragment/app/Fragment;

    const/4 v2, 0x5

    aget-object v3, v1, v2

    if-ne p1, v3, :cond_12

    .line 449
    iget-object v1, p0, Lus/zoom/zrc/PTActivity;->mPTMenuView:Lus/zoom/zrc/view/PTMenuView;

    invoke-virtual {v1, v2}, Lus/zoom/zrc/view/PTMenuView;->selectViewByIndex(I)V

    .line 450
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 451
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 452
    iput-object p1, p0, Lus/zoom/zrc/PTActivity;->mSelectedFragment:Landroidx/fragment/app/Fragment;

    goto :goto_8

    .line 454
    :cond_12
    aget-object v3, v1, v2

    if-eqz v3, :cond_13

    .line 455
    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 456
    iget-object v1, p0, Lus/zoom/zrc/PTActivity;->mFragmentList:[Landroidx/fragment/app/Fragment;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 460
    :cond_13
    :goto_8
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getControlSystemDevices()Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 461
    iget-object v1, p0, Lus/zoom/zrc/PTActivity;->mFragmentList:[Landroidx/fragment/app/Fragment;

    const/4 v2, 0x6

    aget-object v3, v1, v2

    if-ne p1, v3, :cond_14

    .line 462
    iget-object v1, p0, Lus/zoom/zrc/PTActivity;->mPTMenuView:Lus/zoom/zrc/view/PTMenuView;

    invoke-virtual {v1, v2}, Lus/zoom/zrc/view/PTMenuView;->selectViewByIndex(I)V

    .line 463
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 464
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 465
    iput-object p1, p0, Lus/zoom/zrc/PTActivity;->mSelectedFragment:Landroidx/fragment/app/Fragment;

    goto :goto_9

    .line 467
    :cond_14
    aget-object p1, v1, v2

    if-eqz p1, :cond_15

    .line 468
    aget-object p1, v1, v2

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 469
    iget-object p1, p0, Lus/zoom/zrc/PTActivity;->mFragmentList:[Landroidx/fragment/app/Fragment;

    aget-object p1, p1, v2

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 474
    :cond_15
    :goto_9
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 477
    invoke-direct {p0}, Lus/zoom/zrc/PTActivity;->switchProperTab()V

    :goto_a
    return-void
.end method

.method private isFullFunctionality()Z
    .locals 1

    .line 1616
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->isPairedWithoutLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1617
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->isBillingPlanEnded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isShouldHideInput(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x2

    .line 1209
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 1210
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    .line 1211
    aget v2, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v0

    .line 1212
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, v2

    .line 1213
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    int-to-float v2, v2

    cmpl-float v2, v5, v2

    if-lez v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    int-to-float p1, p1

    cmpg-float p1, v2, p1

    if-gez p1, :cond_0

    .line 1214
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    int-to-float p2, v4

    cmpg-float p1, p1, p2

    if-ltz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static launchPresentationPage(Lus/zoom/zrc/share_camera/model/ZRCSharingType;IZ)V
    .locals 2

    .line 1659
    invoke-static {}, Lus/zoom/androidlib/app/ForegroundTaskManager;->getInstance()Lus/zoom/androidlib/app/ForegroundTaskManager;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/PTActivity$16;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrc/PTActivity$16;-><init>(Lus/zoom/zrc/share_camera/model/ZRCSharingType;IZ)V

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/app/ForegroundTaskManager;->runInForeground(Lus/zoom/androidlib/app/ForegroundTask;)V

    const/4 p0, 0x1

    .line 1674
    sput-boolean p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isPendingToShow:Z

    return-void
.end method

.method private noNeedToShowAlertWhenFragmentsOn()Z
    .locals 4

    .line 648
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lus/zoom/zrc/view/ZRCPolicyFragment;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lus/zoom/zrc/view/ZRCProblemReportFragment;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-class v2, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-class v2, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->isFragmentShow([Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private onConfReady()V
    .locals 4

    .line 1548
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->dismissWaitingDialog()V

    .line 1550
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mJoinMeetingFragment:Lus/zoom/zrc/view/JoinMeetingFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/view/JoinMeetingFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1551
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lus/zoom/zrc/PTActivity$13;

    invoke-direct {v1, p0}, Lus/zoom/zrc/PTActivity$13;-><init>(Lus/zoom/zrc/PTActivity;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1559
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mWaitingForHostDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1560
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mWaitingForHostDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->dismiss()V

    :cond_1
    return-void
.end method

.method private onJoinMeetingResult(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1414
    sget p1, Lus/zoom/zrcbox/R$string;->joining_meeting:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/PTActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/PTActivity;->showWaitingDialog(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1416
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->dismissWaitingDialog()V

    .line 1417
    sget p1, Lus/zoom/zrcbox/R$string;->failed_to_join_meeting:I

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private onJoinTestMeetingResult(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1423
    sget p1, Lus/zoom/zrcbox/R$string;->start_test_meeting_prompt:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/PTActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/PTActivity;->showWaitingDialog(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1425
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->dismissWaitingDialog()V

    .line 1426
    sget p1, Lus/zoom/zrcbox/R$string;->failed_to_start_test_meeting:I

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private onLaunchSharingMeetingResult(ZLjava/lang/String;Z)V
    .locals 0

    if-eqz p1, :cond_2

    .line 1462
    invoke-static {p2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_3

    const/4 p1, 0x1

    .line 1466
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/Model;->getMeetingStatus()I

    move-result p2

    if-eq p1, p2, :cond_1

    return-void

    .line 1470
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    .line 1471
    invoke-static {p1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isPresentationDisplayed(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1472
    sget p1, Lus/zoom/zrcbox/R$string;->starting_local_share:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/PTActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/PTActivity;->showWaitingDialog(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1476
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->dismissWaitingDialog()V

    :cond_3
    :goto_0
    return-void
.end method

.method private onMeetWithIMUsersResult(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1405
    sget p1, Lus/zoom/zrcbox/R$string;->starting_meeting:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/PTActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/PTActivity;->showWaitingDialog(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1407
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->dismissWaitingDialog()V

    .line 1408
    sget p1, Lus/zoom/zrcbox/R$string;->failed_to_start_meeting:I

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private onPtMenuAutoRollBack()V
    .locals 3

    .line 656
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->getNonNullEventTaskManagerOrThrowException()Lus/zoom/androidlib/util/EventTaskManager;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/PTActivity$5;

    const-string v2, "onPtMenuAutoRollBack"

    invoke-direct {v1, p0, v2}, Lus/zoom/zrc/PTActivity$5;-><init>(Lus/zoom/zrc/PTActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/util/EventTaskManager;->push(Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method private onShowSharingInstructionResult(ZZZ)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_1

    const/4 p1, 0x5

    .line 1448
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result p2

    if-eq p1, p2, :cond_0

    return-void

    .line 1453
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    .line 1454
    invoke-static {p1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isPresentationDisplayed(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1455
    sget-object p2, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_iOS:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    const/16 p3, 0x1e

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->showPresentation(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Lus/zoom/zrc/share_camera/model/ZRCSharingType;IZ)V

    :cond_1
    return-void
.end method

.method private onStartMeetingResult(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_2

    .line 1432
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1, p2}, Lus/zoom/zrc/model/Model;->isRequestIdForCurrentDevice(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1435
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->isStandaloneDigitalSignage()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1436
    sget p1, Lus/zoom/zrcbox/R$string;->joining_meeting:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/PTActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/PTActivity;->showWaitingDialog(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1438
    :cond_1
    sget p1, Lus/zoom/zrcbox/R$string;->starting_meeting:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/PTActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/PTActivity;->showWaitingDialog(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1441
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->dismissWaitingDialog()V

    .line 1442
    sget p1, Lus/zoom/zrcbox/R$string;->failed_to_start_meeting:I

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private onStartPmiResult(ZLjava/lang/String;Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 0

    .line 1375
    invoke-static {p3}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 1379
    invoke-static {p2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    if-nez p4, :cond_2

    .line 1384
    invoke-static {}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getDefault()Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getSessionStatus()Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getStatus()I

    move-result p1

    const/16 p2, 0x64

    if-eq p1, p2, :cond_6

    .line 1385
    sget p1, Lus/zoom/zrcbox/R$string;->starting_meeting:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/PTActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/PTActivity;->showWaitingDialog(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1388
    :cond_2
    sget p1, Lus/zoom/zrcbox/R$string;->joining_meeting:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/PTActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/PTActivity;->showWaitingDialog(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1391
    :cond_3
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->dismissWaitingDialog()V

    .line 1392
    invoke-static {p2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    const/4 p1, 0x1

    if-nez p4, :cond_5

    .line 1396
    sget p2, Lus/zoom/zrcbox/R$string;->failed_to_start_meeting:I

    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1398
    :cond_5
    sget p2, Lus/zoom/zrcbox/R$string;->failed_to_join_meeting:I

    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_6
    :goto_0
    return-void
.end method

.method private onStartSharingMeetingNotification(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 1482
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->dismissWaitingDialog()V

    :cond_0
    return-void
.end method

.method private onTimerForPullingSettingsFromWeb()V
    .locals 0

    .line 331
    invoke-static {}, Lus/zoom/zrc/GetReleaseNotesHandler;->startGettingReleaseNote()V

    return-void
.end method

.method private onWhiteboardCameraInfoChanged()V
    .locals 3

    .line 1621
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getWhiteboardCameraInfo()Lus/zoom/zrcsdk/model/ZMDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1625
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZMDeviceInfo;->getZmd_item()Lus/zoom/zrcsdk/model/ZMDeviceItem;

    move-result-object v1

    .line 1626
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZMDeviceInfo;->getZmd_reason_code()I

    move-result v0

    .line 1628
    invoke-static {}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->getDefault()Lus/zoom/zrc/utils/WhiteboardCameraHelper;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->getErrorMsg(Landroid/content/Context;ILus/zoom/zrcsdk/model/ZMDeviceItem;)Ljava/lang/String;

    move-result-object v0

    .line 1630
    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 1631
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method public static show(Landroid/content/Context;Z)V
    .locals 2

    .line 1637
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lus/zoom/zrc/PTActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 1638
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-nez p1, :cond_0

    const/high16 p1, 0x10000

    .line 1640
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1642
    :cond_0
    invoke-static {p0, v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->safeStartActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private showEnterPasswordDialog(Z)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 747
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mEnterPasswordDialogDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mEnterPasswordDialogDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->dismiss()V

    .line 751
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 752
    sget v1, Lus/zoom/zrcbox/R$layout;->edit_text:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 753
    sget v1, Lus/zoom/zrcbox/R$id;->edit_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 755
    new-instance v2, Lus/zoom/zrc/PTActivity$6;

    invoke-direct {v2, p0}, Lus/zoom/zrc/PTActivity$6;-><init>(Lus/zoom/zrc/PTActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 773
    new-instance v2, Lus/zoom/zrc/PTActivity$7;

    invoke-direct {v2, p0, v1}, Lus/zoom/zrc/PTActivity$7;-><init>(Lus/zoom/zrc/PTActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 782
    new-instance v2, Lus/zoom/zrc/PTActivity$8;

    invoke-direct {v2, p0}, Lus/zoom/zrc/PTActivity$8;-><init>(Lus/zoom/zrc/PTActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 801
    sget v2, Lus/zoom/zrcbox/R$id;->textview:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 803
    sget p1, Lus/zoom/zrcbox/R$string;->wrong_password_retry:I

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 804
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 806
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 808
    :goto_0
    new-instance p1, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    invoke-direct {p1, p0}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 809
    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setView(Landroid/view/View;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$string;->need_passwd_to_join:I

    .line 810
    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setTitle(I)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    move-result-object p1

    .line 811
    invoke-virtual {p1, v3}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setCancelable(Z)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$string;->ok:I

    new-instance v2, Lus/zoom/zrc/PTActivity$10;

    invoke-direct {v2, p0, v1}, Lus/zoom/zrc/PTActivity$10;-><init>(Lus/zoom/zrc/PTActivity;Landroid/widget/EditText;)V

    .line 812
    invoke-virtual {p1, v0, v2}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$string;->cancel:I

    new-instance v1, Lus/zoom/zrc/PTActivity$9;

    invoke-direct {v1, p0}, Lus/zoom/zrc/PTActivity$9;-><init>(Lus/zoom/zrc/PTActivity;)V

    .line 825
    invoke-virtual {p1, v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    move-result-object p1

    .line 832
    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->create()Lus/zoom/zrc/base/app/ZRCAlertDialog;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/PTActivity;->mEnterPasswordDialogDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    .line 834
    iget-object p1, p0, Lus/zoom/zrc/PTActivity;->mEnterPasswordDialogDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->show()V

    .line 835
    iget-object p1, p0, Lus/zoom/zrc/PTActivity;->mEnterPasswordDialogDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 836
    iget-object p1, p0, Lus/zoom/zrc/PTActivity;->mEnterPasswordDialogDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-static {p1}, Lus/zoom/zrc/utils/PolycomTrioUtils;->setImmersiveModeForPolycomTrio(Landroid/app/Dialog;)V

    return-void
.end method

.method private showMeetingAlert(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;Z)V
    .locals 6
    .param p1    # Lus/zoom/zrcsdk/model/ZRCMeetingListItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "PTActivity"

    .line 674
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nextMeetingAlert: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getMeetingName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, " null "

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getMeetingName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isAlertOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrc/PTActivity;->meetingAlertManager:Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    invoke-virtual {v2}, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->isMeetingAlertOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 676
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->meetingAlertManager:Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    invoke-virtual {v0}, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->isMeetingAlertOn()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 680
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isDisableNextMeetingAlertOnController()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    const-string v0, "PTActivity"

    const-string v3, "show alert on controller"

    .line 681
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 682
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->meetingAlertManager:Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->setCurrentMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    .line 683
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->meetingAlertManager:Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->setMeetingAlertOnController(Z)V

    .line 684
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 685
    invoke-virtual {p0, v0}, Lus/zoom/zrc/PTActivity;->startActivity(Landroid/content/Intent;)V

    .line 686
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->meetingAlertManager:Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    invoke-virtual {v0}, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->ignoreCurrentMeeting()V

    goto :goto_1

    .line 688
    :cond_2
    invoke-direct {p0, v2, v1}, Lus/zoom/zrc/PTActivity;->dismissMeetingAlert(ZZ)V

    .line 691
    :goto_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isDisableNextMeetingAlertOnTV()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "PTActivity"

    const-string v3, "show alert on tv"

    .line 692
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 693
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->meetingAlertManager:Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->setCurrentMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    .line 694
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->meetingAlertManager:Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->setMeetingAlertOnTV(Z)V

    .line 695
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->meetingAlertManager:Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    invoke-virtual {v0}, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->ignoreCurrentMeeting()V

    :cond_3
    if-nez p2, :cond_4

    const-string p2, "PTActivity"

    const-string v0, "notify ZR"

    .line 699
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 700
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    .line 701
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->isNotUpcomingMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result v1

    .line 702
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getMeetingTopic(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;

    move-result-object v2

    .line 703
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->formatTime(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    move-object v5, p1

    .line 700
    invoke-virtual/range {v0 .. v5}, Lus/zoom/zrcsdk/PTApp;->showUpcomingMeetingAlert(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)I

    :cond_4
    return-void
.end method

.method public static showNeedWaitingForHost(ZI)V
    .locals 2

    .line 1646
    invoke-static {}, Lus/zoom/androidlib/app/ForegroundTaskManager;->getInstance()Lus/zoom/androidlib/app/ForegroundTaskManager;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/PTActivity$15;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrc/PTActivity$15;-><init>(ZI)V

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/app/ForegroundTaskManager;->runInForeground(Lus/zoom/androidlib/app/ForegroundTask;)V

    return-void
.end method

.method public static showPhoneInPresentation()V
    .locals 2

    .line 1706
    invoke-static {}, Lus/zoom/androidlib/app/ForegroundTaskManager;->getInstance()Lus/zoom/androidlib/app/ForegroundTaskManager;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/PTActivity$18;

    invoke-direct {v1}, Lus/zoom/zrc/PTActivity$18;-><init>()V

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/app/ForegroundTaskManager;->runInForeground(Lus/zoom/androidlib/app/ForegroundTask;)V

    return-void
.end method

.method private showRoomSystemDialogAndCall(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1604
    invoke-static {p0}, Lus/zoom/zrc/view/CallRoomSystemDialogUtils;->show(Landroidx/fragment/app/FragmentActivity;)V

    goto :goto_0

    .line 1606
    :cond_0
    sget p1, Lus/zoom/zrcbox/R$string;->joining_meeting:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/PTActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/PTActivity;->showWaitingDialog(Ljava/lang/CharSequence;)V

    .line 1608
    :goto_0
    invoke-static {}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getDefault()Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getSessionStatus()Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    move-result-object p1

    .line 1609
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getSituation()I

    move-result p1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 1611
    invoke-static {}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getDefault()Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->tryCallRoomSystem()V

    :cond_1
    return-void
.end method

.method public static showSharingMeeting(Landroid/content/Context;)V
    .locals 3

    .line 1678
    invoke-static {}, Lus/zoom/androidlib/app/ZMActivity;->getFrontActivity()Lus/zoom/androidlib/app/ZMActivity;

    move-result-object v0

    instance-of v0, v0, Lus/zoom/zrc/PTActivity;

    if-nez v0, :cond_0

    .line 1679
    const-class v0, Lus/zoom/zrc/PTActivity;

    invoke-static {p0, v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->safeStartActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1682
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p0

    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getAirPlayBlackMagicStatus()Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;

    move-result-object p0

    .line 1683
    sget-object v0, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_Desktop:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    .line 1684
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->getInstructionDisplayState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1685
    sget-object v0, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_iOS:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    goto :goto_0

    .line 1686
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->getInstructionDisplayState()I

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    .line 1687
    sget-object v0, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_WhiteboardCamera:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    :cond_2
    :goto_0
    const/16 p0, 0x1e

    const/4 v1, 0x0

    .line 1690
    invoke-static {v0, p0, v1}, Lus/zoom/zrc/PTActivity;->launchPresentationPage(Lus/zoom/zrc/share_camera/model/ZRCSharingType;IZ)V

    return-void
.end method

.method private showWaitingForHostDialog(I)V
    .locals 4

    .line 861
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mWaitingForHostDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mWaitingForHostDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->dismiss()V

    .line 864
    :cond_0
    new-instance v0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    invoke-direct {v0, p0}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 865
    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setCancelable(Z)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    .line 866
    sget v1, Lus/zoom/zrcbox/R$string;->cancel:I

    new-instance v2, Lus/zoom/zrc/PTActivity$11;

    invoke-direct {v2, p0}, Lus/zoom/zrc/PTActivity$11;-><init>(Lus/zoom/zrc/PTActivity;)V

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    .line 878
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$layout;->dialog_waiting_host:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 885
    :pswitch_0
    sget p1, Lus/zoom/zrcbox/R$string;->waiting_host_end_another_meeting:I

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setTitle(I)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    .line 886
    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setView(Landroid/view/View;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    goto :goto_0

    .line 881
    :pswitch_1
    sget p1, Lus/zoom/zrcbox/R$string;->wait_for_host_message:I

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setTitle(I)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    .line 882
    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setView(Landroid/view/View;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    .line 889
    :goto_0
    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->create()Lus/zoom/zrc/base/app/ZRCAlertDialog;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/PTActivity;->mWaitingForHostDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    .line 890
    iget-object p1, p0, Lus/zoom/zrc/PTActivity;->mWaitingForHostDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->show()V

    .line 891
    iget-object p1, p0, Lus/zoom/zrc/PTActivity;->mWaitingForHostDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-static {p1}, Lus/zoom/zrc/utils/PolycomTrioUtils;->setImmersiveModeForPolycomTrio(Landroid/app/Dialog;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showWebinarRoleChangedToast(I)V
    .locals 1

    .line 555
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/view/SimpleFeedbackFragment;->dismissAllFeedback(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 557
    sget p1, Lus/zoom/zrcbox/R$string;->rejoin_as_attendee:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/PTActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/PTActivity;->showWaitingDialog(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 559
    sget p1, Lus/zoom/zrcbox/R$string;->rejoin_as_panelist:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/PTActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/PTActivity;->showWaitingDialog(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 561
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->dismissWaitingDialog()V

    :goto_0
    return-void
.end method

.method private startPresentation(I)V
    .locals 3

    .line 1597
    sget v0, Lus/zoom/zrcbox/R$string;->starting_local_share:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/PTActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/PTActivity;->showWaitingDialog(Ljava/lang/CharSequence;)V

    .line 1599
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, v1, v2}, Lus/zoom/zrc/model/Model;->launchSharingMeeting(IILjava/lang/String;I)Z

    return-void
.end method

.method private switchProperTab()V
    .locals 2

    .line 483
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getLoginInfo()Lus/zoom/zrcsdk/model/LoginInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 485
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/LoginInfo;->isPublicRoomEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/LoginInfo;->isStandaloneDigitalSignage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mPTMenuView:Lus/zoom/zrc/view/PTMenuView;

    invoke-virtual {v0}, Lus/zoom/zrc/view/PTMenuView;->selectJoinMeetingView()V

    :cond_1
    return-void
.end method

.method private switchSelectView(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V
    .locals 2

    if-eq p1, p2, :cond_2

    .line 903
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 906
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 908
    :cond_0
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_1

    .line 910
    sget p1, Lus/zoom/zrcbox/R$id;->ll_content:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 911
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 913
    :cond_1
    invoke-virtual {v0, p2}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_2
    :goto_0
    return-void
.end method

.method private triggerNextMeetingAlarm(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;Z)V
    .locals 8

    .line 589
    invoke-static {}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getDefault()Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getSessionStatus()Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->isInUISession()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 594
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mWaitingForHostDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 598
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    return-void

    .line 602
    :cond_2
    invoke-direct {p0}, Lus/zoom/zrc/PTActivity;->noNeedToShowAlertWhenFragmentsOn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string p1, "PTActivity"

    const-string p2, "No need to show next meeting alert caused by some fragment is currently shown "

    .line 603
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 607
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->meetingAlertManager:Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    invoke-virtual {v0}, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->isMeetingAlertOn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 608
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->meetingAlertManager:Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    invoke-virtual {v0}, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->getCurrentMeeting()Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 609
    :goto_0
    iget-object v2, p0, Lus/zoom/zrc/PTActivity;->meetingAlertManager:Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    invoke-virtual {v2, v0}, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->updateIgnoredMeetingList(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    if-nez p1, :cond_5

    .line 612
    iget-object p1, p0, Lus/zoom/zrc/PTActivity;->meetingAlertManager:Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getZrcMeetingList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->nextMeeting(Ljava/util/List;)Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    move-result-object p1

    move-object v7, p1

    goto :goto_1

    :cond_5
    move-object v7, p1

    :goto_1
    if-nez v7, :cond_6

    return-void

    .line 618
    :cond_6
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->isAutoStartScheduleMeeting()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "PTActivity"

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auto start meeting:  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getMeetingName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const-string v2, " null "

    goto :goto_2

    :cond_7
    invoke-virtual {v7}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getMeetingName()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 620
    iget-object p1, p0, Lus/zoom/zrc/PTActivity;->meetingAlertManager:Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    invoke-virtual {p1, v7}, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->setCurrentMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    .line 621
    iget-object p1, p0, Lus/zoom/zrc/PTActivity;->meetingAlertManager:Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->setMeetingAlertOnTV(Z)V

    .line 622
    iget-object p1, p0, Lus/zoom/zrc/PTActivity;->meetingAlertManager:Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->setMeetingAlertOnController(Z)V

    .line 623
    iget-object p1, p0, Lus/zoom/zrc/PTActivity;->meetingAlertManager:Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    invoke-virtual {p1}, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->ignoreCurrentMeeting()V

    .line 625
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lus/zoom/zrc/meeting/meetingalert/NextMeetingAlertActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 626
    invoke-virtual {p0, p1}, Lus/zoom/zrc/PTActivity;->startActivity(Landroid/content/Intent;)V

    if-nez p2, :cond_8

    .line 628
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v2

    .line 629
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object p1

    invoke-virtual {p1, v7}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->isNotUpcomingMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result v3

    .line 630
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object p1

    invoke-virtual {p1, p0, v7}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getMeetingTopic(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;

    move-result-object v4

    .line 631
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object p1

    invoke-virtual {p1, p0, v7}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->formatTime(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    .line 628
    invoke-virtual/range {v2 .. v7}, Lus/zoom/zrcsdk/PTApp;->showUpcomingMeetingAlert(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)I

    :cond_8
    return-void

    .line 638
    :cond_9
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->isDisableNextMeetingAlert()Z

    move-result p1

    if-eqz p1, :cond_a

    return-void

    .line 642
    :cond_a
    invoke-direct {p0, v7}, Lus/zoom/zrc/PTActivity;->dismissMeetingAlertAtTime(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    .line 644
    invoke-direct {p0, v7, p2}, Lus/zoom/zrc/PTActivity;->showMeetingAlert(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;Z)V

    return-void
.end method


# virtual methods
.method public LoginInfoPullBack(Lus/zoom/zrcsdk/model/LoginInfo;)V
    .locals 3

    .line 1113
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->getNonNullEventTaskManagerOrThrowException()Lus/zoom/androidlib/util/EventTaskManager;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/PTActivity$12;

    const-string v2, "LoginInfoPullBack"

    invoke-direct {v1, p0, v2, p1}, Lus/zoom/zrc/PTActivity$12;-><init>(Lus/zoom/zrc/PTActivity;Ljava/lang/String;Lus/zoom/zrcsdk/model/LoginInfo;)V

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/util/EventTaskManager;->push(Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method public OnClickJoinMeetingBtn(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 995
    sget p1, Lus/zoom/zrcbox/R$string;->joining_meeting:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/PTActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/PTActivity;->showWaitingDialog(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public OnClickMeetingNowBtn(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 1002
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$string;->starting_meeting:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/PTActivity;->showWaitingDialog(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_7

    .line 1182
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/zrc/PTActivity;->rollBackPtMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1183
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/zrc/PTActivity;->rollBackPtMenuRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1185
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1186
    sget v1, Lus/zoom/zrcbox/R$id;->edtSearch:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/view/ZRCSearchView;

    .line 1187
    sget v2, Lus/zoom/zrcbox/R$id;->searchlistview:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 1188
    sget v3, Lus/zoom/zrcbox/R$id;->selectedjoinlist:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 1189
    sget v4, Lus/zoom/zrcbox/R$id;->dynamic_searchlistview:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    .line 1190
    invoke-direct {p0, v1, p1}, Lus/zoom/zrc/PTActivity;->isShouldHideInput(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 1191
    invoke-virtual {v2}, Landroid/widget/ListView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    if-eqz v6, :cond_1

    .line 1192
    invoke-direct {p0, v2, p1}, Lus/zoom/zrc/PTActivity;->isShouldHideInput(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :cond_2
    :goto_1
    if-eqz v3, :cond_4

    .line 1194
    invoke-virtual {v3}, Landroid/widget/ListView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    if-eqz v6, :cond_3

    .line 1195
    invoke-direct {p0, v3, p1}, Lus/zoom/zrc/PTActivity;->isShouldHideInput(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :cond_4
    :goto_2
    if-eqz v0, :cond_6

    .line 1197
    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    if-eqz v6, :cond_5

    .line 1198
    invoke-direct {p0, v0, p1}, Lus/zoom/zrc/PTActivity;->isShouldHideInput(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    :cond_6
    :goto_3
    if-eqz v1, :cond_7

    if-eqz v6, :cond_7

    .line 1201
    invoke-virtual {v1}, Lus/zoom/zrc/view/ZRCSearchView;->closeSearchView()V

    .line 1205
    :cond_7
    invoke-super {p0, p1}, Lus/zoom/zrc/ZRCActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1219
    invoke-super {p0, p1, p2, p3}, Lus/zoom/zrc/ZRCActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p1, 0x1e

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    .line 1220
    sget v0, Lus/zoom/zrcbox/R$string;->presentation_duration_reset:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/PTActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1221
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mPresentationFragment:Lus/zoom/zrc/view/PresentationFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/PresentationFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1222
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mPresentationFragment:Lus/zoom/zrc/view/PresentationFragment;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/PresentationFragment;->setMeetingDuration(I)V

    :cond_0
    if-eqz p3, :cond_1

    .line 1225
    sget v0, Lus/zoom/zrcbox/R$string;->meeting_duration_reset:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/PTActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1226
    iget-object p2, p0, Lus/zoom/zrc/PTActivity;->mIMAddrBookListFragment:Lus/zoom/zrc/view/IMAddrBookListFragment;

    invoke-virtual {p2}, Lus/zoom/zrc/view/IMAddrBookListFragment;->isAdded()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1227
    iget-object p2, p0, Lus/zoom/zrc/PTActivity;->mIMAddrBookListFragment:Lus/zoom/zrc/view/IMAddrBookListFragment;

    invoke-virtual {p2, p1}, Lus/zoom/zrc/view/IMAddrBookListFragment;->setMeetingDuration(I)V

    :cond_1
    return-void
.end method

.method public onAskToJoinThirdPartyMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 0
    .param p1    # Lus/zoom/zrcsdk/model/ZRCMeetingListItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onAudioCheckupNotification(Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1128
    iget-boolean v0, p0, Lus/zoom/zrc/PTActivity;->isTablet:Z

    if-nez v0, :cond_1

    .line 1129
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1130
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->popBackStack()V

    goto :goto_0

    .line 1132
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->finish()V

    :goto_0
    return-void

    .line 1136
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;

    .line 1137
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1138
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 1140
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1141
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 1142
    :cond_3
    invoke-super {p0}, Lus/zoom/zrc/ZRCActivity;->onBackPressed()V

    return-void
.end method

.method public onComDeviceListNotification(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCComDeviceInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onControlSystemViewSelected()V
    .locals 3

    .line 982
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mSelectedFragment:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lus/zoom/zrc/PTActivity;->mControlSystemFragment:Lus/zoom/zrc/control_system/ControlSystemFragment;

    invoke-direct {p0, v0, v1}, Lus/zoom/zrc/PTActivity;->switchSelectView(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    .line 983
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mControlSystemFragment:Lus/zoom/zrc/control_system/ControlSystemFragment;

    iput-object v0, p0, Lus/zoom/zrc/PTActivity;->mSelectedFragment:Landroidx/fragment/app/Fragment;

    .line 984
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrcsdk/PTApp;->notifySwitchToTab(IZ)I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 185
    invoke-super {p0, p1}, Lus/zoom/zrc/ZRCActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 187
    invoke-virtual {p0, v0}, Lus/zoom/zrc/PTActivity;->setBrightnessPolicy(I)V

    .line 189
    invoke-direct {p0}, Lus/zoom/zrc/PTActivity;->getDisplayInformation()V

    .line 190
    sget v1, Lus/zoom/zrcbox/R$layout;->pt_main:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/PTActivity;->setContentView(I)V

    .line 191
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->checkIsInit()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 195
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/PTActivity;->isFullFunctionality()Z

    move-result v1

    iput-boolean v1, p0, Lus/zoom/zrc/PTActivity;->lastFullFunctionality:Z

    .line 197
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getLoginInfo()Lus/zoom/zrcsdk/model/LoginInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 198
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getLoginInfo()Lus/zoom/zrcsdk/model/LoginInfo;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/LoginInfo;->isPublicRoomEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lus/zoom/zrc/PTActivity;->lastPublicRoomEnabledValue:Z

    .line 201
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getLoginInfo()Lus/zoom/zrcsdk/model/LoginInfo;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getLoginInfo()Lus/zoom/zrcsdk/model/LoginInfo;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/LoginInfo;->isPublicRoomEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    .line 203
    :cond_2
    invoke-direct {p0}, Lus/zoom/zrc/PTActivity;->isFullFunctionality()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    :goto_0
    if-eqz p1, :cond_5

    .line 209
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v4, Lus/zoom/zrc/view/IMAddrBookListFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/view/IMAddrBookListFragment;

    iput-object v1, p0, Lus/zoom/zrc/PTActivity;->mIMAddrBookListFragment:Lus/zoom/zrc/view/IMAddrBookListFragment;

    .line 210
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v4, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;

    iput-object v1, p0, Lus/zoom/zrc/PTActivity;->mMeetingListFragment:Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;

    .line 211
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v4, Lus/zoom/zrc/view/DialFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/view/DialFragment;

    iput-object v1, p0, Lus/zoom/zrc/PTActivity;->mDialFragment:Lus/zoom/zrc/view/DialFragment;

    .line 212
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v4, Lus/zoom/zrc/view/JoinMeetingFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/view/JoinMeetingFragment;

    iput-object v1, p0, Lus/zoom/zrc/PTActivity;->mJoinMeetingFragment:Lus/zoom/zrc/view/JoinMeetingFragment;

    .line 213
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v4, Lus/zoom/zrc/view/PresentationFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/view/PresentationFragment;

    iput-object v1, p0, Lus/zoom/zrc/PTActivity;->mPresentationFragment:Lus/zoom/zrc/view/PresentationFragment;

    .line 214
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v4, Lus/zoom/zrc/settings/SettingsFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/settings/SettingsFragment;

    iput-object v1, p0, Lus/zoom/zrc/PTActivity;->mSettingsFragment:Lus/zoom/zrc/settings/SettingsFragment;

    .line 215
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v4, Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;

    iput-object v1, p0, Lus/zoom/zrc/PTActivity;->mJoinOnlyModeFragment:Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;

    .line 216
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v4, Lus/zoom/zrc/view/PreMeetingPhoneFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/view/PreMeetingPhoneFragment;

    iput-object v1, p0, Lus/zoom/zrc/PTActivity;->preMeetingPhoneFragment:Lus/zoom/zrc/view/PreMeetingPhoneFragment;

    .line 217
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v4, Lus/zoom/zrc/control_system/ControlSystemFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/control_system/ControlSystemFragment;

    iput-object v1, p0, Lus/zoom/zrc/PTActivity;->mControlSystemFragment:Lus/zoom/zrc/control_system/ControlSystemFragment;

    .line 219
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getLoginInfo()Lus/zoom/zrcsdk/model/LoginInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getLoginInfo()Lus/zoom/zrcsdk/model/LoginInfo;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/LoginInfo;->isPublicRoomEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "SELECTED_POS"

    .line 220
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_1

    :cond_4
    const-string v1, "SELECTED_POS"

    .line 222
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 226
    :cond_5
    :goto_1
    iget-object p1, p0, Lus/zoom/zrc/PTActivity;->mIMAddrBookListFragment:Lus/zoom/zrc/view/IMAddrBookListFragment;

    if-nez p1, :cond_6

    .line 227
    new-instance p1, Lus/zoom/zrc/view/IMAddrBookListFragment;

    invoke-direct {p1}, Lus/zoom/zrc/view/IMAddrBookListFragment;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/PTActivity;->mIMAddrBookListFragment:Lus/zoom/zrc/view/IMAddrBookListFragment;

    .line 230
    :cond_6
    iget-object p1, p0, Lus/zoom/zrc/PTActivity;->mMeetingListFragment:Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;

    if-nez p1, :cond_7

    .line 231
    new-instance p1, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;

    invoke-direct {p1}, Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/PTActivity;->mMeetingListFragment:Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;

    .line 234
    :cond_7
    iget-object p1, p0, Lus/zoom/zrc/PTActivity;->mDialFragment:Lus/zoom/zrc/view/DialFragment;

    if-nez p1, :cond_8

    .line 235
    new-instance p1, Lus/zoom/zrc/view/DialFragment;

    invoke-direct {p1}, Lus/zoom/zrc/view/DialFragment;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/PTActivity;->mDialFragment:Lus/zoom/zrc/view/DialFragment;

    .line 238
    :cond_8
    iget-object p1, p0, Lus/zoom/zrc/PTActivity;->mJoinMeetingFragment:Lus/zoom/zrc/view/JoinMeetingFragment;

    if-nez p1, :cond_9

    .line 239
    new-instance p1, Lus/zoom/zrc/view/JoinMeetingFragment;

    invoke-direct {p1}, Lus/zoom/zrc/view/JoinMeetingFragment;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/PTActivity;->mJoinMeetingFragment:Lus/zoom/zrc/view/JoinMeetingFragment;

    .line 242
    :cond_9
    iget-object p1, p0, Lus/zoom/zrc/PTActivity;->mPresentationFragment:Lus/zoom/zrc/view/PresentationFragment;

    if-nez p1, :cond_a

    .line 243
    new-instance p1, Lus/zoom/zrc/view/PresentationFragment;

    invoke-direct {p1}, Lus/zoom/zrc/view/PresentationFragment;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/PTActivity;->mPresentationFragment:Lus/zoom/zrc/view/PresentationFragment;

    .line 246
    :cond_a
    iget-object p1, p0, Lus/zoom/zrc/PTActivity;->mSettingsFragment:Lus/zoom/zrc/settings/SettingsFragment;

    if-nez p1, :cond_b

    .line 247
    new-instance p1, Lus/zoom/zrc/settings/SettingsFragment;

    invoke-direct {p1}, Lus/zoom/zrc/settings/SettingsFragment;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/PTActivity;->mSettingsFragment:Lus/zoom/zrc/settings/SettingsFragment;

    .line 250
    :cond_b
    iget-object p1, p0, Lus/zoom/zrc/PTActivity;->mJoinOnlyModeFragment:Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;

    if-nez p1, :cond_c

    .line 251
    new-instance p1, Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;

    invoke-direct {p1}, Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/PTActivity;->mJoinOnlyModeFragment:Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;

    .line 254
    :cond_c
    iget-object p1, p0, Lus/zoom/zrc/PTActivity;->preMeetingPhoneFragment:Lus/zoom/zrc/view/PreMeetingPhoneFragment;

    if-nez p1, :cond_d

    .line 255
    new-instance p1, Lus/zoom/zrc/view/PreMeetingPhoneFragment;

    invoke-direct {p1}, Lus/zoom/zrc/view/PreMeetingPhoneFragment;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/PTActivity;->preMeetingPhoneFragment:Lus/zoom/zrc/view/PreMeetingPhoneFragment;

    .line 258
    :cond_d
    iget-object p1, p0, Lus/zoom/zrc/PTActivity;->mControlSystemFragment:Lus/zoom/zrc/control_system/ControlSystemFragment;

    if-nez p1, :cond_e

    .line 259
    new-instance p1, Lus/zoom/zrc/control_system/ControlSystemFragment;

    invoke-direct {p1}, Lus/zoom/zrc/control_system/ControlSystemFragment;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/PTActivity;->mControlSystemFragment:Lus/zoom/zrc/control_system/ControlSystemFragment;

    :cond_e
    const/4 p1, 0x7

    .line 262
    new-array p1, p1, [Landroidx/fragment/app/Fragment;

    iput-object p1, p0, Lus/zoom/zrc/PTActivity;->mFragmentList:[Landroidx/fragment/app/Fragment;

    .line 263
    iget-object p1, p0, Lus/zoom/zrc/PTActivity;->mFragmentList:[Landroidx/fragment/app/Fragment;

    iget-object v4, p0, Lus/zoom/zrc/PTActivity;->mIMAddrBookListFragment:Lus/zoom/zrc/view/IMAddrBookListFragment;

    aput-object v4, p1, v3

    .line 264
    iget-object v4, p0, Lus/zoom/zrc/PTActivity;->mMeetingListFragment:Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;

    aput-object v4, p1, v0

    .line 265
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mJoinMeetingFragment:Lus/zoom/zrc/view/JoinMeetingFragment;

    aput-object v0, p1, v2

    const/4 v0, 0x3

    .line 266
    iget-object v2, p0, Lus/zoom/zrc/PTActivity;->mPresentationFragment:Lus/zoom/zrc/view/PresentationFragment;

    aput-object v2, p1, v0

    const/4 v0, 0x4

    .line 267
    iget-object v2, p0, Lus/zoom/zrc/PTActivity;->mDialFragment:Lus/zoom/zrc/view/DialFragment;

    aput-object v2, p1, v0

    const/4 v0, 0x5

    .line 268
    iget-object v2, p0, Lus/zoom/zrc/PTActivity;->mSettingsFragment:Lus/zoom/zrc/settings/SettingsFragment;

    aput-object v2, p1, v0

    const/4 v0, 0x6

    .line 269
    iget-object v2, p0, Lus/zoom/zrc/PTActivity;->mControlSystemFragment:Lus/zoom/zrc/control_system/ControlSystemFragment;

    aput-object v2, p1, v0

    .line 271
    sget p1, Lus/zoom/zrcbox/R$id;->pt_menu_view:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/PTActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/view/PTMenuView;

    iput-object p1, p0, Lus/zoom/zrc/PTActivity;->mPTMenuView:Lus/zoom/zrc/view/PTMenuView;

    .line 272
    iget-object p1, p0, Lus/zoom/zrc/PTActivity;->mPTMenuView:Lus/zoom/zrc/view/PTMenuView;

    invoke-virtual {p1, p0}, Lus/zoom/zrc/view/PTMenuView;->setOnSelectListener(Lus/zoom/zrc/view/PTMenuView$IPTMenuViewSelected;)V

    .line 273
    iget-object p1, p0, Lus/zoom/zrc/PTActivity;->mIMAddrBookListFragment:Lus/zoom/zrc/view/IMAddrBookListFragment;

    invoke-virtual {p1, p0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->setOnClickMeetingNowBtnListener(Lus/zoom/zrc/view/IMAddrBookListFragment$OnClickMeetingNowBtnListener;)V

    .line 274
    iget-object p1, p0, Lus/zoom/zrc/PTActivity;->mJoinMeetingFragment:Lus/zoom/zrc/view/JoinMeetingFragment;

    invoke-virtual {p1, p0}, Lus/zoom/zrc/view/JoinMeetingFragment;->setOnClickJoinMeetingBtnListener(Lus/zoom/zrc/view/JoinMeetingFragment$OnClickJoinMeetingBtnListener;)V

    .line 275
    iget-object p1, p0, Lus/zoom/zrc/PTActivity;->preMeetingPhoneFragment:Lus/zoom/zrc/view/PreMeetingPhoneFragment;

    invoke-virtual {p1, p0}, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->setOnClickMeetingNowBtnListener(Lus/zoom/zrc/view/IMAddrBookListFragment$OnClickMeetingNowBtnListener;)V

    .line 276
    iget-object p1, p0, Lus/zoom/zrc/PTActivity;->preMeetingPhoneFragment:Lus/zoom/zrc/view/PreMeetingPhoneFragment;

    invoke-virtual {p1, p0}, Lus/zoom/zrc/view/PreMeetingPhoneFragment;->setOnClickJoinMeetingBtnListener(Lus/zoom/zrc/view/JoinMeetingFragment$OnClickJoinMeetingBtnListener;)V

    const-string p1, ""

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectedPos="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    iget-object p1, p0, Lus/zoom/zrc/PTActivity;->mFragmentList:[Landroidx/fragment/app/Fragment;

    aget-object p1, p1, v1

    invoke-direct {p0, p1}, Lus/zoom/zrc/PTActivity;->initSelectedView(Landroidx/fragment/app/Fragment;)V

    .line 281
    invoke-direct {p0}, Lus/zoom/zrc/PTActivity;->onTimerForPullingSettingsFromWeb()V

    .line 289
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object p1

    invoke-virtual {p1, p0}, Lus/zoom/zrc/model/AppEngine;->addWebPullCallBackListener(Lus/zoom/zrc/model/AppEngine$IWebPullCallBackEvent;)V

    .line 291
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getMeetingAlertManager()Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 292
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getMeetingAlertManager()Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/PTActivity;->meetingAlertManager:Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    goto :goto_2

    .line 295
    :cond_f
    new-instance p1, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    invoke-direct {p1}, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/PTActivity;->meetingAlertManager:Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    .line 296
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->meetingAlertManager:Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/AppModel;->setZRCMeetingAlertManager(Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;)V

    .line 299
    :goto_2
    iget-boolean p1, p0, Lus/zoom/zrc/PTActivity;->isTablet:Z

    if-nez p1, :cond_10

    .line 300
    iget-object p1, p0, Lus/zoom/zrc/PTActivity;->mPTMenuView:Lus/zoom/zrc/view/PTMenuView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lus/zoom/zrc/view/PTMenuView;->setVisibility(I)V

    .line 301
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    const v0, 0x1020002

    iget-object v1, p0, Lus/zoom/zrc/PTActivity;->preMeetingPhoneFragment:Lus/zoom/zrc/view/PreMeetingPhoneFragment;

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->replaceShowFragment(ILandroidx/fragment/app/Fragment;)V

    .line 304
    :cond_10
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    new-array v0, v3, [Lus/zoom/zrc/base/notification/NotificationEvent;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerNotification([Lus/zoom/zrc/base/notification/NotificationEvent;)V

    .line 305
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    .line 308
    invoke-static {}, Lus/zoom/zrc/model/VirtualBackgroundHelper;->getDefault()Lus/zoom/zrc/model/VirtualBackgroundHelper;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/VirtualBackgroundHelper;->downloadVirtualBackgroundImageFiles()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 505
    invoke-static {}, Lus/zoom/zrc/GetReleaseNotesHandler;->cancelGettingReleaseNote()V

    .line 506
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->removeNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;)V

    .line 507
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mEnterPasswordDialogDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    invoke-direct {p0}, Lus/zoom/zrc/PTActivity;->cancelEnterPasswordDialog()V

    .line 510
    :cond_0
    invoke-super {p0}, Lus/zoom/zrc/ZRCActivity;->onDestroy()V

    .line 518
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->removeWebPullCallBackListener(Lus/zoom/zrc/model/AppEngine$IWebPullCallBackEvent;)V

    .line 520
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onGoingToBeInMeetingNotification(IZ)V
    .locals 1

    .line 1059
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/view/SimpleFeedbackFragment;->dismissAllFeedback(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1075
    :pswitch_0
    sget p1, Lus/zoom/zrcbox/R$string;->starting_local_share:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/PTActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/PTActivity;->showWaitingDialog(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    if-eqz p2, :cond_1

    .line 1064
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getUserProfile()Lus/zoom/zrc/model/ZRCUserProfile;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1065
    sget p1, Lus/zoom/zrcbox/R$string;->start_test_meeting_prompt:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/PTActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/PTActivity;->showWaitingDialog(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1067
    :cond_0
    sget p1, Lus/zoom/zrcbox/R$string;->starting_meeting:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/PTActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/PTActivity;->showWaitingDialog(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1070
    :cond_1
    sget p1, Lus/zoom/zrcbox/R$string;->joining_meeting:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/PTActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/PTActivity;->showWaitingDialog(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onJoinMeetingViewSelected()V
    .locals 3

    .line 944
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mSelectedFragment:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lus/zoom/zrc/PTActivity;->mJoinMeetingFragment:Lus/zoom/zrc/view/JoinMeetingFragment;

    invoke-direct {p0, v0, v1}, Lus/zoom/zrc/PTActivity;->switchSelectView(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    .line 945
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mJoinMeetingFragment:Lus/zoom/zrc/view/JoinMeetingFragment;

    iput-object v0, p0, Lus/zoom/zrc/PTActivity;->mSelectedFragment:Landroidx/fragment/app/Fragment;

    .line 946
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrcsdk/PTApp;->notifySwitchToTab(IZ)I

    return-void
.end method

.method public onMeetingErrorNotification(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onMeetingListViewSelected()V
    .locals 3

    .line 932
    invoke-direct {p0}, Lus/zoom/zrc/PTActivity;->isFullFunctionality()Z

    move-result v0

    if-nez v0, :cond_0

    .line 933
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mSelectedFragment:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lus/zoom/zrc/PTActivity;->mJoinOnlyModeFragment:Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;

    invoke-direct {p0, v0, v1}, Lus/zoom/zrc/PTActivity;->switchSelectView(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    .line 934
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mJoinOnlyModeFragment:Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;

    iput-object v0, p0, Lus/zoom/zrc/PTActivity;->mSelectedFragment:Landroidx/fragment/app/Fragment;

    goto :goto_0

    .line 936
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mSelectedFragment:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lus/zoom/zrc/PTActivity;->mMeetingListFragment:Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;

    invoke-direct {p0, v0, v1}, Lus/zoom/zrc/PTActivity;->switchSelectView(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    .line 937
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mMeetingListFragment:Lus/zoom/zrc/meeting/meetinglist/MeetingListFragment;

    iput-object v0, p0, Lus/zoom/zrc/PTActivity;->mSelectedFragment:Landroidx/fragment/app/Fragment;

    .line 939
    :goto_0
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrcsdk/PTApp;->notifySwitchToTab(IZ)I

    return-void
.end method

.method public onMeetingNeedsPassword(ZZ)V
    .locals 0

    return-void
.end method

.method public onMeetingNowViewSelected()V
    .locals 2

    .line 920
    invoke-direct {p0}, Lus/zoom/zrc/PTActivity;->isFullFunctionality()Z

    move-result v0

    if-nez v0, :cond_0

    .line 921
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mSelectedFragment:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lus/zoom/zrc/PTActivity;->mJoinOnlyModeFragment:Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;

    invoke-direct {p0, v0, v1}, Lus/zoom/zrc/PTActivity;->switchSelectView(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    .line 922
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mJoinOnlyModeFragment:Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;

    iput-object v0, p0, Lus/zoom/zrc/PTActivity;->mSelectedFragment:Landroidx/fragment/app/Fragment;

    goto :goto_0

    .line 924
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mSelectedFragment:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lus/zoom/zrc/PTActivity;->mIMAddrBookListFragment:Lus/zoom/zrc/view/IMAddrBookListFragment;

    invoke-direct {p0, v0, v1}, Lus/zoom/zrc/PTActivity;->switchSelectView(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    .line 925
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mIMAddrBookListFragment:Lus/zoom/zrc/view/IMAddrBookListFragment;

    iput-object v0, p0, Lus/zoom/zrc/PTActivity;->mSelectedFragment:Landroidx/fragment/app/Fragment;

    .line 927
    :goto_0
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lus/zoom/zrcsdk/PTApp;->notifySwitchToTab(IZ)I

    return-void
.end method

.method public onMicrophoneTestingNotification(I)V
    .locals 0

    return-void
.end method

.method public onNeedWaitForHost(ZI)V
    .locals 0

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 495
    invoke-super {p0, p1}, Lus/zoom/zrc/ZRCActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOtherDeviceLoginNotification(I)V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 567
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/zrc/PTActivity;->onTimeNextMeetingAlarmRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 568
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->removeZRMeetingStatusChangeEventListener(Lus/zoom/zrc/model/AppEngine$IZRMeetingStatusEvent;)V

    .line 569
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->removeZRPtEventListener(Lus/zoom/zrc/model/AppEngine$IZRPtEvent;)V

    .line 570
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->removeWebEventListener(Lus/zoom/zrc/model/AppEngine$IWebEvent;)V

    .line 571
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/PTActivity;->listener:Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppEngine;->removeZRMeetingEventListener(Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;)V

    .line 572
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->removeWebinarListener(Lus/zoom/zrc/model/AppEngine$IWebinarRoleChangedEvent;)V

    .line 573
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/zrc/PTActivity;->rollBackPtMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 574
    invoke-super {p0}, Lus/zoom/zrc/ZRCActivity;->onPause()V

    return-void
.end method

.method public onPhoneViewSelected()V
    .locals 3

    .line 963
    invoke-direct {p0}, Lus/zoom/zrc/PTActivity;->isFullFunctionality()Z

    move-result v0

    if-nez v0, :cond_0

    .line 964
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mSelectedFragment:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lus/zoom/zrc/PTActivity;->mJoinOnlyModeFragment:Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;

    invoke-direct {p0, v0, v1}, Lus/zoom/zrc/PTActivity;->switchSelectView(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    .line 965
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mJoinOnlyModeFragment:Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;

    iput-object v0, p0, Lus/zoom/zrc/PTActivity;->mSelectedFragment:Landroidx/fragment/app/Fragment;

    goto :goto_0

    .line 967
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mSelectedFragment:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lus/zoom/zrc/PTActivity;->mDialFragment:Lus/zoom/zrc/view/DialFragment;

    invoke-direct {p0, v0, v1}, Lus/zoom/zrc/PTActivity;->switchSelectView(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    .line 968
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mDialFragment:Lus/zoom/zrc/view/DialFragment;

    iput-object v0, p0, Lus/zoom/zrc/PTActivity;->mSelectedFragment:Landroidx/fragment/app/Fragment;

    .line 970
    :goto_0
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrcsdk/PTApp;->notifySwitchToTab(IZ)I

    return-void
.end method

.method public onPresentationViewSelected()V
    .locals 3

    .line 951
    invoke-direct {p0}, Lus/zoom/zrc/PTActivity;->isFullFunctionality()Z

    move-result v0

    if-nez v0, :cond_0

    .line 952
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mSelectedFragment:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lus/zoom/zrc/PTActivity;->mJoinOnlyModeFragment:Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;

    invoke-direct {p0, v0, v1}, Lus/zoom/zrc/PTActivity;->switchSelectView(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    .line 953
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mJoinOnlyModeFragment:Lus/zoom/zrc/login/LoginJoinOnlyModeFragment;

    iput-object v0, p0, Lus/zoom/zrc/PTActivity;->mSelectedFragment:Landroidx/fragment/app/Fragment;

    goto :goto_0

    .line 955
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mSelectedFragment:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lus/zoom/zrc/PTActivity;->mPresentationFragment:Lus/zoom/zrc/view/PresentationFragment;

    invoke-direct {p0, v0, v1}, Lus/zoom/zrc/PTActivity;->switchSelectView(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    .line 956
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mPresentationFragment:Lus/zoom/zrc/view/PresentationFragment;

    iput-object v0, p0, Lus/zoom/zrc/PTActivity;->mSelectedFragment:Landroidx/fragment/app/Fragment;

    .line 958
    :goto_0
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrcsdk/PTApp;->notifySwitchToTab(IZ)I

    return-void
.end method

.method public onReceivedNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 3

    .line 1488
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/ZRCActivity;->onReceivedNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    .line 1489
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnMeetingExitedNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_0

    .line 1490
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->dismissWaitingDialog()V

    .line 1491
    invoke-static {}, Lus/zoom/zrc/PTActivity;->closePresentation()V

    goto/16 :goto_0

    .line 1492
    :cond_0
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->StartPmiResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_1

    const-string p1, "result"

    .line 1493
    invoke-static {p2, p1}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->boolFromMap(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p1

    const-string v0, "requestId"

    .line 1494
    invoke-static {p2, v0}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->valueFromMap(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "meetingNumber"

    .line 1495
    invoke-static {p2, v1}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->valueFromMap(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "meetingListItem"

    .line 1496
    invoke-static {p2, v2}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->valueFromMap(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    .line 1497
    invoke-direct {p0, p1, v0, v1, p2}, Lus/zoom/zrc/PTActivity;->onStartPmiResult(ZLjava/lang/String;Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    goto/16 :goto_0

    .line 1498
    :cond_1
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->MeetWithIMUsersResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_2

    .line 1499
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/PTActivity;->onMeetWithIMUsersResult(Z)V

    goto/16 :goto_0

    .line 1500
    :cond_2
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->JoinMeetingResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_3

    .line 1501
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/PTActivity;->onJoinMeetingResult(Z)V

    goto/16 :goto_0

    .line 1502
    :cond_3
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->JoinTestMeetingResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_4

    .line 1503
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/PTActivity;->onJoinTestMeetingResult(Z)V

    goto/16 :goto_0

    .line 1504
    :cond_4
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->StartMeetingResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_5

    .line 1505
    check-cast p2, Lcom/google/common/collect/ImmutableMap;

    const-string p1, "result"

    .line 1506
    invoke-virtual {p2, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "requestId"

    .line 1507
    invoke-virtual {p2, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1508
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/PTActivity;->onStartMeetingResult(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 1509
    :cond_5
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnGoingToBeInMeetingNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_6

    const-string p1, "PTActivity"

    const-string v0, "ModelEvent.OnGoingToBeInMeetingNotification"

    .line 1510
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "meetingType"

    .line 1511
    invoke-static {p2, p1}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->intFromMap(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p1

    const-string v0, "isStarting"

    .line 1512
    invoke-static {p2, v0}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->boolFromMap(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p2

    .line 1513
    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/PTActivity;->onGoingToBeInMeetingNotification(IZ)V

    .line 1514
    invoke-direct {p0, v2, v2}, Lus/zoom/zrc/PTActivity;->dismissMeetingAlert(ZZ)V

    goto :goto_0

    .line 1515
    :cond_6
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnConfReady:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_7

    .line 1516
    invoke-direct {p0}, Lus/zoom/zrc/PTActivity;->onConfReady()V

    goto :goto_0

    .line 1517
    :cond_7
    sget-object v0, Lus/zoom/zrc/base/notification/UserEvent;->EnterSipCall:Lus/zoom/zrc/base/notification/UserEvent;

    if-ne p1, v0, :cond_8

    const-string p1, "PTActivity"

    const-string p2, "UserEvent.EnterSipCall"

    .line 1518
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1519
    invoke-direct {p0, v2, v2}, Lus/zoom/zrc/PTActivity;->dismissMeetingAlert(ZZ)V

    goto :goto_0

    .line 1520
    :cond_8
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->CloseUpcomingMeetingAlertResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_a

    const-string p1, "result"

    .line 1521
    invoke-static {p2, p1}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->intFromMap(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 1525
    :cond_9
    invoke-direct {p0, v2, v2, v1}, Lus/zoom/zrc/PTActivity;->dismissNextMeetingAlert(ZZZ)V

    goto :goto_0

    .line 1526
    :cond_a
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnAskToJoinThirdPartyMeeting:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_c

    const-string p1, "result"

    .line 1527
    invoke-static {p2, p1}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->intFromMap(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_b

    return-void

    .line 1531
    :cond_b
    check-cast p2, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    .line 1532
    invoke-direct {p0, p2}, Lus/zoom/zrc/PTActivity;->askToJoinThirdPartyMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    goto :goto_0

    .line 1533
    :cond_c
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->ShowUpcomingMeetingAlertResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_f

    const-string p1, "result"

    .line 1534
    invoke-static {p2, p1}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->intFromMap(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_d

    return-void

    :cond_d
    const-string p1, "PTActivity"

    const-string v0, "receive show up coming meeting alert result"

    .line 1538
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "meetingListItem"

    .line 1539
    invoke-static {p2, p1}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->valueFromMap(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    if-nez p1, :cond_e

    return-void

    .line 1543
    :cond_e
    invoke-direct {p0, p1, v2}, Lus/zoom/zrc/PTActivity;->triggerNextMeetingAlarm(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;Z)V

    :cond_f
    :goto_0
    return-void
.end method

.method public onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 2

    .line 1329
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/ZRCActivity;->onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    .line 1330
    sget-object v0, Lus/zoom/zrc/base/notification/UserEvent;->ClickStartRoomSystemMeeting:Lus/zoom/zrc/base/notification/UserEvent;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/notification/UserEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "showInputDialog"

    .line 1332
    invoke-static {p2, p1}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->boolFromMap(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p1

    .line 1333
    invoke-direct {p0, p1}, Lus/zoom/zrc/PTActivity;->showRoomSystemDialogAndCall(Z)V

    goto/16 :goto_0

    .line 1334
    :cond_0
    sget-object v0, Lus/zoom/zrc/base/notification/UserEvent;->StartPresentation:Lus/zoom/zrc/base/notification/UserEvent;

    if-ne p1, v0, :cond_1

    .line 1335
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1336
    invoke-direct {p0, p1}, Lus/zoom/zrc/PTActivity;->startPresentation(I)V

    goto/16 :goto_0

    .line 1337
    :cond_1
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnEnterState:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_2

    .line 1338
    check-cast p2, Lcom/google/common/collect/ImmutableMap;

    const-string p1, "newState"

    .line 1339
    invoke-virtual {p2, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v0, "oldState"

    .line 1340
    invoke-virtual {p2, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_9

    const/4 p1, 0x7

    if-ne p2, p1, :cond_9

    .line 1342
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getLastMeetingNumber()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/PTActivity;->checkToShowFeedbackDialog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1344
    :cond_2
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->WebinarRoleChanged:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_3

    .line 1345
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/PTActivity;->showWebinarRoleChangedToast(I)V

    goto/16 :goto_0

    .line 1346
    :cond_3
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->SetMeetingPasswordResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_4

    .line 1347
    invoke-direct {p0}, Lus/zoom/zrc/PTActivity;->dismissEnterPasswordDialog()V

    goto/16 :goto_0

    .line 1348
    :cond_4
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->ShowSharingInstructionResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_5

    .line 1349
    check-cast p2, Lcom/google/common/collect/ImmutableMap;

    const-string p1, "result"

    .line 1350
    invoke-virtual {p2, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "is_show_instruction"

    .line 1351
    invoke-virtual {p2, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "is_laptop_instruction"

    .line 1352
    invoke-virtual {p2, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 1353
    invoke-direct {p0, p1, v0, p2}, Lus/zoom/zrc/PTActivity;->onShowSharingInstructionResult(ZZZ)V

    goto :goto_0

    .line 1354
    :cond_5
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->LaunchSharingMeetingResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_6

    .line 1355
    move-object p1, p2

    check-cast p1, Lcom/google/common/collect/ImmutableMap;

    const-string v0, "result"

    .line 1356
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "requestId"

    .line 1357
    invoke-static {p2, v1}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->valueFromMap(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v1, "for_share_laptop"

    .line 1358
    invoke-virtual {p1, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 1359
    invoke-direct {p0, v0, p2, p1}, Lus/zoom/zrc/PTActivity;->onLaunchSharingMeetingResult(ZLjava/lang/String;Z)V

    goto :goto_0

    .line 1360
    :cond_6
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->StartSharingMeetingNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_7

    const-string p1, "result"

    .line 1361
    invoke-static {p2, p1}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->boolFromMap(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p1

    .line 1362
    invoke-direct {p0, p1}, Lus/zoom/zrc/PTActivity;->onStartSharingMeetingNotification(Z)V

    goto :goto_0

    .line 1363
    :cond_7
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnMeetingNeedsPassword:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_9

    const-string p1, "showPasswordDialog"

    .line 1364
    invoke-static {p2, p1}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->boolFromMap(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p1

    const-string v0, "wrongAndRetry"

    .line 1365
    invoke-static {p2, v0}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->boolFromMap(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p2

    if-eqz p1, :cond_8

    .line 1367
    invoke-direct {p0, p2}, Lus/zoom/zrc/PTActivity;->showEnterPasswordDialog(Z)V

    goto :goto_0

    .line 1369
    :cond_8
    invoke-direct {p0}, Lus/zoom/zrc/PTActivity;->dismissEnterPasswordDialog()V

    :cond_9
    :goto_0
    return-void
.end method

.method public onReceivedPropertyChangedCallback(Landroidx/databinding/Observable;I)V
    .locals 2

    .line 1309
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->whiteboardCameraInfo:I

    if-ne p1, p2, :cond_1

    .line 1310
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->isActive()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1313
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/PTActivity;->onWhiteboardCameraInfoChanged()V

    goto :goto_0

    .line 1314
    :cond_1
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->meetingList:I

    if-ne p1, p2, :cond_3

    .line 1315
    iget-object p1, p0, Lus/zoom/zrc/PTActivity;->meetingAlertManager:Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    invoke-virtual {p1}, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->getCurrentMeeting()Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_2

    const-string p1, "PTActivity"

    const-string v0, "OnPropertyChanged: meeting list and current meeting is null"

    .line 1316
    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, v0, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1319
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/PTActivity;->meetingAlertManager:Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    invoke-virtual {p1}, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->getCurrentMeeting()Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    move-result-object v0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getMeetingList()Lus/zoom/zrc/model/MeetingList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->getUpdatedMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;Ljava/util/List;)Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "PTActivity"

    const-string v0, "Updated meeting item is null and dismiss alert"

    .line 1321
    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, v0, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 1322
    invoke-direct {p0, p1, p1}, Lus/zoom/zrc/PTActivity;->dismissMeetingAlert(ZZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 525
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->addZRMeetingStatusChangeListener(Lus/zoom/zrc/model/AppEngine$IZRMeetingStatusEvent;)V

    .line 526
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->addZRPtEventListener(Lus/zoom/zrc/model/AppEngine$IZRPtEvent;)V

    .line 527
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->addWebEventListener(Lus/zoom/zrc/model/AppEngine$IWebEvent;)V

    .line 528
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/PTActivity;->listener:Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppEngine;->addZRMeetingEventListener(Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;)V

    .line 529
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->addWebinarListener(Lus/zoom/zrc/model/AppEngine$IWebinarRoleChangedEvent;)V

    .line 530
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/zrc/PTActivity;->onTimeNextMeetingAlarmRunnable:Ljava/lang/Runnable;

    sget-wide v2, Lus/zoom/zrcsdk/model/meetingalert/MAConst;->TASK_REFRESH_INTERVAL_FOR_NMA:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 532
    invoke-super {p0}, Lus/zoom/zrc/ZRCActivity;->onResume()V

    .line 535
    invoke-static {p0}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mPTMenuView:Lus/zoom/zrc/view/PTMenuView;

    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {v0}, Lus/zoom/zrc/view/PTMenuView;->getSelectedView()Lus/zoom/zrc/view/PTMenuViewItem;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/PTActivity$4;

    invoke-direct {v1, p0}, Lus/zoom/zrc/PTActivity$4;-><init>(Lus/zoom/zrc/PTActivity;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Lus/zoom/zrc/view/PTMenuViewItem;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 546
    :cond_0
    iget-boolean v0, p0, Lus/zoom/zrc/PTActivity;->lastFullFunctionality:Z

    invoke-direct {p0}, Lus/zoom/zrc/PTActivity;->isFullFunctionality()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 547
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mFragmentList:[Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lus/zoom/zrc/PTActivity;->initSelectedView(Landroidx/fragment/app/Fragment;)V

    .line 548
    invoke-direct {p0}, Lus/zoom/zrc/PTActivity;->isFullFunctionality()Z

    move-result v0

    iput-boolean v0, p0, Lus/zoom/zrc/PTActivity;->lastFullFunctionality:Z

    .line 551
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/zrc/PTActivity;->rollBackPtMenuRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 321
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/zrc/PTActivity;->rollBackPtMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 323
    invoke-super {p0, p1}, Lus/zoom/zrc/ZRCActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 324
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mPTMenuView:Lus/zoom/zrc/view/PTMenuView;

    invoke-virtual {v0}, Lus/zoom/zrc/view/PTMenuView;->getSelectedIndex()I

    move-result v0

    if-eqz p1, :cond_0

    const-string v1, "SELECTED_POS"

    .line 326
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onScreenInformationNotification(II)V
    .locals 0

    return-void
.end method

.method public onScreenResolutionStatusChangedTo(I)V
    .locals 0

    return-void
.end method

.method public onSendEmailResult(I)V
    .locals 0

    return-void
.end method

.method public onSendFeedbackFinisheResult(I)V
    .locals 0

    return-void
.end method

.method public onSetCloudRecordingNotificationEmailResult(I)V
    .locals 0

    return-void
.end method

.method public onSettingViewSelected()V
    .locals 3

    .line 975
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mSelectedFragment:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lus/zoom/zrc/PTActivity;->mSettingsFragment:Lus/zoom/zrc/settings/SettingsFragment;

    invoke-direct {p0, v0, v1}, Lus/zoom/zrc/PTActivity;->switchSelectView(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    .line 976
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mSettingsFragment:Lus/zoom/zrc/settings/SettingsFragment;

    iput-object v0, p0, Lus/zoom/zrc/PTActivity;->mSelectedFragment:Landroidx/fragment/app/Fragment;

    .line 977
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrcsdk/PTApp;->notifySwitchToTab(IZ)I

    return-void
.end method

.method public onSpeakerTestingNotification(IZ)V
    .locals 0

    return-void
.end method

.method public onSpeakerTestingResult(IFZ)V
    .locals 0

    return-void
.end method

.method public onStartInstantMeetingNotification(ZI)V
    .locals 0

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 500
    invoke-super {p0}, Lus/zoom/zrc/ZRCActivity;->onStop()V

    return-void
.end method

.method public onSwitchCameraForVideoResult(Z)V
    .locals 0

    return-void
.end method

.method public onUpdateAirPlayBlackMagicStatus(Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;)V
    .locals 0

    return-void
.end method

.method public onUpdateMeetingList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingListItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onUpdateSettingsDeviceInfo(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)V
    .locals 0

    return-void
.end method

.method public onUpdatedOperationTimeStatusNotification(Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;)V
    .locals 0

    return-void
.end method

.method public onUpdatedWebSettingsNotification(Lus/zoom/zrcsdk/model/LoginInfo;)V
    .locals 1

    .line 1162
    iget-boolean v0, p0, Lus/zoom/zrc/PTActivity;->isTablet:Z

    if-eqz v0, :cond_0

    .line 1163
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mPresentationFragment:Lus/zoom/zrc/view/PresentationFragment;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/PresentationFragment;->onUpdatedWebSettingsNotification(Lus/zoom/zrcsdk/model/LoginInfo;)V

    :cond_0
    return-void
.end method

.method public onVerifyConnectionFinished(I)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1169
    invoke-virtual {p0}, Lus/zoom/zrc/PTActivity;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1170
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/zrc/PTActivity;->rollBackPtMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1171
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/zrc/PTActivity;->rollBackPtMenuRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    if-nez p1, :cond_1

    .line 1174
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/zrc/PTActivity;->rollBackPtMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1176
    :cond_1
    invoke-super {p0, p1}, Lus/zoom/zrc/ZRCActivity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public onZRMeetingStatusChange(I)V
    .locals 0

    return-void
.end method

.method public onZoomPresenceSignedOutNotification()V
    .locals 0

    return-void
.end method

.method public showWaitingDialog(Ljava/lang/CharSequence;)V
    .locals 1

    .line 313
    iget-object v0, p0, Lus/zoom/zrc/PTActivity;->mEnterPasswordDialogDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 316
    :cond_0
    invoke-super {p0, p1}, Lus/zoom/zrc/ZRCActivity;->showWaitingDialog(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public webinarRoleChanged(I)V
    .locals 0

    return-void
.end method
