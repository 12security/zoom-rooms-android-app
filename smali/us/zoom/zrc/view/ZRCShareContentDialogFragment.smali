.class public Lus/zoom/zrc/view/ZRCShareContentDialogFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "ZRCShareContentDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lus/zoom/zrc/view/TabBar$OnSelectedTabListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "ZRCShareContentDialogFragment"

.field private static final TAG_ALERT_MULTI_SHARE:Ljava/lang/String; = "alert_multi_share"

.field private static final TAG_ALERT_STOP_PHONE:Ljava/lang/String; = "alert_stop_phone"

.field public static isPendingToShow:Z


# instance fields
.field private airplayChooseServerTV:Landroid/widget/TextView;

.field private airplayEnterPasswordTV:Landroid/widget/TextView;

.field private airplayTapScreenMirrorTV:Landroid/widget/TextView;

.field private cameraControlButton:Landroid/view/View;

.field private cameraControlLayout:Landroid/view/View;

.field private camerasAdapter:Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter;

.field private canBeAutoDismissed:Z

.field private changeContentCntTV:Landroid/widget/TextView;

.field private changeContentIV:Landroid/view/View;

.field private changeContentLayout:Landroid/view/View;

.field private currentInSharingWbcTV:Landroid/widget/TextView;

.field private currentlyInSharingTV:Landroid/widget/TextView;

.field private decreaseVolumeImageView:Landroid/view/View;

.field private dismissBtn:Landroid/view/View;

.field private enableMultiShareLayout:Landroid/view/View;

.field private enableMultiShareSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

.field private increaseVolumeImageView:Landroid/view/View;

.field private isSwitching:Z

.field private isTablet:Z

.field private localViewWarning:Landroid/widget/TextView;

.field private multiShareStopDialog:Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

.field private navigationSegments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrc/share_camera/model/ZRCSharingType;",
            ">;"
        }
    .end annotation
.end field

.field private optimizeVideoSharingLayout:Landroid/view/View;

.field private optimizeVideoSharingSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

.field private phoneBtn:Landroid/view/View;

.field private portControlLayout:Landroid/view/View;

.field private roomNameMainTV:Landroid/widget/TextView;

.field private settingLockedListener:Lus/zoom/zrc/utils/DeviceInfoObserver$SettingLockerListener;

.field private shareBrowserMeetingIDContentTV:Landroid/widget/TextView;

.field private shareBrowserSharingPasswordContentTV:Landroid/widget/TextView;

.field private shareBrowserSharingPasswordLayout:Landroid/view/View;

.field private shareCameraLayout:Landroid/view/View;

.field private shareContentBody:Landroid/view/View;

.field private shareContentContainer:Landroid/widget/LinearLayout;

.field private shareDesktopMainLayout:Landroid/view/View;

.field private shareDesktopMeetingIDContentTV:Landroid/widget/TextView;

.field private shareDesktopMeetingIDLayout:Landroid/view/View;

.field private shareDesktopShareScreen:Landroid/widget/TextView;

.field private shareDesktopSharingKeyContentTV:Landroid/widget/TextView;

.field private shareDesktopSharingKeyLayout:Landroid/view/View;

.field private shareDesktopSharingPasscodeContentTV:Landroid/widget/TextView;

.field private shareDesktopSharingPasscodeLayout:Landroid/view/View;

.field private shareHDMIDivider:Landroid/view/View;

.field private shareHDMIMainLayout:Landroid/view/View;

.field private shareIOSErrorLayout:Landroid/view/View;

.field private shareIOSLayout:Landroid/view/View;

.field private shareIOSWifiTV:Landroid/widget/TextView;

.field private shareLaptopLayout:Landroid/view/View;

.field private shareURLTV:Landroid/widget/TextView;

.field private shareWbCameraLayout:Landroid/view/View;

.field private shareWbCameraTitleTV:Landroid/widget/TextView;

.field private sharedCamerasListView:Landroid/widget/ListView;

.field private sharingType:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

.field private speakerVolumeControlDescriptionTextView:Landroid/widget/TextView;

.field private speakerVolumeControlLayout:Landroid/view/View;

.field private speakerVolumeControlSeekBar:Landroid/widget/SeekBar;

.field private startMeetingBtn:Landroid/view/View;

.field private startShareWbCameraBtn:Landroid/widget/TextView;

.field private startSharingHDMIBtn:Landroid/widget/Button;

.field private startSharingHDMILayout:Landroid/view/View;

.field private startingShareProgressBar:Landroid/widget/ProgressBar;

.field private stopPresentationBtn:Landroid/view/View;

.field private stopSharingBtn:Landroid/view/View;

.field private tabBar:Lus/zoom/zrc/view/TabBar;

.field private useHDMITV:Landroid/widget/TextView;

.field private usedForLocalPresentation:Z

.field private view:Landroid/view/View;

.field private wbcControlHintTV:Landroid/widget/TextView;

.field private zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 104
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    .line 259
    new-instance v0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$1;-><init>(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->settingLockedListener:Lus/zoom/zrc/utils/DeviceInfoObserver$SettingLockerListener;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onSpeakerVolumeControlStatusChanged()V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;)Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    return p0
.end method

.method static synthetic access$1000(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;)Z
    .locals 0

    .line 104
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shouldShowStopMultiShareAlertDialog()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;)Ljava/util/List;
    .locals 0

    .line 104
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getCompatibleCameras()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1202(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;Z)Z
    .locals 0

    .line 104
    iput-boolean p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->canBeAutoDismissed:Z

    return p1
.end method

.method static synthetic access$1300(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;Z)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->showCameraControlButton(Z)V

    return-void
.end method

