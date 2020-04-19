.class public Lus/zoom/zrc/login/LoginActivity;
.super Lus/zoom/zrc/ZRCActivity;
.source "LoginActivity.java"

# interfaces
.implements Lus/zoom/zrc/base/widget/ZRCKeyboardDetector$IKeyboardListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;
    }
.end annotation


# instance fields
.field private mActionBar:Lus/zoom/zrc/base/widget/ZRCTitleBar;

.field private mUIImpl:Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Lus/zoom/zrc/ZRCActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/login/LoginActivity;)Lus/zoom/zrc/login/LoginPairingCodeFragment;
    .locals 0

    .line 67
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginActivity;->getFragmentParingCode()Lus/zoom/zrc/login/LoginPairingCodeFragment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/login/LoginActivity;Lus/zoom/zrc/login/LoginBaseFragment;Z)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/login/LoginActivity;->showFragment(Lus/zoom/zrc/login/LoginBaseFragment;Z)V

    return-void
.end method

.method static synthetic access$1000(Lus/zoom/zrc/login/LoginActivity;)Lus/zoom/zrc/login/LoginBaseFragment;
    .locals 0

    .line 67
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginActivity;->getCurrentFragment()Lus/zoom/zrc/login/LoginBaseFragment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lus/zoom/zrc/login/LoginActivity;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginActivity;->handleShowSignOutWithAccessCode()V

    return-void
.end method

