.class public Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;
.super Lus/zoom/zrc/view/CommonMeetingControlFragment;
.source "MeetingPhoneMoreFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment$NotifyMeetingMainControllerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$InviteProcessor;
    }
.end annotation


# instance fields
.field private final cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

.field private context:Landroid/content/Context;

.field private ft_options_speaker_view:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

.field private ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

.field private handler:Landroid/os/Handler;

.field private inVideoStrip:Z

.field private inviteLabel:Landroid/widget/TextView;

.field private isMultiShareBefore:Z

.field private ivChangeContentIcon:Landroid/widget/ImageView;

.field private lastClickSystemTime:J

.field private listener:Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;

.field private mBack:Landroid/widget/ImageView;

.field private mDisplayedDialog:Landroid/app/Dialog;

.field private mDisplayedDialogFragment:Landroidx/fragment/app/DialogFragment;

.field private mHandler:Landroid/os/Handler;

.field private mInputEmailDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

.field private mInviteInMeetingDialogFragment:Lus/zoom/zrc/view/InviteInMeetingDialogFragment;

.field private mInviteProcessor:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$InviteProcessor;

.field private mIvDownArrow:Landroid/widget/ImageView;

.field private mIvGalleryView:Landroid/widget/ImageView;

.field private mIvRecording:Landroid/widget/ImageView;

.field private mIvSwitchCameraForVideo:Landroid/widget/ImageView;

.field private mIvUpArrow:Landroid/widget/ImageView;

.field private mLLSwitchCameraForVideo:Landroid/view/View;

.field private mMeetingInvite:Landroid/widget/ImageView;

.field private mOptions:Landroid/view/View;

.field private mParticipants:Landroid/widget/ImageView;

.field private mParticipantsDialog:Lus/zoom/zrc/view/ParticipantsDialogFragment;

.field private mTvGalleryView:Landroid/widget/TextView;

.field private mTvNotice:Landroid/widget/TextView;

.field private mTvParticipants:Landroid/widget/TextView;

.field private mTvParticipantsCount:Landroid/widget/TextView;

.field private mTvRecording:Landroid/widget/TextView;

.field private mTvSwitchCameraForVideo:Landroid/widget/TextView;

.field private mVideoLayoutViewSelectDialogFragment:Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;

.field private mWaitingDialogFragment:Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;

.field private onPinUserManagerPropertyChanged:Landroidx/databinding/Observable$OnPropertyChangedCallback;

.field private rlChangeContentLayout:Landroid/widget/RelativeLayout;

.field private rlGalleryLayout:Landroid/widget/RelativeLayout;

.field private switchCameraPopupWindow:Lus/zoom/zrc/view/SwitchCameraPopupWindow;

.field private tvChangeContentText:Landroid/widget/TextView;

.field private tvShareSourceCount:Landroid/widget/TextView;

.field private zrcChangeContentPhoneDialogFragment:Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;

.field private zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment;-><init>()V

    .line 122
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getPinUserManager()Lus/zoom/zrc/model/ZRCPinUserManager;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    .line 123
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCPinUserManager;->getMeetingShareSettings()Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;->isMultiShare()Z

    move-result v0

    iput-boolean v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->isMultiShareBefore:Z

    .line 125
    new-instance v0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$1;-><init>(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->onPinUserManagerPropertyChanged:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    .line 145
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->handler:Landroid/os/Handler;

    .line 146
    new-instance v0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$2;

    invoke-direct {v0, p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$2;-><init>(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->listener:Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;

    .line 183
    new-instance v0, Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    invoke-direct {v0}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    .line 190
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;)Z
    .locals 0

    .line 89
    iget-boolean p0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->isMultiShareBefore:Z

    return p0
.end method

.method static synthetic access$002(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;Z)Z
    .locals 0

    .line 89
    iput-boolean p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->isMultiShareBefore:Z

    return p1
.end method

.method static synthetic access$100(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;)Lus/zoom/zrc/model/ZRCPinUserManager;
    .locals 0

    .line 89
    iget-object p0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    return-object p0
.end method

.method static synthetic access$1000(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;)Landroid/os/Handler;
    .locals 0

    .line 89
    iget-object p0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1100(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;)Lus/zoom/zrc/view/InviteInMeetingDialogFragment;
    .locals 0

    .line 89
    iget-object p0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mInviteInMeetingDialogFragment:Lus/zoom/zrc/view/InviteInMeetingDialogFragment;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;)Landroid/os/Handler;
    .locals 0

    .line 89
    iget-object p0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 89
    iget-object p0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mParticipants:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;)Lus/zoom/zrc/base/app/ZRCAlertDialog;
    .locals 0

    .line 89
    iget-object p0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mInputEmailDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    return-object p0
.end method