.method static synthetic access$1400(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->processStopLocalPresentation()V

    return-void
.end method

.method static synthetic access$200(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onDone()V

    return-void
.end method

.method static synthetic access$300(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->dismissAlertStopSharingInPhoneCall()V

    return-void
.end method

.method static synthetic access$400(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;)Landroid/view/View;
    .locals 0

    .line 104
    iget-object p0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareContentBody:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;)Landroid/view/View;
    .locals 0

    .line 104
    iget-object p0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareWbCameraLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;)Landroid/widget/TextView;
    .locals 0

    .line 104
    iget-object p0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->localViewWarning:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onOptimizeVideoSharing()V

    return-void
.end method

.method static synthetic access$800(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onMultiShare()V

    return-void
.end method

.method static synthetic access$900(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->showStopMultiShareAlertDialog()V

    return-void
.end method

.method private alertStopSharingInPhoneCall()V
    .locals 3

    .line 1472
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1475
    :cond_0
    new-instance v0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    invoke-direct {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;-><init>()V

    const/4 v1, 0x0

    .line 1476
    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->setCancelable(Z)V

    .line 1477
    sget v1, Lus/zoom/zrcbox/R$string;->stop_sharing_and_phone_title:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->setTitle(Ljava/lang/String;)V

    .line 1478
    sget v1, Lus/zoom/zrcbox/R$string;->stop_sharing_and_phone_msg:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->setMessage(Ljava/lang/String;)V

    .line 1479
    sget v1, Lus/zoom/zrcbox/R$string;->stop_sharing:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$9;

    invoke-direct {v2, p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$9;-><init>(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1491
    sget v1, Lus/zoom/zrcbox/R$string;->cancel:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1492
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "alert_stop_phone"

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private alignWbcAndLocalViewCenter()V
    .locals 2

    .line 568
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareContentBody:Landroid/view/View;

    new-instance v1, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$4;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$4;-><init>(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private buildNavigationSegment()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrc/share_camera/model/ZRCSharingType;",
            ">;"
        }
    .end annotation

    .line 852
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 854
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isWbcSharingAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 855
    sget-object v1, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_WhiteboardCamera:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 858
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getLoginInfo()Lus/zoom/zrcsdk/model/LoginInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 859
    sget-object v1, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_Desktop:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 862
    :cond_1
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isIOSSharingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 863
    sget-object v1, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_iOS:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 866
    :cond_2
    iget-boolean v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    if-nez v1, :cond_3

    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isShareDualCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 867
    sget-object v1, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_Camera:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method private canStopSharing(Lus/zoom/zrcsdk/model/ZRCSharingStatus;)Z
    .locals 2

    .line 2234
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getLocalViewStatus()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAirPlayBlackMagicStatus()Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isSharingBlackMagic()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2236
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCSharingStatus;->isSending()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 2238
    :cond_1
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCSharingStatus;->isReceiving()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2239
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getZRWSharingStatus()Lus/zoom/zrcsdk/model/ZRWSharingStatus;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRWSharingStatus;->isSharing()Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public static dismiss(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V
    .locals 2

    .line 247
    sget-object v0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->dismissDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    .line 250
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->executePendingTransactions()V

    .line 252
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p0

    sget-object v0, Lus/zoom/zrc/base/notification/UserEvent;->StopPresentation:Lus/zoom/zrc/base/notification/UserEvent;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;)V

    :cond_0
    return-void
.end method

.method private dismissAlertStopSharingInPhoneCall()V
    .locals 2

    .line 1496
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    const-string v1, "alert_stop_phone"

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->dismissDialogFragment(Ljava/lang/String;)V

    return-void
.end method

.method private dismissMultiShareAlertDialog()V
    .locals 1

    .line 1817
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->multiShareStopDialog:Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1818
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->multiShareStopDialog:Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method private findMultiShareViews()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 599
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->enable_multi_share_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->enableMultiShareLayout:Landroid/view/View;

    .line 600
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->enable_multi_share_switch:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->enableMultiShareSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    .line 602
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->enableMultiShareSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    new-instance v1, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$6;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$6;-><init>(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setOnSwitchChangedListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 609
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->enableMultiShareSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    new-instance v1, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$7;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$7;-><init>(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setBlockedCheckedChangeAction(Lus/zoom/zrc/base/widget/ZRCSwitchButton$OnBlockedCheckedChange;)V

    return-void
.end method

.method private findOptimizeVideoSharingViewsID()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 587
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->optimize_video_sharing_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->optimizeVideoSharingLayout:Landroid/view/View;

    .line 588
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->optimize_video_sharing_switch:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->optimizeVideoSharingSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    .line 589
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->optimizeVideoSharingSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    new-instance v1, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$5;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$5;-><init>(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setOnSwitchChangedListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private getChangeContentID()V
    .locals 2

    .line 1773
    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isTablet:Z

    if-eqz v0, :cond_0

    .line 1774
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->ll_change_content_tablet:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->changeContentLayout:Landroid/view/View;

    .line 1775
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->iv_change_content_tablet:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->changeContentIV:Landroid/view/View;

    .line 1776
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->tv_sharing_count_tablet:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->changeContentCntTV:Landroid/widget/TextView;

    goto :goto_0

    .line 1778
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->ll_change_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->changeContentLayout:Landroid/view/View;

    .line 1779
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->iv_change_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->changeContentIV:Landroid/view/View;

    .line 1780
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->tv_sharing_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->changeContentCntTV:Landroid/widget/TextView;

    .line 1782
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->changeContentIV:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private getCompatibleCameras()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 2205
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->getCompatibleCameras(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getLayoutsID()V
    .locals 2

    .line 557
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->share_content_body:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareContentBody:Landroid/view/View;

    .line 558
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->share_wbcamera:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareWbCameraLayout:Landroid/view/View;

    .line 559
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->share_laptop:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareLaptopLayout:Landroid/view/View;

    .line 560
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->share_ios:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareIOSLayout:Landroid/view/View;

    .line 561
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->share_camera:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareCameraLayout:Landroid/view/View;

    .line 562
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->share_ios_error:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareIOSErrorLayout:Landroid/view/View;

    .line 563
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->local_presentation_control_port:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->portControlLayout:Landroid/view/View;

    .line 564
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->not_support_local_view_warning:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->localViewWarning:Landroid/widget/TextView;

    return-void
.end method

.method private getShareIOSViewsID()V
    .locals 2

    .line 648
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->tv_share_ios_wifi_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareIOSWifiTV:Landroid/widget/TextView;

    .line 649
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->tv_screen_mirroring:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->airplayTapScreenMirrorTV:Landroid/widget/TextView;

    .line 650
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->tv_choose_server_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->airplayChooseServerTV:Landroid/widget/TextView;

    .line 651
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->tv_enter_password:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->airplayEnterPasswordTV:Landroid/widget/TextView;

    return-void
.end method

.method private getShareLaptopViewsID()V
    .locals 2

    .line 623
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->tv_share_url:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareURLTV:Landroid/widget/TextView;

    .line 624
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->tv_share_browser_meeting_id_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareBrowserMeetingIDContentTV:Landroid/widget/TextView;

    .line 625
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->share_browser_sharing_password_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareBrowserSharingPasswordLayout:Landroid/view/View;

    .line 626
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->tv_share_browser_sharing_password_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareBrowserSharingPasswordContentTV:Landroid/widget/TextView;

    .line 628
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->share_zoom_client_meeting_id_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareDesktopMeetingIDLayout:Landroid/view/View;

    .line 629
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->tv_share_zoom_client_sharing_password_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareDesktopSharingPasscodeLayout:Landroid/view/View;

    .line 630
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->share_zoom_client_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareDesktopMainLayout:Landroid/view/View;

    .line 631
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->tv_share_screen:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareDesktopShareScreen:Landroid/widget/TextView;

    .line 632
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->share_zoom_client_sharing_key_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareDesktopSharingKeyLayout:Landroid/view/View;

    .line 633
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->tv_share_zoom_client_sharing_key_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareDesktopSharingKeyContentTV:Landroid/widget/TextView;

    .line 634
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->tv_share_zoom_client_meeting_id_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareDesktopMeetingIDContentTV:Landroid/widget/TextView;

    .line 635
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->tv_share_zoom_client_sharing_password_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareDesktopSharingPasscodeLayout:Landroid/view/View;

    .line 636
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->tv_share_zoom_client_sharing_password_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareDesktopSharingPasscodeContentTV:Landroid/widget/TextView;

    .line 638
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->ll_share_hdmi_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareHDMIMainLayout:Landroid/view/View;

    .line 639
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->share_hdmi_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareHDMIDivider:Landroid/view/View;

    .line 640
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->tv_use_hdmi:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->useHDMITV:Landroid/widget/TextView;

    .line 641
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->tv_currently_in_sharing:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->currentlyInSharingTV:Landroid/widget/TextView;

    .line 642
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->ll_start_sharing_hdmi_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->startSharingHDMILayout:Landroid/view/View;

    .line 643
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->btn_start_sharing_hdmi:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->startSharingHDMIBtn:Landroid/widget/Button;

    .line 644
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->startSharingHDMIBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private indexOfSharingType(Lus/zoom/zrc/share_camera/model/ZRCSharingType;)I
    .locals 1

    .line 884
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->navigationSegments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method private initCommonViews()V
    .locals 0

    .line 548
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getLayoutsID()V

    .line 549
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->alignWbcAndLocalViewCenter()V

    .line 550
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getShareLaptopViewsID()V

    .line 551
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getShareIOSViewsID()V

    .line 552
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getChangeContentID()V

    .line 553
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->findMultiShareViews()V

    return-void
.end method

.method private initLayout()V
    .locals 1

    .line 526
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->initCommonViews()V

    .line 528
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->initPortControlLayout()V

    .line 529
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->initRoomName()V

    .line 530
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->setupNavigationBar()V

    .line 531
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->setupShareCameraView()V

    .line 532
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->setupShareWbCameraView()V

    .line 533
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->switchView()V

    .line 534
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->setUsedForLocalPresentation()V

    .line 535
    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    if-eqz v0, :cond_0

    .line 536
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onRoomInfoChanged()V

    .line 537
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onDetermineToShowSpeakerVolumeControl()V

    .line 538
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->setupSpeakerVolumeControlView()V

    .line 539
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onSpeakerVolumeControlStatusChanged()V

    goto :goto_0

    .line 541
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onSwitchableCameraListChanged()V

    .line 542
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onCameraSharingStatusChanged()V

    :goto_0
    return-void
.end method

.method private initPortControlLayout()V
    .locals 2

    .line 655
    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isTablet:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->portControlLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 658
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->portControlLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private initRoomName()V
    .locals 2

    .line 759
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->tv_room_name_main:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->roomNameMainTV:Landroid/widget/TextView;

    .line 760
    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isTablet:Z

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->roomNameMainTV:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 763
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->roomNameMainTV:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private initState(Lus/zoom/zrc/share_camera/model/ZRCSharingType;IZZ)V
    .locals 0

    .line 2199
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->setSharingType(Lus/zoom/zrc/share_camera/model/ZRCSharingType;)V

    .line 2200
    iput-boolean p3, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->canBeAutoDismissed:Z

    .line 2201
    iput-boolean p4, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    return-void
.end method

.method private instructionDisplay2SharingType(I)Lus/zoom/zrc/share_camera/model/ZRCSharingType;
    .locals 2

    .line 2245
    sget-object v0, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_Unknown:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 2247
    sget-object v0, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_iOS:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 2249
    sget-object v0, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_Desktop:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 2251
    sget-object v0, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_WhiteboardCamera:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    :cond_2
    :goto_0
    return-object v0
.end method

.method private isIOSSharingEnabled()Z
    .locals 1

    .line 2214
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isAirhostDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2215
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isIOSSharingDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPresentationDisplayed(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)Z
    .locals 1

    .line 2256
    sget-object v0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;

    if-eqz p0, :cond_0

    .line 2257
    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isShareDualCameraSupported()Z
    .locals 1

    .line 2219
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isShareDualCameraSupported()Z

    move-result v0

    return v0
.end method

.method private isWbcSharingAvailable()Z
    .locals 1

    .line 2209
    invoke-static {}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->getDefault()Lus/zoom/zrc/utils/WhiteboardCameraHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->isWhiteboardCameraEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2210
    invoke-static {}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->getDefault()Lus/zoom/zrc/utils/WhiteboardCameraHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->isWhiteboardCameraPaired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onCallOutNumberInCallingChanged()V
    .locals 2

    .line 1987
    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    if-eqz v0, :cond_1

    .line 1988
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getCallOutNumberInCalling()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1989
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getPstnCallOutStatus()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    .line 1992
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->setupLocalPresentationRightBarButtons()V

    :cond_1
    return-void
.end method

.method private onCameraSharingStatusChanged()V
    .locals 3

    .line 2079
    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    if-eqz v0, :cond_0

    return-void

    .line 2082
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsShareCamera()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2085
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getCameraSharingStatus()Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    move-result-object v0

    .line 2086
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->isSharing()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->canBeAutoDismissed:Z

    .line 2087
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getSharingStatus()Lus/zoom/zrcsdk/model/ZRCSharingStatus;

    move-result-object v1

    invoke-direct {p0, v1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->canStopSharing(Lus/zoom/zrcsdk/model/ZRCSharingStatus;)Z

    move-result v1

    invoke-direct {p0, v1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->showStopSharingButton(Z)V

    .line 2088
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->isSharing()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->isCanBeControlled()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v2}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->showCameraControlButton(Z)V

    .line 2089
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->refreshCameraList()V

    .line 2091
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->isSharing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2092
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->camerasAdapter:Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter;

    invoke-virtual {v0}, Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter;->querySelectedShareCameraPosition()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_3

    .line 2094
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->sharedCamerasListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    :cond_3
    return-void
.end method

.method private onChangeContent()V
    .locals 1

    .line 1464
    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isTablet:Z

    if-eqz v0, :cond_0

    .line 1465
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V

    goto :goto_0

    .line 1467
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V

    :goto_0
    return-void
.end method

.method private onControlSharingCamera()V
    .locals 4

    .line 1640
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "camera control button is tapped"

    const/4 v2, 0x0

    .line 1645
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1647
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1648
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/view/MeetingMainControllerFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1649
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1650
    check-cast v0, Lus/zoom/zrc/view/MeetingMainControllerFragment;

    .line 1653
    new-instance v1, Lus/zoom/zrc/camera_control/model/CameraShareData;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getCameraSharingStatus()Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;->SHARE:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    invoke-direct {v1, v2, v3}, Lus/zoom/zrc/camera_control/model/CameraShareData;-><init>(Ljava/lang/String;Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;)V

    .line 1654
    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->startCameraControlFragment(Lus/zoom/zrc/camera_control/model/CameraShareData;)V

    goto :goto_0

    .line 1657
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1658
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1659
    check-cast v0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;

    .line 1662
    new-instance v1, Lus/zoom/zrc/camera_control/model/CameraShareData;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getCameraSharingStatus()Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;->SHARE:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    invoke-direct {v1, v2, v3}, Lus/zoom/zrc/camera_control/model/CameraShareData;-><init>(Ljava/lang/String;Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;)V

    .line 1663
    invoke-virtual {v0, v1}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->startCameraControlFragment(Lus/zoom/zrc/camera_control/model/CameraShareData;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onCustomHDMILabelChanged()V
    .locals 5

    .line 2101
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getCustomHDMILabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    .line 2102
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->useHDMITV:Landroid/widget/TextView;

    sget v3, Lus/zoom/zrcbox/R$string;->share_hdmi_title:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrc/model/Model;->getCustomHDMILabel()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {p0, v3, v2}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2104
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->useHDMITV:Landroid/widget/TextView;

    sget v3, Lus/zoom/zrcbox/R$string;->share_hdmi_title:I

    new-array v2, v2, [Ljava/lang/Object;

    sget v4, Lus/zoom/zrcbox/R$string;->sharing_type_hdmi:I

    invoke-virtual {p0, v4}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {p0, v3, v2}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private onDecreaseSpeakerVolume()V
    .locals 6

    .line 1622
    invoke-static {}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->getInstance()Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->decreaseVolume()V

    .line 1623
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1624
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->decreaseVolumeImageView:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$string;->zrc_accessibility_speaker_volume_percent:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->speakerVolumeControlSeekBar:Landroid/widget/SeekBar;

    .line 1626
    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    iget-object v5, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->speakerVolumeControlSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getMax()I

    move-result v5

    div-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1624
    invoke-static {v0, v1}, Lus/zoom/androidlib/util/AccessibilityUtil;->announceForAccessibilityCompat(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private onDetermineToShowSpeakerVolumeControl()V
    .locals 4

    .line 955
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->ll_speak_volume_control:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->speakerVolumeControlLayout:Landroid/view/View;

    .line 956
    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    if-nez v0, :cond_0

    .line 957
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->speakerVolumeControlLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 959
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSharingStatus()Lus/zoom/zrcsdk/model/ZRCSharingStatus;

    move-result-object v0

    .line 960
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getAirPlayBlackMagicStatus()Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;

    move-result-object v1

    .line 961
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSharingStatus;->isSending()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 962
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSharingStatus;->isReceiving()Z

    move-result v0

    if-nez v0, :cond_2

    .line 963
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isAirHostClientConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 964
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isSharingBlackMagic()Z

    move-result v0

    if-nez v0, :cond_2

    .line 965
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isDirectPresentationConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 966
    :goto_1
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->speakerVolumeControlLayout:Landroid/view/View;

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x4

    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method private onDone()V
    .locals 3

    const-string v0, "Done/Dismiss button is tapped."

    const/4 v1, 0x0

    .line 1430
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1431
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Lus/zoom/zrc/model/Model;->showSharingInstruction(ZZZI)V

    .line 1432
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->dismiss()V

    return-void
.end method

.method private onEnterSipCallInMeeting()V
    .locals 2

    .line 1971
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Lus/zoom/zrc/model/Model;->showSharingInstruction(ZZZI)V

    .line 1972
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->safeDismiss()V

    return-void
.end method

.method private onEnterSipCallInPresentation()V
    .locals 2

    .line 1967
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->showSipCall(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/String;)V

    return-void
.end method

.method private onEnterState(II)V
    .locals 0

    const/4 p2, 0x7

    if-ne p1, p2, :cond_2

    .line 1830
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->dismissWaitingDialog()V

    .line 1831
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getMeetingType()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 1832
    iget-boolean p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isSwitching:Z

    if-eqz p1, :cond_1

    .line 1833
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->sharingType:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    sget-object p2, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_Desktop:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->sharingType:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    sget-object p2, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_WhiteboardCamera:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    if-eq p1, p2, :cond_0

    .line 1835
    sget-object p1, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_Desktop:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->sharingType:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    .line 1838
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->switchView()V

    const/4 p1, 0x0

    .line 1839
    iput-boolean p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isSwitching:Z

    .line 1842
    :cond_1
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->updateChangeContentView()V

    :cond_2
    return-void
.end method

.method private onExitMeetingResult(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2187
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->showWaitingDialog()V

    :cond_0
    return-void
.end method

.method private onFailedToLaunchSharingMeeting()V
    .locals 6

    .line 1742
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    .line 1743
    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, ""

    .line 1748
    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getMeetingType()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 1749
    sget v1, Lus/zoom/zrcbox/R$string;->failed_to_start_meeting:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1751
    :cond_1
    iget-boolean v2, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isSwitching:Z

    if-eqz v2, :cond_2

    .line 1752
    sget v1, Lus/zoom/zrcbox/R$string;->failed_to_switch:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1753
    :cond_2
    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getCallOutNumberInCalling()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1754
    sget v1, Lus/zoom/zrcbox/R$string;->call_failed:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1755
    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getCallOutNumberInCalling()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lus/zoom/zrc/model/Model;->callOutPSTNUser(Ljava/lang/String;Z)Z

    :cond_3
    :goto_0
    const-string v2, "launch sharing meeting failed."

    const/4 v4, 0x0

    .line 1758
    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v5}, Lus/zoom/zrcsdk/util/ZRCLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1759
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 1760
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1762
    :cond_4
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->dismissWaitingDialog()V

    .line 1763
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->switchView()V

    .line 1764
    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAirPlayBlackMagicStatus()Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->sharingType:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    sget-object v2, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_iOS:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    if-ne v1, v2, :cond_5

    const/4 v3, 0x2

    :cond_5
    invoke-virtual {v0, v3}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->setInstructionDisplayState(I)V

    .line 1769
    iput-boolean v4, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isSwitching:Z

    return-void

    :cond_6
    :goto_1
    return-void
.end method

.method private onHandleZMDeviceOperationResult(Ljava/lang/Object;)V
    .locals 1

    .line 325
    instance-of v0, p1, Lcom/google/common/collect/ImmutableMap;

    if-nez v0, :cond_0

    return-void

    .line 329
    :cond_0
    check-cast p1, Lcom/google/common/collect/ImmutableMap;

    const-string v0, "result"

    .line 330
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "action_type"

    .line 334
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 337
    :cond_2
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->showWbcStateConnecting()V

    :goto_0
    return-void
.end method

.method private onIncreaseSpeakerVolume()V
    .locals 6

    .line 1631
    invoke-static {}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->getInstance()Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->increaseVolume()V

    .line 1632
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1633
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->increaseVolumeImageView:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$string;->zrc_accessibility_speaker_volume_percent:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->speakerVolumeControlSeekBar:Landroid/widget/SeekBar;

    .line 1635
    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    iget-object v5, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->speakerVolumeControlSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getMax()I

    move-result v5

    div-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1633
    invoke-static {v0, v1}, Lus/zoom/androidlib/util/AccessibilityUtil;->announceForAccessibilityCompat(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private onLaunchSharingMeetingResult(ZLjava/lang/String;ZI)V
    .locals 0

    if-nez p1, :cond_0

    .line 2150
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->dismissWaitingDialog()V

    return-void

    .line 2154
    :cond_0
    invoke-static {p2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_3

    const/4 p1, 0x1

    if-ne p4, p1, :cond_2

    .line 2160
    iput-boolean p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isSwitching:Z

    .line 2161
    sget-object p1, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_Desktop:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->sharingType:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    .line 2162
    sget p1, Lus/zoom/zrcbox/R$string;->switching:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->showWaitingDialog(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x3

    if-ne p4, p2, :cond_4

    .line 2164
    iput-boolean p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isSwitching:Z

    .line 2165
    sget-object p1, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_WhiteboardCamera:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->sharingType:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    .line 2166
    sget p1, Lus/zoom/zrcbox/R$string;->switching:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->showWaitingDialog(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2170
    :cond_3
    sget p1, Lus/zoom/zrcbox/R$string;->starting_meeting:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->showWaitingDialog(Ljava/lang/CharSequence;)V

    .line 2173
    :cond_4
    :goto_0
    iget-boolean p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    .line 2174
    iput-boolean p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->canBeAutoDismissed:Z

    :cond_5
    return-void
.end method

.method private onMeeting()V
    .locals 4

    const-string v0, "start meeting button is tapped."

    const/4 v1, 0x0

    .line 1436
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1438
    iput-boolean v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->canBeAutoDismissed:Z

    .line 1440
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    .line 1441
    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    const/16 v0, 0x1e

    .line 1444
    invoke-direct {p0, v1, v0, v1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->startSharingMeeting(III)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    .line 1446
    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->setMeetingType(I)V

    .line 1447
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->updateMeetingTypeInMeetingInfo()V

    const/4 v2, 0x1

    .line 1448
    invoke-virtual {v0, v1, v2, v2, v1}, Lus/zoom/zrc/model/Model;->showSharingInstruction(ZZZI)V

    .line 1450
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/UserEvent;->SwitchToNormalMeeting:Lus/zoom/zrc/base/notification/UserEvent;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onMultiShare()V
    .locals 5

    .line 1583
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCPinUserManager;->getMeetingShareSettings()Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;->isMultiShare()Z

    move-result v0

    .line 1584
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->enableMultiShareSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    invoke-virtual {v1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->isChecked()Z

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "set multi share enable:%s"

    const/4 v2, 0x1

    .line 1588
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1589
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ConfApp;->setMeetingShareSetting(Z)I

    return-void
.end method

.method private onOptimizeVideoSharing()V
    .locals 4

    .line 1571
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getGenericSettings()Lus/zoom/zrcsdk/model/ZRCGenericSettings;

    move-result-object v0

    .line 1573
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCGenericSettings;->isVideoSharingOptimized()Z

    move-result v0

    .line 1574
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->optimizeVideoSharingSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    invoke-virtual {v1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->isChecked()Z

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 1578
    :cond_0
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ConfApp;->optimizeVideoSharing(Z)I

    const-string v0, "turning optimizeVideoSharing %s"

    const/4 v2, 0x1

    .line 1579
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const-string v1, "on"

    goto :goto_0

    :cond_1
    const-string v1, "off"

    :goto_0
    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private onPSTNCallOutResult(ZZZ)V
    .locals 0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 2193
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    sget p2, Lus/zoom/zrcbox/R$string;->local_share:I

    invoke-virtual {p0, p2}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->showPstnCall(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onParticipantListChanged()V
    .locals 0

    .line 1976
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->updateChangeContentView()V

    .line 1977
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onUpdateLocalPresentationBarButtons()V

    return-void
.end method

.method private onPhoneClicked()V
    .locals 2

    const-string v0, "phone button is tapped"

    const/4 v1, 0x0

    .line 1547
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1548
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1551
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->local_share:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/String;)V

    return-void
.end method

.method private onRoomInfoChanged()V
    .locals 2

    .line 1961
    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isTablet:Z

    if-eqz v0, :cond_0

    .line 1962
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->roomNameMainTV:Landroid/widget/TextView;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getDisplayRoomName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private onSelectedWhiteboardCameraChanged()V
    .locals 6

    .line 1920
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSelectedWhiteboardCamera()Lus/zoom/zrcsdk/model/ZMDeviceItem;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1921
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->sharingType:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    sget-object v1, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_Desktop:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->sharingType:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    sget-object v1, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_iOS:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 1925
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->sharingType:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    sget-object v1, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_WhiteboardCamera:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    if-ne v0, v1, :cond_6

    .line 1926
    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1927
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_6

    .line 1928
    sget-object v0, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_Desktop:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->sharingType:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    .line 1929
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v2, v1}, Lus/zoom/zrc/model/Model;->showSharingInstruction(ZZZI)V

    .line 1931
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->setupNavigationSegment()V

    .line 1932
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->switchView()V

    goto :goto_2

    .line 1935
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getWhiteboardCameraInfo()Lus/zoom/zrcsdk/model/ZMDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    goto :goto_0

    .line 1936
    :cond_2
    invoke-static {}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->getDefault()Lus/zoom/zrc/utils/WhiteboardCameraHelper;

    move-result-object v3

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZMDeviceInfo;->getZmd_item()Lus/zoom/zrcsdk/model/ZMDeviceItem;

    move-result-object v0

    invoke-virtual {v3, v0}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->getWbCameraDisplayName(Lus/zoom/zrcsdk/model/ZMDeviceItem;)Ljava/lang/String;

    move-result-object v0

    .line 1937
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lus/zoom/zrcbox/R$string;->wbc_disconnected:I

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-virtual {p0, v4, v5}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1939
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Lus/zoom/zrc/model/Model;->showSharingInstruction(ZZZI)V

    .line 1940
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->dismiss()V

    goto :goto_2

    .line 1923
    :cond_3
    :goto_1
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->setupNavigationSegment()V

    .line 1924
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->switchView()V

    goto :goto_2

    .line 1946
    :cond_4
    sget-object v0, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_WhiteboardCamera:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    invoke-direct {p0, v0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->indexOfSharingType(Lus/zoom/zrc/share_camera/model/ZRCSharingType;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 1947
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->setupNavigationSegment()V

    .line 1949
    :cond_5
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->switchView()V

    .line 1950
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->updateShareWbCameraView()V

    :cond_6
    :goto_2
    return-void
.end method

.method private onShareCameraResult(Z)V
    .locals 1

    .line 1955
    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    if-nez v0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    .line 1956
    iput-boolean p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->canBeAutoDismissed:Z

    :cond_0
    return-void
.end method

.method private onSharingStatusChangedFrom(Lus/zoom/zrcsdk/model/ZRCSharingStatus;Lus/zoom/zrcsdk/model/ZRCSharingStatus;)V
    .locals 3

    .line 1870
    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    if-eqz v0, :cond_0

    .line 1871
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onDetermineToShowSpeakerVolumeControl()V

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_4

    .line 1874
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCSharingStatus;->isReceiving()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCSharingStatus;->isReceiving()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1875
    :goto_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCSharingStatus;->isSending()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCSharingStatus;->isSending()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    .line 1877
    :cond_3
    iget-boolean p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->canBeAutoDismissed:Z

    if-eqz p1, :cond_4

    .line 1878
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1, v2, v2, v2, v2}, Lus/zoom/zrc/model/Model;->showSharingInstruction(ZZZI)V

    .line 1879
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->safeDismiss()V

    .line 1883
    :cond_4
    invoke-direct {p0, p2}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->canStopSharing(Lus/zoom/zrcsdk/model/ZRCSharingStatus;)Z

    move-result p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->showStopSharingButton(Z)V

    :goto_2
    return-void
.end method

.method private onShowSharingInstructionResult(ZZZZ)V
    .locals 0

    .line 2109
    iget-boolean p3, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    if-eqz p4, :cond_2

    const/4 p1, 0x2

    .line 2119
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/Model;->getMeetingStatus()I

    move-result p2

    if-ne p1, p2, :cond_4

    .line 2121
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lus/zoom/zrc/model/Model;->setMeetingType(I)V

    .line 2122
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->updateMeetingTypeInMeetingInfo()V

    .line 2123
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p1

    sget-object p2, Lus/zoom/zrc/base/notification/UserEvent;->SwitchToNormalMeeting:Lus/zoom/zrc/base/notification/UserEvent;

    invoke-virtual {p1, p2}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 2130
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getAirPlayBlackMagicStatus()Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->getInstructionDisplayState()I

    move-result p1

    .line 2131
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->instructionDisplay2SharingType(I)Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    move-result-object p1

    .line 2132
    iget-object p2, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->sharingType:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    if-eq p1, p2, :cond_4

    .line 2133
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->sharingType:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    .line 2134
    iget-object p2, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->tabBar:Lus/zoom/zrc/view/TabBar;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lus/zoom/zrc/view/TabBar;->setOnSelectedTabListener(Lus/zoom/zrc/view/TabBar$OnSelectedTabListener;)V

    .line 2135
    iget-object p2, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->tabBar:Lus/zoom/zrc/view/TabBar;

    invoke-direct {p0, p1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->indexOfSharingType(Lus/zoom/zrc/share_camera/model/ZRCSharingType;)I

    move-result p1

    invoke-virtual {p2, p1}, Lus/zoom/zrc/view/TabBar;->selectTabByIndex(I)V

    .line 2136
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->switchView()V

    .line 2137
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->tabBar:Lus/zoom/zrc/view/TabBar;

    invoke-virtual {p1, p0}, Lus/zoom/zrc/view/TabBar;->setOnSelectedTabListener(Lus/zoom/zrc/view/TabBar$OnSelectedTabListener;)V

    goto :goto_0

    .line 2140
    :cond_3
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->dismiss()V

    .line 2141
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/SipCallInfoList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 2142
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/phonecall/SipPhoneCallActivity;->show(Landroid/content/Context;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private onSipCallInfosChange()V
    .locals 1

    .line 1910
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onUpdateLocalPresentationBarButtons()V

    .line 1911
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    .line 1912
    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->hasSingleOutCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1913
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->dismissAlertStopSharingInPhoneCall()V

    :cond_0
    return-void
.end method

.method private onSpeakerVolumeControlStatusChanged()V
    .locals 4

    .line 2010
    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    if-eqz v0, :cond_2

    .line 2012
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isSettingsLocked()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isSpeakerVolumeControlLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2014
    :goto_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 2015
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->isIs_speaker_volume_adjustable()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 2018
    :cond_1
    invoke-direct {p0, v2, v0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->setSpeakerVolumeControlEnabled(ZZ)V

    :cond_2
    return-void
.end method

.method private onStartSharingMeetingNotification(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 2181
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->dismissWaitingDialog()V

    :cond_0
    return-void
.end method

.method private onStartWbcSharingBtnClicked()V
    .locals 2

    const-string v0, "start Whiteboard Camera button is tapped"

    const/4 v1, 0x0

    .line 1565
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1566
    invoke-static {}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->getDefault()Lus/zoom/zrc/utils/WhiteboardCameraHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->startShare()V

    .line 1567
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->showWbcStateConnecting()V

    return-void
.end method

.method private onStopPresentationClicked()V
    .locals 4

    const-string v0, "stop presentation button is tapped."

    const/4 v1, 0x0

    .line 1534
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1535
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->hasSingleOutCall()Z

    move-result v0

    .line 1536
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getCallOutNumberInCalling()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 1537
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->hasPurePhoneUser()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v0, :cond_3

    if-eqz v2, :cond_2

    goto :goto_2

    .line 1542
    :cond_2
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->processStopLocalPresentation()V

    goto :goto_4

    :cond_3
    :goto_2
    const-string v2, "has %s phone connected, show confirm dialog."

    .line 1539
    new-array v3, v3, [Ljava/lang/Object;

    if-eqz v0, :cond_4

    const-string v0, "SIP"

    goto :goto_3

    :cond_4
    const-string v0, "PSTN"

    :goto_3
    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1540
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->alertStopSharingInPhoneCall()V

    :goto_4
    return-void
.end method

.method private onStopSharingButtonTapped(Lus/zoom/zrc/model/ZRCShareStopType;)V
    .locals 3

    .line 1387
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getLocalViewStatus()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1388
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getZRWSharingStatus()Lus/zoom/zrcsdk/model/ZRWSharingStatus;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRWSharingStatus;->isSharing()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "local view: stop zrw sharing button is tapped."

    .line 1389
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1390
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ConfApp;->stopZRWSharing()I

    .line 1392
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getAirPlayBlackMagicStatus()Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isSharingBlackMagic()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "local view: stop HDMI sharing button is tapped."

    .line 1393
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1394
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    invoke-virtual {p1, v1}, Lus/zoom/zrcsdk/ConfApp;->shareBlackMagic(Z)I

    :cond_1
    return-void

    .line 1398
    :cond_2
    sget-object v0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$13;->$SwitchMap$us$zoom$zrc$model$ZRCShareStopType:[I

    invoke-virtual {p1}, Lus/zoom/zrc/model/ZRCShareStopType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "stop sharing button is tapped."

    .line 1420
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1421
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ConfApp;->stopSharing()I

    goto :goto_0

    :pswitch_1
    const-string p1, "stop wbcamera sharing button is tapped."

    .line 1416
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1417
    invoke-static {}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->getDefault()Lus/zoom/zrc/utils/WhiteboardCameraHelper;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->stopShare()V

    goto :goto_0

    :pswitch_2
    const-string p1, "stop zrw sharing button is tapped."

    .line 1411
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1412
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ConfApp;->stopZRWSharing()I

    goto :goto_0

    :pswitch_3
    const-string p1, "stop camera:%s sharing button is tapped."

    const/4 v0, 0x1

    .line 1405
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getCameraSharingStatus()Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1406
    invoke-direct {p0, v1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->showCameraControlButton(Z)V

    .line 1407
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v1, v0}, Lus/zoom/zrcsdk/ConfApp;->shareCamera(ZLjava/lang/String;)I

    goto :goto_0

    :pswitch_4
    const-string p1, "stop HDMI sharing button is tapped."

    .line 1400
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1401
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    invoke-virtual {p1, v1}, Lus/zoom/zrcsdk/ConfApp;->shareBlackMagic(Z)I

    :goto_0
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

.method private onSwitchableCameraListChanged()V
    .locals 2

    .line 2048
    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    if-eqz v0, :cond_0

    return-void

    .line 2051
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsShareCamera()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2054
    :cond_1
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isShareDualCameraSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2055
    sget-object v0, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_Camera:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    invoke-direct {p0, v0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->indexOfSharingType(Lus/zoom/zrc/share_camera/model/ZRCSharingType;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 2056
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->setupNavigationSegment()V

    .line 2058
    :cond_2
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->refreshCameraList()V

    goto :goto_0

    .line 2061
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->sharingType:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    sget-object v1, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_Camera:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    if-ne v0, v1, :cond_4

    .line 2062
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->safeDismiss()V

    goto :goto_0

    .line 2064
    :cond_4
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->setupNavigationSegment()V

    .line 2065
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->switchView()V

    :goto_0
    return-void
.end method

.method private onTurnOnSharingButtonClicked()V
    .locals 2

    .line 1555
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAirPlayBlackMagicStatus()Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isSharingBlackMagic()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Black Magic Sharing is turned on."

    const/4 v1, 0x0

    .line 1560
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1561
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ConfApp;->shareBlackMagic(Z)I

    return-void
.end method

.method private onUpdateLocalPresentationBarButtons()V
    .locals 1

    .line 1981
    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    if-eqz v0, :cond_0

    .line 1982
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->setupLocalPresentationRightBarButtons()V

    :cond_0
    return-void
.end method

.method private onUpdateMultiShareSwitchEnable()V
    .locals 3

    .line 1808
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->enableMultiShareSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    if-eqz v0, :cond_2

    .line 1809
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->isPairedWithoutLogin()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1810
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
    if-eqz v0, :cond_1

    .line 1811
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->amIHostOrCoHost()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 1812
    :goto_1
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->enableMultiShareSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method private onWhiteboardCameraInfoChanged()V
    .locals 3

    .line 1896
    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    if-nez v0, :cond_0

    .line 1897
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSharingStatus()Lus/zoom/zrcsdk/model/ZRCSharingStatus;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->canStopSharing(Lus/zoom/zrcsdk/model/ZRCSharingStatus;)Z

    move-result v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->showStopSharingButton(Z)V

    .line 1899
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getWhiteboardCameraInfo()Lus/zoom/zrcsdk/model/ZMDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1901
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZMDeviceInfo;->getZmd_reason_code()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_1

    .line 1902
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZMDeviceInfo;->getZmd_reason_code()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 1903
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->share_wbc_failed:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1904
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->showWbcStateNormal()V

    :cond_2
    return-void
.end method

.method private onZRWSharingStatusChanged()V
    .locals 1

    .line 1888
    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    if-eqz v0, :cond_0

    return-void

    .line 1891
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSharingStatus()Lus/zoom/zrcsdk/model/ZRCSharingStatus;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->canStopSharing(Lus/zoom/zrcsdk/model/ZRCSharingStatus;)Z

    move-result v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->showStopSharingButton(Z)V

    return-void
.end method

.method private processStopLocalPresentation()V
    .locals 6

    .line 1500
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    .line 1502
    invoke-static {}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getInstance()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1504
    invoke-virtual {v1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->checkHangupWhenStopSharing()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 1507
    :goto_0
    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v3

    const/4 v4, 0x6

    const/4 v5, 0x0

    if-eq v3, v4, :cond_3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x5

    if-ne v3, v2, :cond_5

    .line 1517
    invoke-virtual {v0, v5, v5, v5, v5}, Lus/zoom/zrc/model/Model;->showSharingInstruction(ZZZI)V

    if-nez v1, :cond_2

    .line 1520
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/phonecall/SipPhoneCallActivity;->show(Landroid/content/Context;)V

    .line 1523
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->dismiss()V

    .line 1524
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/UserEvent;->StopPresentation:Lus/zoom/zrc/base/notification/UserEvent;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;)V

    goto :goto_2

    .line 1509
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getCallOutNumberInCalling()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1510
    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getCallOutNumberInCalling()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/model/Model;->callOutPSTNUser(Ljava/lang/String;Z)Z

    .line 1512
    :cond_4
    invoke-virtual {v0, v2}, Lus/zoom/zrc/model/Model;->exitMeeting(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1513
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->showWaitingDialog()V

    .line 1527
    :cond_5
    :goto_2
    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    if-eqz v0, :cond_6

    .line 1528
    iput-boolean v5, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->canBeAutoDismissed:Z

    :cond_6
    return-void
.end method

.method private refreshCameraList()V
    .locals 2

    .line 2071
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->camerasAdapter:Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter;

    if-eqz v0, :cond_0

    .line 2072
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getCompatibleCameras()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter;->refreshCameraList(Ljava/util/List;)V

    goto :goto_0

    .line 2074
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->setupShareCameraListView()V

    :goto_0
    return-void
.end method

.method private register()V
    .locals 2

    .line 267
    invoke-static {}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->getInstance()Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->speakerVolumeControlSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->setupVolumeControl(Landroid/widget/SeekBar;)V

    .line 268
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoObserver;->getInstance()Lus/zoom/zrc/utils/DeviceInfoObserver;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->settingLockedListener:Lus/zoom/zrc/utils/DeviceInfoObserver$SettingLockerListener;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/utils/DeviceInfoObserver;->addSettingLockedListener(Lus/zoom/zrc/utils/DeviceInfoObserver$SettingLockerListener;)V

    return-void
.end method

.method private release()V
    .locals 2

    .line 272
    invoke-static {}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->getInstance()Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->speakerVolumeControlSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->releaseVolumeControl(Landroid/widget/SeekBar;)V

    .line 273
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoObserver;->getInstance()Lus/zoom/zrc/utils/DeviceInfoObserver;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->settingLockedListener:Lus/zoom/zrc/utils/DeviceInfoObserver$SettingLockerListener;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/utils/DeviceInfoObserver;->removeSettingLockedListener(Lus/zoom/zrc/utils/DeviceInfoObserver$SettingLockerListener;)V

    return-void
.end method

.method private setPartTextBold(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 2307
    :cond_0
    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 2310
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p3, v0

    .line 2311
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2312
    new-instance p2, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {p2, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v2, 0x12

    .line 2313
    invoke-virtual {v1, p2, v0, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2314
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setSharingType(Lus/zoom/zrc/share_camera/model/ZRCSharingType;)V
    .locals 2

    .line 2223
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->sharingType:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    if-ne v0, p1, :cond_0

    return-void

    .line 2226
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isIOSSharingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_iOS:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    if-ne p1, v0, :cond_1

    const-string v0, "failed to show sharing iPhone/iPad instruction, ios sharing is disabled."

    const/4 v1, 0x0

    .line 2227
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2228
    sget-object v0, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_Desktop:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->sharingType:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    .line 2230
    :cond_1
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->sharingType:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    return-void
.end method

.method private setSpeakerVolumeControlEnabled(ZZ)V
    .locals 3

    if-eqz p1, :cond_0

    .line 2024
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->speakerVolumeControlLayout:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 2026
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->speakerVolumeControlLayout:Landroid/view/View;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2029
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->increaseVolumeImageView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2030
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->decreaseVolumeImageView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2031
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->speakerVolumeControlSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 2033
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->speakerVolumeControlDescriptionTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2034
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->speakerVolumeControlDescriptionTextView:Landroid/widget/TextView;

    const v2, 0x3ee66666    # 0.45f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    if-nez p1, :cond_4

    .line 2037
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->speakerVolumeControlDescriptionTextView:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    sget v0, Lus/zoom/zrcbox/R$string;->volume_is_locked:I

    goto :goto_2

    :cond_2
    sget v0, Lus/zoom/zrcbox/R$string;->volume_is_not_adjustable:I

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2038
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->increaseVolumeImageView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2039
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->increaseVolumeImageView:Landroid/view/View;

    sget v0, Lus/zoom/zrcbox/R$string;->zrc_accessibility_speaker_volume_percent:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    if-eqz p2, :cond_3

    sget p2, Lus/zoom/zrcbox/R$string;->volume_is_locked:I

    goto :goto_3

    :cond_3
    sget p2, Lus/zoom/zrcbox/R$string;->volume_is_not_adjustable:I

    .line 2041
    :goto_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-virtual {p0, v0, v2}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 2039
    invoke-static {p1, p2}, Lus/zoom/androidlib/util/AccessibilityUtil;->announceForAccessibilityCompat(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method private setUsedForLocalPresentation()V
    .locals 5

    .line 663
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->rl_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 664
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v2, Lus/zoom/zrcbox/R$id;->ll_share_content:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareContentContainer:Landroid/widget/LinearLayout;

    .line 666
    iget-boolean v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    if-eqz v1, :cond_0

    .line 667
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$color;->zrc_black:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 668
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareContentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 669
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lus/zoom/zrcbox/R$dimen;->share_title_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 670
    iget-object v2, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareContentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 672
    iget-boolean v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isTablet:Z

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 673
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 674
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareContentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$drawable;->title_layout_top_round_shape_port:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 678
    :cond_0
    iget-boolean v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isTablet:Z

    if-eqz v1, :cond_1

    .line 679
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$color;->zrc_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 680
    sget v1, Lus/zoom/zrcbox/R$drawable;->title_layout_top_round_shape:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 681
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareContentContainer:Landroid/widget/LinearLayout;

    sget v1, Lus/zoom/zrcbox/R$drawable;->bottom_rounded_corner_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 683
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$color;->zrc_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 686
    :goto_0
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->findOptimizeVideoSharingViewsID()V

    .line 687
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->updateOptimizeVideoSharingView()V

    :cond_2
    :goto_1
    return-void
.end method

.method private setVideoSharingOptimized(Z)V
    .locals 1

    .line 1350
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->optimizeVideoSharingSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    if-nez v0, :cond_0

    return-void

    .line 1353
    :cond_0
    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setCheckedOnlyForUI(Z)V

    return-void
.end method

.method private setupBarButtonItems()V
    .locals 4

    .line 827
    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 828
    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isTablet:Z

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v2, Lus/zoom/zrcbox/R$id;->btn_stop_presentation:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->stopPresentationBtn:Landroid/view/View;

    .line 830
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->stopPresentationBtn:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$color;->stop_current_share_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 832
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v2, Lus/zoom/zrcbox/R$id;->btn_stop_presentation_port:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->stopPresentationBtn:Landroid/view/View;

    .line 834
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->stopPresentationBtn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 835
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->stopPresentationBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 836
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->setupLocalPresentationRightBarButtons()V

    goto :goto_2

    .line 838
    :cond_1
    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isTablet:Z

    if-eqz v0, :cond_2

    .line 839
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v2, Lus/zoom/zrcbox/R$id;->btn_done:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->dismissBtn:Landroid/view/View;

    .line 840
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->dismissBtn:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$color;->share_title_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 842
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v2, Lus/zoom/zrcbox/R$id;->btn_done_port:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->dismissBtn:Landroid/view/View;

    .line 843
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v2, Lus/zoom/zrcbox/R$id;->btn_done_port_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 844
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 846
    :goto_1
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->dismissBtn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 847
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->dismissBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    return-void
.end method

.method private setupCameraControlView()V
    .locals 2

    .line 1053
    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isTablet:Z

    if-eqz v0, :cond_0

    .line 1054
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->ll_camera_control:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->cameraControlLayout:Landroid/view/View;

    .line 1055
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->iv_camera_control:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->cameraControlButton:Landroid/view/View;

    goto :goto_0

    .line 1057
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->ll_camera_control_port:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->cameraControlLayout:Landroid/view/View;

    .line 1058
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->iv_camera_control_port:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->cameraControlButton:Landroid/view/View;

    .line 1061
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->cameraControlButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupLocalPresentationRightBarButtons()V
    .locals 7

    .line 768
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isStandaloneDigitalSignage()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 769
    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isTablet:Z

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->btn_phone:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->phoneBtn:Landroid/view/View;

    .line 771
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->phoneBtn:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 772
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v2, Lus/zoom/zrcbox/R$id;->btn_start_meeting:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->startMeetingBtn:Landroid/view/View;

    .line 773
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->startMeetingBtn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 775
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v2, Lus/zoom/zrcbox/R$id;->btn_phone_port:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->phoneBtn:Landroid/view/View;

    .line 776
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v2, Lus/zoom/zrcbox/R$id;->btn_start_meeting_port:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->startMeetingBtn:Landroid/view/View;

    .line 778
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v2, Lus/zoom/zrcbox/R$id;->labelPhone:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 779
    iget-object v2, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v3, Lus/zoom/zrcbox/R$id;->tv_start_meeting_port:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 781
    iget-object v3, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->phoneBtn:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 782
    iget-object v3, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->startMeetingBtn:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 784
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 785
    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_8

    .line 788
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    .line 789
    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v2

    .line 791
    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipService()Lus/zoom/zrcsdk/model/ZRCSipService;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsSipCallout()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 792
    :goto_0
    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getCallOutCountryCode()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isPstnCallInLocalPresentation()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 793
    :goto_1
    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v5

    invoke-virtual {v5}, Lus/zoom/zrc/model/SipCallInfoList;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v4

    if-nez v5, :cond_5

    .line 794
    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->hasPurePhoneUser()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getCallOutNumberInCalling()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v0, 0x1

    .line 795
    :goto_3
    iget-boolean v5, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isTablet:Z

    if-eqz v5, :cond_9

    .line 796
    iget-object v4, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v5, Lus/zoom/zrcbox/R$id;->btn_start_meeting:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->startMeetingBtn:Landroid/view/View;

    .line 797
    iget-object v4, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->startMeetingBtn:Landroid/view/View;

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lus/zoom/zrcbox/R$color;->share_title_text_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 799
    iget-object v4, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v5, Lus/zoom/zrcbox/R$id;->btn_phone:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->phoneBtn:Landroid/view/View;

    if-nez v3, :cond_7

    if-eqz v2, :cond_6

    goto :goto_4

    .line 808
    :cond_6
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->phoneBtn:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_7
    :goto_4
    if-eqz v0, :cond_8

    .line 802
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->phoneBtn:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$color;->zm_notification_background_green:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 804
    :cond_8
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->phoneBtn:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$color;->share_title_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 806
    :goto_5
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->phoneBtn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 811
    :cond_9
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v5, Lus/zoom/zrcbox/R$id;->btn_start_meeting_port:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->startMeetingBtn:Landroid/view/View;

    .line 812
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v5, Lus/zoom/zrcbox/R$id;->btn_phone_port:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->phoneBtn:Landroid/view/View;

    if-nez v3, :cond_b

    if-eqz v2, :cond_a

    goto :goto_6

    .line 817
    :cond_a
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->phoneBtn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_7

    .line 815
    :cond_b
    :goto_6
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->phoneBtn:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 820
    :goto_7
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->startMeetingBtn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 821
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->startMeetingBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 822
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->phoneBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_8
    return-void
.end method

.method private setupNavigationBar()V
    .locals 0

    .line 950
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->setupNavigationSegment()V

    .line 951
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->setupBarButtonItems()V

    return-void
.end method

.method private setupNavigationSegment()V
    .locals 7

    .line 888
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->tab_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/TabBar;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->tabBar:Lus/zoom/zrc/view/TabBar;

    .line 889
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->tabBar:Lus/zoom/zrc/view/TabBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/TabBar;->setOnSelectedTabListener(Lus/zoom/zrc/view/TabBar$OnSelectedTabListener;)V

    .line 891
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->tv_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 894
    iget-boolean v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    if-eqz v1, :cond_0

    .line 895
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->tabBar:Lus/zoom/zrc/view/TabBar;

    sget v2, Lus/zoom/zrcbox/R$color;->zrc_black:I

    sget v3, Lus/zoom/zrcbox/R$color;->zrc_white:I

    sget v4, Lus/zoom/zrcbox/R$color;->zrc_white:I

    sget v5, Lus/zoom/zrcbox/R$color;->zrc_black:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lus/zoom/zrc/view/TabBar;->setTabItemColors(IIII)V

    goto :goto_0

    .line 897
    :cond_0
    iget-boolean v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isTablet:Z

    if-eqz v1, :cond_1

    .line 898
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->tabBar:Lus/zoom/zrc/view/TabBar;

    sget v2, Lus/zoom/zrcbox/R$color;->zrc_bg:I

    sget v3, Lus/zoom/zrcbox/R$color;->share_title_text_color:I

    sget v4, Lus/zoom/zrcbox/R$color;->share_title_text_color:I

    sget v5, Lus/zoom/zrcbox/R$color;->zrc_bg:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lus/zoom/zrc/view/TabBar;->setTabItemColors(IIII)V

    goto :goto_0

    .line 900
    :cond_1
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->tabBar:Lus/zoom/zrc/view/TabBar;

    sget v2, Lus/zoom/zrcbox/R$color;->zrc_white:I

    sget v3, Lus/zoom/zrcbox/R$color;->zrc_black:I

    sget v4, Lus/zoom/zrcbox/R$color;->phone_share_tab_bg_selected:I

    sget v5, Lus/zoom/zrcbox/R$color;->zrc_white:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lus/zoom/zrc/view/TabBar;->setTabItemColors(IIII)V

    .line 904
    :goto_0
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->buildNavigationSegment()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->navigationSegments:Ljava/util/ArrayList;

    .line 906
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->updateTabBarAndWindow()V

    .line 908
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->navigationSegments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-le v1, v2, :cond_9

    .line 909
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 910
    iget-object v2, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->navigationSegments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    .line 911
    sget-object v6, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_Desktop:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    if-ne v5, v6, :cond_4

    .line 912
    iget-boolean v5, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isTablet:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    if-nez v5, :cond_3

    .line 913
    sget v5, Lus/zoom/zrcbox/R$string;->zrc_share_laptop_phone:I

    invoke-virtual {p0, v5}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 915
    :cond_3
    sget v5, Lus/zoom/zrcbox/R$string;->share_navigation_laptop:I

    invoke-virtual {p0, v5}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 917
    :cond_4
    sget-object v6, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_iOS:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    if-ne v5, v6, :cond_5

    .line 918
    sget v5, Lus/zoom/zrcbox/R$string;->share_navigation_ios:I

    invoke-virtual {p0, v5}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 919
    :cond_5
    sget-object v6, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_Camera:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    if-ne v5, v6, :cond_6

    .line 920
    sget v5, Lus/zoom/zrcbox/R$string;->share_navigation_camera:I

    invoke-virtual {p0, v5}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 921
    :cond_6
    sget-object v6, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_WhiteboardCamera:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    if-ne v5, v6, :cond_2

    .line 922
    sget v5, Lus/zoom/zrcbox/R$string;->whiteboard_camera:I

    invoke-virtual {p0, v5}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 925
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 926
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 927
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getCameraSharingStatus()Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->isSharing()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 928
    iget-object v2, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->tabBar:Lus/zoom/zrc/view/TabBar;

    const/4 v5, 0x2

    sget v6, Lus/zoom/zrcbox/R$dimen;->zrc_share_tab_text_size:I

    invoke-virtual {v2, v1, v5, v6}, Lus/zoom/zrc/view/TabBar;->addTabs([Ljava/lang/String;II)V

    goto :goto_2

    .line 930
    :cond_8
    iget-object v2, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->tabBar:Lus/zoom/zrc/view/TabBar;

    sget v5, Lus/zoom/zrcbox/R$dimen;->zrc_share_tab_text_size:I

    invoke-virtual {v2, v1, v4, v5}, Lus/zoom/zrc/view/TabBar;->addTabs([Ljava/lang/String;II)V

    .line 933
    :goto_2
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->tabBar:Lus/zoom/zrc/view/TabBar;

    invoke-virtual {v1, p0}, Lus/zoom/zrc/view/TabBar;->setOnSelectedTabListener(Lus/zoom/zrc/view/TabBar$OnSelectedTabListener;)V

    .line 934
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->tabBar:Lus/zoom/zrc/view/TabBar;

    invoke-virtual {v1, v4}, Lus/zoom/zrc/view/TabBar;->setVisibility(I)V

    .line 935
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 937
    :cond_9
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->tabBar:Lus/zoom/zrc/view/TabBar;

    invoke-virtual {v1, v3}, Lus/zoom/zrc/view/TabBar;->setVisibility(I)V

    .line 938
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 939
    iget-boolean v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    if-eqz v1, :cond_a

    .line 940
    sget v1, Lus/zoom/zrcbox/R$string;->local_share:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 941
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$color;->zrc_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 943
    :cond_a
    sget v1, Lus/zoom/zrcbox/R$string;->share_content:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 944
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$color;->share_title_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_3
    return-void
.end method

.method private setupShareCameraListView()V
    .locals 2

    .line 1015
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getCompatibleCameras()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "Camera List is empty, no camera detected."

    const/4 v1, 0x0

    .line 1016
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1020
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->sc_cameras_lv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->sharedCamerasListView:Landroid/widget/ListView;

    .line 1021
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->sharedCamerasListView:Landroid/widget/ListView;

    new-instance v1, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$8;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$8;-><init>(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1048
    new-instance v0, Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter;

    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getCompatibleCameras()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->camerasAdapter:Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter;

    .line 1049
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->sharedCamerasListView:Landroid/widget/ListView;

    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->camerasAdapter:Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private setupShareCameraView()V
    .locals 1

    .line 1319
    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    if-eqz v0, :cond_0

    return-void

    .line 1323
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->setupCameraControlView()V

    .line 1324
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->setupStopSharingLayout()V

    .line 1325
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->setupShareCameraListView()V

    return-void
.end method

.method private setupShareWbCameraView()V
    .locals 3

    .line 1305
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->share_wbcamera_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareWbCameraTitleTV:Landroid/widget/TextView;

    .line 1306
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->btn_wbc_start_sharing:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->startShareWbCameraBtn:Landroid/widget/TextView;

    .line 1307
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->wbc_staring_sharing_progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->startingShareProgressBar:Landroid/widget/ProgressBar;

    .line 1308
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->tv_wbc_in_sharing:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->currentInSharingWbcTV:Landroid/widget/TextView;

    .line 1309
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->wbc_control_hint:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->wbcControlHintTV:Landroid/widget/TextView;

    .line 1311
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isTablet:Z

    if-nez v0, :cond_0

    .line 1312
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->startShareWbCameraBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$drawable;->start_share_wbc_btn_bg_port:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1314
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->startShareWbCameraBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1315
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->updateShareWbCameraView()V

    return-void
.end method

.method private setupSpeakerVolumeControlView()V
    .locals 4

    .line 1997
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->iv_increase_volume:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->increaseVolumeImageView:Landroid/view/View;

    .line 1998
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->iv_decrease_volume:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->decreaseVolumeImageView:Landroid/view/View;

    .line 1999
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->increaseVolumeImageView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2000
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->decreaseVolumeImageView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2002
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->seek_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->speakerVolumeControlSeekBar:Landroid/widget/SeekBar;

    .line 2003
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$drawable;->meeting_duration_thumb:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2004
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->speakerVolumeControlSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0, v3}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 2006
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->tv_speaker_volume_control:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->speakerVolumeControlDescriptionTextView:Landroid/widget/TextView;

    return-void
.end method

.method private setupStopSharingLayout()V
    .locals 4

    .line 1065
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->ll_stop_sharing:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1066
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1067
    iget-boolean v2, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isTablet:Z

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 1068
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 1069
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    goto :goto_0

    .line 1071
    :cond_0
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 1072
    sget v2, Lus/zoom/zrcbox/R$id;->ll_camera_control_port:I

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    .line 1074
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1076
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSharingStatus()Lus/zoom/zrcsdk/model/ZRCSharingStatus;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->canStopSharing(Lus/zoom/zrcsdk/model/ZRCSharingStatus;)Z

    move-result v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->showStopSharingButton(Z)V

    return-void
.end method

.method private sharingTypeOfIndex(I)Lus/zoom/zrc/share_camera/model/ZRCSharingType;
    .locals 2

    .line 874
    sget-object v0, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_Unknown:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    .line 876
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->navigationSegments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 877
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->navigationSegments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    :cond_0
    return-object v0
.end method

.method private shouldShowMultiShareLayout()Z
    .locals 1

    .line 1824
    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    .line 1825
    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCPinUserManager;->shouldShowChangeContent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldShowStopMultiShareAlertDialog()Z
    .locals 3

    .line 1593
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCPinUserManager;->getMeetingShareSettings()Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;->isMultiShare()Z

    move-result v0

    .line 1594
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {v1}, Lus/zoom/zrc/model/ZRCPinUserManager;->getAllShareSources()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Lus/zoom/zrc/share_camera/model/ZRCSharingType;IZZ)V
    .locals 2

    .line 229
    sget-object v0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    invoke-direct {v0, p1, p2, p3, p4}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->initState(Lus/zoom/zrc/share_camera/model/ZRCSharingType;IZZ)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 237
    new-instance v0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;

    invoke-direct {v0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;-><init>()V

    .line 240
    :cond_1
    invoke-direct {v0, p1, p2, p3, p4}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->initState(Lus/zoom/zrc/share_camera/model/ZRCSharingType;IZZ)V

    .line 241
    sget-object p1, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Landroidx/fragment/app/DialogFragment;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->executePendingTransactions()V

    return-void
.end method

.method private showCameraControlButton(Z)V
    .locals 1

    .line 1080
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->cameraControlLayout:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 1084
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static showPresentation(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Lus/zoom/zrc/share_camera/model/ZRCSharingType;IZ)V
    .locals 1

    const/4 v0, 0x1

    .line 205
    invoke-static {p0, p1, p2, p3, v0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Lus/zoom/zrc/share_camera/model/ZRCSharingType;IZZ)V

    .line 207
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p0

    sget-object p1, Lus/zoom/zrc/base/notification/UserEvent;->ShowPresentation:Lus/zoom/zrc/base/notification/UserEvent;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;)V

    return-void
.end method

.method public static showShareContent(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V
    .locals 6

    .line 211
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getCameraSharingStatus()Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->isSharing()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 213
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getSelectedWhiteboardCamera()Lus/zoom/zrcsdk/model/ZMDeviceItem;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 214
    sget-object v0, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_Camera:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    sget-object v0, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_WhiteboardCamera:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    goto :goto_1

    :cond_2
    sget-object v0, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_Desktop:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    .line 219
    :goto_1
    sget-object v2, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_Desktop:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    if-ne v0, v2, :cond_3

    .line 220
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2, v4, v4, v3, v4}, Lus/zoom/zrc/model/Model;->showSharingInstruction(ZZZI)V

    goto :goto_2

    .line 221
    :cond_3
    sget-object v2, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_WhiteboardCamera:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    if-ne v0, v2, :cond_4

    .line 222
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v3, v3, v5}, Lus/zoom/zrc/model/Model;->showSharingInstruction(ZZZI)V

    .line 224
    :cond_4
    :goto_2
    invoke-static {p0, v0, v3, v1, v3}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Lus/zoom/zrc/share_camera/model/ZRCSharingType;IZZ)V

    return-void
.end method

.method private showShareInstruction(Lus/zoom/zrc/share_camera/model/ZRCSharingType;)V
    .locals 5

    .line 1095
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getLocalViewStatus()Z

    move-result v0

    .line 1097
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareWbCameraLayout:Landroid/view/View;

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-nez v0, :cond_0

    sget-object v4, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_WhiteboardCamera:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    if-ne p1, v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1102
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareLaptopLayout:Landroid/view/View;

    sget-object v4, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_Desktop:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    if-ne p1, v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/4 v4, 0x4

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1107
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareIOSLayout:Landroid/view/View;

    if-nez v0, :cond_2

    sget-object v4, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_iOS:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    if-ne p1, v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    const/4 v4, 0x4

    :goto_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1112
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareCameraLayout:Landroid/view/View;

    if-nez v0, :cond_3

    sget-object v4, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_Camera:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    if-ne p1, v4, :cond_3

    const/4 v2, 0x0

    :cond_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1117
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->localViewWarning:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    sget-object v0, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_Desktop:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    if-eq p1, v0, :cond_4

    goto :goto_3

    :cond_4
    const/16 v3, 0x8

    :goto_3
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1122
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->updateView()V

    return-void
.end method

.method private showStopMultiShareAlertDialog()V
    .locals 3

    .line 1599
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->multiShareStopDialog:Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1600
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->multiShareStopDialog:Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->dismiss()V

    .line 1602
    :cond_0
    new-instance v0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    invoke-direct {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->multiShareStopDialog:Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    .line 1603
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->multiShareStopDialog:Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    sget v1, Lus/zoom/zrcbox/R$string;->multi_share_stop_warning:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->setTitle(Ljava/lang/String;)V

    .line 1604
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->multiShareStopDialog:Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    sget v1, Lus/zoom/zrcbox/R$string;->zrc_continue:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$10;

    invoke-direct {v2, p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$10;-><init>(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1611
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->multiShareStopDialog:Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    sget v1, Lus/zoom/zrcbox/R$string;->cancel:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$11;

    invoke-direct {v2, p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$11;-><init>(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1617
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->multiShareStopDialog:Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->setCancelable(Z)V

    .line 1618
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->multiShareStopDialog:Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "alert_multi_share"

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showStopSharingButton(Lus/zoom/zrc/model/ZRCShareStopType;)V
    .locals 5

    .line 993
    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isTablet:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 994
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v3, Lus/zoom/zrcbox/R$id;->btn_stop_sharing_tablet:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->stopSharingBtn:Landroid/view/View;

    .line 995
    sget-object v0, Lus/zoom/zrc/model/ZRCShareStopType;->ZRCShareStopTypeNone:Lus/zoom/zrc/model/ZRCShareStopType;

    if-ne p1, v0, :cond_0

    .line 996
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->stopSharingBtn:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 998
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->stopSharingBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 999
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->stopSharingBtn:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 1002
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v3, Lus/zoom/zrcbox/R$id;->ll_stop_sharing_meeting_port:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1003
    iget-object v3, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v4, Lus/zoom/zrcbox/R$id;->btn_stop_sharing_meeting_port:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->stopSharingBtn:Landroid/view/View;

    .line 1004
    sget-object v3, Lus/zoom/zrc/model/ZRCShareStopType;->ZRCShareStopTypeNone:Lus/zoom/zrc/model/ZRCShareStopType;

    if-ne p1, v3, :cond_2

    .line 1005
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1007
    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1008
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->stopSharingBtn:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1011
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->stopSharingBtn:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showStopSharingButton(Z)V
    .locals 4

    .line 971
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAirPlayBlackMagicStatus()Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;

    move-result-object v0

    .line 972
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getCameraSharingStatus()Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    move-result-object v1

    .line 973
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getZRWSharingStatus()Lus/zoom/zrcsdk/model/ZRWSharingStatus;

    move-result-object v2

    .line 974
    invoke-static {}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->getDefault()Lus/zoom/zrc/utils/WhiteboardCameraHelper;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->isWhiteboardCameraSharing()Z

    move-result v3

    if-eqz p1, :cond_4

    .line 976
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isSharingBlackMagic()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 977
    sget-object p1, Lus/zoom/zrc/model/ZRCShareStopType;->ZRCShareStopTypeBlackMagic:Lus/zoom/zrc/model/ZRCShareStopType;

    invoke-direct {p0, p1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->showStopSharingButton(Lus/zoom/zrc/model/ZRCShareStopType;)V

    goto :goto_0

    .line 978
    :cond_0
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->isSharing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 979
    sget-object p1, Lus/zoom/zrc/model/ZRCShareStopType;->ZRCShareStopTypeCamera:Lus/zoom/zrc/model/ZRCShareStopType;

    invoke-direct {p0, p1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->showStopSharingButton(Lus/zoom/zrc/model/ZRCShareStopType;)V

    goto :goto_0

    .line 980
    :cond_1
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRWSharingStatus;->isSharing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 981
    sget-object p1, Lus/zoom/zrc/model/ZRCShareStopType;->ZRCShareStopTypeZRW:Lus/zoom/zrc/model/ZRCShareStopType;

    invoke-direct {p0, p1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->showStopSharingButton(Lus/zoom/zrc/model/ZRCShareStopType;)V

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 983
    sget-object p1, Lus/zoom/zrc/model/ZRCShareStopType;->ZRCShareStopTypeWhiteboardCamera:Lus/zoom/zrc/model/ZRCShareStopType;

    invoke-direct {p0, p1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->showStopSharingButton(Lus/zoom/zrc/model/ZRCShareStopType;)V

    goto :goto_0

    .line 985
    :cond_3
    sget-object p1, Lus/zoom/zrc/model/ZRCShareStopType;->ZRCShareStopTypeOther:Lus/zoom/zrc/model/ZRCShareStopType;

    invoke-direct {p0, p1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->showStopSharingButton(Lus/zoom/zrc/model/ZRCShareStopType;)V

    goto :goto_0

    .line 988
    :cond_4
    sget-object p1, Lus/zoom/zrc/model/ZRCShareStopType;->ZRCShareStopTypeNone:Lus/zoom/zrc/model/ZRCShareStopType;

    invoke-direct {p0, p1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->showStopSharingButton(Lus/zoom/zrc/model/ZRCShareStopType;)V

    :goto_0
    return-void
.end method

.method private showWbcStateConnecting()V
    .locals 2

    .line 2330
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->startShareWbCameraBtn:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2331
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->currentInSharingWbcTV:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2332
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->startingShareProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private showWbcStateNone()V
    .locals 2

    .line 2318
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->startShareWbCameraBtn:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2319
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->startingShareProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2320
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->currentInSharingWbcTV:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private showWbcStateNormal()V
    .locals 2

    .line 2324
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->startShareWbCameraBtn:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2325
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->startingShareProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2326
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->currentInSharingWbcTV:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private showWbcStateSharing()V
    .locals 2

    .line 2336
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->startShareWbCameraBtn:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2337
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->startingShareProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2338
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->currentInSharingWbcTV:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private startSharingMeeting(III)V
    .locals 4

    const-string v0, "trying to start sharing meeting, meetingType=%s, duration=%s, instructionType=%s"

    const/4 v1, 0x3

    .line 1733
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingType;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1734
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, p2, v1, p3}, Lus/zoom/zrc/model/Model;->launchSharingMeeting(IILjava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1735
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onFailedToLaunchSharingMeeting()V

    return-void

    .line 1738
    :cond_0
    iget-boolean p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isSwitching:Z

    if-eqz p1, :cond_1

    sget p1, Lus/zoom/zrcbox/R$string;->switching:I

    goto :goto_0

    :cond_1
    sget p1, Lus/zoom/zrcbox/R$string;->starting_meeting:I

    :goto_0
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->showWaitingDialog(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private switchView()V
    .locals 2

    .line 1088
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->tabBar:Lus/zoom/zrc/view/TabBar;

    invoke-virtual {v0}, Lus/zoom/zrc/view/TabBar;->getCurrentIndex()I

    move-result v0

    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->sharingType:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    invoke-direct {p0, v1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->indexOfSharingType(Lus/zoom/zrc/share_camera/model/ZRCSharingType;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1089
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->tabBar:Lus/zoom/zrc/view/TabBar;

    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->sharingType:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    invoke-direct {p0, v1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->indexOfSharingType(Lus/zoom/zrc/share_camera/model/ZRCSharingType;)I

    move-result v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/TabBar;->selectTabByIndex(I)V

    .line 1091
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->sharingType:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    invoke-direct {p0, v0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->showShareInstruction(Lus/zoom/zrc/share_camera/model/ZRCSharingType;)V

    return-void
.end method

.method private updateChangeContentView()V
    .locals 5

    .line 1786
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    .line 1787
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {v1}, Lus/zoom/zrc/model/ZRCPinUserManager;->getMeetingShareSettings()Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;->isMultiShare()Z

    move-result v1

    .line 1788
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsMultiShare()Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 1789
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingStatus()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 1790
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->enableMultiShareLayout:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1791
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onUpdateMultiShareSwitchEnable()V

    .line 1792
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->enableMultiShareSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setCheckedOnlyForUI(Z)V

    .line 1793
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCPinUserManager;->getAllShareSources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1794
    iget-object v4, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->changeContentCntTV:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1795
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->changeContentLayout:Landroid/view/View;

    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shouldShowMultiShareLayout()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1797
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->enableMultiShareLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1798
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->changeContentLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1800
    :goto_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->amIHostOrCoHost()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v1, :cond_3

    .line 1801
    :cond_2
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->dismissMultiShareAlertDialog()V

    .line 1804
    :cond_3
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->updateOptimizeVideoSharingView()V

    return-void
.end method

.method private updateMeetingTypeInMeetingInfo()V
    .locals 2

    .line 1455
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1456
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->setMeetingType(I)V

    .line 1458
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1459
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->setMeetingType(I)V

    :cond_1
    return-void
.end method

.method private updateOptimizeVideoSharingView()V
    .locals 5

    .line 1329
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->optimizeVideoSharingLayout:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1335
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCPinUserManager;->getMeetingShareSettings()Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;->isMultiShare()Z

    move-result v0

    .line 1337
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getGenericSettings()Lus/zoom/zrcsdk/model/ZRCGenericSettings;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 1338
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCGenericSettings;->isVideoSharingOptimizable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1339
    :goto_0
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCGenericSettings;->isVideoSharingOptimized()Z

    move-result v1

    .line 1341
    iget-object v4, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->optimizeVideoSharingLayout:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1342
    iget-object v3, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->optimizeVideoSharingSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    invoke-virtual {v3, v0}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setEnabled(Z)V

    .line 1344
    iget-object v3, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v4, Lus/zoom/zrcbox/R$id;->optimize_video_sharing_text:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    xor-int/2addr v0, v2

    invoke-static {v3, v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->setViewDim(Landroid/view/View;Z)V

    .line 1346
    invoke-direct {p0, v1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->setVideoSharingOptimized(Z)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private updateScreenMirrorTv(Landroid/widget/TextView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 2261
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_4

    if-nez v0, :cond_0

    goto :goto_1

    .line 2264
    :cond_0
    invoke-virtual {p3, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-void

    .line 2268
    :cond_1
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    .line 2269
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2270
    new-instance p3, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {p3, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v5, 0x12

    .line 2271
    invoke-virtual {v4, p3, v1, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    if-nez v1, :cond_2

    const-string p3, "   "

    .line 2274
    invoke-virtual {v4, v1, p3}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_2
    const-string p3, "    "

    .line 2276
    invoke-virtual {v4, v1, p3}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2279
    :goto_0
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    if-ne p3, v2, :cond_3

    return-void

    .line 2284
    :cond_3
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p4

    .line 2285
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 2286
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p4, v0

    .line 2289
    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    .line 2291
    new-instance v1, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$12;

    invoke-direct {v1, p0, p2, p4, v0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$12;-><init>(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;Landroid/graphics/drawable/Drawable;FI)V

    add-int/lit8 p2, p3, -0x3

    add-int/lit8 p3, p3, -0x2

    const/16 p4, 0x21

    .line 2300
    invoke-virtual {v4, v1, p2, p3, p4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2301
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method private updateShareIPhoneIPadView()V
    .locals 3

    .line 1286
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAirPlayBlackMagicStatus()Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->getServerName()Ljava/lang/String;

    move-result-object v0

    .line 1287
    sget-object v1, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_iOS:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    iget-object v2, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->sharingType:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    if-ne v1, v2, :cond_2

    .line 1288
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getLocalViewStatus()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    .line 1289
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareIOSLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1290
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareIOSErrorLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1291
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1293
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareIOSLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1294
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareIOSErrorLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1295
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->updateShareIPoneIPadInstruction()V

    goto :goto_0

    .line 1298
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareIOSLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1299
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareIOSErrorLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateShareIPoneIPadInstruction()V
    .locals 8

    .line 1262
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAirPlayBlackMagicStatus()Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;

    move-result-object v0

    .line 1265
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->getWifiName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 1266
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareIOSWifiTV:Landroid/widget/TextView;

    sget v4, Lus/zoom/zrcbox/R$string;->share_ios_item1_cable:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1268
    :cond_0
    sget v1, Lus/zoom/zrcbox/R$string;->zrc_connect_to_same_wifi:I

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->getWifiName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p0, v1, v4}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1269
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->getWifiName()Ljava/lang/String;

    move-result-object v4

    .line 1270
    iget-object v5, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareIOSWifiTV:Landroid/widget/TextView;

    iget-object v6, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->airplayChooseServerTV:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v5, v1, v4, v6}, Lus/zoom/zrc/utils/ZRCUIUtils;->setTextViewSizeAndBold(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1274
    :goto_0
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->airplayTapScreenMirrorTV:Landroid/widget/TextView;

    sget v4, Lus/zoom/zrcbox/R$drawable;->screen_mirror:I

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lus/zoom/zrcbox/R$string;->tap_screen_mirroring:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lus/zoom/zrcbox/R$string;->screen_mirroring:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v1, v4, v5, v6}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->updateScreenMirrorTv(Landroid/widget/TextView;ILjava/lang/String;Ljava/lang/String;)V

    .line 1277
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->airplayChooseServerTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lus/zoom/zrcbox/R$string;->choose_server_name:I

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->getServerName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1278
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->airplayChooseServerTV:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->getServerName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v4, v5}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->setPartTextBold(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->airplayEnterPasswordTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lus/zoom/zrcbox/R$string;->enter_password:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->getPassword()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-virtual {v4, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1282
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->airplayEnterPasswordTV:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->setPartTextBold(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateShareLaptopView()V
    .locals 9

    .line 1180
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAirPlayBlackMagicStatus()Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;

    move-result-object v0

    .line 1181
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 1185
    :cond_0
    iget-object v2, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareURLTV:Landroid/widget/TextView;

    invoke-static {}, Lus/zoom/zrc/utils/Util;->getSharingUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lus/zoom/zrc/utils/ZRCUIUtils;->setTextAndBold(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1187
    iget-object v2, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareBrowserMeetingIDContentTV:Landroid/widget/TextView;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getMeetingNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lus/zoom/zrc/utils/Util;->getDisplayMeetingNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lus/zoom/zrc/utils/ZRCUIUtils;->setTextAndBold(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1189
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getMeetingPassword()Ljava/lang/String;

    move-result-object v2

    .line 1190
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v3, :cond_1

    .line 1191
    iget-object v3, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareBrowserSharingPasswordLayout:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1193
    :cond_1
    iget-object v3, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareBrowserSharingPasswordLayout:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1194
    iget-object v3, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareBrowserSharingPasswordContentTV:Landroid/widget/TextView;

    invoke-static {v2}, Lus/zoom/zrc/utils/Util;->getDisplayMeetingNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lus/zoom/zrc/utils/ZRCUIUtils;->setTextAndBold(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1198
    :goto_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->getDirectPresentationPairingCode()Ljava/lang/String;

    move-result-object v3

    .line 1199
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->getDirectPresentationSharingKey()Ljava/lang/String;

    move-result-object v6

    if-eqz v3, :cond_4

    .line 1201
    iget-object v7, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareDesktopMeetingIDLayout:Landroid/view/View;

    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1203
    iget-object v7, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareDesktopSharingPasscodeLayout:Landroid/view/View;

    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1205
    iget-object v7, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareDesktopMainLayout:Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1206
    iget-object v7, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareDesktopShareScreen:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lus/zoom/zrc/utils/ZRCUIUtils;->setTextAndBold(Landroid/widget/TextView;Ljava/lang/String;)V

    if-eqz v6, :cond_3

    .line 1208
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareDesktopSharingKeyLayout:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1209
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 1210
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareDesktopSharingKeyContentTV:Landroid/widget/TextView;

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lus/zoom/zrc/utils/ZRCUIUtils;->setTextAndBold(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_1

    .line 1213
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 1214
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareDesktopMainLayout:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1219
    :cond_3
    iget-object v3, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareDesktopMeetingIDLayout:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1220
    iget-object v3, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareDesktopMeetingIDContentTV:Landroid/widget/TextView;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getMeetingNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lus/zoom/zrc/utils/Util;->getDisplayMeetingNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lus/zoom/zrc/utils/ZRCUIUtils;->setTextAndBold(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1221
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 1222
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareDesktopSharingPasscodeLayout:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1223
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareDesktopSharingPasscodeContentTV:Landroid/widget/TextView;

    invoke-static {v2}, Lus/zoom/zrc/utils/Util;->getDisplayMeetingNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lus/zoom/zrc/utils/ZRCUIUtils;->setTextAndBold(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_1

    .line 1227
    :cond_4
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareDesktopMainLayout:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1231
    :cond_5
    :goto_1
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isBlackMagicConnected()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1232
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareHDMIMainLayout:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1233
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareHDMIDivider:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1234
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onCustomHDMILabelChanged()V

    .line 1236
    iget-boolean v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    if-nez v1, :cond_9

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isBlackMagicDataAvailable()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1237
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isSharingBlackMagic()Z

    move-result v0

    .line 1238
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->currentlyInSharingTV:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1239
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->startSharingHDMILayout:Landroid/view/View;

    if-eqz v0, :cond_7

    const/16 v4, 0x8

    :cond_7
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1240
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getLocalViewStatus()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1241
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->currentlyInSharingTV:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->share_hdmi_local_sharing:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1242
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->startSharingHDMIBtn:Landroid/widget/Button;

    sget v1, Lus/zoom/zrcbox/R$string;->turn_on_local_sharing:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1244
    :cond_8
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->currentlyInSharingTV:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->share_hdmi_sharing:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1245
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->startSharingHDMIBtn:Landroid/widget/Button;

    sget v1, Lus/zoom/zrcbox/R$string;->turn_on_sharing:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1248
    :cond_9
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->currentlyInSharingTV:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1249
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->startSharingHDMILayout:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 1252
    :cond_a
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareHDMIDivider:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1253
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareHDMIMainLayout:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1255
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->currentlyInSharingTV:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1256
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->startSharingHDMILayout:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method private updateShareWbCameraView()V
    .locals 3

    .line 1157
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSelectedWhiteboardCamera()Lus/zoom/zrcsdk/model/ZMDeviceItem;

    move-result-object v0

    .line 1158
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareWbCameraTitleTV:Landroid/widget/TextView;

    invoke-static {}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->getDefault()Lus/zoom/zrc/utils/WhiteboardCameraHelper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->getWbCameraDisplayName(Lus/zoom/zrcsdk/model/ZMDeviceItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1159
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->wbcControlHintTV:Landroid/widget/TextView;

    invoke-static {}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->getDefault()Lus/zoom/zrc/utils/WhiteboardCameraHelper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->isWbCameraHasControl(Lus/zoom/zrcsdk/model/ZMDeviceItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v0, :cond_2

    .line 1164
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZMDeviceItem;->getZmd_status()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1165
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->showWbcStateSharing()V

    goto :goto_1

    .line 1167
    :cond_1
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->showWbcStateNormal()V

    goto :goto_1

    .line 1170
    :cond_2
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->showWbcStateNone()V

    .line 1173
    :goto_1
    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    if-nez v0, :cond_3

    .line 1174
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSharingStatus()Lus/zoom/zrcsdk/model/ZRCSharingStatus;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->canStopSharing(Lus/zoom/zrcsdk/model/ZRCSharingStatus;)Z

    move-result v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->showStopSharingButton(Z)V

    :cond_3
    return-void
.end method

.method private updateTabBarAndWindow()V
    .locals 9

    .line 692
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 695
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 697
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v2, Lus/zoom/zrcbox/R$id;->tab_bar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/view/TabBar;

    iput-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->tabBar:Lus/zoom/zrc/view/TabBar;

    .line 698
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v2, Lus/zoom/zrcbox/R$id;->ll_share_content:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareContentContainer:Landroid/widget/LinearLayout;

    .line 699
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v2, Lus/zoom/zrcbox/R$id;->share_app_content:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 700
    iget-object v2, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v3, Lus/zoom/zrcbox/R$id;->share_browser_content:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 701
    iget-object v3, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    sget v4, Lus/zoom/zrcbox/R$id;->share_hdmi_content:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 703
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->buildNavigationSegment()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->navigationSegments:Ljava/util/ArrayList;

    .line 704
    iget-object v4, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->navigationSegments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 705
    :goto_0
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isWbcSharingAvailable()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isIOSSharingEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v5

    invoke-virtual {v5}, Lus/zoom/zrc/model/AppModel;->getLoginInfo()Lus/zoom/zrcsdk/model/LoginInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 708
    :goto_1
    iget-boolean v5, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    const/4 v8, -0x1

    if-eqz v5, :cond_4

    .line 709
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$drawable;->zrc_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 710
    invoke-virtual {v0, v8, v8}, Landroid/view/Window;->setLayout(II)V

    if-eqz v6, :cond_3

    .line 712
    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isTablet:Z

    if-eqz v0, :cond_3

    .line 713
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$dimen;->zrc_share_content_tab_min_width_3tabs:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_2

    .line 715
    :cond_3
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$dimen;->zrc_share_content_tab_min_width_2tabs:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 717
    :goto_2
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->tabBar:Lus/zoom/zrc/view/TabBar;

    invoke-virtual {v1, v0}, Lus/zoom/zrc/view/TabBar;->setMinimumWidth(I)V

    .line 719
    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isTablet:Z

    if-nez v0, :cond_7

    .line 720
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareContentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 721
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$dimen;->zrc_share_content_tab_min_width_2tabs:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 722
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareContentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    .line 725
    :cond_4
    iget-boolean v5, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isTablet:Z

    if-eqz v5, :cond_6

    if-eqz v4, :cond_5

    .line 728
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lus/zoom/zrcbox/R$dimen;->zrc_share_content_tab_min_width_4tabs:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 729
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lus/zoom/zrcbox/R$dimen;->share_content_dialog_width_4tabs:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 730
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lus/zoom/zrcbox/R$dimen;->share_content_container_padding:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    goto :goto_3

    .line 732
    :cond_5
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lus/zoom/zrcbox/R$dimen;->zrc_share_content_tab_min_width_3tabs:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 733
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lus/zoom/zrcbox/R$dimen;->share_content_dialog_width_3tabs:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    const/4 v6, 0x0

    .line 736
    :goto_3
    iget-object v8, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->tabBar:Lus/zoom/zrc/view/TabBar;

    invoke-virtual {v8, v4}, Lus/zoom/zrc/view/TabBar;->setMinimumWidth(I)V

    .line 737
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lus/zoom/zrc/utils/Util;->getHeight(Landroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    const v8, 0x3f733333    # 0.95f

    mul-float v4, v4, v8

    float-to-int v4, v4

    invoke-virtual {v0, v5, v4}, Landroid/view/Window;->setLayout(II)V

    .line 738
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareContentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 739
    move-object v4, v0

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 740
    iget-object v4, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareContentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 742
    invoke-virtual {v1, v6, v7, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 743
    invoke-virtual {v2, v6, v7, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 744
    invoke-virtual {v3, v6, v7, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_4

    .line 746
    :cond_6
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lus/zoom/zrc/utils/Util;->getWidth(Landroid/content/Context;)I

    move-result v1

    .line 747
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lus/zoom/zrc/utils/Util;->getHeight(Landroid/content/Context;)I

    move-result v2

    .line 748
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 749
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareContentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 750
    iput v8, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 751
    iput v8, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 752
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareContentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    :goto_4
    return-void
.end method

.method private updateView()V
    .locals 2

    .line 1126
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->sharingType:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    sget-object v1, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_iOS:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    if-ne v0, v1, :cond_0

    .line 1127
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->localViewWarning:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->no_screen_mirroring_for_local_view:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1128
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->sharingType:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    sget-object v1, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_Camera:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    if-ne v0, v1, :cond_1

    .line 1129
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->localViewWarning:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->no_camera_sharing_for_local_view:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1130
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->sharingType:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    sget-object v1, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ZRCSharingType_WhiteboardCamera:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    if-ne v0, v1, :cond_2

    .line 1131
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->localViewWarning:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->no_whiteboard_camera_sharing_for_local_view:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1133
    :cond_2
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareWbCameraLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_3

    .line 1135
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareIOSErrorLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1137
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareLaptopLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 1138
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->updateShareLaptopView()V

    .line 1139
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareIOSErrorLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1141
    :cond_4
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareIOSLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 1142
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->updateShareIPhoneIPadView()V

    .line 1144
    :cond_5
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareCameraLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 1145
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->shareIOSErrorLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1148
    :cond_6
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->optimizeVideoSharingLayout:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 1149
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->updateOptimizeVideoSharingView()V

    .line 1151
    :cond_7
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->enableMultiShareLayout:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 1152
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->updateChangeContentView()V

    :cond_8
    return-void
.end method


# virtual methods
.method public onAirPlayBlackMagicStatusChanged()V
    .locals 2

    .line 1848
    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    if-eqz v0, :cond_1

    .line 1849
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onDetermineToShowSpeakerVolumeControl()V

    .line 1850
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->switchView()V

    .line 1851
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 1852
    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->canBeAutoDismissed:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAirPlayBlackMagicStatus()Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isAirHostClientConnected()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "AirHost got disconnected, dismiss local presentation view."

    const/4 v1, 0x0

    .line 1853
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1855
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1856
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/phonecall/SipPhoneCallActivity;->show(Landroid/content/Context;)V

    .line 1859
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->dismiss()V

    .line 1860
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/UserEvent;->StopPresentation:Lus/zoom/zrc/base/notification/UserEvent;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;)V

    goto :goto_0

    .line 1864
    :cond_1
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->switchView()V

    .line 1865
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSharingStatus()Lus/zoom/zrcsdk/model/ZRCSharingStatus;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->canStopSharing(Lus/zoom/zrcsdk/model/ZRCSharingStatus;)Z

    move-result v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->showStopSharingButton(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1360
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->stopPresentationBtn:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 1361
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onStopPresentationClicked()V

    goto :goto_0

    .line 1362
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->startMeetingBtn:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 1363
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onMeeting()V

    goto :goto_0

    .line 1364
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->phoneBtn:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 1365
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onPhoneClicked()V

    goto :goto_0

    .line 1366
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->dismissBtn:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 1367
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onDone()V

    goto :goto_0

    .line 1368
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->startSharingHDMIBtn:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 1369
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onTurnOnSharingButtonClicked()V

    goto :goto_0

    .line 1370
    :cond_4
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->stopSharingBtn:Landroid/view/View;

    if-ne p1, v0, :cond_5

    .line 1371
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/model/ZRCShareStopType;

    invoke-direct {p0, p1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onStopSharingButtonTapped(Lus/zoom/zrc/model/ZRCShareStopType;)V

    goto :goto_0

    .line 1372
    :cond_5
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->changeContentIV:Landroid/view/View;

    if-ne p1, v0, :cond_6

    .line 1373
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onChangeContent()V

    goto :goto_0

    .line 1374
    :cond_6
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->decreaseVolumeImageView:Landroid/view/View;

    if-ne p1, v0, :cond_7

    .line 1375
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onDecreaseSpeakerVolume()V

    goto :goto_0

    .line 1376
    :cond_7
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->increaseVolumeImageView:Landroid/view/View;

    if-ne p1, v0, :cond_8

    .line 1377
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onIncreaseSpeakerVolume()V

    goto :goto_0

    .line 1378
    :cond_8
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->cameraControlButton:Landroid/view/View;

    if-ne p1, v0, :cond_9

    .line 1379
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onControlSharingCamera()V

    goto :goto_0

    .line 1380
    :cond_9
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->startShareWbCameraBtn:Landroid/widget/TextView;

    if-ne p1, v0, :cond_a

    .line 1381
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onStartWbcSharingBtnClicked()V

    :cond_a
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 424
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const-string v4, "usedForLocalPresentation"

    .line 427
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    const-string v4, "canBeAutoDismissed"

    .line 428
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->canBeAutoDismissed:Z

    const-string v4, "sharingType"

    .line 430
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 431
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->buildNavigationSegment()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->navigationSegments:Ljava/util/ArrayList;

    .line 432
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->sharingTypeOfIndex(I)Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->sharingType:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    const-string p1, "restore state with savedInstanceState, local=%s, type=%s, auto=%s"

    .line 434
    new-array v4, v2, [Ljava/lang/Object;

    iget-boolean v5, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v3

    iget-object v5, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->sharingType:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    aput-object v5, v4, v1

    iget-boolean v5, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->canBeAutoDismissed:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1, v4}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 437
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isTablet:Z

    .line 438
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getPinUserManager()Lus/zoom/zrc/model/ZRCPinUserManager;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    const-string p1, "Starting share content, local=%s, type=%s, auto=%s"

    .line 440
    new-array v2, v2, [Ljava/lang/Object;

    iget-boolean v4, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v4, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->sharingType:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    aput-object v4, v2, v1

    iget-boolean v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->canBeAutoDismissed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 442
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    new-array v0, v3, [Lus/zoom/zrc/base/notification/NotificationEvent;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerNotification([Lus/zoom/zrc/base/notification/NotificationEvent;)V

    .line 443
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    .line 444
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    .line 445
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    .line 452
    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->initDisableWindowStateChangedAccessibilityEvent(Z)V

    .line 454
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 456
    new-instance v0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$2;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$2;-><init>(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
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

    const/4 p3, 0x1

    .line 481
    invoke-virtual {p0, p3}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->requestWindowFeature(I)V

    const/4 p3, 0x0

    .line 482
    invoke-virtual {p0, p3}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->setCanceledOnTouchOutside(Z)V

    .line 485
    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isTablet:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    if-eqz v0, :cond_0

    .line 486
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$style;->ShareContent_PortPresentation:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 488
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$style;->ShareContent_Normal:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 490
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 492
    sget v0, Lus/zoom/zrcbox/R$layout;->share_content_frag:I

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    .line 493
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->view:Landroid/view/View;

    return-object p1
.end method

.method public onReceivedNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 1

    .line 348
    sget-object v0, Lus/zoom/zrc/base/notification/UserEvent;->EnterSipCall:Lus/zoom/zrc/base/notification/UserEvent;

    if-ne p1, v0, :cond_0

    .line 349
    iget-boolean p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    if-nez p1, :cond_1

    .line 350
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onEnterSipCallInMeeting()V

    goto :goto_0

    .line 352
    :cond_0
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnShareCameraResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_1

    .line 353
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 354
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onShareCameraResult(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 3

    .line 279
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    .line 280
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnEnterState:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_0

    .line 281
    check-cast p2, Lcom/google/common/collect/ImmutableMap;

    const-string p1, "newState"

    invoke-virtual {p2, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v0, "oldState"

    .line 282
    invoke-virtual {p2, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 283
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onEnterState(II)V

    goto/16 :goto_0

    .line 284
    :cond_0
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnUpdateSharingStatus:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_1

    .line 285
    check-cast p2, Lcom/google/common/collect/ImmutableMap;

    const-string p1, "from"

    .line 286
    invoke-virtual {p2, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCSharingStatus;

    .line 287
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/Model;->getSharingStatus()Lus/zoom/zrcsdk/model/ZRCSharingStatus;

    move-result-object p2

    .line 288
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onSharingStatusChangedFrom(Lus/zoom/zrcsdk/model/ZRCSharingStatus;Lus/zoom/zrcsdk/model/ZRCSharingStatus;)V

    goto/16 :goto_0

    .line 289
    :cond_1
    sget-object v0, Lus/zoom/zrc/base/notification/UserEvent;->EnterSipCall:Lus/zoom/zrc/base/notification/UserEvent;

    if-ne p1, v0, :cond_2

    .line 290
    iget-boolean p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    if-eqz p1, :cond_8

    .line 291
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onEnterSipCallInPresentation()V

    goto/16 :goto_0

    .line 293
    :cond_2
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->ShowSharingInstructionResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_3

    .line 294
    check-cast p2, Lcom/google/common/collect/ImmutableMap;

    const-string p1, "result"

    .line 295
    invoke-virtual {p2, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "is_show_instruction"

    .line 296
    invoke-virtual {p2, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "is_laptop_instruction"

    .line 297
    invoke-virtual {p2, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "switch_to_normal_meeting"

    .line 298
    invoke-virtual {p2, v2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 299
    invoke-direct {p0, p1, v0, v1, p2}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onShowSharingInstructionResult(ZZZZ)V

    goto/16 :goto_0

    .line 300
    :cond_3
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->LaunchSharingMeetingResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_4

    .line 301
    move-object p1, p2

    check-cast p1, Lcom/google/common/collect/ImmutableMap;

    const-string v0, "result"

    .line 302
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "requestId"

    .line 303
    invoke-static {p2, v1}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->valueFromMap(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v1, "for_share_laptop"

    .line 304
    invoke-virtual {p1, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "display_state"

    .line 305
    invoke-static {p1, v2}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->intFromMap(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p1

    .line 306
    invoke-direct {p0, v0, p2, v1, p1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onLaunchSharingMeetingResult(ZLjava/lang/String;ZI)V

    goto :goto_0

    .line 307
    :cond_4
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->StartSharingMeetingNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_5

    const-string p1, "result"

    .line 308
    invoke-static {p2, p1}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->boolFromMap(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p1

    .line 309
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onStartSharingMeetingNotification(Z)V

    goto :goto_0

    .line 310
    :cond_5
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->ExitMeetingResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_6

    .line 311
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 312
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onExitMeetingResult(Z)V

    goto :goto_0

    .line 313
    :cond_6
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->PSTNCallOutResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_7

    .line 314
    check-cast p2, Lcom/google/common/collect/ImmutableMap;

    const-string p1, "result"

    .line 315
    invoke-virtual {p2, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "isCancelCall"

    .line 316
    invoke-virtual {p2, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "isSwitchToNormalMeeting"

    .line 317
    invoke-virtual {p2, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 318
    invoke-direct {p0, p1, v0, p2}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onPSTNCallOutResult(ZZZ)V

    goto :goto_0

    .line 319
    :cond_7
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->onControlWhiteboardCameraResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_8

    .line 320
    invoke-direct {p0, p2}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onHandleZMDeviceOperationResult(Ljava/lang/Object;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 360
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 361
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->airPlayBlackMagicStatus:I

    if-ne p2, p1, :cond_0

    .line 362
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onAirPlayBlackMagicStatusChanged()V

    goto/16 :goto_2

    .line 363
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->userProfile:I

    if-ne p2, p1, :cond_1

    .line 364
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onRoomInfoChanged()V

    goto/16 :goto_2

    .line 365
    :cond_1
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->roomInfo:I

    if-ne p2, p1, :cond_2

    .line 366
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onRoomInfoChanged()V

    goto/16 :goto_2

    .line 367
    :cond_2
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->customHDMILabel:I

    if-ne p2, p1, :cond_3

    .line 368
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onCustomHDMILabelChanged()V

    goto/16 :goto_2

    .line 369
    :cond_3
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->genericSettings:I

    if-ne p2, p1, :cond_4

    .line 370
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->updateOptimizeVideoSharingView()V

    goto/16 :goto_2

    .line 371
    :cond_4
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->meetingInfo:I

    if-eq p2, p1, :cond_17

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->localViewStatus:I

    if-ne p2, p1, :cond_5

    goto/16 :goto_1

    .line 373
    :cond_5
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->settingsDeviceInfo:I

    if-ne p2, p1, :cond_6

    .line 374
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onSwitchableCameraListChanged()V

    goto/16 :goto_2

    .line 375
    :cond_6
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->cameraSharingStatus:I

    if-ne p2, p1, :cond_7

    .line 376
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onCameraSharingStatusChanged()V

    goto/16 :goto_2

    .line 377
    :cond_7
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->speakerVolumeControlLocked:I

    if-ne p2, p1, :cond_8

    .line 378
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onSpeakerVolumeControlStatusChanged()V

    goto/16 :goto_2

    .line 379
    :cond_8
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->sipCallInfos:I

    if-ne p2, p1, :cond_9

    .line 380
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onSipCallInfosChange()V

    goto/16 :goto_2

    .line 381
    :cond_9
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->sipService:I

    if-ne p2, p1, :cond_a

    .line 382
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onUpdateLocalPresentationBarButtons()V

    goto/16 :goto_2

    .line 383
    :cond_a
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->standaloneDigitalSignage:I

    if-ne p2, p1, :cond_b

    .line 384
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onUpdateLocalPresentationBarButtons()V

    goto/16 :goto_2

    .line 385
    :cond_b
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->meetingShareSettings:I

    if-ne p2, p1, :cond_c

    .line 386
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->updateChangeContentView()V

    goto/16 :goto_2

    .line 387
    :cond_c
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->allShareParticipants:I

    if-eq p2, p1, :cond_16

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->allShareSources:I

    if-ne p2, p1, :cond_d

    goto :goto_0

    .line 389
    :cond_d
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->zrPinStatusOfScreens:I

    if-ne p2, p1, :cond_e

    .line 390
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->updateChangeContentView()V

    goto :goto_2

    .line 391
    :cond_e
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->callOutNumberInCalling:I

    if-ne p2, p1, :cond_f

    .line 392
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onCallOutNumberInCallingChanged()V

    goto :goto_2

    .line 393
    :cond_f
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->amIHost:I

    if-ne p2, p1, :cond_10

    .line 394
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onUpdateMultiShareSwitchEnable()V

    .line 395
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onParticipantListChanged()V

    goto :goto_2

    .line 396
    :cond_10
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->amICoHost:I

    if-ne p2, p1, :cond_11

    .line 397
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onUpdateMultiShareSwitchEnable()V

    .line 398
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onParticipantListChanged()V

    goto :goto_2

    .line 399
    :cond_11
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->participantList:I

    if-ne p2, p1, :cond_12

    .line 400
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onParticipantListChanged()V

    goto :goto_2

    .line 401
    :cond_12
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->callOutCountryCode:I

    if-ne p2, p1, :cond_13

    .line 402
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onUpdateLocalPresentationBarButtons()V

    goto :goto_2

    .line 403
    :cond_13
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->zRWSharingStatus:I

    if-ne p2, p1, :cond_14

    .line 404
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onZRWSharingStatusChanged()V

    goto :goto_2

    .line 405
    :cond_14
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->selectedWhiteboardCamera:I

    if-ne p2, p1, :cond_15

    .line 406
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onSelectedWhiteboardCameraChanged()V

    goto :goto_2

    .line 407
    :cond_15
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->whiteboardCameraInfo:I

    if-ne p2, p1, :cond_18

    .line 408
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onWhiteboardCameraInfoChanged()V

    goto :goto_2

    .line 388
    :cond_16
    :goto_0
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->updateChangeContentView()V

    goto :goto_2

    .line 372
    :cond_17
    :goto_1
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->switchView()V

    :cond_18
    :goto_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "usedForLocalPresentation"

    .line 416
    iget-boolean v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "canBeAutoDismissed"

    .line 417
    iget-boolean v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->canBeAutoDismissed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "sharingType"

    .line 418
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->sharingType:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    invoke-direct {p0, v1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->indexOfSharingType(Lus/zoom/zrc/share_camera/model/ZRCSharingType;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 419
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSelectedTab(I)V
    .locals 6

    .line 1670
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->sharingTypeOfIndex(I)Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    move-result-object p1

    .line 1671
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->sharingType:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    if-ne v0, p1, :cond_0

    return-void

    .line 1673
    :cond_0
    sget-object v0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$13;->$SwitchMap$us$zoom$zrc$share_camera$model$ZRCSharingType:[I

    invoke-virtual {p1}, Lus/zoom/zrc/share_camera/model/ZRCSharingType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x1e

    const/4 v2, 0x7

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 1711
    :pswitch_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v0

    .line 1712
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->sharingType:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    const/4 p1, 0x3

    if-ne v0, v3, :cond_1

    .line 1714
    iput-boolean v4, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isSwitching:Z

    .line 1715
    invoke-direct {p0, v4, v1, p1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->startSharingMeeting(III)V

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_2

    .line 1717
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->switchView()V

    .line 1719
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, v4, v5, v5, p1}, Lus/zoom/zrc/model/Model;->showSharingInstruction(ZZZI)V

    .line 1721
    :cond_2
    :goto_0
    invoke-direct {p0, v5}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->showCameraControlButton(Z)V

    goto :goto_3

    .line 1700
    :pswitch_1
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->sharingType:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    .line 1701
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->switchView()V

    .line 1703
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1, v5, v5, v5, v5}, Lus/zoom/zrc/model/Model;->showSharingInstruction(ZZZI)V

    .line 1705
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getCameraSharingStatus()Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    move-result-object p1

    .line 1706
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->isSharing()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->isCanBeControlled()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    invoke-direct {p0, v4}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->showCameraControlButton(Z)V

    goto :goto_3

    .line 1690
    :pswitch_2
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->sharingType:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    .line 1691
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->switchView()V

    .line 1693
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v4, v5, v5, v0}, Lus/zoom/zrc/model/Model;->showSharingInstruction(ZZZI)V

    .line 1695
    invoke-direct {p0, v5}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->showCameraControlButton(Z)V

    goto :goto_3

    .line 1675
    :pswitch_3
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v0

    .line 1676
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->sharingType:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    if-ne v0, v3, :cond_4

    .line 1678
    iput-boolean v4, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isSwitching:Z

    .line 1679
    invoke-direct {p0, v4, v1, v4}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->startSharingMeeting(III)V

    goto :goto_2

    :cond_4
    if-ne v0, v2, :cond_5

    .line 1681
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->switchView()V

    .line 1683
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1, v4, v4, v5, v4}, Lus/zoom/zrc/model/Model;->showSharingInstruction(ZZZI)V

    .line 1685
    :cond_5
    :goto_2
    invoke-direct {p0, v5}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->showCameraControlButton(Z)V

    .line 1727
    :goto_3
    iget-boolean p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->usedForLocalPresentation:Z

    if-eqz p1, :cond_6

    .line 1728
    iput-boolean v5, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->canBeAutoDismissed:Z

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 0

    .line 504
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onStart()V

    .line 505
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->updateTabBarAndWindow()V

    .line 506
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->register()V

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 511
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->getNonNullEventTaskManagerOrThrowException()Lus/zoom/androidlib/util/EventTaskManager;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$3;

    const-string v2, "dismissAlertStopSharingInPhoneCall"

    invoke-direct {v1, p0, v2}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$3;-><init>(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/util/EventTaskManager;->push(Lus/zoom/androidlib/util/EventAction;)V

    .line 518
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onStop()V

    .line 519
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->release()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 498
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 499
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->initLayout()V

    return-void
.end method