.method static synthetic access$1200(Lus/zoom/zrc/login/LoginActivity;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginActivity;->handleLoginWithGoogle()V

    return-void
.end method

.method static synthetic access$1300(Lus/zoom/zrc/login/LoginActivity;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginActivity;->handleNoZoomRoomsFound()V

    return-void
.end method

.method static synthetic access$1400(Lus/zoom/zrc/login/LoginActivity;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginActivity;->handleShowZoomRoomPicker()V

    return-void
.end method

.method static synthetic access$1500(Lus/zoom/zrc/login/LoginActivity;Lus/zoom/zrcsdk/model/ZRCLocationTree;)Lus/zoom/zrc/login/room/LoginLocationPickerFragment;
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lus/zoom/zrc/login/LoginActivity;->newLocationPickerFragment(Lus/zoom/zrcsdk/model/ZRCLocationTree;)Lus/zoom/zrc/login/room/LoginLocationPickerFragment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lus/zoom/zrc/login/LoginActivity;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginActivity;->handleZoomRoomAdded()V

    return-void
.end method

.method static synthetic access$1700(Lus/zoom/zrc/login/LoginActivity;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginActivity;->handleCreateRoomSuccess()V

    return-void
.end method

.method static synthetic access$1800(Lus/zoom/zrc/login/LoginActivity;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginActivity;->handleAddCalendarSuccess()V

    return-void
.end method

.method static synthetic access$1900(Lus/zoom/zrc/login/LoginActivity;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginActivity;->handleAddCalendarResourceSuccess()V

    return-void
.end method

.method static synthetic access$2000(Lus/zoom/zrc/login/LoginActivity;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginActivity;->clearFragmentStack()V

    return-void
.end method

.method static synthetic access$2100(Lus/zoom/zrc/login/LoginActivity;Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lus/zoom/zrc/login/LoginActivity;->handleUpdateZRCVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lus/zoom/zrc/login/LoginActivity;Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lus/zoom/zrc/login/LoginActivity;->handleUpdateIpAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lus/zoom/zrc/login/LoginActivity;Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrc/login/LoginActivity;->handleErrorToast(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$500(Lus/zoom/zrc/login/LoginActivity;Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrc/login/LoginActivity;->handleErrorDialog(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$600(Lus/zoom/zrc/login/LoginActivity;ZLjava/lang/CharSequence;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/login/LoginActivity;->handleShowWaitingDialog(ZLjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$700(Lus/zoom/zrc/login/LoginActivity;Z)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lus/zoom/zrc/login/LoginActivity;->setShowFooter(Z)V

    return-void
.end method

.method static synthetic access$800(Lus/zoom/zrc/login/LoginActivity;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginActivity;->hideActionBar()V

    return-void
.end method

.method static synthetic access$900(Lus/zoom/zrc/login/LoginActivity;)Lus/zoom/zrc/base/widget/ZRCTitleBar;
    .locals 0

    .line 67
    iget-object p0, p0, Lus/zoom/zrc/login/LoginActivity;->mActionBar:Lus/zoom/zrc/base/widget/ZRCTitleBar;

    return-object p0
.end method

.method public static autoPairingWidthKey(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 74
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v1, v0, :cond_0

    const-string p0, "autoPairingWidthKey: ignore because of ZRC logged in!"

    const/4 p1, 0x0

    .line 75
    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 79
    :cond_0
    invoke-static {p0}, Lus/zoom/zrc/login/LoginActivity;->startLoginActivity(Landroid/content/Context;)V

    .line 80
    invoke-static {}, Lus/zoom/androidlib/app/ForegroundTaskManager;->getInstance()Lus/zoom/androidlib/app/ForegroundTaskManager;

    move-result-object p0

    new-instance v0, Lus/zoom/zrc/login/LoginActivity$1;

    invoke-direct {v0, p1}, Lus/zoom/zrc/login/LoginActivity$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/app/ForegroundTaskManager;->runInForeground(Lus/zoom/androidlib/app/ForegroundTask;)V

    return-void
.end method

.method private clearFragmentStack()V
    .locals 2

    .line 477
    iget-object v0, p0, Lus/zoom/zrc/login/LoginActivity;->mUIImpl:Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->access$300(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;I)V

    .line 478
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->clearFragmentStack()V

    return-void
.end method

.method private dismissDialogs()V
    .locals 2

    .line 425
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/base/app/ZRCWaitingDialogs;->dismiss(Landroidx/fragment/app/FragmentManager;)V

    .line 427
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/login/LoginFragmentErrorDialog;

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->dismiss()V

    .line 432
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->dismiss(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V

    .line 434
    iget-object v0, p0, Lus/zoom/zrc/login/LoginActivity;->mUIImpl:Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->access$202(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;Lus/zoom/androidlib/util/EventAction;)Lus/zoom/androidlib/util/EventAction;

    return-void
.end method

.method private getCurrentFragment()Lus/zoom/zrc/login/LoginBaseFragment;
    .locals 1

    .line 482
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getTopFragmentInBackStack()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/login/LoginBaseFragment;

    return-object v0
.end method

.method private getFragmentParingCode()Lus/zoom/zrc/login/LoginPairingCodeFragment;
    .locals 1

    .line 366
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/login/LoginPairingCodeFragment;->obtainInstance(Landroidx/fragment/app/FragmentManager;)Lus/zoom/zrc/login/LoginPairingCodeFragment;

    move-result-object v0

    return-object v0
.end method

.method private handleAddCalendarResourceSuccess()V
    .locals 7

    .line 671
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    .line 675
    :goto_0
    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getBackStackEntryCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 676
    invoke-virtual {v0, v2}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragmentInBackStack(I)Landroidx/fragment/app/Fragment;

    move-result-object v5

    check-cast v5, Lus/zoom/zrc/login/LoginBaseFragment;

    .line 677
    instance-of v6, v5, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;

    if-eqz v6, :cond_1

    .line 678
    check-cast v5, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;

    .line 679
    invoke-virtual {v5}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->getSelectedCalendarService()Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    move-result-object v5

    if-eqz v5, :cond_0

    move v3, v2

    goto :goto_1

    :cond_0
    move v4, v2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 688
    :cond_2
    const-class v2, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;

    if-eqz v2, :cond_3

    .line 690
    iget-object v5, p0, Lus/zoom/zrc/login/LoginActivity;->mUIImpl:Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getBackStackEntryCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->access$300(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;I)V

    .line 691
    invoke-virtual {v0, v2}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->removeFragmentFromBackStack(Landroidx/fragment/app/Fragment;)V

    :cond_3
    if-ne v3, v1, :cond_4

    if-le v4, v1, :cond_4

    .line 696
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v1

    invoke-interface {v1}, Lus/zoom/zrc/login/LoginContract$IPresenter;->getUICache()Lus/zoom/zrc/login/LoginContract$IUICache;

    move-result-object v1

    invoke-interface {v1}, Lus/zoom/zrc/login/LoginContract$IUICache;->getSelectedCalendarService()Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    move-result-object v1

    .line 697
    invoke-virtual {p0, v1}, Lus/zoom/zrc/login/LoginActivity;->newCalendarPickerFragment(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;

    move-result-object v1

    add-int/lit8 v4, v4, 0x1

    .line 699
    iget-object v2, p0, Lus/zoom/zrc/login/LoginActivity;->mUIImpl:Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getBackStackEntryCount()I

    move-result v3

    invoke-static {v2, v3}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->access$300(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;I)V

    .line 700
    invoke-virtual {v1}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->getDisplayTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->addFragmentToBackStack(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    :cond_4
    return-void
.end method

.method private handleAddCalendarSuccess()V
    .locals 4

    .line 661
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    .line 663
    const-class v1, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;

    if-eqz v1, :cond_0

    .line 665
    iget-object v2, p0, Lus/zoom/zrc/login/LoginActivity;->mUIImpl:Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getBackStackEntryCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->access$300(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;I)V

    .line 666
    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->removeFragmentFromBackStack(Landroidx/fragment/app/Fragment;)V

    :cond_0
    return-void
.end method

.method private handleBrowserCallBackUri(Landroid/content/Intent;)V
    .locals 4

    .line 274
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return-void

    .line 278
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 283
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleBrowserCallBackUri url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "signin"

    .line 288
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "email"

    .line 289
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 290
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v0

    invoke-interface {v0, p1}, Lus/zoom/zrc/login/LoginContract$IPresenter;->handleSignUpCallback(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "calendarserviceaddback"

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "result"

    .line 292
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lus/zoom/zrc/utils/Util;->getIntFromString(Ljava/lang/String;I)I

    move-result p1

    .line 293
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v0

    invoke-interface {v0, p1}, Lus/zoom/zrc/login/LoginContract$IPresenter;->handleAddCalendarCallback(I)V

    goto :goto_0

    .line 295
    :cond_3
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lus/zoom/zrc/login/LoginContract$IPresenter;->handleGoogleOAuthURLAction(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private handleCreateRoomSuccess()V
    .locals 4

    .line 652
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    .line 653
    const-class v1, Lus/zoom/zrc/login/LoginNoRoomFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/login/LoginNoRoomFragment;

    if-eqz v0, :cond_0

    .line 655
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getFragmentRoomPicker()Lus/zoom/zrc/login/room/LoginRoomPickerFragment;

    move-result-object v1

    .line 656
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v2

    invoke-virtual {v1}, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->getDisplayTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->replaceFragmentInBackStack(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private handleErrorDialog(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)V
    .locals 1
    .param p3    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 521
    sget-object v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->WebLoginFinish:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    if-ne v0, p1, :cond_1

    const/16 v0, 0x3e9

    if-eq p2, v0, :cond_0

    const/16 v0, 0x3ea

    if-eq p2, v0, :cond_0

    const/16 v0, 0xfaa

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    .line 529
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lus/zoom/zrc/login/LoginActivity;->showErrorInFragment()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 530
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrc/login/LoginActivity;->handleErrorToast(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_3

    .line 532
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrc/login/LoginActivity;->showErrorDialogFragment(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/String;)V

    :goto_2
    return-void
.end method

.method private handleErrorToast(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)V
    .locals 5
    .param p3    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "on error (%s-%s) %s"

    const/4 v1, 0x3

    .line 501
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/4 v3, 0x2

    aput-object p3, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 504
    sget v1, Lus/zoom/zrcbox/R$id;->content:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 507
    instance-of v1, v0, Lus/zoom/zrc/login/LoginBaseFragment;

    if-eqz v1, :cond_0

    .line 508
    check-cast v0, Lus/zoom/zrc/login/LoginBaseFragment;

    invoke-virtual {v0, p1, p2, p3}, Lus/zoom/zrc/login/LoginBaseFragment;->onError(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 511
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 512
    invoke-static {p0, p3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 515
    :cond_1
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginActivity;->dismissDialogs()V

    return-void
.end method

.method private handleLoginWithGoogle()V
    .locals 4

    .line 590
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/base/app/ZRCWaitingDialogs;->dismiss(Landroidx/fragment/app/FragmentManager;)V

    .line 591
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IPresenter;->generateGoogleLoginUrl()Ljava/lang/String;

    move-result-object v0

    .line 593
    :try_start_0
    new-instance v1, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    invoke-virtual {v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Lus/zoom/zrc/login/LoginActivity$16;

    invoke-direct {v2, p0}, Lus/zoom/zrc/login/LoginActivity$16;-><init>(Lus/zoom/zrc/login/LoginActivity;)V

    invoke-static {p0, v1, v0, v2}, Landroidx/browser/customtabs/CustomTabActivityHelper;->openCustomTab(Landroid/app/Activity;Landroidx/browser/customtabs/CustomTabsIntent;Landroid/net/Uri;Landroidx/browser/customtabs/CustomTabActivityHelper$CustomTabFallback;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "sign up, the browser can\'t open:"

    const/4 v2, 0x1

    .line 602
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private handleNoZoomRoomsFound()V
    .locals 2

    .line 607
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IPresenter;->getUICache()Lus/zoom/zrc/login/LoginContract$IUICache;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lus/zoom/zrc/login/LoginContract$IUICache;->clear(I)V

    .line 608
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getFragmentNoRoomFound()Lus/zoom/zrc/login/LoginNoRoomFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lus/zoom/zrc/login/LoginActivity;->showFragment(Lus/zoom/zrc/login/LoginBaseFragment;Z)V

    return-void
.end method

.method private handleShowSignOutWithAccessCode()V
    .locals 5

    .line 561
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->get(Landroidx/fragment/app/FragmentManager;)Lus/zoom/zrc/login/LoginFragmentErrorDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 564
    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->hide()V

    .line 567
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$string;->enter_passcode_to_sign_out:I

    invoke-virtual {p0, v3}, Lus/zoom/zrc/login/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lus/zoom/zrc/login/LoginActivity$14;

    invoke-direct {v4, p0}, Lus/zoom/zrc/login/LoginActivity$14;-><init>(Lus/zoom/zrc/login/LoginActivity;)V

    invoke-static {v2, v3, v4}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/CharSequence;Lus/zoom/androidlib/util/EventAction;)V

    .line 574
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->executePendingTransactions()V

    .line 576
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v2

    invoke-static {v2}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->get(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 578
    new-instance v3, Lus/zoom/zrc/login/LoginActivity$15;

    invoke-direct {v3, p0, v1, v0}, Lus/zoom/zrc/login/LoginActivity$15;-><init>(Lus/zoom/zrc/login/LoginActivity;ZLus/zoom/zrc/login/LoginFragmentErrorDialog;)V

    invoke-virtual {v2, v3}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->setCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_2
    return-void
.end method

.method private handleShowWaitingDialog(ZLjava/lang/CharSequence;)V
    .locals 0
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 538
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginActivity;->clearFragmentStack()V

    const/4 p1, 0x0

    .line 540
    invoke-direct {p0, p1}, Lus/zoom/zrc/login/LoginActivity;->setShowFooter(Z)V

    .line 541
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginActivity;->hideActionBar()V

    .line 544
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-static {p1, p2}, Lus/zoom/zrc/base/app/ZRCWaitingDialogs;->isShowing(Landroidx/fragment/app/FragmentManager;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 548
    :cond_1
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginActivity;->dismissDialogs()V

    if-nez p2, :cond_2

    const-string p2, ""

    .line 550
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-static {p1, p2}, Lus/zoom/zrc/base/app/ZRCWaitingDialogs;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private handleShowZoomRoomPicker()V
    .locals 2

    .line 705
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IPresenter;->getUICache()Lus/zoom/zrc/login/LoginContract$IUICache;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lus/zoom/zrc/login/LoginContract$IUICache;->clear(I)V

    .line 706
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getFragmentRoomPicker()Lus/zoom/zrc/login/room/LoginRoomPickerFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lus/zoom/zrc/login/LoginActivity;->showFragment(Lus/zoom/zrc/login/LoginBaseFragment;Z)V

    return-void
.end method

.method private handleUpdateIpAddress(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 759
    sget v0, Lus/zoom/zrcbox/R$id;->zrc_ip:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 760
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 761
    invoke-static {p1}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 762
    sget v2, Lus/zoom/zrcbox/R$string;->connection_failure_zpc_info:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {p0, v2, v3}, Lus/zoom/zrc/login/LoginActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 764
    :cond_0
    sget p1, Lus/zoom/zrcbox/R$string;->connection_failure_no_network_title:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method private handleUpdateZRCVersion(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 754
    sget v0, Lus/zoom/zrcbox/R$id;->zrc_version:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 755
    sget v1, Lus/zoom/zrcbox/R$string;->version:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lus/zoom/zrc/login/LoginActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private handleZoomRoomAdded()V
    .locals 3

    .line 638
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginActivity;->dismissDialogs()V

    .line 639
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginActivity;->clearFragmentStack()V

    .line 640
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginActivity;->hideActionBar()V

    const/4 v0, 0x0

    .line 641
    invoke-direct {p0, v0}, Lus/zoom/zrc/login/LoginActivity;->setShowFooter(Z)V

    .line 643
    new-instance v0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    invoke-direct {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;-><init>()V

    .line 644
    sget v1, Lus/zoom/zrcbox/R$string;->new_room_added_title:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/login/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->setTitle(Ljava/lang/String;)V

    .line 645
    sget v1, Lus/zoom/zrcbox/R$string;->new_room_added_message:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/login/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->setMessage(Ljava/lang/String;)V

    .line 646
    invoke-direct {p0, v0}, Lus/zoom/zrc/login/LoginActivity;->setupZoomRoomAddedDialogButtons(Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;)V

    .line 648
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v2, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private hideActionBar()V
    .locals 2

    .line 794
    iget-object v0, p0, Lus/zoom/zrc/login/LoginActivity;->mActionBar:Lus/zoom/zrc/base/widget/ZRCTitleBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->setVisibility(I)V

    return-void
.end method

.method private newLocationPickerFragment(Lus/zoom/zrcsdk/model/ZRCLocationTree;)Lus/zoom/zrc/login/room/LoginLocationPickerFragment;
    .locals 1

    .line 370
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->obtainInstance(Landroidx/fragment/app/FragmentManager;Lus/zoom/zrcsdk/model/ZRCLocationTree;)Lus/zoom/zrc/login/room/LoginLocationPickerFragment;

    move-result-object p1

    return-object p1
.end method

.method private popBackStack()V
    .locals 5

    .line 438
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    .line 440
    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getBackStackEntryCount()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    return-void

    .line 446
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getTopFragmentInBackStack()Landroidx/fragment/app/Fragment;

    move-result-object v3

    check-cast v3, Lus/zoom/zrc/login/LoginBaseFragment;

    if-eqz v3, :cond_1

    .line 448
    invoke-virtual {v3}, Lus/zoom/zrc/login/LoginBaseFragment;->onPopBackStack()V

    .line 451
    :cond_1
    iget-object v4, p0, Lus/zoom/zrc/login/LoginActivity;->mUIImpl:Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;

    sub-int/2addr v1, v2

    invoke-static {v4, v1}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->access$300(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;I)V

    .line 452
    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->popBackStack()V

    .line 454
    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getTopFragmentInBackStack()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/login/LoginBaseFragment;

    if-eqz v3, :cond_2

    .line 456
    invoke-virtual {v3}, Lus/zoom/zrc/login/LoginBaseFragment;->getDisplayTag()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, ""

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginBaseFragment;->getDisplayTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, ""

    :goto_1
    invoke-static {v1, v0}, Lus/zoom/zrc/login/LoginUsageTrack;->sendBackPressed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private restoreErrorDialogIfNeeded()V
    .locals 2

    .line 316
    iget-object v0, p0, Lus/zoom/zrc/login/LoginActivity;->mUIImpl:Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;

    invoke-static {v0}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->access$200(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;)Lus/zoom/androidlib/util/EventAction;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 320
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->getBackStackCount()I

    move-result v0

    if-lez v0, :cond_1

    return-void

    .line 324
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/base/app/ZRCWaitingDialogs;->isShowing(Landroidx/fragment/app/FragmentManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 328
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lus/zoom/androidlib/util/UIUtil;->closeSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 329
    iget-object v0, p0, Lus/zoom/zrc/login/LoginActivity;->mUIImpl:Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;

    invoke-static {v0}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->access$200(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;)Lus/zoom/androidlib/util/EventAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->dispatchEventAction(Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method private restoreZoomRoomAdded()V
    .locals 2

    .line 612
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    .line 613
    invoke-direct {p0, v0}, Lus/zoom/zrc/login/LoginActivity;->setupZoomRoomAddedDialogButtons(Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;)V

    return-void
.end method

.method private setShowFooter(Z)V
    .locals 5

    .line 769
    sget v0, Lus/zoom/zrcbox/R$id;->login_footer:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 772
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isRunInCrestronTSS()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isPortraitOrientation()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 773
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 774
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 775
    sget v1, Lus/zoom/zrcbox/R$id;->zrc_ip:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 777
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x41c00000    # 24.0f

    .line 778
    invoke-static {p0, v4}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 779
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 781
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/high16 v3, 0x41800000    # 16.0f

    .line 782
    invoke-static {p0, v3}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    .line 783
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 787
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 789
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setupZoomRoomAddedDialogButtons(Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 621
    :cond_0
    sget v0, Lus/zoom/zrcbox/R$string;->connect:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/login/LoginActivity$17;

    invoke-direct {v1, p0}, Lus/zoom/zrc/login/LoginActivity$17;-><init>(Lus/zoom/zrc/login/LoginActivity;)V

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 627
    sget v0, Lus/zoom/zrcbox/R$string;->sign_out:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/login/LoginActivity$18;

    invoke-direct {v1, p0}, Lus/zoom/zrc/login/LoginActivity$18;-><init>(Lus/zoom/zrc/login/LoginActivity;)V

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, 0x0

    .line 634
    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->setCancelable(Z)V

    return-void
.end method

.method public static show(Landroid/content/Context;)V
    .locals 1

    .line 215
    invoke-static {p0}, Lus/zoom/zrc/login/LoginActivity;->startLoginActivity(Landroid/content/Context;)V

    .line 216
    invoke-static {}, Lus/zoom/androidlib/app/ForegroundTaskManager;->getInstance()Lus/zoom/androidlib/app/ForegroundTaskManager;

    move-result-object p0

    new-instance v0, Lus/zoom/zrc/login/LoginActivity$13;

    invoke-direct {v0}, Lus/zoom/zrc/login/LoginActivity$13;-><init>()V

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/app/ForegroundTaskManager;->runInForeground(Lus/zoom/androidlib/app/ForegroundTask;)V

    return-void
.end method

.method public static showAutoLogin(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 165
    invoke-static {p0}, Lus/zoom/zrc/login/LoginActivity;->startLoginActivity(Landroid/content/Context;)V

    .line 166
    invoke-static {}, Lus/zoom/androidlib/app/ForegroundTaskManager;->getInstance()Lus/zoom/androidlib/app/ForegroundTaskManager;

    move-result-object p0

    new-instance v0, Lus/zoom/zrc/login/LoginActivity$8;

    invoke-direct {v0, p1}, Lus/zoom/zrc/login/LoginActivity$8;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/app/ForegroundTaskManager;->runInForeground(Lus/zoom/androidlib/app/ForegroundTask;)V

    return-void
.end method

.method public static showConnectWithZoomRoomError(Landroid/content/Context;I)V
    .locals 1

    .line 185
    invoke-static {p0}, Lus/zoom/zrc/login/LoginActivity;->startLoginActivity(Landroid/content/Context;)V

    .line 186
    invoke-static {}, Lus/zoom/androidlib/app/ForegroundTaskManager;->getInstance()Lus/zoom/androidlib/app/ForegroundTaskManager;

    move-result-object p0

    new-instance v0, Lus/zoom/zrc/login/LoginActivity$10;

    invoke-direct {v0, p1}, Lus/zoom/zrc/login/LoginActivity$10;-><init>(I)V

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/app/ForegroundTaskManager;->runInForeground(Lus/zoom/androidlib/app/ForegroundTask;)V

    return-void
.end method

.method public static showConnectionClosed(Landroid/content/Context;I)V
    .locals 1

    .line 120
    invoke-static {p0}, Lus/zoom/zrc/login/LoginActivity;->startLoginActivity(Landroid/content/Context;)V

    .line 121
    invoke-static {}, Lus/zoom/androidlib/app/ForegroundTaskManager;->getInstance()Lus/zoom/androidlib/app/ForegroundTaskManager;

    move-result-object p0

    new-instance v0, Lus/zoom/zrc/login/LoginActivity$5;

    invoke-direct {v0, p1}, Lus/zoom/zrc/login/LoginActivity$5;-><init>(I)V

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/app/ForegroundTaskManager;->runInForeground(Lus/zoom/androidlib/app/ForegroundTask;)V

    return-void
.end method

.method public static showDeleteZoomRoomsFromWeb(Landroid/content/Context;)V
    .locals 1

    .line 205
    invoke-static {p0}, Lus/zoom/zrc/login/LoginActivity;->startLoginActivity(Landroid/content/Context;)V

    .line 206
    invoke-static {}, Lus/zoom/androidlib/app/ForegroundTaskManager;->getInstance()Lus/zoom/androidlib/app/ForegroundTaskManager;

    move-result-object p0

    new-instance v0, Lus/zoom/zrc/login/LoginActivity$12;

    invoke-direct {v0}, Lus/zoom/zrc/login/LoginActivity$12;-><init>()V

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/app/ForegroundTaskManager;->runInForeground(Lus/zoom/androidlib/app/ForegroundTask;)V

    return-void
.end method

.method private showErrorDialogFragment(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/String;)V
    .locals 4

    const-string v0, "show error dialog (%s-%s) %s"

    const/4 v1, 0x3

    .line 486
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 488
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginActivity;->clearFragmentStack()V

    .line 489
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginActivity;->hideActionBar()V

    .line 491
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginActivity;->dismissDialogs()V

    .line 493
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->show(Landroidx/fragment/app/FragmentManager;Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/String;)V

    .line 495
    invoke-static {p1, p2}, Lus/zoom/zrc/login/LoginUsageTrack;->sendErrorAlert(Lus/zoom/zrc/login/LoginContract$LoginErrorType;I)V

    return-void
.end method

.method private showErrorInFragment()Z
    .locals 1

    .line 556
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginActivity;->getCurrentFragment()Lus/zoom/zrc/login/LoginBaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginBaseFragment;->isErrorViewCompleteVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showFragment(Lus/zoom/zrc/login/LoginBaseFragment;Z)V
    .locals 3
    .param p1    # Lus/zoom/zrc/login/LoginBaseFragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 460
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginActivity;->dismissDialogs()V

    .line 462
    invoke-virtual {p1}, Lus/zoom/zrc/login/LoginBaseFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 466
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 468
    iget-object p2, p0, Lus/zoom/zrc/login/LoginActivity;->mUIImpl:Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getBackStackEntryCount()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {p2, v2}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->access$300(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;I)V

    .line 469
    invoke-virtual {p1}, Lus/zoom/zrc/login/LoginBaseFragment;->getDisplayTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->appendShowFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    .line 471
    :cond_1
    iget-object p2, p0, Lus/zoom/zrc/login/LoginActivity;->mUIImpl:Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;

    invoke-static {p2, v1}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->access$300(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;I)V

    .line 472
    invoke-virtual {p1}, Lus/zoom/zrc/login/LoginBaseFragment;->getDisplayTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->replaceShowFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static showLoginWithLicenseKey(Landroid/content/Context;)V
    .locals 1

    .line 155
    invoke-static {p0}, Lus/zoom/zrc/login/LoginActivity;->startLoginActivity(Landroid/content/Context;)V

    .line 156
    invoke-static {}, Lus/zoom/androidlib/app/ForegroundTaskManager;->getInstance()Lus/zoom/androidlib/app/ForegroundTaskManager;

    move-result-object p0

    new-instance v0, Lus/zoom/zrc/login/LoginActivity$7;

    invoke-direct {v0}, Lus/zoom/zrc/login/LoginActivity$7;-><init>()V

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/app/ForegroundTaskManager;->runInForeground(Lus/zoom/androidlib/app/ForegroundTask;)V

    return-void
.end method

.method public static showLoginWithWorkEmail(Landroid/content/Context;)V
    .locals 1

    .line 145
    invoke-static {p0}, Lus/zoom/zrc/login/LoginActivity;->startLoginActivity(Landroid/content/Context;)V

    .line 146
    invoke-static {}, Lus/zoom/androidlib/app/ForegroundTaskManager;->getInstance()Lus/zoom/androidlib/app/ForegroundTaskManager;

    move-result-object p0

    new-instance v0, Lus/zoom/zrc/login/LoginActivity$6;

    invoke-direct {v0}, Lus/zoom/zrc/login/LoginActivity$6;-><init>()V

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/app/ForegroundTaskManager;->runInForeground(Lus/zoom/androidlib/app/ForegroundTask;)V

    return-void
.end method

.method public static showLogoutInPairingMode(Landroid/content/Context;)V
    .locals 1

    .line 110
    invoke-static {p0}, Lus/zoom/zrc/login/LoginActivity;->startLoginActivity(Landroid/content/Context;)V

    .line 111
    invoke-static {}, Lus/zoom/androidlib/app/ForegroundTaskManager;->getInstance()Lus/zoom/androidlib/app/ForegroundTaskManager;

    move-result-object p0

    new-instance v0, Lus/zoom/zrc/login/LoginActivity$4;

    invoke-direct {v0}, Lus/zoom/zrc/login/LoginActivity$4;-><init>()V

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/app/ForegroundTaskManager;->runInForeground(Lus/zoom/androidlib/app/ForegroundTask;)V

    return-void
.end method

.method public static showUserRefreshZAKError(Landroid/content/Context;)V
    .locals 1

    .line 195
    invoke-static {p0}, Lus/zoom/zrc/login/LoginActivity;->startLoginActivity(Landroid/content/Context;)V

    .line 196
    invoke-static {}, Lus/zoom/androidlib/app/ForegroundTaskManager;->getInstance()Lus/zoom/androidlib/app/ForegroundTaskManager;

    move-result-object p0

    new-instance v0, Lus/zoom/zrc/login/LoginActivity$11;

    invoke-direct {v0}, Lus/zoom/zrc/login/LoginActivity$11;-><init>()V

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/app/ForegroundTaskManager;->runInForeground(Lus/zoom/androidlib/app/ForegroundTask;)V

    return-void
.end method

.method public static showWorkModeSelection(Landroid/content/Context;)V
    .locals 1

    .line 175
    invoke-static {p0}, Lus/zoom/zrc/login/LoginActivity;->startLoginActivity(Landroid/content/Context;)V

    .line 176
    invoke-static {}, Lus/zoom/androidlib/app/ForegroundTaskManager;->getInstance()Lus/zoom/androidlib/app/ForegroundTaskManager;

    move-result-object p0

    new-instance v0, Lus/zoom/zrc/login/LoginActivity$9;

    invoke-direct {v0}, Lus/zoom/zrc/login/LoginActivity$9;-><init>()V

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/app/ForegroundTaskManager;->runInForeground(Lus/zoom/androidlib/app/ForegroundTask;)V

    return-void
.end method

.method public static showZoomRoomLoggedIn(Landroid/content/Context;I)V
    .locals 1

    .line 90
    invoke-static {p0}, Lus/zoom/zrc/login/LoginActivity;->startLoginActivity(Landroid/content/Context;)V

    .line 91
    invoke-static {}, Lus/zoom/androidlib/app/ForegroundTaskManager;->getInstance()Lus/zoom/androidlib/app/ForegroundTaskManager;

    move-result-object p0

    new-instance v0, Lus/zoom/zrc/login/LoginActivity$2;

    invoke-direct {v0, p1}, Lus/zoom/zrc/login/LoginActivity$2;-><init>(I)V

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/app/ForegroundTaskManager;->runInForeground(Lus/zoom/androidlib/app/ForegroundTask;)V

    return-void
.end method

.method public static showZoomRoomSignedOut(Landroid/content/Context;)V
    .locals 1

    .line 100
    invoke-static {p0}, Lus/zoom/zrc/login/LoginActivity;->startLoginActivity(Landroid/content/Context;)V

    .line 101
    invoke-static {}, Lus/zoom/androidlib/app/ForegroundTaskManager;->getInstance()Lus/zoom/androidlib/app/ForegroundTaskManager;

    move-result-object p0

    new-instance v0, Lus/zoom/zrc/login/LoginActivity$3;

    invoke-direct {v0}, Lus/zoom/zrc/login/LoginActivity$3;-><init>()V

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/app/ForegroundTaskManager;->runInForeground(Lus/zoom/androidlib/app/ForegroundTask;)V

    return-void
.end method

.method private static startLoginActivity(Landroid/content/Context;)V
    .locals 2

    .line 225
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lus/zoom/zrc/login/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    invoke-static {p0, v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->safeStartActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getFragmentAddNewCalendar()Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;
    .locals 1

    .line 402
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;->obtainInstance(Landroidx/fragment/app/FragmentManager;)Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;

    move-result-object v0

    return-object v0
.end method

.method public getFragmentCreateNewRoom()Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;
    .locals 1

    .line 394
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;->obtainInstance(Landroidx/fragment/app/FragmentManager;)Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;

    move-result-object v0

    return-object v0
.end method

.method public getFragmentEnterCalendarResource(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;
    .locals 1

    .line 398
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->obtainInstance(Landroidx/fragment/app/FragmentManager;Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;

    move-result-object p1

    return-object p1
.end method

.method public getFragmentFailedToConnectZR()Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;
    .locals 1

    .line 390
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->obtainInstance(Landroidx/fragment/app/FragmentManager;)Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;

    move-result-object v0

    return-object v0
.end method

.method public getFragmentLicenseKey()Lus/zoom/zrc/login/LoginLicenseKeyFragment;
    .locals 1

    .line 378
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->obtainInstance(Landroidx/fragment/app/FragmentManager;)Lus/zoom/zrc/login/LoginLicenseKeyFragment;

    move-result-object v0

    return-object v0
.end method

.method public getFragmentLoginOrEnterLicense(Ljava/lang/String;)Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;
    .locals 1

    .line 374
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->obtainInstance(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;

    move-result-object p1

    return-object p1
.end method

.method public getFragmentNetworkDisconnect()Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;
    .locals 1

    .line 386
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->obtainInstance(Landroidx/fragment/app/FragmentManager;)Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;

    move-result-object v0

    return-object v0
.end method

.method public getFragmentNoRoomFound()Lus/zoom/zrc/login/LoginNoRoomFragment;
    .locals 1

    .line 406
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/login/LoginNoRoomFragment;->obtainInstance(Landroidx/fragment/app/FragmentManager;)Lus/zoom/zrc/login/LoginNoRoomFragment;

    move-result-object v0

    return-object v0
.end method

.method public getFragmentRoomPassCode()Lus/zoom/zrc/login/LoginRoomPassCodeFragment;
    .locals 1

    .line 414
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/login/LoginRoomPassCodeFragment;->obtainInstance(Landroidx/fragment/app/FragmentManager;)Lus/zoom/zrc/login/LoginRoomPassCodeFragment;

    move-result-object v0

    return-object v0
.end method

.method public getFragmentRoomPicker()Lus/zoom/zrc/login/room/LoginRoomPickerFragment;
    .locals 1

    .line 382
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->obtainInstance(Landroidx/fragment/app/FragmentManager;)Lus/zoom/zrc/login/room/LoginRoomPickerFragment;

    move-result-object v0

    return-object v0
.end method

.method public getFragmentSelectWorkMode()Lus/zoom/zrc/login/LoginSelectWorkModeFragment;
    .locals 1

    .line 418
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/login/LoginSelectWorkModeFragment;->obtainInstance(Landroidx/fragment/app/FragmentManager;)Lus/zoom/zrc/login/LoginSelectWorkModeFragment;

    move-result-object v0

    return-object v0
.end method

.method getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 355
    iget-object v0, p0, Lus/zoom/zrc/login/LoginActivity;->mUIImpl:Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;

    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    return-object v0
.end method

.method getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 360
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/login/LoginPresenter;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/login/LoginContract$IPresenter;

    return-object v0
.end method

.method protected handleBatteryChange(Landroid/content/Intent;)V
    .locals 0

    .line 349
    invoke-super {p0, p1}, Lus/zoom/zrc/ZRCActivity;->handleBatteryChange(Landroid/content/Intent;)V

    .line 350
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/login/util/LoginUIUtils;->updateStatusBarWhenBatteryStateChanged(Landroid/view/Window;)V

    return-void
.end method

.method public isSignOutPassCodeDialogShown()Z
    .locals 1

    .line 750
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->isShowing(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)Z

    move-result v0

    return v0
.end method

.method public newCalendarPickerFragment(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;
    .locals 1

    .line 410
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->obtainInstance(Landroidx/fragment/app/FragmentManager;Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;

    move-result-object p1

    return-object p1
.end method

.method public onBackPressed()V
    .locals 2

    .line 334
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 335
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 336
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginActivity;->popBackStack()V

    goto :goto_0

    .line 338
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 231
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->setSupportAutoRotate()V

    .line 232
    invoke-super {p0, p1}, Lus/zoom/zrc/ZRCActivity;->onCreate(Landroid/os/Bundle;)V

    .line 234
    const-class p1, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;

    invoke-static {p0, p1}, Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;->get(Lus/zoom/androidlib/util/IUIElement;Ljava/lang/Class;)Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;

    iput-object p1, p0, Lus/zoom/zrc/login/LoginActivity;->mUIImpl:Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;

    .line 235
    iget-object p1, p0, Lus/zoom/zrc/login/LoginActivity;->mUIImpl:Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;

    invoke-virtual {p1, p0}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->onUICreated(Lus/zoom/androidlib/util/IUIElement;)V

    .line 237
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$anim;->slide_in_right:I

    sget v1, Lus/zoom/zrcbox/R$anim;->alpha_out:I

    sget v2, Lus/zoom/zrcbox/R$anim;->alpha_in:I

    sget v3, Lus/zoom/zrcbox/R$anim;->slide_out_left:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->setCustomAnimations(IIII)V

    .line 238
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$id;->content:I

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->setContainerViewId(I)V

    const/4 p1, 0x0

    .line 240
    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/LoginActivity;->setShouldDismissWaitingDialogOnStop(Z)V

    .line 241
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->setLayoutFullScreen(Landroid/view/Window;)V

    .line 242
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p1}, Lus/zoom/zrc/utils/ZRCUIUtils;->setStatusBarColor(Landroid/view/Window;I)V

    .line 244
    sget p1, Lus/zoom/zrcbox/R$layout;->login_activity_main:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/LoginActivity;->setContentView(I)V

    .line 246
    sget p1, Lus/zoom/zrcbox/R$id;->action_bar:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/base/widget/ZRCTitleBar;

    iput-object p1, p0, Lus/zoom/zrc/login/LoginActivity;->mActionBar:Lus/zoom/zrc/base/widget/ZRCTitleBar;

    .line 247
    iget-object p1, p0, Lus/zoom/zrc/login/LoginActivity;->mActionBar:Lus/zoom/zrc/base/widget/ZRCTitleBar;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->setVisibility(I)V

    .line 249
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->checkIsInit()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 253
    :cond_0
    sget p1, Lus/zoom/zrcbox/R$id;->keyboard_detector:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;

    .line 254
    invoke-virtual {p1, p0}, Lus/zoom/zrc/base/widget/ZRCKeyboardDetector;->setKeyboardListener(Lus/zoom/zrc/base/widget/ZRCKeyboardDetector$IKeyboardListener;)V

    .line 256
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginActivity;->restoreZoomRoomAdded()V

    .line 258
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 259
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    const/high16 v0, 0x100000

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    .line 260
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$IPresenter;->requestZoomRoomInfo()V

    goto :goto_0

    .line 262
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/login/LoginActivity;->handleBrowserCallBackUri(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 311
    invoke-super {p0}, Lus/zoom/zrc/ZRCActivity;->onDestroy()V

    .line 312
    iget-object v0, p0, Lus/zoom/zrc/login/LoginActivity;->mUIImpl:Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;

    invoke-virtual {v0, p0}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->onUIDestroyed(Lus/zoom/androidlib/util/IUIElement;)V

    return-void
.end method

.method public onKeyboardClosed()V
    .locals 2

    .line 725
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 726
    sget v1, Lus/zoom/zrcbox/R$id;->content:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 727
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 728
    :cond_0
    instance-of v1, v0, Lus/zoom/zrc/login/LoginBaseFragment;

    if-eqz v1, :cond_1

    .line 729
    check-cast v0, Lus/zoom/zrc/login/LoginBaseFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginBaseFragment;->onKeyboardClosed()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public onKeyboardOpen()V
    .locals 2

    .line 715
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 716
    sget v1, Lus/zoom/zrcbox/R$id;->content:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 717
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 718
    :cond_0
    instance-of v1, v0, Lus/zoom/zrc/login/LoginBaseFragment;

    if-eqz v1, :cond_1

    .line 719
    check-cast v0, Lus/zoom/zrc/login/LoginBaseFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginBaseFragment;->onKeyboardOpen()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 269
    invoke-super {p0, p1}, Lus/zoom/zrc/ZRCActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 270
    invoke-direct {p0, p1}, Lus/zoom/zrc/login/LoginActivity;->handleBrowserCallBackUri(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 301
    invoke-super {p0}, Lus/zoom/zrc/ZRCActivity;->onResume()V

    .line 304
    iget-object v0, p0, Lus/zoom/zrc/login/LoginActivity;->mUIImpl:Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;

    invoke-static {v0}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->access$200(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;)Lus/zoom/androidlib/util/EventAction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginActivity;->restoreErrorDialogIfNeeded()V

    :cond_0
    return-void
.end method

.method public onSendFailed(I)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 738
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 739
    sget v1, Lus/zoom/zrcbox/R$id;->content:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 740
    instance-of v1, v0, Lus/zoom/zrc/login/LoginBaseFragment;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 741
    check-cast v0, Lus/zoom/zrc/login/LoginBaseFragment;

    .line 742
    invoke-virtual {v0, p1}, Lus/zoom/zrc/login/LoginBaseFragment;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 746
    :cond_0
    invoke-super {p0, p1}, Lus/zoom/zrc/ZRCActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