.method static synthetic access$600(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;)Landroid/widget/TextView;
    .locals 0

    .line 89
    iget-object p0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mTvNotice:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;)Landroid/app/Dialog;
    .locals 0

    .line 89
    iget-object p0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mDisplayedDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$702(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 89
    iput-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mDisplayedDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$900(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;)Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;
    .locals 0

    .line 89
    iget-object p0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mWaitingDialogFragment:Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;

    return-object p0
.end method

.method private clickToSwitchCamera()V
    .locals 4

    .line 920
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    .line 921
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getZrcFeatureListInfo()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 922
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isCanSwitchToSpecificCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 923
    :goto_0
    iget-object v2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    invoke-virtual {v2, v0}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->sizeOfCompatibleCameras(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)I

    move-result v2

    if-eqz v1, :cond_2

    if-lez v2, :cond_1

    const/4 v1, 0x2

    if-gt v2, v1, :cond_1

    goto :goto_1

    .line 938
    :cond_1
    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    invoke-static {v0}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->getCompatibleCameras(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)Ljava/util/List;

    move-result-object v0

    .line 939
    invoke-direct {p0, v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->showSwitchableCameraListPopupWindow(Ljava/util/List;)V

    goto :goto_2

    .line 929
    :cond_2
    :goto_1
    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    invoke-static {v0}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->getCompatibleCameras(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)Ljava/util/List;

    move-result-object v0

    .line 930
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    .line 931
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isSelected()Z

    move-result v1

    if-nez v1, :cond_3

    .line 932
    new-instance v0, Lus/zoom/zrc/camera_control/model/eventparam/SwitchCameraEventParameters;

    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v1

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lus/zoom/zrc/camera_control/model/eventparam/SwitchCameraEventParameters;-><init>(Lus/zoom/zrcsdk/ConfApp;Lus/zoom/zrc/model/AppModel;Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    .line 933
    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    new-instance v2, Lus/zoom/zrc/camera_control/ctrl/CameraControl$SwitchCamCameraControlEvent;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v1, v0}, Lus/zoom/zrc/camera_control/ctrl/CameraControl$SwitchCamCameraControlEvent;-><init>(Lus/zoom/zrc/camera_control/ctrl/CameraControl;Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;)V

    invoke-virtual {v1, v2}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->run(Lus/zoom/zrc/camera_control/model/Executable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private dismissDialogsOnPause()V
    .locals 2

    .line 422
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mVideoLayoutViewSelectDialogFragment:Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mVideoLayoutViewSelectDialogFragment:Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->dismiss()V

    .line 425
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ft_options_speaker_view:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ft_options_speaker_view:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->dismiss()V

    .line 428
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 429
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->dismiss()V

    .line 432
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mDisplayedDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 433
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mDisplayedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 435
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mDisplayedDialogFragment:Landroidx/fragment/app/DialogFragment;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 436
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mDisplayedDialogFragment:Landroidx/fragment/app/DialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 439
    :cond_4
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mSettingsInMeetingDialogFragment:Landroidx/fragment/app/DialogFragment;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mSettingsInMeetingDialogFragment:Landroidx/fragment/app/DialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 440
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mSettingsInMeetingDialogFragment:Landroidx/fragment/app/DialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 443
    :cond_5
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->chatFragment:Landroidx/fragment/app/DialogFragment;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->chatFragment:Landroidx/fragment/app/DialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 444
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->chatFragment:Landroidx/fragment/app/DialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 447
    :cond_6
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 449
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;

    if-eqz v0, :cond_7

    .line 450
    invoke-virtual {v0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 451
    invoke-virtual {v0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->safeDismiss()V

    :cond_7
    return-void
.end method

.method private dismissFinishRecordDialog()V
    .locals 2

    .line 615
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/view/CloudRecordingStopDialog;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->dismissDialogFragment(Ljava/lang/Class;)V

    return-void
.end method

.method private dismissInputEmailDialog()V
    .locals 2

    .line 619
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mInputEmailDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mInputEmailDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    sget v1, Lus/zoom/zrcbox/R$id;->edit_text:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 621
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lus/zoom/androidlib/util/UIUtil;->closeSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 622
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mInputEmailDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private drawImageViewRedCircle(Landroid/widget/ImageView;I)V
    .locals 2

    .line 1046
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1047
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1048
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->shouldShowRedPointOnChangeContent()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1047
    invoke-static {v0, v1, p2}, Lus/zoom/zrc/utils/ZRCUIUtils;->drawMultiShareIconInstruction(Landroid/content/Context;Ljava/lang/Boolean;I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private initParticipantsDialog()V
    .locals 2

    .line 361
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/view/ParticipantsDialogFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/ParticipantsDialogFragment;

    iput-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mParticipantsDialog:Lus/zoom/zrc/view/ParticipantsDialogFragment;

    .line 362
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mParticipantsDialog:Lus/zoom/zrc/view/ParticipantsDialogFragment;

    if-nez v0, :cond_0

    .line 363
    new-instance v0, Lus/zoom/zrc/view/ParticipantsDialogFragment;

    invoke-direct {v0}, Lus/zoom/zrc/view/ParticipantsDialogFragment;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mParticipantsDialog:Lus/zoom/zrc/view/ParticipantsDialogFragment;

    :cond_0
    return-void
.end method

.method private isInviteEnabled()Z
    .locals 3

    .line 368
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->isPairedWithoutLogin()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 371
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    if-eqz v0, :cond_2

    .line 373
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getCalloutCountryCodeList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    if-eqz v0, :cond_5

    if-eqz v0, :cond_4

    .line 376
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getCalloutCountryCodeList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    return v1

    .line 382
    :cond_6
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getLoginInfo()Lus/zoom/zrcsdk/model/LoginInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getLoginInfo()Lus/zoom/zrcsdk/model/LoginInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/LoginInfo;->isPublicRoomEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    .line 386
    :cond_7
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isCallingRoomSystemEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    :goto_3
    return v1
.end method

.method private onEnterSipCall()V
    .locals 1

    .line 225
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mInviteInMeetingDialogFragment:Lus/zoom/zrc/view/InviteInMeetingDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mInviteInMeetingDialogFragment:Lus/zoom/zrc/view/InviteInMeetingDialogFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->dismiss()V

    .line 228
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mParticipantsDialog:Lus/zoom/zrc/view/ParticipantsDialogFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lus/zoom/zrc/view/ParticipantsDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mParticipantsDialog:Lus/zoom/zrc/view/ParticipantsDialogFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/ParticipantsDialogFragment;->dismiss()V

    :cond_1
    return-void
.end method

.method private setAllowRecordingState(Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 465
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mTvNotice:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 466
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mTvNotice:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->connecting_to_cloud_server:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 467
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;->isCanIRecord()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 468
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvRecording:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 469
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mTvRecording:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 470
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;->isCMRInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 471
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;->isConnectingToCMR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mTvNotice:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 473
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvRecording:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->record:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 474
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mTvRecording:Landroid/widget/TextView;

    sget v0, Lus/zoom/zrcbox/R$string;->stop_recording:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 475
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvRecording:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$string;->stop_recording:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 476
    :cond_1
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;->isMeetingBeingRecorded()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 477
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvRecording:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->stop_recording:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 478
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mTvRecording:Landroid/widget/TextView;

    sget v0, Lus/zoom/zrcbox/R$string;->stop_recording:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 479
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvRecording:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$string;->stop_recording:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 481
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvRecording:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->record:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 482
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mTvRecording:Landroid/widget/TextView;

    sget v0, Lus/zoom/zrcbox/R$string;->start_recording:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 483
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvRecording:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$string;->start_recording:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 486
    :cond_3
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvRecording:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->record:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 487
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mTvRecording:Landroid/widget/TextView;

    sget v0, Lus/zoom/zrcbox/R$string;->start_recording:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 488
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvRecording:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$string;->start_recording:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 491
    :cond_4
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvRecording:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 492
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mTvRecording:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 493
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvRecording:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->record:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 494
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mTvRecording:Landroid/widget/TextView;

    sget v0, Lus/zoom/zrcbox/R$string;->start_recording:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 495
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvRecording:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$string;->start_recording:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private setStateListDrawable(II)V
    .locals 5

    .line 1076
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1078
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1079
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1080
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->shouldShowRedPointOnChangeContent()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1079
    invoke-static {v3, v4, p1}, Lus/zoom/zrc/utils/ZRCUIUtils;->drawMultiShareIconInstruction(Landroid/content/Context;Ljava/lang/Boolean;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    .line 1082
    new-array p1, p1, [I

    const/4 v2, 0x0

    const v3, 0x10100a7

    aput v3, p1, v2

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1083
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1084
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1085
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->shouldShowRedPointOnChangeContent()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1084
    invoke-static {v3, v4, p2}, Lus/zoom/zrc/utils/ZRCUIUtils;->drawMultiShareIconInstruction(Landroid/content/Context;Ljava/lang/Boolean;I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1087
    new-array p2, v2, [I

    invoke-virtual {v0, p2, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1088
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvGalleryView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private showFinishRecordDialog()V
    .locals 2

    .line 611
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/view/CloudRecordingStopDialog;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Ljava/lang/Class;)Landroidx/fragment/app/DialogFragment;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mDisplayedDialogFragment:Landroidx/fragment/app/DialogFragment;

    return-void
.end method

.method private showInputEmailDialog()V
    .locals 4

    .line 627
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mInputEmailDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mInputEmailDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->dismiss()V

    .line 630
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 631
    sget v1, Lus/zoom/zrcbox/R$layout;->edit:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 632
    sget v1, Lus/zoom/zrcbox/R$id;->edit_label:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 633
    sget v2, Lus/zoom/zrcbox/R$id;->edit_text:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 634
    sget v3, Lus/zoom/zrcbox/R$string;->need_recording_email:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    const/16 v1, 0x20

    .line 635
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 636
    new-instance v1, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$5;

    invoke-direct {v1, p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$5;-><init>(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;)V

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 654
    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 655
    new-instance v1, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$6;

    invoke-direct {v1, p0, v2}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$6;-><init>(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;Landroid/widget/EditText;)V

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 662
    new-instance v1, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 663
    invoke-virtual {v1, v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setView(Landroid/view/View;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->ok:I

    new-instance v3, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$8;

    invoke-direct {v3, p0, v2}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$8;-><init>(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;Landroid/widget/EditText;)V

    .line 664
    invoke-virtual {v0, v1, v3}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->cancel:I

    new-instance v3, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$7;

    invoke-direct {v3, p0, v2}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$7;-><init>(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;Landroid/widget/EditText;)V

    .line 683
    invoke-virtual {v0, v1, v3}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    move-result-object v0

    .line 690
    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->create()Lus/zoom/zrc/base/app/ZRCAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mInputEmailDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    .line 691
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mInputEmailDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    new-instance v1, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$9;

    invoke-direct {v1, p0, v2}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$9;-><init>(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 697
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mInputEmailDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 698
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 699
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mInputEmailDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->show()V

    return-void
.end method

.method private showSwitchableCameraListPopupWindow(Ljava/util/List;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 945
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->switchCameraPopupWindow:Lus/zoom/zrc/view/SwitchCameraPopupWindow;

    if-nez v0, :cond_0

    .line 946
    new-instance v0, Lus/zoom/zrc/view/SwitchCameraPopupWindow;

    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lus/zoom/zrc/view/SwitchCameraPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->switchCameraPopupWindow:Lus/zoom/zrc/view/SwitchCameraPopupWindow;

    .line 947
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->switchCameraPopupWindow:Lus/zoom/zrc/view/SwitchCameraPopupWindow;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/SwitchCameraPopupWindow;->setFixedRows(I)V

    .line 949
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->switchCameraPopupWindow:Lus/zoom/zrc/view/SwitchCameraPopupWindow;

    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mLLSwitchCameraForVideo:Landroid/view/View;

    invoke-virtual {v0, p1, v1}, Lus/zoom/zrc/view/SwitchCameraPopupWindow;->show(Ljava/util/List;Landroid/view/View;)V

    return-void
.end method

.method private updateGalleryViewIcon(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1068
    :pswitch_0
    sget p1, Lus/zoom/zrcbox/R$drawable;->video_control_highlighted:I

    sget v0, Lus/zoom/zrcbox/R$drawable;->video_control:I

    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->setStateListDrawable(II)V

    goto :goto_0

    .line 1064
    :pswitch_1
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvGalleryView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1065
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->shouldShowRedPointOnChangeContent()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$drawable;->content_view:I

    .line 1064
    invoke-static {v0, v1, v2}, Lus/zoom/zrc/utils/ZRCUIUtils;->drawMultiShareIconInstruction(Landroid/content/Context;Ljava/lang/Boolean;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1061
    :pswitch_2
    sget p1, Lus/zoom/zrcbox/R$drawable;->gallery_pressed:I

    sget v0, Lus/zoom/zrcbox/R$drawable;->gallery_normal:I

    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->setStateListDrawable(II)V

    goto :goto_0

    .line 1058
    :pswitch_3
    sget p1, Lus/zoom/zrcbox/R$drawable;->thumbnail_pressed:I

    sget v0, Lus/zoom/zrcbox/R$drawable;->thumbnail_normal:I

    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->setStateListDrawable(II)V

    goto :goto_0

    .line 1055
    :pswitch_4
    sget p1, Lus/zoom/zrcbox/R$drawable;->speaker_pressed:I

    sget v0, Lus/zoom/zrcbox/R$drawable;->speaker_normal:I

    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->setStateListDrawable(II)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateParticipantButtonText()V
    .locals 2

    .line 344
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mTvParticipants:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 346
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mParticipants:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    return-void

    .line 349
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->amIHostOrCoHost()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lus/zoom/zrcbox/R$string;->manage_participants:I

    goto :goto_0

    :cond_2
    sget v1, Lus/zoom/zrcbox/R$string;->participants:I

    :goto_0
    invoke-virtual {p0, v1}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mParticipants:Landroid/widget/ImageView;

    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mTvParticipants:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateParticipantCount()V
    .locals 2

    .line 331
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mTvParticipantsCount:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 334
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 337
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getTotalVisibleParticipantNumber()I

    move-result v0

    .line 339
    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mTvParticipantsCount:Landroid/widget/TextView;

    if-lez v0, :cond_2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->updateParticipantCountAndRedPointContentDescription()V

    return-void
.end method

.method private updateVideoArrowStatus()V
    .locals 8

    .line 1092
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1097
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isInWallview()Z

    move-result v1

    .line 1102
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isInWallview()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 1103
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoPageStatus()Lus/zoom/zrcsdk/model/VideoPageStatus;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1105
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/VideoPageStatus;->isInFirstPage()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/VideoPageStatus;->isInLastPage()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1106
    :goto_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/VideoPageStatus;->isInFirstPage()Z

    move-result v5

    .line 1107
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/VideoPageStatus;->isInLastPage()Z

    move-result v0

    .line 1108
    iput-boolean v3, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->inVideoStrip:Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    const/4 v2, 0x1

    const/4 v5, 0x1

    :goto_1
    move v7, v2

    move v2, v0

    move v0, v7

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    .line 1112
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v5

    invoke-virtual {v5}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1113
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->getPageStatus()Lus/zoom/zrcsdk/model/VideoPageStatus;

    move-result-object v2

    .line 1115
    :cond_4
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isInFloatingVideoStrip()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v2, :cond_6

    .line 1116
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/VideoPageStatus;->isInFirstPage()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/VideoPageStatus;->isInLastPage()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .line 1117
    :goto_2
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/VideoPageStatus;->isInFirstPage()Z

    move-result v5

    .line 1118
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/VideoPageStatus;->isInLastPage()Z

    move-result v2

    .line 1119
    iput-boolean v4, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->inVideoStrip:Z

    goto :goto_3

    :cond_6
    const/4 v0, 0x1

    const/4 v2, 0x1

    const/4 v5, 0x1

    :goto_3
    if-eqz v1, :cond_7

    if-nez v0, :cond_7

    .line 1123
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvUpArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1124
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvDownArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 1126
    :cond_7
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvUpArrow:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1127
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvDownArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    if-eqz v1, :cond_a

    if-eqz v5, :cond_8

    .line 1131
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvUpArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_5

    .line 1133
    :cond_8
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvUpArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_5
    if-eqz v2, :cond_9

    .line 1136
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvDownArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_6

    .line 1138
    :cond_9
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvDownArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_a
    :goto_6
    return-void
.end method


# virtual methods
.method public dismissDialogs()V
    .locals 1

    .line 409
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->dismissDialogsOnPause()V

    .line 410
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mInviteInMeetingDialogFragment:Lus/zoom/zrc/view/InviteInMeetingDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mInviteInMeetingDialogFragment:Lus/zoom/zrc/view/InviteInMeetingDialogFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->dismissAllowingStateLoss()V

    .line 413
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mParticipantsDialog:Lus/zoom/zrc/view/ParticipantsDialogFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lus/zoom/zrc/view/ParticipantsDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mParticipantsDialog:Lus/zoom/zrc/view/ParticipantsDialogFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/ParticipantsDialogFragment;->dismissAllowingStateLoss()V

    .line 416
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mInputEmailDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 417
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mInputEmailDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->dismiss()V

    :cond_2
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 355
    invoke-super {p0, p1}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 356
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->initParticipantsDialog()V

    .line 357
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getMeetingRecordingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->setAllowRecordingState(Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 194
    invoke-super {p0, p1}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->onAttach(Landroid/content/Context;)V

    .line 195
    iput-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->context:Landroid/content/Context;

    const-wide/16 v0, 0x0

    .line 196
    iput-wide v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->lastClickSystemTime:J

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 511
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->lastClickSystemTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 512
    :cond_0
    invoke-super {p0, p1}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->onClick(Landroid/view/View;)V

    .line 513
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->lastClickSystemTime:J

    .line 514
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mBack:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 515
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->context:Landroid/content/Context;

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 516
    sget v0, Lus/zoom/zrcbox/R$anim;->slide_in_bottom:I

    sget v1, Lus/zoom/zrcbox/R$anim;->slide_out_bottom:I

    sget v2, Lus/zoom/zrcbox/R$anim;->slide_in_bottom:I

    sget v3, Lus/zoom/zrcbox/R$anim;->slide_out_bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 517
    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    .line 518
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mParticipants:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 519
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mParticipantsDialog:Lus/zoom/zrc/view/ParticipantsDialogFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/view/ParticipantsDialogFragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_17

    .line 520
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mParticipantsDialog:Lus/zoom/zrc/view/ParticipantsDialogFragment;

    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/view/ParticipantsDialogFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrc/view/ParticipantsDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 521
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvGalleryView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_9

    .line 522
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mVideoLayoutViewSelectDialogFragment:Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;

    if-eqz p1, :cond_3

    .line 523
    invoke-virtual {p1, p0}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->setOptionsDismissListener(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;)V

    .line 525
    :cond_3
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isSwitchFloatingShareContentSupported()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 526
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 527
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mVideoLayoutViewSelectDialogFragment:Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_17

    .line 528
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mVideoLayoutViewSelectDialogFragment:Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;

    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 531
    :cond_4
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->canVideoControlShowInSingleScreen()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isFloatingVideoStripSupported()Z

    move-result p1

    if-nez p1, :cond_5

    .line 532
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ft_options_speaker_view:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->isVisible()Z

    move-result p1

    if-nez p1, :cond_17

    .line 533
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ft_options_speaker_view:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ft_options_speaker_view:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 536
    :cond_5
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getQuantityOfScreens()I

    move-result p1

    if-ne p1, v1, :cond_6

    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isFloatingVideoStripSupported()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 537
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 538
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mVideoLayoutViewSelectDialogFragment:Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_17

    .line 539
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mVideoLayoutViewSelectDialogFragment:Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;

    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 542
    :cond_6
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 545
    :cond_7
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isCanSwitchWallview()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 546
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isInWallview()Z

    move-result p1

    if-nez p1, :cond_8

    .line 547
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    invoke-virtual {p1, v1}, Lus/zoom/zrcsdk/ConfApp;->updateWallviewStyle(I)I

    goto/16 :goto_0

    .line 549
    :cond_8
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/ConfApp;->updateWallviewStyle(I)I

    goto/16 :goto_0

    .line 555
    :cond_9
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvUpArrow:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_a

    .line 556
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    const/4 v0, 0x0

    iget-boolean v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->inVideoStrip:Z

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrcsdk/ConfApp;->turnVideoPage(ZZ)I

    goto/16 :goto_0

    .line 557
    :cond_a
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvDownArrow:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_b

    .line 558
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    iget-boolean v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->inVideoStrip:Z

    invoke-virtual {p1, v1, v0}, Lus/zoom/zrcsdk/ConfApp;->turnVideoPage(ZZ)I

    goto/16 :goto_0

    .line 559
    :cond_b
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mOptions:Landroid/view/View;

    if-ne p1, v0, :cond_d

    .line 560
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->canVideoControlShowInSingleScreen()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 561
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->canVideoControlShowInSpeaker()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 562
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ft_options_speaker_view:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->isVisible()Z

    move-result p1

    if-nez p1, :cond_17

    .line 563
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ft_options_speaker_view:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ft_options_speaker_view:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 565
    :cond_c
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->canVideoControlShowInFloatingVideoStrip()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 566
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->isVisible()Z

    move-result p1

    if-nez p1, :cond_17

    .line 567
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 571
    :cond_d
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvRecording:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_13

    .line 572
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getMeetingRecordingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;

    move-result-object p1

    if-nez p1, :cond_e

    return-void

    .line 574
    :cond_e
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getMeetingRecordingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;->isAmIRecording()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 575
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->showFinishRecordDialog()V

    goto/16 :goto_0

    .line 577
    :cond_f
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getCloudRecordingNotificationEmail()Ljava/lang/String;

    move-result-object p1

    .line 578
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    if-nez v0, :cond_10

    return-void

    .line 582
    :cond_10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 583
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->hasScheduleOption2()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 584
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->scheduleOption2PromptForEmailBeforeRecording()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 585
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->showInputEmailDialog()V

    return-void

    .line 589
    :cond_11
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isAmIOriginalHost()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getHostUserType()I

    move-result v0

    sget v2, Lus/zoom/zrcsdk/model/ZRCHostUserType;->ZRCHostUserTypeCorp:I

    if-eq v0, v2, :cond_12

    .line 590
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->showInputEmailDialog()V

    return-void

    .line 595
    :cond_12
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v0

    invoke-virtual {v0, v1, v1, p1}, Lus/zoom/zrcsdk/ConfApp;->setMeetingRecording(ZZLjava/lang/String;)I

    goto :goto_0

    .line 597
    :cond_13
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mMeetingInvite:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_14

    .line 598
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mInviteInMeetingDialogFragment:Lus/zoom/zrc/view/InviteInMeetingDialogFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_17

    .line 599
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mInviteInMeetingDialogFragment:Lus/zoom/zrc/view/InviteInMeetingDialogFragment;

    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->context:Landroid/content/Context;

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->SHOW_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 600
    :cond_14
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvSwitchCameraForVideo:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_15

    .line 601
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->clickToSwitchCamera()V

    goto :goto_0

    .line 602
    :cond_15
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ivChangeContentIcon:Landroid/widget/ImageView;

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->tvChangeContentText:Landroid/widget/TextView;

    if-ne p1, v0, :cond_17

    .line 603
    :cond_16
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->meetingRedPointController:Lus/zoom/zrc/view/MeetingRedPointController;

    invoke-virtual {p1}, Lus/zoom/zrc/view/MeetingRedPointController;->onClickChangeContent()V

    .line 604
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->zrcChangeContentPhoneDialogFragment:Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_17

    .line 605
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->zrcChangeContentPhoneDialogFragment:Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;

    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_17
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 201
    invoke-super {p0, p1}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->onCreate(Landroid/os/Bundle;)V

    .line 202
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->listener:Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/AppEngine;->addZRMeetingEventListener(Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;)V

    .line 203
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->onPinUserManagerPropertyChanged:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/ZRCPinUserManager;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 204
    new-instance p1, Lus/zoom/zrc/settings/SettingsFragment;

    invoke-direct {p1}, Lus/zoom/zrc/settings/SettingsFragment;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mSettingsInMeetingDialogFragment:Landroidx/fragment/app/DialogFragment;

    .line 205
    new-instance p1, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;

    invoke-direct {p1}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mInviteInMeetingDialogFragment:Lus/zoom/zrc/view/InviteInMeetingDialogFragment;

    .line 207
    new-instance p1, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;

    invoke-direct {p1}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mWaitingDialogFragment:Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;

    .line 208
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mWaitingDialogFragment:Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;->setCancelable(Z)V

    .line 210
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Lus/zoom/zrc/base/notification/NotificationEvent;

    sget-object v2, Lus/zoom/zrc/base/notification/UserEvent;->EnterSipCall:Lus/zoom/zrc/base/notification/UserEvent;

    aput-object v2, v1, v0

    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->SetMeetingRecordingResult:Lus/zoom/zrc/base/notification/ModelEvent;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerNotification([Lus/zoom/zrc/base/notification/NotificationEvent;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
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

    .line 236
    sget p3, Lus/zoom/zrcbox/R$layout;->meeting_phone_more_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 237
    sget p2, Lus/zoom/zrcbox/R$id;->zrc_back:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mBack:Landroid/widget/ImageView;

    .line 238
    sget p2, Lus/zoom/zrcbox/R$id;->iv_participants:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mParticipants:Landroid/widget/ImageView;

    .line 239
    sget p2, Lus/zoom/zrcbox/R$id;->tv_participants:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mTvParticipants:Landroid/widget/TextView;

    .line 240
    sget p2, Lus/zoom/zrcbox/R$id;->tv_participants_count:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mTvParticipantsCount:Landroid/widget/TextView;

    .line 241
    sget p2, Lus/zoom/zrcbox/R$id;->iv_switch_camera_for_video:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvSwitchCameraForVideo:Landroid/widget/ImageView;

    .line 242
    sget p2, Lus/zoom/zrcbox/R$id;->iv_invite:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mMeetingInvite:Landroid/widget/ImageView;

    .line 243
    sget p2, Lus/zoom/zrcbox/R$id;->rl_gallery_view_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->rlGalleryLayout:Landroid/widget/RelativeLayout;

    .line 244
    sget p2, Lus/zoom/zrcbox/R$id;->iv_gallery_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvGalleryView:Landroid/widget/ImageView;

    .line 245
    sget p2, Lus/zoom/zrcbox/R$id;->tv_gallery_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mTvGalleryView:Landroid/widget/TextView;

    .line 246
    sget p2, Lus/zoom/zrcbox/R$id;->iv_recording:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvRecording:Landroid/widget/ImageView;

    .line 247
    sget p2, Lus/zoom/zrcbox/R$id;->tv_recording:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mTvRecording:Landroid/widget/TextView;

    .line 248
    sget p2, Lus/zoom/zrcbox/R$id;->ll_switch_camera_for_video:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mLLSwitchCameraForVideo:Landroid/view/View;

    .line 249
    sget p2, Lus/zoom/zrcbox/R$id;->tv_notice:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mTvNotice:Landroid/widget/TextView;

    .line 250
    sget p2, Lus/zoom/zrcbox/R$id;->meeting_options_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mOptions:Landroid/view/View;

    .line 251
    sget p2, Lus/zoom/zrcbox/R$id;->iv_up_arrow:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvUpArrow:Landroid/widget/ImageView;

    .line 252
    sget p2, Lus/zoom/zrcbox/R$id;->iv_down_arrow:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvDownArrow:Landroid/widget/ImageView;

    .line 255
    sget p2, Lus/zoom/zrcbox/R$id;->rl_change_content_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->rlChangeContentLayout:Landroid/widget/RelativeLayout;

    .line 256
    sget p2, Lus/zoom/zrcbox/R$id;->iv_change_content_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ivChangeContentIcon:Landroid/widget/ImageView;

    .line 257
    sget p2, Lus/zoom/zrcbox/R$id;->tv_share_sources_count:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->tvShareSourceCount:Landroid/widget/TextView;

    .line 258
    sget p2, Lus/zoom/zrcbox/R$id;->tv_change_content_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->tvChangeContentText:Landroid/widget/TextView;

    .line 259
    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ivChangeContentIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->tvChangeContentText:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    new-instance p2, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;

    invoke-direct {p2}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;-><init>()V

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->zrcChangeContentPhoneDialogFragment:Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;

    .line 265
    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mBack:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mParticipants:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvSwitchCameraForVideo:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mMeetingInvite:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvGalleryView:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvRecording:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mOptions:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvUpArrow:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvDownArrow:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    new-instance p2, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;

    invoke-direct {p2}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;-><init>()V

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mVideoLayoutViewSelectDialogFragment:Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;

    .line 275
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-class p3, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ft_options_speaker_view:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    .line 276
    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ft_options_speaker_view:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    if-nez p2, :cond_0

    .line 277
    new-instance p2, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-direct {p2}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;-><init>()V

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ft_options_speaker_view:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    .line 279
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-class p3, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    .line 280
    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    if-nez p2, :cond_1

    .line 281
    new-instance p2, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    invoke-direct {p2}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;-><init>()V

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    .line 284
    :cond_1
    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mMeetingInvite:Landroid/widget/ImageView;

    invoke-direct {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->isInviteEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 285
    sget p2, Lus/zoom/zrcbox/R$id;->tv_invite:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->inviteLabel:Landroid/widget/TextView;

    .line 286
    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->inviteLabel:Landroid/widget/TextView;

    invoke-direct {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->isInviteEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 288
    new-instance p2, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$3;

    invoke-direct {p2, p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$3;-><init>(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->updateParticipantCount()V

    .line 296
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->updateParticipantButtonText()V

    .line 299
    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvGalleryView:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 300
    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mTvGalleryView:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 302
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mParticipants:Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    .line 304
    new-instance p3, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$4;

    invoke-direct {p3, p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$4;-><init>(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p2, p3, v0, v1}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 313
    :cond_2
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/AppModel;->getVideoStatus()Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    move-result-object p2

    invoke-virtual {p0, p2}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->updateSwitchCameraView(Lus/zoom/zrcsdk/model/ZRCVideoStatus;)V

    .line 314
    new-instance p2, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$InviteProcessor;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$InviteProcessor;-><init>(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$1;)V

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mInviteProcessor:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$InviteProcessor;

    .line 315
    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mMeetingInvite:Landroid/widget/ImageView;

    iget-object p3, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mInviteProcessor:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$InviteProcessor;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 501
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->onPinUserManagerPropertyChanged:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/ZRCPinUserManager;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 502
    invoke-super {p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->onDestroy()V

    .line 503
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->listener:Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppEngine;->removeZRMeetingEventListener(Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;)V

    .line 504
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->switchCameraPopupWindow:Lus/zoom/zrc/view/SwitchCameraPopupWindow;

    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {v0}, Lus/zoom/zrc/view/SwitchCameraPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 402
    invoke-super {p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->onPause()V

    .line 405
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->dismissDialogsOnPause()V

    return-void
.end method

.method public onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 0

    .line 215
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    .line 216
    sget-object p2, Lus/zoom/zrc/base/notification/UserEvent;->EnterSipCall:Lus/zoom/zrc/base/notification/UserEvent;

    if-ne p1, p2, :cond_0

    .line 217
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->onEnterSipCall()V

    goto :goto_0

    .line 218
    :cond_0
    sget-object p2, Lus/zoom/zrc/base/notification/ModelEvent;->SetMeetingRecordingResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, p2, :cond_1

    .line 219
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->dismissInputEmailDialog()V

    .line 220
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->dismissFinishRecordDialog()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 321
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 322
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->amIHost:I

    if-eq p1, p2, :cond_1

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->amICoHost:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 325
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->participantList:I

    if-ne p1, p2, :cond_2

    .line 326
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->updateParticipantCount()V

    goto :goto_1

    .line 323
    :cond_1
    :goto_0
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->updateParticipantButtonText()V

    .line 324
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->updateParticipantCount()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 391
    invoke-super {p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->onResume()V

    .line 392
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getMeetingRecordingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->setAllowRecordingState(Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;)V

    .line 393
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->updateOptionsVisible()V

    .line 394
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoPageStatus()Lus/zoom/zrcsdk/model/VideoPageStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->updateTurnVideoArrowStatus(Lus/zoom/zrcsdk/model/VideoPageStatus;)V

    .line 395
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->updateGalleryViewStatus(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V

    .line 396
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->updateSwitchCameraContainer(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)V

    .line 397
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoStatus()Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->updateSwitchCameraView(Lus/zoom/zrcsdk/model/ZRCVideoStatus;)V

    return-void
.end method

.method public onSetCloudRecordingNotificationEmailResult(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 880
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getCloudRecordingNotificationEmail()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v1, v0}, Lus/zoom/zrcsdk/ConfApp;->setMeetingRecording(ZZLjava/lang/String;)I

    goto :goto_0

    .line 882
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$string;->failed_to_set_cloud_recording_notification_email:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 883
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/Model;->setCloudRecordingNotificationEmail(Ljava/lang/String;)V

    .line 885
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mTvNotice:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onUpdateIsOnEntryMuted(Z)V
    .locals 1

    .line 704
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mParticipantsDialog:Lus/zoom/zrc/view/ParticipantsDialogFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/ParticipantsDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mParticipantsDialog:Lus/zoom/zrc/view/ParticipantsDialogFragment;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/ParticipantsDialogFragment;->onUpdateIsOnEntryMuted(Z)V

    :cond_0
    return-void
.end method

.method public onUpdateMeetingLockStatus(Z)V
    .locals 1

    .line 953
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mInviteProcessor:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$InviteProcessor;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$InviteProcessor;->onUpdateLockMeetingState(Z)V

    .line 954
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mParticipantsDialog:Lus/zoom/zrc/view/ParticipantsDialogFragment;

    if-eqz v0, :cond_0

    .line 955
    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/ParticipantsDialogFragment;->updateLockMeetingState(Z)V

    :cond_0
    return-void
.end method

.method public onUpdateMeetingRecordingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;)V
    .locals 0
    .param p1    # Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 457
    invoke-direct {p0, p1}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->setAllowRecordingState(Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;)V

    .line 458
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;->isAmIRecording()Z

    move-result p1

    if-nez p1, :cond_0

    .line 459
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->dismissFinishRecordDialog()V

    :cond_0
    return-void
.end method

.method public onUpdateMeetingSharingStatusSub(Lus/zoom/zrcsdk/model/ZRCSharingStatus;)V
    .locals 1

    .line 868
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->getPageStatus()Lus/zoom/zrcsdk/model/VideoPageStatus;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 869
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 870
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->getPageStatus()Lus/zoom/zrcsdk/model/VideoPageStatus;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->changeVideoIcon(Lus/zoom/zrcsdk/model/VideoPageStatus;)V

    .line 873
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ft_options_speaker_view:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 874
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ft_options_speaker_view:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->changeVideoIcon()V

    :cond_1
    return-void
.end method

.method public onUpdateVideoThumbInfoSub(Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)V
    .locals 4

    const-string v0, ""

    .line 854
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoThumbInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, ""

    .line 855
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSwitchFloatingShareContentSupported="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isSwitchFloatingShareContentSupported()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 856
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->updateOptionsVisible()V

    .line 857
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->getPageStatus()Lus/zoom/zrcsdk/model/VideoPageStatus;

    move-result-object p1

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->changeVideoIcon(Lus/zoom/zrcsdk/model/VideoPageStatus;)V

    .line 859
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->updateSwapContentLayoutVisible()V

    .line 862
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 863
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->updateVideoLayoutChangerView(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V

    :cond_1
    return-void
.end method

.method public optionsDismiss()V
    .locals 2

    .line 711
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mOptions:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateGalleryViewStatus(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V
    .locals 5

    .line 717
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->updateOptionsVisible()V

    .line 718
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ft_options_speaker_view:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ft_options_speaker_view:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->changeVideoIcon()V

    .line 720
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ft_options_speaker_view:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->updateSwapContentLayoutVisible()V

    .line 723
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 724
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->updateSwapContentLayoutVisible()V

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 732
    :cond_2
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isInWallview()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 733
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvGalleryView:Landroid/widget/ImageView;

    sget v2, Lus/zoom/zrcbox/R$drawable;->gallery:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 734
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mTvGalleryView:Landroid/widget/TextView;

    sget v2, Lus/zoom/zrcbox/R$string;->change_view:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x3

    goto :goto_0

    .line 737
    :cond_3
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isInFloatingVideoStrip()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 738
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvGalleryView:Landroid/widget/ImageView;

    sget v2, Lus/zoom/zrcbox/R$drawable;->meeting_thumbnail:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 739
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mTvGalleryView:Landroid/widget/TextView;

    sget v2, Lus/zoom/zrcbox/R$string;->change_view:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x2

    goto :goto_0

    .line 742
    :cond_4
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvGalleryView:Landroid/widget/ImageView;

    sget v2, Lus/zoom/zrcbox/R$drawable;->meeting_speaker:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 743
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mTvGalleryView:Landroid/widget/TextView;

    sget v2, Lus/zoom/zrcbox/R$string;->change_view:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x1

    .line 747
    :goto_0
    iget-object v2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvGalleryView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 748
    iget-object v2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mTvGalleryView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 749
    iget-object v2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->rlChangeContentLayout:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 750
    iget-object v2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->rlGalleryLayout:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 752
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isSwitchFloatingShareContentSupported()Z

    move-result v2

    if-nez v2, :cond_6

    .line 753
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isCanSwitchWallview()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isFloatingVideoStripSupported()Z

    move-result v2

    if-nez v2, :cond_5

    .line 754
    iget-object v2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvGalleryView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 755
    iget-object v2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mTvGalleryView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 757
    :cond_5
    iget-object v2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvGalleryView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 758
    iget-object v2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mTvGalleryView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 760
    :goto_1
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->canVideoControlShowInSingleScreen()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 761
    iget-object v2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvGalleryView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 762
    iget-object v2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mTvGalleryView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 763
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isFloatingVideoStripSupported()Z

    move-result v1

    if-nez v1, :cond_a

    .line 764
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvGalleryView:Landroid/widget/ImageView;

    sget v1, Lus/zoom/zrcbox/R$drawable;->meeting_video_control:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 765
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mTvGalleryView:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->video_control:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x5

    goto/16 :goto_2

    .line 770
    :cond_6
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/AppModel;->getQuantityOfScreens()I

    move-result v2

    if-le v2, v1, :cond_9

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isCanSwitchWallview()Z

    move-result v2

    if-nez v2, :cond_9

    .line 771
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->canVideoLayoutPopoverShowInShareOnAllScreensSupported()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 772
    iget-object v2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvGalleryView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 773
    iget-object v2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mTvGalleryView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    .line 775
    :cond_7
    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {v1}, Lus/zoom/zrc/model/ZRCPinUserManager;->shouldShowChangeContent()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 776
    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->rlGalleryLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 777
    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->tvShareSourceCount:Landroid/widget/TextView;

    iget-object v2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {v2}, Lus/zoom/zrc/model/ZRCPinUserManager;->getAllShareSources()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 778
    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->rlChangeContentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 779
    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ivChangeContentIcon:Landroid/widget/ImageView;

    sget v2, Lus/zoom/zrcbox/R$drawable;->content_view:I

    invoke-direct {p0, v1, v2}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->drawImageViewRedCircle(Landroid/widget/ImageView;I)V

    goto :goto_2

    .line 781
    :cond_8
    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->rlChangeContentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 782
    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->rlGalleryLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 783
    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvGalleryView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 784
    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mTvGalleryView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 785
    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mVideoLayoutViewSelectDialogFragment:Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 786
    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mVideoLayoutViewSelectDialogFragment:Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;

    invoke-virtual {v1}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->dismissAllowingStateLoss()V

    goto :goto_2

    .line 791
    :cond_9
    iget-object v2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvGalleryView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 792
    iget-object v2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mTvGalleryView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 796
    :cond_a
    :goto_2
    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mVideoLayoutViewSelectDialogFragment:Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 797
    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mVideoLayoutViewSelectDialogFragment:Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->onUpdateMeetingVideoLayoutUI(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V

    .line 800
    :cond_b
    invoke-virtual {p0, p1}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->updateVideoLayoutChangerView(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V

    .line 802
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isSwitchFloatingShareContentSupported()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isInShareOnAllScreens()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 803
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvGalleryView:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->content_view:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 804
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mTvGalleryView:Landroid/widget/TextView;

    sget v0, Lus/zoom/zrcbox/R$string;->change_view:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x4

    .line 808
    :cond_c
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->shouldShowRedPointOnChangeContent()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 809
    invoke-direct {p0, v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->updateGalleryViewIcon(I)V

    :cond_d
    return-void
.end method

.method public updateOptionsVisible()V
    .locals 3

    .line 821
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->canVideoControlShowInFloatingVideoStripSupported()Z

    move-result v0

    .line 822
    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mOptions:Landroid/view/View;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    .line 823
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 825
    :cond_1
    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ft_options_speaker_view:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 826
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isSwitchFloatingShareContentSupported()Z

    move-result v1

    if-nez v1, :cond_2

    .line 827
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->canVideoControlShowInSingleScreen()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 828
    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ft_options_speaker_view:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->onUpdateVideoThumbInfo(Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)V

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    .line 832
    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ft_options_speaker_view:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-virtual {v1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->dismiss()V

    goto :goto_1

    .line 834
    :cond_3
    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ft_options_speaker_view:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->onUpdateVideoThumbInfo(Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)V

    .line 838
    :cond_4
    :goto_1
    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez v0, :cond_5

    .line 840
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->dismiss()V

    :cond_5
    return-void
.end method

.method public updateSwitchCameraContainer(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)V
    .locals 1
    .param p1    # Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 908
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mLLSwitchCameraForVideo:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 910
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->isCanSwitchCamera()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 911
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mLLSwitchCameraForVideo:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 913
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mLLSwitchCameraForVideo:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public updateSwitchCameraView(Lus/zoom/zrcsdk/model/ZRCVideoStatus;)V
    .locals 1
    .param p1    # Lus/zoom/zrcsdk/model/ZRCVideoStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 895
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvSwitchCameraForVideo:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 898
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->isSending()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 899
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvSwitchCameraForVideo:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 901
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->mIvSwitchCameraForVideo:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public updateTurnVideoArrowStatus(Lus/zoom/zrcsdk/model/VideoPageStatus;)V
    .locals 1

    .line 846
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->updateTurnVideoArrowStatus(Lus/zoom/zrcsdk/model/VideoPageStatus;)V

    .line 848
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->updateSwapContentLayoutVisible()V

    .line 850
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->updateVideoArrowStatus()V

    return-void
.end method

.method public updateVideoLayoutChangerView(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V
    .locals 1

    .line 814
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->updateVideoLayoutChangerView(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V

    .line 817
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->updateVideoArrowStatus()V

    return-void
.end method
