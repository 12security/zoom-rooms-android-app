.class public Lus/zoom/zrc/settings/SettingRoomFragment;
.super Lus/zoom/zrc/settings/SettingBaseFragment;
.source "SettingRoomFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SettingRoomFragment"


# instance fields
.field private arrangeDisplay:Landroid/widget/TextView;

.field private arrangeDisplayLayout:Landroid/view/View;

.field private audioCheck:Landroid/widget/TextView;

.field private audioCheckEcoLevel:Landroid/widget/ImageView;

.field private audioCheckLayout:Landroid/view/View;

.field private audioCheckResult:Landroid/widget/TextView;

.field private changeWinPassword:Landroid/view/View;

.field private meetingId:Landroid/widget/TextView;

.field private meetingIdParentView:Landroid/view/View;

.field private restartAndShutDownLayout:Landroid/view/View;

.field private restartLayout:Landroid/view/View;

.field private roomName:Landroid/widget/TextView;

.field private screenResolutionStatus:Landroid/widget/TextView;

.field private screenResolutionStatusLayout:Landroid/view/View;

.field private shutDownLayout:Landroid/view/View;

.field private signOut:Landroid/widget/TextView;

.field private sipNumber:Landroid/widget/TextView;

.field private sipNumberLayout:Landroid/view/View;

.field private switchWorkMode:Landroid/widget/TextView;

.field private switchWorkModeLayout:Landroid/view/View;

.field private systemSettings:Landroid/widget/TextView;

.field private title:Landroid/view/View;

.field private zrpBackBtn:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/settings/SettingRoomFragment;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->onShowChangeWindowsPasswordDialog()V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/settings/SettingRoomFragment;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->showEchoLevelDialog()V

    return-void
.end method

.method static synthetic access$1000(Lus/zoom/zrc/settings/SettingRoomFragment;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->signOut()V

    return-void
.end method

.method static synthetic access$1100(Lus/zoom/zrc/settings/SettingRoomFragment;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->signOut:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lus/zoom/zrc/settings/SettingRoomFragment;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->showArrangeDisplayFragment()V

    return-void
.end method

.method static synthetic access$1300(Lus/zoom/zrc/settings/SettingRoomFragment;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->showScreenResolutionFragment()V

    return-void
.end method

.method static synthetic access$1400(Lus/zoom/zrc/settings/SettingRoomFragment;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->startAudioCheck()V

    return-void
.end method

.method static synthetic access$1500(Lus/zoom/zrc/settings/SettingRoomFragment;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->switchWorkMode()V

    return-void
.end method

.method static synthetic access$1600(Lus/zoom/zrc/settings/SettingRoomFragment;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->showChangeWindowsPasswordDialog()V

    return-void
.end method

.method static synthetic access$1700(Lus/zoom/zrc/settings/SettingRoomFragment;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->launchSystemSettings()V

    return-void
.end method

.method static synthetic access$1800(Lus/zoom/zrc/settings/SettingRoomFragment;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->restartOS()V

    return-void
.end method

.method static synthetic access$1900(Lus/zoom/zrc/settings/SettingRoomFragment;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->shutDownOS()V

    return-void
.end method

.method static synthetic access$200(Lus/zoom/zrc/settings/SettingRoomFragment;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->onLaunchSystemSettings()V

    return-void
.end method

.method static synthetic access$300(Lus/zoom/zrc/settings/SettingRoomFragment;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->onRestartOS()V

    return-void
.end method

.method static synthetic access$400(Lus/zoom/zrc/settings/SettingRoomFragment;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->onShutDownOS()V

    return-void
.end method

.method static synthetic access$500(Lus/zoom/zrc/settings/SettingRoomFragment;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->onSignOut()V

    return-void
.end method

.method static synthetic access$600(Lus/zoom/zrc/settings/SettingRoomFragment;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->onShowArrangeDisplayFragment()V

    return-void
.end method

.method static synthetic access$700(Lus/zoom/zrc/settings/SettingRoomFragment;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->onShowScreenResolutionFragment()V

    return-void
.end method

.method static synthetic access$800(Lus/zoom/zrc/settings/SettingRoomFragment;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->onStartAudioCheck()V

    return-void
.end method

.method static synthetic access$900(Lus/zoom/zrc/settings/SettingRoomFragment;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->onSwitchWorkMode()V

    return-void
.end method

.method private canSwitchWorkMode()Z
    .locals 1

    .line 495
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->canSwitchWorkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isStandaloneZRP()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isStandaloneDigitalSignage()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private createRestartDialog()V
    .locals 5

    .line 701
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getZoomRoomCapability()Lus/zoom/zrcsdk/model/ZoomRoomCapability;

    move-result-object v0

    .line 702
    sget v1, Lus/zoom/zrcbox/R$string;->reboot_system:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 704
    invoke-static {}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getInstance()Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->supportsRestartSystem()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 705
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZoomRoomCapability;->canAutoLogin()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 706
    sget v2, Lus/zoom/zrcbox/R$string;->reboot_both_zr_and_zrc:I

    invoke-virtual {p0, v2}, Lus/zoom/zrc/settings/SettingRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 708
    :cond_0
    sget v2, Lus/zoom/zrcbox/R$string;->reboot_both_zr_and_zrc_with_note:I

    invoke-virtual {p0, v2}, Lus/zoom/zrc/settings/SettingRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 711
    :cond_1
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZoomRoomCapability;->canAutoLogin()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 712
    sget v2, Lus/zoom/zrcbox/R$string;->reboot_only_zr:I

    invoke-virtual {p0, v2}, Lus/zoom/zrc/settings/SettingRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 714
    :cond_2
    sget v2, Lus/zoom/zrcbox/R$string;->reboot_only_zr_with_note:I

    invoke-virtual {p0, v2}, Lus/zoom/zrc/settings/SettingRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 717
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v3

    const-class v4, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;

    invoke-virtual {v3, v4}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    check-cast v3, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;

    if-eqz v3, :cond_3

    .line 718
    invoke-virtual {v3}, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 719
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v4

    invoke-virtual {v4, v3}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->dismissDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    .line 720
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->executePendingTransactions()V

    .line 721
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v3

    const-class v4, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;

    invoke-virtual {v3, v4}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    check-cast v3, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;

    :cond_3
    if-nez v3, :cond_4

    .line 724
    new-instance v3, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;

    invoke-direct {v3}, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;-><init>()V

    .line 726
    :cond_4
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZoomRoomCapability;->canAutoLogin()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    .line 727
    iput v4, v3, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->type:I

    goto :goto_1

    :cond_5
    const/4 v0, 0x2

    .line 729
    iput v0, v3, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->type:I

    .line 731
    :goto_1
    invoke-virtual {v3, v1}, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->setTitle(Ljava/lang/String;)V

    .line 732
    invoke-virtual {v3, v2}, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->setMessage(Ljava/lang/String;)V

    .line 733
    sget v0, Lus/zoom/zrcbox/R$string;->reboot:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/settings/SettingRoomFragment$24;

    invoke-direct {v1, p0}, Lus/zoom/zrc/settings/SettingRoomFragment$24;-><init>(Lus/zoom/zrc/settings/SettingRoomFragment;)V

    invoke-virtual {v3, v0, v1}, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 742
    sget v0, Lus/zoom/zrcbox/R$string;->cancel:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/settings/SettingRoomFragment$25;

    invoke-direct {v1, p0}, Lus/zoom/zrc/settings/SettingRoomFragment$25;-><init>(Lus/zoom/zrc/settings/SettingRoomFragment;)V

    invoke-virtual {v3, v0, v1}, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 747
    invoke-virtual {v3, v4}, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->setCancelable(Z)V

    .line 748
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-virtual {v0, v3}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    .line 749
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->executePendingTransactions()V

    return-void
.end method

.method private createShutDownDialog()V
    .locals 5

    .line 773
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getZoomRoomCapability()Lus/zoom/zrcsdk/model/ZoomRoomCapability;

    move-result-object v0

    .line 774
    sget v1, Lus/zoom/zrcbox/R$string;->shutdown_system:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 776
    invoke-static {}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getInstance()Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->supportsRestartSystem()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 777
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZoomRoomCapability;->canAutoLogin()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 778
    sget v2, Lus/zoom/zrcbox/R$string;->shutdown_both_zr_and_zrc:I

    invoke-virtual {p0, v2}, Lus/zoom/zrc/settings/SettingRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 780
    :cond_0
    sget v2, Lus/zoom/zrcbox/R$string;->shutdown_both_zr_and_zrc_with_note:I

    invoke-virtual {p0, v2}, Lus/zoom/zrc/settings/SettingRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 783
    :cond_1
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZoomRoomCapability;->canAutoLogin()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 784
    sget v2, Lus/zoom/zrcbox/R$string;->shutdown_only_zr:I

    invoke-virtual {p0, v2}, Lus/zoom/zrc/settings/SettingRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 786
    :cond_2
    sget v2, Lus/zoom/zrcbox/R$string;->shutdown_only_zr_with_note:I

    invoke-virtual {p0, v2}, Lus/zoom/zrc/settings/SettingRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 789
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v3

    const-class v4, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;

    invoke-virtual {v3, v4}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    check-cast v3, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;

    if-eqz v3, :cond_3

    .line 790
    invoke-virtual {v3}, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 791
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v4

    invoke-virtual {v4, v3}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->dismissDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    .line 792
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->executePendingTransactions()V

    .line 793
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v3

    const-class v4, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;

    invoke-virtual {v3, v4}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    check-cast v3, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;

    :cond_3
    if-nez v3, :cond_4

    .line 796
    new-instance v3, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;

    invoke-direct {v3}, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;-><init>()V

    .line 798
    :cond_4
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZoomRoomCapability;->canAutoLogin()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 799
    iput v0, v3, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->type:I

    goto :goto_1

    :cond_5
    const/4 v0, 0x3

    .line 801
    iput v0, v3, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->type:I

    .line 803
    :goto_1
    invoke-virtual {v3, v1}, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->setTitle(Ljava/lang/String;)V

    .line 804
    invoke-virtual {v3, v2}, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->setMessage(Ljava/lang/String;)V

    .line 805
    sget v0, Lus/zoom/zrcbox/R$string;->shutdown:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/settings/SettingRoomFragment$27;

    invoke-direct {v1, p0}, Lus/zoom/zrc/settings/SettingRoomFragment$27;-><init>(Lus/zoom/zrc/settings/SettingRoomFragment;)V

    invoke-virtual {v3, v0, v1}, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 814
    sget v0, Lus/zoom/zrcbox/R$string;->cancel:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/settings/SettingRoomFragment$28;

    invoke-direct {v1, p0}, Lus/zoom/zrc/settings/SettingRoomFragment$28;-><init>(Lus/zoom/zrc/settings/SettingRoomFragment;)V

    invoke-virtual {v3, v0, v1}, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, 0x0

    .line 819
    invoke-virtual {v3, v0}, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->setCancelable(Z)V

    .line 820
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-virtual {v0, v3}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    .line 821
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->executePendingTransactions()V

    return-void
.end method

.method private isSupportSystemSettings()Z
    .locals 1

    .line 266
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isRunInPolycomTrio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/ZRCApplication;->isSupportsTrioSettings()Z

    move-result v0

    return v0

    .line 269
    :cond_0
    invoke-static {}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getInstance()Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->supportsLaunchSystemSettings()Z

    move-result v0

    return v0
.end method

.method private launchSystemSettings()V
    .locals 2

    .line 670
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isRunInPolycomTrio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 672
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "polycom://settings-menu"

    .line 673
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 674
    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/SettingRoomFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 676
    :cond_0
    invoke-static {}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getInstance()Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;

    move-result-object v0

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->launchSystemSettings(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private onLaunchSystemSettings()V
    .locals 3

    .line 657
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isSettingsLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->unlock_settings_message:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lus/zoom/zrc/settings/SettingRoomFragment$22;

    invoke-direct {v2, p0}, Lus/zoom/zrc/settings/SettingRoomFragment$22;-><init>(Lus/zoom/zrc/settings/SettingRoomFragment;)V

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/CharSequence;Lus/zoom/androidlib/util/EventAction;)V

    return-void

    .line 666
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->launchSystemSettings()V

    return-void
.end method

.method private onRestartOS()V
    .locals 3

    .line 681
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isSettingsLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->unlock_settings_message:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lus/zoom/zrc/settings/SettingRoomFragment$23;

    invoke-direct {v2, p0}, Lus/zoom/zrc/settings/SettingRoomFragment$23;-><init>(Lus/zoom/zrc/settings/SettingRoomFragment;)V

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/CharSequence;Lus/zoom/androidlib/util/EventAction;)V

    return-void

    .line 690
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->restartOS()V

    return-void
.end method

.method private onShowArrangeDisplayFragment()V
    .locals 3

    .line 565
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isSettingsLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->unlock_settings_message:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lus/zoom/zrc/settings/SettingRoomFragment$17;

    invoke-direct {v2, p0}, Lus/zoom/zrc/settings/SettingRoomFragment$17;-><init>(Lus/zoom/zrc/settings/SettingRoomFragment;)V

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/CharSequence;Lus/zoom/androidlib/util/EventAction;)V

    return-void

    .line 574
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->showArrangeDisplayFragment()V

    return-void
.end method

.method private onShowChangeWindowsPasswordDialog()V
    .locals 3

    .line 636
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isSettingsLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->unlock_settings_message:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lus/zoom/zrc/settings/SettingRoomFragment$21;

    invoke-direct {v2, p0}, Lus/zoom/zrc/settings/SettingRoomFragment$21;-><init>(Lus/zoom/zrc/settings/SettingRoomFragment;)V

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/CharSequence;Lus/zoom/androidlib/util/EventAction;)V

    return-void

    .line 645
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->showChangeWindowsPasswordDialog()V

    return-void
.end method

.method private onShowScreenResolutionFragment()V
    .locals 3

    .line 584
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isSettingsLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->unlock_settings_message:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lus/zoom/zrc/settings/SettingRoomFragment$18;

    invoke-direct {v2, p0}, Lus/zoom/zrc/settings/SettingRoomFragment$18;-><init>(Lus/zoom/zrc/settings/SettingRoomFragment;)V

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/CharSequence;Lus/zoom/androidlib/util/EventAction;)V

    return-void

    .line 593
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->showScreenResolutionFragment()V

    return-void
.end method

.method private onShutDownOS()V
    .locals 3

    .line 753
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isSettingsLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->unlock_settings_message:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lus/zoom/zrc/settings/SettingRoomFragment$26;

    invoke-direct {v2, p0}, Lus/zoom/zrc/settings/SettingRoomFragment$26;-><init>(Lus/zoom/zrc/settings/SettingRoomFragment;)V

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/CharSequence;Lus/zoom/androidlib/util/EventAction;)V

    return-void

    .line 762
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->shutDownOS()V

    return-void
.end method

.method private onSignOut()V
    .locals 3

    .line 499
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isSettingsLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->unlock_settings_message:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lus/zoom/zrc/settings/SettingRoomFragment$13;

    invoke-direct {v2, p0}, Lus/zoom/zrc/settings/SettingRoomFragment$13;-><init>(Lus/zoom/zrc/settings/SettingRoomFragment;)V

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/CharSequence;Lus/zoom/androidlib/util/EventAction;)V

    return-void

    .line 508
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->signOut()V

    return-void
.end method

.method private onStartAudioCheck()V
    .locals 3

    .line 603
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isSettingsLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->unlock_settings_message:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lus/zoom/zrc/settings/SettingRoomFragment$19;

    invoke-direct {v2, p0}, Lus/zoom/zrc/settings/SettingRoomFragment$19;-><init>(Lus/zoom/zrc/settings/SettingRoomFragment;)V

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/CharSequence;Lus/zoom/androidlib/util/EventAction;)V

    return-void

    .line 612
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->startAudioCheck()V

    return-void
.end method

.method private onSwitchWorkMode()V
    .locals 3

    .line 623
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isSettingsLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->unlock_settings_message:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lus/zoom/zrc/settings/SettingRoomFragment$20;

    invoke-direct {v2, p0}, Lus/zoom/zrc/settings/SettingRoomFragment$20;-><init>(Lus/zoom/zrc/settings/SettingRoomFragment;)V

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/CharSequence;Lus/zoom/androidlib/util/EventAction;)V

    return-void

    .line 632
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->switchWorkMode()V

    return-void
.end method

.method private onUpdateContent()V
    .locals 0

    .line 457
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->updateMeetingId()V

    .line 458
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->updateRoomName()V

    .line 459
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->onUpdateScreenResolutionStatusView()V

    .line 460
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->onUpdateSettingsLockedView()V

    .line 461
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->onUpdateSipServiceView()V

    .line 462
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->updatePairedMode()V

    .line 463
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->onUpdateQuantityOfScreensView()V

    .line 464
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->updateAudioCheck()V

    .line 465
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->updateAudioCheckupResult()V

    .line 466
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->updateChangeWinLoginPasswordView()V

    .line 467
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->onUpdateRoomCapabilityUI()V

    return-void
.end method

.method private onUpdateQuantityOfScreensView()V
    .locals 2

    .line 370
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getRoomScreenInfo()Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;

    move-result-object v0

    .line 371
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;->getQuantityOfScreens()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->isZRCMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->arrangeDisplayLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 374
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->arrangeDisplayLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private onUpdateRoomCapabilityUI()V
    .locals 5

    .line 432
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getZoomRoomCapability()Lus/zoom/zrcsdk/model/ZoomRoomCapability;

    move-result-object v0

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateRoomCapabilityUI restart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZoomRoomCapability;->canRestartOS()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " shutdown "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZoomRoomCapability;->canShutdownOS()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 434
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->restartLayout:Landroid/view/View;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZoomRoomCapability;->canRestartOS()Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 435
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->shutDownLayout:Landroid/view/View;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZoomRoomCapability;->canShutdownOS()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 436
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->restartAndShutDownLayout:Landroid/view/View;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZoomRoomCapability;->canRestartOS()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZoomRoomCapability;->canShutdownOS()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->isZRPMode()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 437
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v1

    const-class v2, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;

    invoke-virtual {v1, v2}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;

    if-eqz v1, :cond_c

    .line 439
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZoomRoomCapability;->canRestartOS()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->isRebootType()Z

    move-result v2

    if-nez v2, :cond_5

    .line 440
    :cond_4
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZoomRoomCapability;->canShutdownOS()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->isShutDownType()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 441
    :cond_5
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->dismissDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    return-void

    .line 444
    :cond_6
    iget v2, v1, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZoomRoomCapability;->canAutoLogin()Z

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    iget v2, v1, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->type:I

    if-nez v2, :cond_9

    .line 445
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZoomRoomCapability;->canAutoLogin()Z

    move-result v2

    if-nez v2, :cond_9

    .line 446
    :cond_8
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->dismissDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    .line 447
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->createRestartDialog()V

    goto :goto_3

    .line 448
    :cond_9
    iget v2, v1, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_a

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZoomRoomCapability;->canAutoLogin()Z

    move-result v2

    if-nez v2, :cond_b

    :cond_a
    iget v2, v1, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    .line 449
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZoomRoomCapability;->canAutoLogin()Z

    move-result v0

    if-nez v0, :cond_c

    .line 450
    :cond_b
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->dismissDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    .line 451
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->createShutDownDialog()V

    :cond_c
    :goto_3
    return-void
.end method

.method private onUpdateScreenResolutionStatusView()V
    .locals 3

    .line 407
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->isZRPMode()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->screenResolutionStatusLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 411
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getScreenResolutionStatus()I

    move-result v0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 421
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->screenResolutionStatusLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 423
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/view/ScreenResolutionStatusFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 424
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 425
    check-cast v0, Landroidx/fragment/app/DialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    goto :goto_0

    .line 417
    :pswitch_0
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->screenResolutionStatusLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 418
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->screenResolutionStatus:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->revert_screen_resolution_optimization:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 413
    :pswitch_1
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->screenResolutionStatusLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->screenResolutionStatus:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->optimize_screen_resolution:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onUpdateSettingsLockedView()V
    .locals 2

    .line 393
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isSettingsLocked()Z

    move-result v0

    .line 395
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->signOut:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->setViewDim(Landroid/view/View;Z)V

    .line 396
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->systemSettings:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->setViewDim(Landroid/view/View;Z)V

    .line 397
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->arrangeDisplay:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->setViewDim(Landroid/view/View;Z)V

    .line 398
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->audioCheck:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->setViewDim(Landroid/view/View;Z)V

    .line 399
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->screenResolutionStatus:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->setViewDim(Landroid/view/View;Z)V

    .line 400
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->switchWorkMode:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->setViewDim(Landroid/view/View;Z)V

    .line 401
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->changeWinPassword:Landroid/view/View;

    invoke-static {v1, v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->setViewDim(Landroid/view/View;Z)V

    .line 402
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->restartLayout:Landroid/view/View;

    invoke-static {v1, v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->setViewDim(Landroid/view/View;Z)V

    .line 403
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->shutDownLayout:Landroid/view/View;

    invoke-static {v1, v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->setViewDim(Landroid/view/View;Z)V

    return-void
.end method

.method private onUpdateSipServiceView()V
    .locals 3

    .line 379
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipService()Lus/zoom/zrcsdk/model/ZRCSipService;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 380
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->isCloudPBXSupported()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->isZRPMode()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 383
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->sipNumberLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 384
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSipService;->getSipServiceStatus()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 385
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->sipNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSipService;->getResponseDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 387
    :cond_1
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->sipNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSipService;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 381
    :cond_2
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->sipNumberLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private restartOS()V
    .locals 1

    .line 694
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getZoomRoomCapability()Lus/zoom/zrcsdk/model/ZoomRoomCapability;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZoomRoomCapability;->canRestartOS()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 697
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->createRestartDialog()V

    return-void
.end method

.method private showArrangeDisplayFragment()V
    .locals 2

    const-string v0, "show SettingArrangeDisplaysFragment"

    const/4 v1, 0x0

    .line 578
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 579
    new-instance v0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;

    invoke-direct {v0}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;-><init>()V

    .line 580
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method

.method private showChangeWindowsPasswordDialog()V
    .locals 1

    .line 649
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V

    return-void
.end method

.method private showEchoLevelDialog()V
    .locals 2

    .line 872
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "error when show echo level dialog, context is null "

    .line 873
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "show echo level dialog"

    .line 876
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 877
    new-instance v0, Lus/zoom/zrc/base/app/ZRCHelpDialog;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lus/zoom/zrc/base/app/ZRCHelpDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 878
    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCHelpDialog;->setShowClose(Z)V

    .line 879
    sget v1, Lus/zoom/zrcbox/R$layout;->echo_level_help_layout:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCHelpDialog;->setDisplayContent(I)V

    .line 880
    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCHelpDialog;->show()V

    return-void
.end method

.method private showScreenResolutionFragment()V
    .locals 2

    const-string v0, "show ScreenResolutionStatusFragment"

    const/4 v1, 0x0

    .line 597
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 598
    new-instance v0, Lus/zoom/zrc/view/ScreenResolutionStatusFragment;

    invoke-direct {v0}, Lus/zoom/zrc/view/ScreenResolutionStatusFragment;-><init>()V

    .line 599
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method

.method private shutDownOS()V
    .locals 1

    .line 766
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getZoomRoomCapability()Lus/zoom/zrcsdk/model/ZoomRoomCapability;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZoomRoomCapability;->canShutdownOS()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 769
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->createShutDownDialog()V

    return-void
.end method

.method private signOut()V
    .locals 5

    .line 512
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getWorkMode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getUserProfile()Lus/zoom/zrc/model/ZRCUserProfile;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 516
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsSignoutZR()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 517
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;

    if-eqz v0, :cond_1

    .line 518
    invoke-virtual {v0}, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 519
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->dismissDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    .line 520
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->executePendingTransactions()V

    .line 521
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;

    :cond_1
    if-nez v0, :cond_2

    .line 524
    new-instance v0, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;

    invoke-direct {v0}, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;-><init>()V

    :cond_2
    const/4 v1, 0x4

    .line 526
    iput v1, v0, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->type:I

    .line 527
    sget v1, Lus/zoom/zrcbox/R$string;->sign_out:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->setTitle(Ljava/lang/String;)V

    .line 528
    sget v1, Lus/zoom/zrcbox/R$string;->sign_out_tips:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->setMessage(Ljava/lang/String;)V

    .line 530
    invoke-virtual {v0, v3}, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->setVerticalStyle(Z)V

    .line 531
    sget v1, Lus/zoom/zrcbox/R$string;->sign_out:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lus/zoom/zrc/settings/SettingRoomFragment$14;

    invoke-direct {v3, p0}, Lus/zoom/zrc/settings/SettingRoomFragment$14;-><init>(Lus/zoom/zrc/settings/SettingRoomFragment;)V

    invoke-virtual {v0, v1, v3}, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 540
    sget v1, Lus/zoom/zrcbox/R$string;->sign_out_zrc_only:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lus/zoom/zrc/settings/SettingRoomFragment$15;

    invoke-direct {v3, p0}, Lus/zoom/zrc/settings/SettingRoomFragment$15;-><init>(Lus/zoom/zrc/settings/SettingRoomFragment;)V

    invoke-virtual {v0, v1, v3}, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->setNeutralButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 548
    sget v1, Lus/zoom/zrcbox/R$string;->cancel:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lus/zoom/zrc/settings/SettingRoomFragment$16;

    invoke-direct {v3, p0}, Lus/zoom/zrc/settings/SettingRoomFragment$16;-><init>(Lus/zoom/zrc/settings/SettingRoomFragment;)V

    invoke-virtual {v0, v1, v3}, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 554
    invoke-virtual {v0, v2}, Lus/zoom/zrc/settings/SettingRoomFragment$CapabilityAlertDialogFragment;->setCancelable(Z)V

    .line 555
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    .line 556
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->executePendingTransactions()V

    goto :goto_0

    .line 559
    :cond_3
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, v2}, Lus/zoom/zrc/model/Model;->logout(Z)V

    const-string v0, "on click %s, work mode is %s"

    .line 560
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->signOut:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getWorkMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 513
    :cond_4
    :goto_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, v2}, Lus/zoom/zrc/model/Model;->logout(Z)V

    return-void
.end method

.method private startAudioCheck()V
    .locals 2

    const-string v0, "start audio check up"

    const/4 v1, 0x0

    .line 616
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 617
    new-instance v0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;

    invoke-direct {v0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;-><init>()V

    .line 618
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    .line 619
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/PTApp;->startAudioCheckup()I

    return-void
.end method

.method private switchWorkMode()V
    .locals 1

    .line 653
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->switchWorkMode()V

    return-void
.end method

.method private updateAudioCheck()V
    .locals 2

    .line 471
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    .line 472
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsAudioCheckup()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getUserProfile()Lus/zoom/zrc/model/ZRCUserProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->isZRCMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->audioCheckLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 475
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->audioCheckLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateAudioCheckupResult()V
    .locals 6

    .line 825
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAudioCheckupInfo()Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;

    move-result-object v0

    .line 826
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->audioCheck:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 830
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->getAecLevel()I

    move-result v3

    .line 831
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->getTestTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/utils/Util;->getDateFromTimeString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-lez v3, :cond_1

    if-eqz v0, :cond_1

    .line 834
    iget-object v4, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->audioCheckResult:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 835
    iget-object v4, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->audioCheckEcoLevel:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v4, -0x1

    .line 836
    iput v4, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 837
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v4, v5}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 838
    iget-object v4, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->audioCheck:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 840
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget v4, Lus/zoom/zrcbox/R$string;->audio_test_date_format:I

    invoke-virtual {p0, v4}, Lus/zoom/zrc/settings/SettingRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 841
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 845
    :pswitch_0
    sget v1, Lus/zoom/zrcbox/R$string;->audio_checkup_result_excellent:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 848
    :pswitch_1
    sget v1, Lus/zoom/zrcbox/R$string;->audio_checkup_result_good:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 851
    :pswitch_2
    sget v1, Lus/zoom/zrcbox/R$string;->audio_checkup_result_fair:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 854
    :pswitch_3
    sget v1, Lus/zoom/zrcbox/R$string;->audio_checkup_result_poor:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 857
    :pswitch_4
    sget v1, Lus/zoom/zrcbox/R$string;->audio_checkup_result_bad:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 861
    :goto_1
    iget-object v3, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->audioCheckResult:Landroid/widget/TextView;

    sget v4, Lus/zoom/zrcbox/R$string;->last_audio_checkup:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v2

    const/4 v1, 0x1

    aput-object v0, v5, v1

    invoke-virtual {p0, v4, v5}, Lus/zoom/zrc/settings/SettingRoomFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 863
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->audioCheckResult:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 864
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->audioCheckEcoLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 865
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 866
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 867
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->audioCheck:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateChangeWinLoginPasswordView()V
    .locals 2

    .line 361
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getRoomInfo()Lus/zoom/zrcsdk/model/ZRCRoomInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->getOsAccountName()Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->isZRPMode()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 365
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->changeWinPassword:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 363
    :cond_1
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->changeWinPassword:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private updateMeetingId()V
    .locals 3

    .line 345
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getRoomInfo()Lus/zoom/zrcsdk/model/ZRCRoomInfo;

    move-result-object v0

    .line 346
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getUserProfile()Lus/zoom/zrc/model/ZRCUserProfile;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->isStandaloneZRP()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->isStandaloneDigitalSignage()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->getMeetingNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 348
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->meetingIdParentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 349
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->meetingId:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 350
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->meetingId:Landroid/widget/TextView;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->getMeetingNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/utils/Util;->getDisplayMeetingNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 352
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->meetingIdParentView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private updatePairedMode()V
    .locals 3

    .line 480
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getUserProfile()Lus/zoom/zrc/model/ZRCUserProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 481
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->meetingIdParentView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->signOut:Landroid/widget/TextView;

    sget v2, Lus/zoom/zrcbox/R$string;->unpair:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 483
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->switchWorkModeLayout:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 484
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 487
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->signOut:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->sign_out:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 488
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->switchWorkModeLayout:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->canSwitchWorkMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 489
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->switchWorkModeLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateRoomName()V
    .locals 2

    .line 357
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->roomName:Landroid/widget/TextView;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getDisplayRoomName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public controlViewVisible()V
    .locals 6

    .line 322
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 329
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->isZRPMode()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_1

    .line 330
    new-array v0, v4, [Ljava/lang/Integer;

    sget v4, Lus/zoom/zrcbox/R$id;->panelTitleBar:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    sget v3, Lus/zoom/zrcbox/R$id;->title_bottom_line:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 331
    sget v2, Lus/zoom/zrcbox/R$id;->zrp_title_layout:I

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lus/zoom/zrc/settings/SettingRoomFragment;->showView(ILandroid/view/View;)V

    goto :goto_0

    .line 332
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->isInMeeting()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 334
    new-array v0, v4, [Ljava/lang/Integer;

    sget v4, Lus/zoom/zrcbox/R$id;->panelTitleBar:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    sget v3, Lus/zoom/zrcbox/R$id;->title_bottom_line:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 337
    :cond_2
    new-array v0, v4, [Ljava/lang/Integer;

    sget v4, Lus/zoom/zrcbox/R$id;->panelTitleBar:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    sget v3, Lus/zoom/zrcbox/R$id;->title_bottom_line:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 340
    :goto_0
    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/SettingRoomFragment;->batchHideView(Ljava/util/List;)V

    .line 341
    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingRoomFragment;->batchShowView(Ljava/util/List;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 96
    invoke-super {p0, p1}, Lus/zoom/zrc/settings/SettingBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 103
    sget p3, Lus/zoom/zrcbox/R$layout;->setting_room:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 104
    sget p2, Lus/zoom/zrcbox/R$id;->txtTitle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->title:Landroid/view/View;

    .line 105
    sget p2, Lus/zoom/zrcbox/R$id;->tv_roomname:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->roomName:Landroid/widget/TextView;

    .line 106
    sget p2, Lus/zoom/zrcbox/R$id;->tv_meeting_id:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->meetingId:Landroid/widget/TextView;

    .line 107
    sget p2, Lus/zoom/zrcbox/R$id;->trio_settings:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->systemSettings:Landroid/widget/TextView;

    .line 108
    sget p2, Lus/zoom/zrcbox/R$id;->restart_and_shutdown_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->restartAndShutDownLayout:Landroid/view/View;

    .line 109
    sget p2, Lus/zoom/zrcbox/R$id;->tv_signout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->signOut:Landroid/widget/TextView;

    .line 110
    sget p2, Lus/zoom/zrcbox/R$id;->rl_arrange_display_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->arrangeDisplayLayout:Landroid/view/View;

    .line 111
    sget p2, Lus/zoom/zrcbox/R$id;->tv_arrange_display_txt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->arrangeDisplay:Landroid/widget/TextView;

    .line 112
    sget p2, Lus/zoom/zrcbox/R$id;->sip_number_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->sipNumberLayout:Landroid/view/View;

    .line 113
    sget p2, Lus/zoom/zrcbox/R$id;->sip_phone_number:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->sipNumber:Landroid/widget/TextView;

    .line 114
    sget p2, Lus/zoom/zrcbox/R$id;->rl_screen_resolution_status_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->screenResolutionStatusLayout:Landroid/view/View;

    .line 115
    sget p2, Lus/zoom/zrcbox/R$id;->screen_resolution_status:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->screenResolutionStatus:Landroid/widget/TextView;

    .line 116
    sget p2, Lus/zoom/zrcbox/R$id;->category_switch_mode_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->switchWorkModeLayout:Landroid/view/View;

    .line 117
    sget p2, Lus/zoom/zrcbox/R$id;->change_windows_password:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->changeWinPassword:Landroid/view/View;

    .line 118
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->changeWinPassword:Landroid/view/View;

    new-instance p3, Lus/zoom/zrc/settings/SettingRoomFragment$1;

    invoke-direct {p3, p0}, Lus/zoom/zrc/settings/SettingRoomFragment$1;-><init>(Lus/zoom/zrc/settings/SettingRoomFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    sget p2, Lus/zoom/zrcbox/R$id;->rl_audio_test_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->audioCheckLayout:Landroid/view/View;

    .line 126
    sget p2, Lus/zoom/zrcbox/R$id;->audio_test_txt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->audioCheck:Landroid/widget/TextView;

    .line 127
    sget p2, Lus/zoom/zrcbox/R$id;->audio_test_result:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->audioCheckResult:Landroid/widget/TextView;

    .line 128
    sget p2, Lus/zoom/zrcbox/R$id;->audio_test_echo_level:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->audioCheckEcoLevel:Landroid/widget/ImageView;

    .line 129
    sget p2, Lus/zoom/zrcbox/R$id;->back_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 130
    invoke-static {p2}, Lus/zoom/zrc/settings/SettingRoomFragment;->setBackToSettingsContentDescription(Landroid/view/View;)V

    .line 131
    sget p3, Lus/zoom/zrcbox/R$id;->zrp_back:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->zrpBackBtn:Landroid/widget/TextView;

    .line 132
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->zrpBackBtn:Landroid/widget/TextView;

    invoke-static {p3}, Lus/zoom/zrc/utils/ZRCUIUtils;->setBackArrowFor(Landroid/widget/TextView;)V

    .line 134
    sget p3, Lus/zoom/zrcbox/R$id;->restart:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 135
    sget v1, Lus/zoom/zrcbox/R$id;->restart_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->restartLayout:Landroid/view/View;

    .line 136
    sget v1, Lus/zoom/zrcbox/R$id;->shutdown:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 137
    sget v2, Lus/zoom/zrcbox/R$id;->shutdown_layout:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->shutDownLayout:Landroid/view/View;

    .line 138
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$drawable;->setting_restart:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 139
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lus/zoom/zrcbox/R$drawable;->setting_shutdown:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 140
    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    const/16 v5, 0x8

    add-int/2addr v4, v5

    invoke-static {v2, v4}, Lus/zoom/zrc/utils/ZRCUIUtils;->setComponentDrawableBound(Landroid/graphics/drawable/Drawable;I)V

    const/4 v4, 0x0

    .line 141
    invoke-virtual {p3, v2, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 142
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result p3

    float-to-int p3, p3

    add-int/lit8 p3, p3, 0xa

    invoke-static {v3, p3}, Lus/zoom/zrc/utils/ZRCUIUtils;->setComponentDrawableBound(Landroid/graphics/drawable/Drawable;I)V

    .line 143
    invoke-virtual {v1, v3, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 144
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->audioCheckEcoLevel:Landroid/widget/ImageView;

    new-instance v1, Lus/zoom/zrc/settings/SettingRoomFragment$2;

    invoke-direct {v1, p0}, Lus/zoom/zrc/settings/SettingRoomFragment$2;-><init>(Lus/zoom/zrc/settings/SettingRoomFragment;)V

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isRunInPolycomTrio()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 152
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->systemSettings:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->trio_settings:I

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 154
    :cond_0
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->systemSettings:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->system_settings:I

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 156
    :goto_0
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->systemSettings:Landroid/widget/TextView;

    new-instance v1, Lus/zoom/zrc/settings/SettingRoomFragment$3;

    invoke-direct {v1, p0}, Lus/zoom/zrc/settings/SettingRoomFragment$3;-><init>(Lus/zoom/zrc/settings/SettingRoomFragment;)V

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->restartLayout:Landroid/view/View;

    new-instance v1, Lus/zoom/zrc/settings/SettingRoomFragment$4;

    invoke-direct {v1, p0}, Lus/zoom/zrc/settings/SettingRoomFragment$4;-><init>(Lus/zoom/zrc/settings/SettingRoomFragment;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->shutDownLayout:Landroid/view/View;

    new-instance v1, Lus/zoom/zrc/settings/SettingRoomFragment$5;

    invoke-direct {v1, p0}, Lus/zoom/zrc/settings/SettingRoomFragment$5;-><init>(Lus/zoom/zrc/settings/SettingRoomFragment;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->signOut:Landroid/widget/TextView;

    new-instance v1, Lus/zoom/zrc/settings/SettingRoomFragment$6;

    invoke-direct {v1, p0}, Lus/zoom/zrc/settings/SettingRoomFragment$6;-><init>(Lus/zoom/zrc/settings/SettingRoomFragment;)V

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->arrangeDisplay:Landroid/widget/TextView;

    new-instance v1, Lus/zoom/zrc/settings/SettingRoomFragment$7;

    invoke-direct {v1, p0}, Lus/zoom/zrc/settings/SettingRoomFragment$7;-><init>(Lus/zoom/zrc/settings/SettingRoomFragment;)V

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->screenResolutionStatus:Landroid/widget/TextView;

    new-instance v1, Lus/zoom/zrc/settings/SettingRoomFragment$8;

    invoke-direct {v1, p0}, Lus/zoom/zrc/settings/SettingRoomFragment$8;-><init>(Lus/zoom/zrc/settings/SettingRoomFragment;)V

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->audioCheck:Landroid/widget/TextView;

    new-instance v1, Lus/zoom/zrc/settings/SettingRoomFragment$9;

    invoke-direct {v1, p0}, Lus/zoom/zrc/settings/SettingRoomFragment$9;-><init>(Lus/zoom/zrc/settings/SettingRoomFragment;)V

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    new-instance p3, Lus/zoom/zrc/settings/SettingRoomFragment$10;

    invoke-direct {p3, p0}, Lus/zoom/zrc/settings/SettingRoomFragment$10;-><init>(Lus/zoom/zrc/settings/SettingRoomFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->zrpBackBtn:Landroid/widget/TextView;

    new-instance p3, Lus/zoom/zrc/settings/SettingRoomFragment$11;

    invoke-direct {p3, p0}, Lus/zoom/zrc/settings/SettingRoomFragment$11;-><init>(Lus/zoom/zrc/settings/SettingRoomFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    sget p2, Lus/zoom/zrcbox/R$id;->meeting_id_parent:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->meetingIdParentView:Landroid/view/View;

    .line 213
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->isZRPMode()Z

    move-result p2

    const/high16 p3, 0x41800000    # 16.0f

    if-eqz p2, :cond_1

    .line 214
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->signOut:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$color;->zrp_red:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 215
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->restartAndShutDownLayout:Landroid/view/View;

    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 216
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result p2

    .line 217
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->roomName:Landroid/widget/TextView;

    invoke-virtual {p3, p2, v0, p2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 218
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->meetingIdParentView:Landroid/view/View;

    invoke-virtual {p3, p2, v0, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 219
    sget p2, Lus/zoom/zrcbox/R$id;->room_name_top_divider:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 220
    sget p2, Lus/zoom/zrcbox/R$id;->room_name_bottom_divider:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 221
    sget p2, Lus/zoom/zrcbox/R$id;->room_header_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lus/zoom/zrcbox/R$color;->zrc_white:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 222
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->isInMeeting()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->isTablet()Z

    move-result p2

    if-nez p2, :cond_2

    .line 223
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result p2

    .line 224
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->roomName:Landroid/widget/TextView;

    invoke-virtual {p3, p2, v0, p2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 225
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->meetingIdParentView:Landroid/view/View;

    invoke-virtual {p3, p2, v0, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 226
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->sipNumberLayout:Landroid/view/View;

    invoke-virtual {p3, p2, v0, p2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 229
    :cond_2
    :goto_1
    sget p2, Lus/zoom/zrcbox/R$id;->tv_switch_work_mode:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->switchWorkMode:Landroid/widget/TextView;

    .line 230
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->canSwitchWorkMode()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 231
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->switchWorkModeLayout:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 233
    :cond_3
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->switchWorkModeLayout:Landroid/view/View;

    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 235
    :goto_2
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->isZRPMode()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 236
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->switchWorkMode:Landroid/widget/TextView;

    sget p3, Lus/zoom/zrcbox/R$string;->switch_to_controller:I

    invoke-virtual {p0, p3}, Lus/zoom/zrc/settings/SettingRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->switchWorkMode:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lus/zoom/zrcbox/R$color;->zrc_blue:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 238
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->zrpBackBtn:Landroid/widget/TextView;

    invoke-static {p2}, Lus/zoom/zrc/settings/SettingRoomFragment;->setBackToSettingsContentDescription(Landroid/view/View;)V

    goto :goto_3

    .line 240
    :cond_4
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->switchWorkMode:Landroid/widget/TextView;

    sget p3, Lus/zoom/zrcbox/R$string;->switch_to_scheduling_display:I

    invoke-virtual {p0, p3}, Lus/zoom/zrc/settings/SettingRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    :goto_3
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->switchWorkMode:Landroid/widget/TextView;

    if-eqz p2, :cond_5

    .line 243
    new-instance p3, Lus/zoom/zrc/settings/SettingRoomFragment$12;

    invoke-direct {p3, p0}, Lus/zoom/zrc/settings/SettingRoomFragment$12;-><init>(Lus/zoom/zrc/settings/SettingRoomFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    :cond_5
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->isSupportSystemSettings()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 252
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->systemSettings:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 254
    :cond_6
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->systemSettings:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    :goto_4
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_8

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->isZRPMode()Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_5

    .line 260
    :cond_7
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->signOut:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 258
    :cond_8
    :goto_5
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->signOut:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_6
    return-object p1
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 292
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/settings/SettingBaseFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 293
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->roomInfo:I

    if-ne p1, p2, :cond_0

    .line 294
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->updateMeetingId()V

    .line 295
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->updateRoomName()V

    .line 296
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->updateChangeWinLoginPasswordView()V

    goto :goto_0

    .line 297
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->roomScreenInfo:I

    if-ne p1, p2, :cond_1

    .line 298
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->onUpdateQuantityOfScreensView()V

    goto :goto_0

    .line 299
    :cond_1
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->sipService:I

    if-ne p1, p2, :cond_2

    .line 300
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->onUpdateSipServiceView()V

    goto :goto_0

    .line 301
    :cond_2
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->settingsLocked:I

    if-ne p1, p2, :cond_3

    .line 302
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->onUpdateSettingsLockedView()V

    goto :goto_0

    .line 303
    :cond_3
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->screenResolutionStatus:I

    if-ne p1, p2, :cond_4

    .line 304
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->onUpdateScreenResolutionStatusView()V

    goto :goto_0

    .line 305
    :cond_4
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->userProfile:I

    if-ne p1, p2, :cond_5

    .line 306
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->updateAudioCheck()V

    .line 307
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->updateRoomName()V

    goto :goto_0

    .line 308
    :cond_5
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->audioCheckupInfo:I

    if-ne p1, p2, :cond_6

    .line 309
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->updateAudioCheckupResult()V

    goto :goto_0

    .line 310
    :cond_6
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->featureList:I

    if-ne p1, p2, :cond_7

    .line 311
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->updateAudioCheck()V

    goto :goto_0

    .line 312
    :cond_7
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->standaloneDigitalSignage:I

    if-ne p1, p2, :cond_8

    .line 313
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->updateMeetingId()V

    .line 314
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->updatePairedMode()V

    goto :goto_0

    .line 315
    :cond_8
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->zoomRoomCapability:I

    if-ne p1, p2, :cond_9

    .line 316
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->onUpdateRoomCapabilityUI()V

    :cond_9
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 282
    invoke-super {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;->onResume()V

    .line 283
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->isZRPMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->zrpBackBtn:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/SettingRoomFragment;->sendFirstItemAccessibility(Landroid/view/View;)V

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->isZRCMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingRoomFragment;->title:Landroid/view/View;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/SettingRoomFragment;->sendFirstItemAccessibility(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 276
    invoke-super {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;->onStart()V

    .line 277
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingRoomFragment;->onUpdateContent()V

    return-void
.end method
