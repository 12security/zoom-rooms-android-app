.class public Lus/zoom/zrc/view/MeetingMainControllerFragment;
.super Lus/zoom/zrc/view/CommonMeetingControlFragment;
.source "MeetingMainControllerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment$NotifyMeetingMainControllerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MeetingMainControllerFragment"


# instance fields
.field private final cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

.field private cameraControlCallbacks:Lus/zoom/zrc/camera_control/view/CameraControlCallbacks;

.field private ft_options_speaker_view:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

.field private ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

.field private inVideoStrip:Z

.field private isMultiShareBefore:Z

.field private ivChangeContentIcon:Landroid/widget/ImageView;

.field private layoutParticipants:Landroid/view/View;

.field private llChangeContentLayout:Landroid/widget/LinearLayout;

.field private llGalleryLayout:Landroid/widget/LinearLayout;

.field private llMeetingId:Landroid/widget/LinearLayout;

.field private mCameraControl:Landroid/widget/ImageView;

.field private mCameraControlDialogFragment:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

.field private mDisplayedDialog:Landroid/app/Dialog;

.field private mDisplayedDialogFragment:Landroidx/fragment/app/DialogFragment;

.field private mHandler:Landroid/os/Handler;

.field private mInputEmailDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

.field private mInviteInMeetingDialogFragment:Lus/zoom/zrc/view/InviteInMeetingDialogFragment;

.field private mInviteProcessor:Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;

.field private mIvDownArrow:Landroid/widget/ImageView;

.field private mIvGalleryView:Landroid/widget/ImageView;

.field private mIvRecording:Landroid/widget/ImageView;

.field private mIvSwitchCameraForVideo:Landroid/widget/ImageView;

.field private mIvUpArrow:Landroid/widget/ImageView;

.field private mLLSwitchCameraForVideo:Landroid/widget/LinearLayout;

.field private mMeetingId:Landroid/widget/TextView;

.field private mMeetingInfo:Landroid/widget/ImageButton;

.field private mMeetingInfoDialog:Landroid/app/Dialog;

.field private mMeetingInformationView:Lus/zoom/zrc/view/MeetingInformationView;

.field private mMuteUnmuteMicrophone:Landroid/widget/ImageView;

.field private mOptions:Landroid/view/View;

.field private mParticipants:Landroid/widget/ImageView;

.field private mParticipantsDialog:Lus/zoom/zrc/view/ParticipantsDialogFragment;

.field private mRoomName:Landroid/widget/TextView;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mShareContent:Landroid/widget/ImageView;

.field private mShareContentTextView:Landroid/widget/TextView;

.field private mSpeakerVolumeControl:Landroid/view/View;

.field private mSpeakerVolumeLabel:Lus/zoom/zrc/view/ZRCTextView;

.field private mStartStopVideo:Landroid/widget/ImageView;

.field private mTvCameraControl:Landroid/widget/TextView;

.field private mTvGalleryView:Lus/zoom/zrc/view/ZRCTextView;

.field private mTvMuteMicrophone:Landroid/widget/TextView;

.field private mTvNotice:Landroid/widget/TextView;

.field private mTvParticipants:Landroid/widget/TextView;

.field private mTvParticipantsCount:Landroid/widget/TextView;

.field private mTvRecording:Landroid/widget/TextView;

.field private mTvStartStopVideo:Landroid/widget/TextView;

.field private mTvSwitchCameraForVideo:Landroid/widget/TextView;

.field private mVideoLayoutViewSelectDialogFragment:Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;

.field private mVolumeDecrease:Landroid/widget/ImageView;

.field private mVolumeIncrease:Landroid/widget/ImageView;

.field private mWaitingDialogFragment:Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;

.field private onPinUserManagerPropertyChanged:Landroidx/databinding/Observable$OnPropertyChangedCallback;

.field private settingLockedListener:Lus/zoom/zrc/utils/DeviceInfoObserver$SettingLockerListener;

.field private switchCameraPopupWindow:Lus/zoom/zrc/view/SwitchCameraPopupWindow;

.field private tvShareSourcesCount:Landroid/widget/TextView;

.field private zrcChangeContentDialogFragment:Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;

.field private zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment;-><init>()V

    .line 99
    new-instance v0, Lus/zoom/zrc/view/MeetingMainControllerFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment$1;-><init>(Lus/zoom/zrc/view/MeetingMainControllerFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->cameraControlCallbacks:Lus/zoom/zrc/camera_control/view/CameraControlCallbacks;

    .line 105
    new-instance v0, Lus/zoom/zrc/view/MeetingMainControllerFragment$2;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment$2;-><init>(Lus/zoom/zrc/view/MeetingMainControllerFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->settingLockedListener:Lus/zoom/zrc/utils/DeviceInfoObserver$SettingLockerListener;

    .line 167
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mHandler:Landroid/os/Handler;

    .line 176
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getPinUserManager()Lus/zoom/zrc/model/ZRCPinUserManager;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    .line 177
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCPinUserManager;->getMeetingShareSettings()Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;->isMultiShare()Z

    move-result v0

    iput-boolean v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->isMultiShareBefore:Z

    .line 179
    new-instance v0, Lus/zoom/zrc/view/MeetingMainControllerFragment$3;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment$3;-><init>(Lus/zoom/zrc/view/MeetingMainControllerFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->onPinUserManagerPropertyChanged:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    .line 1357
    new-instance v0, Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    invoke-direct {v0}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/MeetingMainControllerFragment;)Z
    .locals 0

    .line 89
    iget-boolean p0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->isMultiShareBefore:Z

    return p0
.end method

.method static synthetic access$002(Lus/zoom/zrc/view/MeetingMainControllerFragment;Z)Z
    .locals 0

    .line 89
    iput-boolean p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->isMultiShareBefore:Z

    return p1
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/MeetingMainControllerFragment;)Lus/zoom/zrc/model/ZRCPinUserManager;
    .locals 0

    .line 89
    iget-object p0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    return-object p0
.end method

.method static synthetic access$1000(Lus/zoom/zrc/view/MeetingMainControllerFragment;)Lus/zoom/zrc/view/InviteInMeetingDialogFragment;
    .locals 0

    .line 89
    iget-object p0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mInviteInMeetingDialogFragment:Lus/zoom/zrc/view/InviteInMeetingDialogFragment;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/zrc/view/MeetingMainControllerFragment;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->doAccessibility()V

    return-void
.end method

.method static synthetic access$400(Lus/zoom/zrc/view/MeetingMainControllerFragment;)Lus/zoom/zrc/base/app/ZRCAlertDialog;
    .locals 0

    .line 89
    iget-object p0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mInputEmailDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    return-object p0
.end method

.method static synthetic access$500(Lus/zoom/zrc/view/MeetingMainControllerFragment;)Landroid/widget/TextView;
    .locals 0

    .line 89
    iget-object p0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvNotice:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lus/zoom/zrc/view/MeetingMainControllerFragment;)Landroid/app/Dialog;
    .locals 0

    .line 89
    iget-object p0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mDisplayedDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$602(Lus/zoom/zrc/view/MeetingMainControllerFragment;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 89
    iput-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mDisplayedDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$800(Lus/zoom/zrc/view/MeetingMainControllerFragment;)Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;
    .locals 0

    .line 89
    iget-object p0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mWaitingDialogFragment:Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;

    return-object p0
.end method

.method static synthetic access$900(Lus/zoom/zrc/view/MeetingMainControllerFragment;)Landroid/os/Handler;
    .locals 0

    .line 89
    iget-object p0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private clickToSwitchCamera()V
    .locals 4

    .line 1360
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    .line 1361
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getZrcFeatureListInfo()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1362
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isCanSwitchToSpecificCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1363
    :goto_0
    iget-object v2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    invoke-virtual {v2, v0}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->sizeOfCompatibleCameras(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)I

    move-result v2

    if-eqz v1, :cond_2

    if-lez v2, :cond_1

    const/4 v1, 0x2

    if-gt v2, v1, :cond_1

    goto :goto_1

    .line 1378
    :cond_1
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    invoke-static {v0}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->getCompatibleCameras(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)Ljava/util/List;

    move-result-object v0

    .line 1379
    invoke-direct {p0, v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->showSwitchableCameraListPopupWindow(Ljava/util/List;)V

    goto :goto_2

    .line 1369
    :cond_2
    :goto_1
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    invoke-static {v0}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->getCompatibleCameras(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)Ljava/util/List;

    move-result-object v0

    .line 1370
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    .line 1371
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isSelected()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1372
    new-instance v0, Lus/zoom/zrc/camera_control/model/eventparam/SwitchCameraEventParameters;

    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v1

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lus/zoom/zrc/camera_control/model/eventparam/SwitchCameraEventParameters;-><init>(Lus/zoom/zrcsdk/ConfApp;Lus/zoom/zrc/model/AppModel;Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    .line 1373
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->cameraControl:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    new-instance v2, Lus/zoom/zrc/camera_control/ctrl/CameraControl$SwitchCamCameraControlEvent;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v1, v0}, Lus/zoom/zrc/camera_control/ctrl/CameraControl$SwitchCamCameraControlEvent;-><init>(Lus/zoom/zrc/camera_control/ctrl/CameraControl;Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;)V

    invoke-virtual {v1, v2}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->run(Lus/zoom/zrc/camera_control/model/Executable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private dismissFinishRecordDialog()V
    .locals 2

    .line 706
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/view/CloudRecordingStopDialog;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->dismissDialogFragment(Ljava/lang/Class;)V

    return-void
.end method

.method private dismissInputEmailDialog()V
    .locals 2

    .line 1098
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mInputEmailDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mInputEmailDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    sget v1, Lus/zoom/zrcbox/R$id;->edit_text:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1100
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lus/zoom/androidlib/util/UIUtil;->closeSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 1101
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mInputEmailDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private doAccessibility()V
    .locals 2

    .line 728
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 729
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 730
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 731
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 732
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 733
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 735
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->llMeetingId:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 736
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->llMeetingId:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->sendAccessibilityFocusEvent(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private drawImageViewRedCircle(Landroid/widget/ImageView;I)V
    .locals 2

    .line 1470
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1471
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1472
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->shouldShowRedPointOnChangeContent()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1471
    invoke-static {v0, v1, p2}, Lus/zoom/zrc/utils/ZRCUIUtils;->drawMultiShareIconInstruction(Landroid/content/Context;Ljava/lang/Boolean;I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private initMeetingInformationDialog()V
    .locals 3

    .line 997
    new-instance v0, Lus/zoom/zrc/base/app/ZRCDialog;

    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lus/zoom/zrc/base/app/ZRCDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mMeetingInfoDialog:Landroid/app/Dialog;

    .line 998
    new-instance v0, Lus/zoom/zrc/view/MeetingInformationView;

    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lus/zoom/zrc/view/MeetingInformationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mMeetingInformationView:Lus/zoom/zrc/view/MeetingInformationView;

    .line 1001
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mMeetingInfoDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1002
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mMeetingInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lus/zoom/zrc/utils/Util;->getHeight(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/4 v2, -0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setLayout(II)V

    .line 1003
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mMeetingInfoDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mMeetingInformationView:Lus/zoom/zrc/view/MeetingInformationView;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private initParticipantsDialog()V
    .locals 1

    .line 1007
    new-instance v0, Lus/zoom/zrc/view/ParticipantsDialogFragment;

    invoke-direct {v0}, Lus/zoom/zrc/view/ParticipantsDialogFragment;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mParticipantsDialog:Lus/zoom/zrc/view/ParticipantsDialogFragment;

    return-void
.end method

.method private isInviteEnabled()Z
    .locals 3

    .line 1448
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->isPairedWithoutLogin()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1451
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

    .line 1453
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

    .line 1456
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

    .line 1462
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

    .line 1466
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

    .line 220
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mInviteInMeetingDialogFragment:Lus/zoom/zrc/view/InviteInMeetingDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mInviteInMeetingDialogFragment:Lus/zoom/zrc/view/InviteInMeetingDialogFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->dismiss()V

    .line 223
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mParticipantsDialog:Lus/zoom/zrc/view/ParticipantsDialogFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lus/zoom/zrc/view/ParticipantsDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mParticipantsDialog:Lus/zoom/zrc/view/ParticipantsDialogFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/ParticipantsDialogFragment;->dismiss()V

    :cond_1
    return-void
.end method

.method private onSetMeetingRecordingResult(Z)V
    .locals 2

    .line 229
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->dismissInputEmailDialog()V

    .line 230
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->dismissFinishRecordDialog()V

    if-nez p1, :cond_1

    .line 232
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getMeetingRecordingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 234
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;->isAmIRecording()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 235
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v1, Lus/zoom/zrcbox/R$string;->failed_to_stop_recording:I

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v1, Lus/zoom/zrcbox/R$string;->failed_to_start_recording:I

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method private setSpeakerVolumeControlEnabled(ZZ)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1203
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mSpeakerVolumeControl:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 1204
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mSpeakerVolumeControl:Landroid/view/View;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1205
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mVolumeIncrease:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1206
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1207
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mVolumeDecrease:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1208
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mSpeakerVolumeLabel:Lus/zoom/zrc/view/ZRCTextView;

    if-eqz p1, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/ZRCTextView;->setVisibility(I)V

    .line 1209
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mSpeakerVolumeLabel:Lus/zoom/zrc/view/ZRCTextView;

    const v1, 0x3ee66666    # 0.45f

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/ZRCTextView;->setAlpha(F)V

    if-nez p1, :cond_3

    .line 1211
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mSpeakerVolumeLabel:Lus/zoom/zrc/view/ZRCTextView;

    if-eqz p2, :cond_2

    sget p2, Lus/zoom/zrcbox/R$string;->volume_is_locked:I

    goto :goto_2

    :cond_2
    sget p2, Lus/zoom/zrcbox/R$string;->volume_is_not_adjustable:I

    :goto_2
    invoke-virtual {p1, p2}, Lus/zoom/zrc/view/ZRCTextView;->setText(I)V

    :cond_3
    return-void
.end method

.method private setStateListDrawable(II)V
    .locals 5

    .line 1500
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1502
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1503
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1504
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->shouldShowRedPointOnChangeContent()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1503
    invoke-static {v3, v4, p1}, Lus/zoom/zrc/utils/ZRCUIUtils;->drawMultiShareIconInstruction(Landroid/content/Context;Ljava/lang/Boolean;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    .line 1506
    new-array p1, p1, [I

    const/4 v2, 0x0

    const v3, 0x10100a7

    aput v3, p1, v2

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1507
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1508
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1509
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->shouldShowRedPointOnChangeContent()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1508
    invoke-static {v3, v4, p2}, Lus/zoom/zrc/utils/ZRCUIUtils;->drawMultiShareIconInstruction(Landroid/content/Context;Ljava/lang/Boolean;I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1511
    new-array p2, v2, [I

    invoke-virtual {v0, p2, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1512
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvGalleryView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private showFinishRecordDialog()V
    .locals 2

    .line 702
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/view/CloudRecordingStopDialog;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Ljava/lang/Class;)Landroidx/fragment/app/DialogFragment;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mDisplayedDialogFragment:Landroidx/fragment/app/DialogFragment;

    return-void
.end method

.method private showInputEmailDialog()V
    .locals 4

    .line 1106
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mInputEmailDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1107
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mInputEmailDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->dismiss()V

    .line 1109
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1110
    sget v1, Lus/zoom/zrcbox/R$layout;->edit:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1111
    sget v1, Lus/zoom/zrcbox/R$id;->edit_label:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1112
    sget v2, Lus/zoom/zrcbox/R$id;->edit_text:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 1113
    sget v3, Lus/zoom/zrcbox/R$string;->need_recording_email:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    const/16 v1, 0x21

    .line 1117
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1119
    new-instance v1, Lus/zoom/zrc/view/MeetingMainControllerFragment$6;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment$6;-><init>(Lus/zoom/zrc/view/MeetingMainControllerFragment;)V

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1137
    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 1138
    new-instance v1, Lus/zoom/zrc/view/MeetingMainControllerFragment$7;

    invoke-direct {v1, p0, v2}, Lus/zoom/zrc/view/MeetingMainControllerFragment$7;-><init>(Lus/zoom/zrc/view/MeetingMainControllerFragment;Landroid/widget/EditText;)V

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 1145
    new-instance v1, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1146
    invoke-virtual {v1, v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setView(Landroid/view/View;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->ok:I

    new-instance v3, Lus/zoom/zrc/view/MeetingMainControllerFragment$9;

    invoke-direct {v3, p0, v2}, Lus/zoom/zrc/view/MeetingMainControllerFragment$9;-><init>(Lus/zoom/zrc/view/MeetingMainControllerFragment;Landroid/widget/EditText;)V

    .line 1147
    invoke-virtual {v0, v1, v3}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->cancel:I

    new-instance v3, Lus/zoom/zrc/view/MeetingMainControllerFragment$8;

    invoke-direct {v3, p0, v2}, Lus/zoom/zrc/view/MeetingMainControllerFragment$8;-><init>(Lus/zoom/zrc/view/MeetingMainControllerFragment;Landroid/widget/EditText;)V

    .line 1166
    invoke-virtual {v0, v1, v3}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    move-result-object v0

    .line 1173
    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->create()Lus/zoom/zrc/base/app/ZRCAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mInputEmailDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    .line 1174
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mInputEmailDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    new-instance v1, Lus/zoom/zrc/view/MeetingMainControllerFragment$10;

    invoke-direct {v1, p0, v2}, Lus/zoom/zrc/view/MeetingMainControllerFragment$10;-><init>(Lus/zoom/zrc/view/MeetingMainControllerFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1180
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mInputEmailDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 1181
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 1182
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mInputEmailDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

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

    .line 1385
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->switchCameraPopupWindow:Lus/zoom/zrc/view/SwitchCameraPopupWindow;

    if-nez v0, :cond_0

    .line 1386
    new-instance v0, Lus/zoom/zrc/view/SwitchCameraPopupWindow;

    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lus/zoom/zrc/view/SwitchCameraPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->switchCameraPopupWindow:Lus/zoom/zrc/view/SwitchCameraPopupWindow;

    .line 1388
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->switchCameraPopupWindow:Lus/zoom/zrc/view/SwitchCameraPopupWindow;

    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mLLSwitchCameraForVideo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, v1}, Lus/zoom/zrc/view/SwitchCameraPopupWindow;->show(Ljava/util/List;Landroid/view/View;)V

    return-void
.end method

.method private updateGalleryViewIcon(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1492
    :pswitch_0
    sget p1, Lus/zoom/zrcbox/R$drawable;->video_control_highlighted:I

    sget v0, Lus/zoom/zrcbox/R$drawable;->video_control:I

    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->setStateListDrawable(II)V

    goto :goto_0

    .line 1488
    :pswitch_1
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvGalleryView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1489
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->shouldShowRedPointOnChangeContent()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$drawable;->content_view:I

    .line 1488
    invoke-static {v0, v1, v2}, Lus/zoom/zrc/utils/ZRCUIUtils;->drawMultiShareIconInstruction(Landroid/content/Context;Ljava/lang/Boolean;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1485
    :pswitch_2
    sget p1, Lus/zoom/zrcbox/R$drawable;->gallery_pressed:I

    sget v0, Lus/zoom/zrcbox/R$drawable;->gallery_normal:I

    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->setStateListDrawable(II)V

    goto :goto_0

    .line 1482
    :pswitch_3
    sget p1, Lus/zoom/zrcbox/R$drawable;->thumbnail_pressed:I

    sget v0, Lus/zoom/zrcbox/R$drawable;->thumbnail_normal:I

    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->setStateListDrawable(II)V

    goto :goto_0

    .line 1479
    :pswitch_4
    sget p1, Lus/zoom/zrcbox/R$drawable;->speaker_pressed:I

    sget v0, Lus/zoom/zrcbox/R$drawable;->speaker_normal:I

    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->setStateListDrawable(II)V

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

.method private updateMuteEnableState()V
    .locals 2

    .line 800
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 802
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAudioStatus()Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    move-result-object v0

    .line 803
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 805
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->getAudioType()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 807
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getMicPermissionStatus()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 809
    :goto_0
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mMuteUnmuteMicrophone:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 810
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvMuteMicrophone:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private updateParticipantButtonText()V
    .locals 2

    .line 481
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvParticipants:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 483
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mParticipants:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    return-void

    .line 486
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
    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mParticipants:Landroid/widget/ImageView;

    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvParticipants:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateParticipantCount()V
    .locals 2

    .line 467
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvParticipantsCount:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 470
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 473
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getTotalVisibleParticipantNumber()I

    move-result v0

    .line 475
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvParticipantsCount:Landroid/widget/TextView;

    if-lez v0, :cond_2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->updateParticipantCountAndRedPointContentDescription()V

    return-void
.end method

.method private updateVideoArrowStatus()V
    .locals 8

    .line 1516
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1521
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isInWallview()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 1527
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoPageStatus()Lus/zoom/zrcsdk/model/VideoPageStatus;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1529
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/VideoPageStatus;->isInFirstPage()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/VideoPageStatus;->isInLastPage()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 1530
    :goto_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/VideoPageStatus;->isInFirstPage()Z

    move-result v5

    .line 1531
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/VideoPageStatus;->isInLastPage()Z

    move-result v0

    .line 1532
    iput-boolean v2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->inVideoStrip:Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    :goto_1
    move v7, v4

    move v4, v0

    move v0, v7

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    .line 1536
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v5

    invoke-virtual {v5}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1537
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->getPageStatus()Lus/zoom/zrcsdk/model/VideoPageStatus;

    move-result-object v4

    .line 1539
    :cond_4
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isInFloatingVideoStrip()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v4, :cond_6

    .line 1540
    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/VideoPageStatus;->isInFirstPage()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/VideoPageStatus;->isInLastPage()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .line 1541
    :goto_2
    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/VideoPageStatus;->isInFirstPage()Z

    move-result v5

    .line 1542
    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/VideoPageStatus;->isInLastPage()Z

    move-result v4

    .line 1543
    iput-boolean v3, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->inVideoStrip:Z

    goto :goto_3

    :cond_6
    const/4 v0, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    :goto_3
    if-eqz v1, :cond_7

    if-nez v0, :cond_7

    .line 1547
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvUpArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1548
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvDownArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 1550
    :cond_7
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvUpArrow:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1551
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvDownArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    if-eqz v1, :cond_a

    if-eqz v5, :cond_8

    .line 1555
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvUpArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_5

    .line 1557
    :cond_8
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvUpArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_5
    if-eqz v4, :cond_9

    .line 1560
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvDownArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_6

    .line 1562
    :cond_9
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvDownArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_a
    :goto_6
    return-void
.end method


# virtual methods
.method public LoginInfoPullBack(Lus/zoom/zrcsdk/model/LoginInfo;)V
    .locals 0

    .line 1187
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->onSpeakerVolumeControlStatusChanged()V

    return-void
.end method

.method public dismissDialogs()V
    .locals 1

    .line 252
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->dismissDialogsOnPause()V

    .line 253
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mInviteInMeetingDialogFragment:Lus/zoom/zrc/view/InviteInMeetingDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mInviteInMeetingDialogFragment:Lus/zoom/zrc/view/InviteInMeetingDialogFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->dismissAllowingStateLoss()V

    .line 256
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mParticipantsDialog:Lus/zoom/zrc/view/ParticipantsDialogFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lus/zoom/zrc/view/ParticipantsDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mParticipantsDialog:Lus/zoom/zrc/view/ParticipantsDialogFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/ParticipantsDialogFragment;->dismissAllowingStateLoss()V

    :cond_1
    return-void
.end method

.method public dismissDialogsOnPause()V
    .locals 2

    .line 262
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mCameraControlDialogFragment:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mCameraControlDialogFragment:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->dismissAllowingStateLoss()V

    .line 265
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mSettingsInMeetingDialogFragment:Landroidx/fragment/app/DialogFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mSettingsInMeetingDialogFragment:Landroidx/fragment/app/DialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mSettingsInMeetingDialogFragment:Landroidx/fragment/app/DialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 268
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->chatFragment:Landroidx/fragment/app/DialogFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->chatFragment:Landroidx/fragment/app/DialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 269
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->chatFragment:Landroidx/fragment/app/DialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 271
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mMeetingInfoDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 272
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mMeetingInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 274
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mInputEmailDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 275
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mInputEmailDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->dismiss()V

    .line 278
    :cond_4
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mVideoLayoutViewSelectDialogFragment:Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 279
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mVideoLayoutViewSelectDialogFragment:Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->dismiss()V

    .line 281
    :cond_5
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ft_options_speaker_view:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 282
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ft_options_speaker_view:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->dismiss()V

    .line 284
    :cond_6
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 285
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->dismiss()V

    .line 288
    :cond_7
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mDisplayedDialogFragment:Landroidx/fragment/app/DialogFragment;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 289
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mDisplayedDialogFragment:Landroidx/fragment/app/DialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 292
    :cond_8
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mDisplayedDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 293
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mDisplayedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 296
    :cond_9
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 298
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;

    if-eqz v0, :cond_a

    .line 299
    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 300
    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->safeDismiss()V

    :cond_a
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 541
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->initMeetingInformationDialog()V

    .line 542
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->initParticipantsDialog()V

    .line 544
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getAudioStatus()Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->updateAudioMuteStatus(Lus/zoom/zrcsdk/model/ZRCAudioStatus;)V

    .line 545
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoStatus()Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->updateVideoStatus(Lus/zoom/zrcsdk/model/ZRCVideoStatus;Z)V

    .line 547
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->updateMeetingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V

    .line 549
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getLoginInfo()Lus/zoom/zrcsdk/model/LoginInfo;

    .line 550
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->onSpeakerVolumeControlStatusChanged()V

    .line 551
    invoke-super {p0, p1}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCameraSharingStatusChanged(Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;)V
    .locals 0

    .line 1409
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->updateGalleryViewStatus(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 556
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 560
    :cond_0
    invoke-super {p0, p1}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->onClick(Landroid/view/View;)V

    .line 561
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mStartStopVideo:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_2

    .line 562
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getVideoStatus()Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->isSending()Z

    move-result p1

    xor-int/2addr p1, v2

    .line 563
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v0

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ConfApp;->updateVideoStatus(Z)I

    goto/16 :goto_1

    .line 564
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mMuteUnmuteMicrophone:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_5

    .line 565
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getAudioStatus()Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 566
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getAudioStatus()Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->getAudioType()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 569
    :cond_3
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getAudioStatus()Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->isMuted()Z

    move-result p1

    .line 570
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v0

    xor-int/2addr p1, v2

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/ConfApp;->updateAudioStatus(Z)Z

    goto/16 :goto_1

    :cond_4
    :goto_0
    return-void

    .line 571
    :cond_5
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mShareContent:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_6

    .line 572
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/MeetingActivity;

    invoke-virtual {p1}, Lus/zoom/zrc/MeetingActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->showShareContent(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V

    goto/16 :goto_1

    .line 573
    :cond_6
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mMeetingInfo:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_7

    .line 574
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 575
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mMeetingInfoDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1e

    .line 576
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mMeetingInfoDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 577
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->getWidth(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3f19999a    # 0.6f

    mul-float p1, p1, v0

    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$dimen;->zrc_meeting_info_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    .line 578
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mMeetingInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lus/zoom/zrc/utils/Util;->getHeight(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f666666    # 0.9f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, p1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 579
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object p1

    sget-object v0, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_IN_MEETING:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->getZoomRoomsLogLocation()I

    move-result v0

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_SHOW_MEETING_INFO:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    .line 580
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->getZoomRoomsLogEvent()I

    move-result v1

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_NONE:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    .line 581
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->getZoomRoomsLogSubevent()I

    move-result v2

    const-string v3, ""

    .line 579
    invoke-virtual {p1, v0, v1, v2, v3}, Lus/zoom/zrcsdk/PTApp;->sendUsageTrackWithLogType(IIILjava/lang/String;)I

    goto/16 :goto_1

    .line 584
    :cond_7
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->layoutParticipants:Landroid/view/View;

    if-ne p1, v0, :cond_8

    .line 585
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 586
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getParticipantList()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCParticipantList;->size()I

    move-result v0

    .line 587
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_PARTICIPANT_LIST_COUNT:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 588
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 587
    invoke-virtual {p1, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 589
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 590
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    sget-object v1, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_IN_MEETING:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    .line 591
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->getZoomRoomsLogLocation()I

    move-result v1

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_MANAGE_PARTICIPANTS:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    .line 592
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->getZoomRoomsLogEvent()I

    move-result v2

    sget-object v3, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_OPEN_PARTICIPANT_LIST:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    .line 593
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->getZoomRoomsLogSubevent()I

    move-result v3

    .line 594
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 590
    invoke-virtual {v0, v1, v2, v3, p1}, Lus/zoom/zrcsdk/PTApp;->sendUsageTrackWithLogType(IIILjava/lang/String;)I

    .line 596
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mParticipantsDialog:Lus/zoom/zrc/view/ParticipantsDialogFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/view/ParticipantsDialogFragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_1e

    .line 597
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mParticipantsDialog:Lus/zoom/zrc/view/ParticipantsDialogFragment;

    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/view/ParticipantsDialogFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrc/view/ParticipantsDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 598
    :cond_8
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvRecording:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_e

    .line 599
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getMeetingRecordingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    .line 601
    :cond_9
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getMeetingRecordingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;->isAmIRecording()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 602
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->showFinishRecordDialog()V

    goto/16 :goto_1

    .line 604
    :cond_a
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getCloudRecordingNotificationEmail()Ljava/lang/String;

    move-result-object p1

    .line 605
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    .line 609
    :cond_b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 610
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->hasScheduleOption2()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 611
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->scheduleOption2PromptForEmailBeforeRecording()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 612
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->showInputEmailDialog()V

    return-void

    .line 616
    :cond_c
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isAmIOriginalHost()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getHostUserType()I

    move-result v0

    sget v1, Lus/zoom/zrcsdk/model/ZRCHostUserType;->ZRCHostUserTypeCorp:I

    if-eq v0, v1, :cond_d

    .line 617
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->showInputEmailDialog()V

    return-void

    .line 622
    :cond_d
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v0

    invoke-virtual {v0, v2, v2, p1}, Lus/zoom/zrcsdk/ConfApp;->setMeetingRecording(ZZLjava/lang/String;)I

    goto/16 :goto_1

    .line 624
    :cond_e
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvGalleryView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_15

    .line 625
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mVideoLayoutViewSelectDialogFragment:Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;

    if-eqz p1, :cond_f

    .line 626
    invoke-virtual {p1, p0}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->setOptionsDismissListener(Lus/zoom/zrc/view/MeetingMainControllerFragment;)V

    .line 628
    :cond_f
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isSwitchFloatingShareContentSupported()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 629
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 630
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mVideoLayoutViewSelectDialogFragment:Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_1e

    .line 631
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mVideoLayoutViewSelectDialogFragment:Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;

    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 634
    :cond_10
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->canVideoControlShowInSingleScreen()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isFloatingVideoStripSupported()Z

    move-result p1

    if-nez p1, :cond_11

    .line 635
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ft_options_speaker_view:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1e

    .line 636
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ft_options_speaker_view:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ft_options_speaker_view:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 639
    :cond_11
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getQuantityOfScreens()I

    move-result p1

    if-ne p1, v2, :cond_12

    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isFloatingVideoStripSupported()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 640
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 641
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mVideoLayoutViewSelectDialogFragment:Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_1e

    .line 642
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mVideoLayoutViewSelectDialogFragment:Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;

    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 645
    :cond_12
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object p1

    if-nez p1, :cond_13

    return-void

    .line 648
    :cond_13
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isCanSwitchWallview()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 649
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isInWallview()Z

    move-result p1

    if-nez p1, :cond_14

    .line 650
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    invoke-virtual {p1, v2}, Lus/zoom/zrcsdk/ConfApp;->updateWallviewStyle(I)I

    goto/16 :goto_1

    .line 652
    :cond_14
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/ConfApp;->updateWallviewStyle(I)I

    goto/16 :goto_1

    .line 658
    :cond_15
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ivChangeContentIcon:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_16

    .line 659
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->meetingRedPointController:Lus/zoom/zrc/view/MeetingRedPointController;

    invoke-virtual {p1}, Lus/zoom/zrc/view/MeetingRedPointController;->onClickChangeContent()V

    .line 660
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->zrcChangeContentDialogFragment:Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_1e

    .line 661
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->zrcChangeContentDialogFragment:Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;

    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 663
    :cond_16
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvUpArrow:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_17

    .line 664
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    iget-boolean v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->inVideoStrip:Z

    invoke-virtual {p1, v1, v0}, Lus/zoom/zrcsdk/ConfApp;->turnVideoPage(ZZ)I

    goto/16 :goto_1

    .line 665
    :cond_17
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvDownArrow:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_18

    .line 666
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    iget-boolean v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->inVideoStrip:Z

    invoke-virtual {p1, v2, v0}, Lus/zoom/zrcsdk/ConfApp;->turnVideoPage(ZZ)I

    goto/16 :goto_1

    .line 667
    :cond_18
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mCameraControl:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_19

    .line 668
    new-instance p1, Lus/zoom/zrc/camera_control/model/CameraShareData;

    const-string v0, ""

    sget-object v1, Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;->LOCAL:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    invoke-direct {p1, v0, v1}, Lus/zoom/zrc/camera_control/model/CameraShareData;-><init>(Ljava/lang/String;Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;)V

    .line 669
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->startCameraControlFragment(Lus/zoom/zrc/camera_control/model/CameraShareData;)V

    goto/16 :goto_1

    .line 670
    :cond_19
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvSwitchCameraForVideo:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1a

    .line 671
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->clickToSwitchCamera()V

    goto/16 :goto_1

    .line 672
    :cond_1a
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mVolumeIncrease:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1b

    .line 673
    invoke-static {}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->getInstance()Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->increaseVolume()V

    .line 674
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 675
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mVolumeIncrease:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$string;->zrc_accessibility_speaker_volume_percent:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mSeekBar:Landroid/widget/SeekBar;

    .line 677
    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    iget-object v4, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    div-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 675
    invoke-static {p1, v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->announceForAccessibilityCompat(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 679
    :cond_1b
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mVolumeDecrease:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1c

    .line 680
    invoke-static {}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->getInstance()Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->decreaseVolume()V

    .line 681
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 682
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mVolumeDecrease:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$string;->zrc_accessibility_speaker_volume_percent:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mSeekBar:Landroid/widget/SeekBar;

    .line 684
    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    iget-object v4, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    div-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 682
    invoke-static {p1, v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->announceForAccessibilityCompat(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 686
    :cond_1c
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mOptions:Landroid/view/View;

    if-ne p1, v0, :cond_1e

    .line 687
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->canVideoControlShowInSingleScreen()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 688
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->canVideoControlShowInSpeaker()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 689
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ft_options_speaker_view:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1e

    .line 690
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ft_options_speaker_view:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ft_options_speaker_view:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .line 692
    :cond_1d
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->canVideoControlShowInFloatingVideoStrip()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 693
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1e

    .line 694
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1e
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 200
    invoke-super {p0, p1}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->onCreate(Landroid/os/Bundle;)V

    .line 201
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->cameraControlCallbacks:Lus/zoom/zrc/camera_control/view/CameraControlCallbacks;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/AppEngine;->addCameraControlListener(Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;)V

    .line 202
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoObserver;->getInstance()Lus/zoom/zrc/utils/DeviceInfoObserver;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->settingLockedListener:Lus/zoom/zrc/utils/DeviceInfoObserver$SettingLockerListener;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/utils/DeviceInfoObserver;->addSettingLockedListener(Lus/zoom/zrc/utils/DeviceInfoObserver$SettingLockerListener;)V

    .line 203
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->onPinUserManagerPropertyChanged:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/ZRCPinUserManager;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 205
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Lus/zoom/zrc/base/notification/NotificationEvent;

    sget-object v1, Lus/zoom/zrc/base/notification/UserEvent;->EnterSipCall:Lus/zoom/zrc/base/notification/UserEvent;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->SetMeetingRecordingResult:Lus/zoom/zrc/base/notification/ModelEvent;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerNotification([Lus/zoom/zrc/base/notification/NotificationEvent;)V

    .line 206
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 321
    sget p3, Lus/zoom/zrcbox/R$layout;->meeting_main_controller:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 322
    sget p2, Lus/zoom/zrcbox/R$id;->tv_meeting_id:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mMeetingId:Landroid/widget/TextView;

    .line 323
    sget p2, Lus/zoom/zrcbox/R$id;->tv_notice:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvNotice:Landroid/widget/TextView;

    .line 325
    sget p2, Lus/zoom/zrcbox/R$id;->iv_participants:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mParticipants:Landroid/widget/ImageView;

    .line 326
    sget p2, Lus/zoom/zrcbox/R$id;->layout_participants:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->layoutParticipants:Landroid/view/View;

    .line 328
    sget p2, Lus/zoom/zrcbox/R$id;->tv_participants_count:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvParticipantsCount:Landroid/widget/TextView;

    .line 329
    sget p2, Lus/zoom/zrcbox/R$id;->tv_participants:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvParticipants:Landroid/widget/TextView;

    .line 331
    sget p2, Lus/zoom/zrcbox/R$id;->iv_start_stop_video:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mStartStopVideo:Landroid/widget/ImageView;

    .line 332
    sget p2, Lus/zoom/zrcbox/R$id;->tv_start_stop_video:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvStartStopVideo:Landroid/widget/TextView;

    .line 333
    sget p2, Lus/zoom/zrcbox/R$id;->iv_mute_unmute_microphone:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mMuteUnmuteMicrophone:Landroid/widget/ImageView;

    .line 334
    sget p2, Lus/zoom/zrcbox/R$id;->tv_mute_unmute_microphone:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvMuteMicrophone:Landroid/widget/TextView;

    .line 335
    sget p2, Lus/zoom/zrcbox/R$id;->iv_share_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mShareContent:Landroid/widget/ImageView;

    .line 336
    sget p2, Lus/zoom/zrcbox/R$id;->tv_share_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mShareContentTextView:Landroid/widget/TextView;

    .line 337
    sget p2, Lus/zoom/zrcbox/R$id;->iv_gallery_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvGalleryView:Landroid/widget/ImageView;

    .line 338
    sget p2, Lus/zoom/zrcbox/R$id;->tv_gallery_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/view/ZRCTextView;

    iput-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvGalleryView:Lus/zoom/zrc/view/ZRCTextView;

    .line 339
    sget p2, Lus/zoom/zrcbox/R$id;->iv_camera_control:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mCameraControl:Landroid/widget/ImageView;

    .line 340
    sget p2, Lus/zoom/zrcbox/R$id;->iv_camera_control_txt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvCameraControl:Landroid/widget/TextView;

    .line 341
    sget p2, Lus/zoom/zrcbox/R$id;->iv_invite:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 342
    sget p3, Lus/zoom/zrcbox/R$id;->tv_invite:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 343
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->isInviteEnabled()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 344
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->isInviteEnabled()Z

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 345
    sget p3, Lus/zoom/zrcbox/R$id;->meeting_options_layout:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mOptions:Landroid/view/View;

    .line 346
    sget p3, Lus/zoom/zrcbox/R$id;->iv_recording:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvRecording:Landroid/widget/ImageView;

    .line 347
    sget p3, Lus/zoom/zrcbox/R$id;->tv_recording:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvRecording:Landroid/widget/TextView;

    .line 349
    sget p3, Lus/zoom/zrcbox/R$id;->iv_meeting_info_icon:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageButton;

    iput-object p3, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mMeetingInfo:Landroid/widget/ImageButton;

    .line 350
    sget p3, Lus/zoom/zrcbox/R$id;->seekbar:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/SeekBar;

    iput-object p3, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mSeekBar:Landroid/widget/SeekBar;

    .line 351
    sget p3, Lus/zoom/zrcbox/R$id;->iv_up_arrow:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvUpArrow:Landroid/widget/ImageView;

    .line 352
    sget p3, Lus/zoom/zrcbox/R$id;->iv_down_arrow:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvDownArrow:Landroid/widget/ImageView;

    .line 354
    iget-object p3, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mMeetingInfo:Landroid/widget/ImageButton;

    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mMeetingId:Landroid/widget/TextView;

    invoke-static {p3, v1}, Lus/zoom/zrc/utils/ZRCUIUtils;->matchImageViewToTextSize(Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 355
    sget p3, Lus/zoom/zrcbox/R$id;->iv_meeting_encryption_icon:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 356
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mMeetingId:Landroid/widget/TextView;

    invoke-static {p3, v1}, Lus/zoom/zrc/utils/ZRCUIUtils;->matchImageViewToTextSize(Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 358
    sget p3, Lus/zoom/zrcbox/R$id;->ll_switch_camera_for_video:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mLLSwitchCameraForVideo:Landroid/widget/LinearLayout;

    .line 359
    sget p3, Lus/zoom/zrcbox/R$id;->iv_switch_camera_for_video:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvSwitchCameraForVideo:Landroid/widget/ImageView;

    .line 360
    sget p3, Lus/zoom/zrcbox/R$id;->tv_switch_camera_for_video:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvSwitchCameraForVideo:Landroid/widget/TextView;

    .line 361
    sget p3, Lus/zoom/zrcbox/R$id;->speaker_volume_control:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mSpeakerVolumeControl:Landroid/view/View;

    .line 362
    sget p3, Lus/zoom/zrcbox/R$id;->ll_meeting_id:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->llMeetingId:Landroid/widget/LinearLayout;

    .line 364
    sget p3, Lus/zoom/zrcbox/R$id;->iv_volume_max:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mVolumeIncrease:Landroid/widget/ImageView;

    .line 365
    sget p3, Lus/zoom/zrcbox/R$id;->iv_volume_min:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mVolumeDecrease:Landroid/widget/ImageView;

    .line 366
    sget p3, Lus/zoom/zrcbox/R$id;->tx_room_name:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mRoomName:Landroid/widget/TextView;

    .line 367
    sget p3, Lus/zoom/zrcbox/R$id;->speaker_volume_control_label:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lus/zoom/zrc/view/ZRCTextView;

    iput-object p3, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mSpeakerVolumeLabel:Lus/zoom/zrc/view/ZRCTextView;

    .line 368
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lus/zoom/zrcbox/R$drawable;->meeting_duration_thumb:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 369
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    invoke-virtual {v1, v2, v0, p3, v0}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 371
    sget p3, Lus/zoom/zrcbox/R$id;->gallery_view_layout:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->llGalleryLayout:Landroid/widget/LinearLayout;

    .line 373
    new-instance p3, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;

    invoke-direct {p3}, Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;-><init>()V

    iput-object p3, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->zrcChangeContentDialogFragment:Lus/zoom/zrc/view/ZRCChangeContentDialogFragment;

    .line 374
    sget p3, Lus/zoom/zrcbox/R$id;->ll_change_content_layout:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->llChangeContentLayout:Landroid/widget/LinearLayout;

    .line 375
    sget p3, Lus/zoom/zrcbox/R$id;->tv_share_source_count_laptop:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->tvShareSourcesCount:Landroid/widget/TextView;

    .line 376
    sget p3, Lus/zoom/zrcbox/R$id;->iv_change_content_icon_laptop:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ivChangeContentIcon:Landroid/widget/ImageView;

    .line 377
    iget-object p3, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ivChangeContentIcon:Landroid/widget/ImageView;

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    iget-object p3, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->tvShareSourcesCount:Landroid/widget/TextView;

    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {v1}, Lus/zoom/zrc/model/ZRCPinUserManager;->getAllShareSources()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object p3, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->layoutParticipants:Landroid/view/View;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    iget-object p3, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mStartStopVideo:Landroid/widget/ImageView;

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    iget-object p3, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mMuteUnmuteMicrophone:Landroid/widget/ImageView;

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    iget-object p3, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mShareContent:Landroid/widget/ImageView;

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    iget-object p3, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvGalleryView:Landroid/widget/ImageView;

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    iget-object p3, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mCameraControl:Landroid/widget/ImageView;

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    iget-object p3, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mMeetingInfo:Landroid/widget/ImageButton;

    invoke-virtual {p3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    invoke-static {}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->getInstance()Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;

    move-result-object p3

    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p3, v1}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->setupVolumeControl(Landroid/widget/SeekBar;)V

    .line 388
    new-instance p3, Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;

    const/4 v1, 0x0

    invoke-direct {p3, p0, v1}, Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;-><init>(Lus/zoom/zrc/view/MeetingMainControllerFragment;Lus/zoom/zrc/view/MeetingMainControllerFragment$1;)V

    iput-object p3, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mInviteProcessor:Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;

    .line 389
    iget-object p3, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mInviteProcessor:Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvRecording:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvUpArrow:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvDownArrow:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvSwitchCameraForVideo:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mVolumeIncrease:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mVolumeDecrease:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mOptions:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    new-instance p2, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-direct {p2}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;-><init>()V

    iput-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mCameraControlDialogFragment:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    .line 400
    new-instance p2, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;

    invoke-direct {p2}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;-><init>()V

    iput-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mInviteInMeetingDialogFragment:Lus/zoom/zrc/view/InviteInMeetingDialogFragment;

    .line 401
    new-instance p2, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-direct {p2}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;-><init>()V

    iput-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ft_options_speaker_view:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    .line 402
    new-instance p2, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    invoke-direct {p2}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;-><init>()V

    iput-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    .line 403
    new-instance p2, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;

    invoke-direct {p2}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;-><init>()V

    iput-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mVideoLayoutViewSelectDialogFragment:Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;

    .line 405
    new-instance p2, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;

    invoke-direct {p2}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;-><init>()V

    iput-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mWaitingDialogFragment:Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;

    .line 406
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mWaitingDialogFragment:Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;

    invoke-virtual {p2, v0}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;->setCancelable(Z)V

    .line 407
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/AppModel;->getDisplayedRoomName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 408
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mRoomName:Landroid/widget/TextView;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p3

    invoke-virtual {p3}, Lus/zoom/zrc/model/AppModel;->getDisplayedRoomName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->updateParticipantCount()V

    .line 412
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->updateParticipantButtonText()V

    .line 414
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/AppModel;->getMeetingRecordingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 415
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/AppModel;->getMeetingRecordingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;

    move-result-object p2

    invoke-virtual {p0, p2}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->setAllowRecordingState(Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;)V

    .line 416
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/AppModel;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 418
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->isCanSwitchCamera()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 419
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mLLSwitchCameraForVideo:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 421
    :cond_2
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mLLSwitchCameraForVideo:Landroid/widget/LinearLayout;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 424
    :cond_3
    :goto_0
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mStartStopVideo:Landroid/widget/ImageView;

    new-instance p3, Lus/zoom/zrc/view/MeetingMainControllerFragment$4;

    invoke-direct {p3, p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment$4;-><init>(Lus/zoom/zrc/view/MeetingMainControllerFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 433
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvGalleryView:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 434
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvGalleryView:Lus/zoom/zrc/view/ZRCTextView;

    invoke-virtual {p2, v0}, Lus/zoom/zrc/view/ZRCTextView;->setEnabled(Z)V

    .line 436
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/AppModel;->isPairedWithoutLogin()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 437
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mShareContent:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 438
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mShareContentTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 441
    :cond_4
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->llMeetingId:Landroid/widget/LinearLayout;

    new-instance p3, Lus/zoom/zrc/view/MeetingMainControllerFragment$5;

    invoke-direct {p3, p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment$5;-><init>(Lus/zoom/zrc/view/MeetingMainControllerFragment;)V

    const-wide/16 v0, 0x4b0

    invoke-virtual {p2, p3, v0, v1}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 447
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/AppModel;->isShareDualCameraSupported()Z

    move-result p2

    invoke-virtual {p0, p2}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->updateShareContent(Z)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 307
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->onPinUserManagerPropertyChanged:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/ZRCPinUserManager;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 308
    invoke-super {p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->onDestroy()V

    .line 309
    invoke-static {}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->getInstance()Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->releaseVolumeControl(Landroid/widget/SeekBar;)V

    .line 310
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->cameraControlCallbacks:Lus/zoom/zrc/camera_control/view/CameraControlCallbacks;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppEngine;->removeCameraControlListener(Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;)V

    .line 311
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoObserver;->getInstance()Lus/zoom/zrc/utils/DeviceInfoObserver;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->settingLockedListener:Lus/zoom/zrc/utils/DeviceInfoObserver$SettingLockerListener;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/utils/DeviceInfoObserver;->removeSettingLockedListener(Lus/zoom/zrc/utils/DeviceInfoObserver$SettingLockerListener;)V

    .line 312
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->switchCameraPopupWindow:Lus/zoom/zrc/view/SwitchCameraPopupWindow;

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {v0}, Lus/zoom/zrc/view/SwitchCameraPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 498
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mMeetingInfoDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mMeetingInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 501
    :cond_0
    invoke-super {p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->onDestroyView()V

    return-void
.end method

.method public onMeetingCloudRecordingErrorNotification(I)V
    .locals 3

    .line 1392
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/view/CloudRecordingStopDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/CloudRecordingStopDialog;

    if-eqz v0, :cond_0

    .line 1393
    invoke-virtual {v0}, Lus/zoom/zrc/view/CloudRecordingStopDialog;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/view/CloudRecordingStopDialog;->dismiss()V

    .line 1394
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/view/ZRCMeetingCloudRecordingErrorFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/ZRCMeetingCloudRecordingErrorFragment;

    if-nez v0, :cond_1

    .line 1396
    new-instance v0, Lus/zoom/zrc/view/ZRCMeetingCloudRecordingErrorFragment;

    invoke-direct {v0}, Lus/zoom/zrc/view/ZRCMeetingCloudRecordingErrorFragment;-><init>()V

    .line 1397
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "errorCode"

    .line 1398
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1399
    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/ZRCMeetingCloudRecordingErrorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1400
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lus/zoom/zrc/view/ZRCMeetingCloudRecordingErrorFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 1401
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    goto :goto_0

    .line 1403
    :cond_1
    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/ZRCMeetingCloudRecordingErrorFragment;->updateUI(I)V

    .line 1405
    :goto_0
    iput-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mDisplayedDialogFragment:Landroidx/fragment/app/DialogFragment;

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 245
    invoke-super {p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->onPause()V

    .line 248
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->dismissDialogsOnPause()V

    return-void
.end method

.method public onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 1

    .line 211
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    .line 212
    sget-object v0, Lus/zoom/zrc/base/notification/UserEvent;->EnterSipCall:Lus/zoom/zrc/base/notification/UserEvent;

    if-ne p1, v0, :cond_0

    .line 213
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->onEnterSipCall()V

    goto :goto_0

    .line 214
    :cond_0
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->SetMeetingRecordingResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_1

    .line 215
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->onSetMeetingRecordingResult(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 453
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 454
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->amIHost:I

    if-eq p1, p2, :cond_3

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->amICoHost:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 457
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->participantList:I

    if-ne p1, p2, :cond_1

    .line 458
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->updateParticipantCount()V

    goto :goto_1

    .line 459
    :cond_1
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->videoStatus:I

    if-ne p1, p2, :cond_2

    .line 460
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getVideoStatus()Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->updateVideoStatus(Lus/zoom/zrcsdk/model/ZRCVideoStatus;Z)V

    goto :goto_1

    .line 461
    :cond_2
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->settingsDeviceInfo:I

    if-ne p1, p2, :cond_4

    .line 462
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->onUpdateSettingsDeviceInfo()V

    goto :goto_1

    .line 455
    :cond_3
    :goto_0
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->updateParticipantButtonText()V

    .line 456
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->updateParticipantCount()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 711
    invoke-super {p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->onResume()V

    .line 712
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->canVideoLayoutPopoverShowInFloatingVideoStripSupported()Z

    .line 713
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->canVideoLayoutPopoverShowInShareOnAllScreensSupported()Z

    .line 714
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getAudioStatus()Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->updateAudioMuteStatus(Lus/zoom/zrcsdk/model/ZRCAudioStatus;)V

    .line 715
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->updateOptionsVisible()V

    .line 716
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->updateGalleryViewStatus(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V

    .line 717
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getRecordingError()Lus/zoom/zrcsdk/model/ZRCMeetingCloudRecordingError;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 718
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getRecordingError()Lus/zoom/zrcsdk/model/ZRCMeetingCloudRecordingError;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingCloudRecordingError;->getErrorCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->onMeetingCloudRecordingErrorNotification(I)V

    .line 723
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->isShareDualCameraSupported()Z

    move-result v0

    .line 724
    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->updateShareContent(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onSetCloudRecordingNotificationEmailResult(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 1089
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

    .line 1091
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$string;->failed_to_set_cloud_recording_notification_email:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1092
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/Model;->setCloudRecordingNotificationEmail(Ljava/lang/String;)V

    .line 1094
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvNotice:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onShareCameraResult(Z)V
    .locals 0

    return-void
.end method

.method public onSpeakerVolumeControlStatusChanged()V
    .locals 4

    .line 1192
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getLoginInfo()Lus/zoom/zrcsdk/model/LoginInfo;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1193
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->isSettingsLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getLoginInfo()Lus/zoom/zrcsdk/model/LoginInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/LoginInfo;->isSpeakerVolumeControlLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1196
    :goto_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/AppModel;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    .line 1197
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/AppModel;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->isIs_speaker_volume_adjustable()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 1199
    :cond_2
    invoke-direct {p0, v2, v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->setSpeakerVolumeControlEnabled(ZZ)V

    return-void
.end method

.method public onUpdateIsOnEntryMuted(Z)V
    .locals 1

    .line 1075
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mParticipantsDialog:Lus/zoom/zrc/view/ParticipantsDialogFragment;

    if-eqz v0, :cond_0

    .line 1076
    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/ParticipantsDialogFragment;->onUpdateIsOnEntryMuted(Z)V

    :cond_0
    return-void
.end method

.method public onUpdateMeetingRecordingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;)V
    .locals 0
    .param p1    # Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1081
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->setAllowRecordingState(Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;)V

    .line 1082
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;->isAmIRecording()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1083
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->dismissFinishRecordDialog()V

    :cond_0
    return-void
.end method

.method public onUpdateMeetingSharingStatus(Lus/zoom/zrcsdk/model/ZRCSharingStatus;)V
    .locals 1

    .line 1223
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

    .line 1224
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1225
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->getPageStatus()Lus/zoom/zrcsdk/model/VideoPageStatus;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->changeVideoIcon(Lus/zoom/zrcsdk/model/VideoPageStatus;)V

    .line 1228
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ft_options_speaker_view:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1229
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ft_options_speaker_view:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->changeVideoIcon()V

    :cond_1
    return-void
.end method

.method public onUpdateSettingsDeviceInfo()V
    .locals 3

    .line 1035
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    .line 1036
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->updateMuteEnableState()V

    .line 1038
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mCameraControlDialogFragment:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1039
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mCameraControlDialogFragment:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-virtual {v1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->providePresenter()Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1042
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mCameraControlDialogFragment:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-virtual {v1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->fetchShareData()Lus/zoom/zrc/camera_control/model/CameraShareData;

    move-result-object v1

    .line 1043
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSelectedCamera()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1044
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSelectedCamera()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1045
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSelectedCamera()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lus/zoom/zrc/camera_control/model/CameraShareData;->setDeviceId(Ljava/lang/String;)V

    .line 1047
    :cond_0
    iget-object v2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mCameraControlDialogFragment:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-virtual {v2}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->providePresenter()Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->loadCameraControlView(Lus/zoom/zrc/camera_control/model/CameraShareData;Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)V

    :cond_1
    if-eqz v0, :cond_3

    .line 1052
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->isCanSwitchCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1053
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mLLSwitchCameraForVideo:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1055
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mLLSwitchCameraForVideo:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1061
    :cond_3
    :goto_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->isShareDualCameraSupported()Z

    move-result v0

    .line 1062
    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->updateShareContent(Z)V

    .line 1063
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->onSpeakerVolumeControlStatusChanged()V

    return-void
.end method

.method public onUpdateVideoThumbInfo(Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)V
    .locals 4

    const-string v0, ""

    .line 1319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoThumbInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, ""

    .line 1320
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

    .line 1321
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->updateOptionsVisible()V

    .line 1322
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1323
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->getPageStatus()Lus/zoom/zrcsdk/model/VideoPageStatus;

    move-result-object p1

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->changeVideoIcon(Lus/zoom/zrcsdk/model/VideoPageStatus;)V

    .line 1324
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->updateSwapContentLayoutVisible()V

    .line 1327
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1328
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->updateVideoLayoutChangerView(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V

    :cond_1
    return-void
.end method

.method public onUpdatedWebSettingsNotification(Lus/zoom/zrcsdk/model/LoginInfo;)V
    .locals 1

    .line 1216
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->onSpeakerVolumeControlStatusChanged()V

    .line 1217
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getDisplayedRoomName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1218
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mRoomName:Landroid/widget/TextView;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getDisplayedRoomName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public optionsDismiss()V
    .locals 2

    .line 114
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mOptions:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setAllowRecordingState(Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;)V
    .locals 3

    .line 505
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvNotice:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 506
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvNotice:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->connecting_to_cloud_server:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 507
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;->isCanIRecord()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 508
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvRecording:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 509
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvRecording:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 510
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;->isCMRInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 511
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;->isConnectingToCMR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvNotice:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 513
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvRecording:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->record:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 514
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvRecording:Landroid/widget/TextView;

    sget v0, Lus/zoom/zrcbox/R$string;->stop_recording:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 515
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvRecording:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$string;->stop_recording:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 516
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;->isMeetingBeingRecorded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 517
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvRecording:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->stop_recording:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 518
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvRecording:Landroid/widget/TextView;

    sget v0, Lus/zoom/zrcbox/R$string;->stop_recording:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 519
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvRecording:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$string;->stop_recording:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 521
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvRecording:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->record:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 522
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvRecording:Landroid/widget/TextView;

    sget v0, Lus/zoom/zrcbox/R$string;->start_recording:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 523
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvRecording:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$string;->start_recording:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 526
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvRecording:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->record:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 527
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvRecording:Landroid/widget/TextView;

    sget v0, Lus/zoom/zrcbox/R$string;->start_recording:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 528
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvRecording:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$string;->start_recording:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 531
    :cond_3
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvRecording:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 532
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvRecording:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 533
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvRecording:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->record:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 534
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvRecording:Landroid/widget/TextView;

    sget v0, Lus/zoom/zrcbox/R$string;->start_recording:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 535
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvRecording:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$string;->start_recording:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public startCameraControlFragment(Lus/zoom/zrc/camera_control/model/CameraShareData;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 1437
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1440
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 1441
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mCameraControlDialogFragment:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1442
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mCameraControlDialogFragment:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v2, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 1443
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mCameraControlDialogFragment:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->receiveShareData(Lus/zoom/zrc/camera_control/model/CameraShareData;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public updateAudioMuteStatus(Lus/zoom/zrcsdk/model/ZRCAudioStatus;)V
    .locals 2

    .line 759
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 763
    :cond_1
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->updateMuteEnableState()V

    if-nez p1, :cond_2

    return-void

    .line 768
    :cond_2
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->isMuted()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_5

    .line 769
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->getAudioType()I

    move-result p1

    if-ne p1, v1, :cond_3

    .line 770
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mMuteUnmuteMicrophone:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->unmute_normal_phone:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 772
    :cond_3
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mMuteUnmuteMicrophone:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->unmute_normal:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 774
    :goto_1
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvMuteMicrophone:Landroid/widget/TextView;

    sget v0, Lus/zoom/zrcbox/R$string;->unmute:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 776
    sget p1, Lus/zoom/zrcbox/R$string;->accessibility_unmute_my_audio:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mMuteUnmuteMicrophone:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 777
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 778
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mMuteUnmuteMicrophone:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$string;->accessibility_audio_now_muted:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->announceForAccessibilityCompat(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 780
    :cond_4
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mMuteUnmuteMicrophone:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$string;->accessibility_unmute_my_audio:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 783
    :cond_5
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->getAudioType()I

    move-result p1

    if-ne p1, v1, :cond_6

    .line 784
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mMuteUnmuteMicrophone:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->mute_phone:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 786
    :cond_6
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mMuteUnmuteMicrophone:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->mute:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 788
    :goto_2
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvMuteMicrophone:Landroid/widget/TextView;

    sget v0, Lus/zoom/zrcbox/R$string;->mute:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 790
    sget p1, Lus/zoom/zrcbox/R$string;->accessibility_mute_my_audio:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mMuteUnmuteMicrophone:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 791
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 792
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mMuteUnmuteMicrophone:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$string;->accessibility_audio_now_unmuted:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->announceForAccessibilityCompat(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 794
    :cond_7
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mMuteUnmuteMicrophone:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$string;->accessibility_mute_my_audio:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public updateGalleryViewStatus(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V
    .locals 6

    .line 891
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->updateOptionsVisible()V

    .line 892
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ft_options_speaker_view:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ft_options_speaker_view:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->changeVideoIcon()V

    .line 894
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ft_options_speaker_view:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->updateSwapContentLayoutVisible()V

    .line 897
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 898
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->updateSwapContentLayoutVisible()V

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 905
    :cond_2
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isInWallview()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 906
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvGalleryView:Landroid/widget/ImageView;

    sget v2, Lus/zoom/zrcbox/R$drawable;->gallery:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 907
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvGalleryView:Lus/zoom/zrc/view/ZRCTextView;

    sget v2, Lus/zoom/zrcbox/R$string;->change_view:I

    invoke-virtual {v0, v2}, Lus/zoom/zrc/view/ZRCTextView;->setText(I)V

    const/4 v0, 0x3

    goto :goto_0

    .line 910
    :cond_3
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isInFloatingVideoStrip()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 911
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvGalleryView:Landroid/widget/ImageView;

    sget v2, Lus/zoom/zrcbox/R$drawable;->meeting_thumbnail:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 912
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvGalleryView:Lus/zoom/zrc/view/ZRCTextView;

    sget v2, Lus/zoom/zrcbox/R$string;->change_view:I

    invoke-virtual {v0, v2}, Lus/zoom/zrc/view/ZRCTextView;->setText(I)V

    const/4 v0, 0x2

    goto :goto_0

    .line 915
    :cond_4
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvGalleryView:Landroid/widget/ImageView;

    sget v2, Lus/zoom/zrcbox/R$drawable;->meeting_speaker:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 916
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvGalleryView:Lus/zoom/zrc/view/ZRCTextView;

    sget v2, Lus/zoom/zrcbox/R$string;->change_view:I

    invoke-virtual {v0, v2}, Lus/zoom/zrc/view/ZRCTextView;->setText(I)V

    const/4 v0, 0x1

    .line 920
    :goto_0
    iget-object v2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvGalleryView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 921
    iget-object v2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvGalleryView:Lus/zoom/zrc/view/ZRCTextView;

    invoke-virtual {v2, v1}, Lus/zoom/zrc/view/ZRCTextView;->setEnabled(Z)V

    .line 922
    iget-object v2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->llChangeContentLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 923
    iget-object v2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->llGalleryLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 925
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isSwitchFloatingShareContentSupported()Z

    move-result v2

    if-nez v2, :cond_6

    .line 926
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isCanSwitchWallview()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isFloatingVideoStripSupported()Z

    move-result v2

    if-nez v2, :cond_5

    .line 927
    iget-object v2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvGalleryView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 928
    iget-object v2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvGalleryView:Lus/zoom/zrc/view/ZRCTextView;

    invoke-virtual {v2, v4}, Lus/zoom/zrc/view/ZRCTextView;->setEnabled(Z)V

    goto :goto_1

    .line 930
    :cond_5
    iget-object v2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvGalleryView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 931
    iget-object v2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvGalleryView:Lus/zoom/zrc/view/ZRCTextView;

    invoke-virtual {v2, v1}, Lus/zoom/zrc/view/ZRCTextView;->setEnabled(Z)V

    .line 933
    :goto_1
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->canVideoControlShowInSingleScreen()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 934
    iget-object v2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvGalleryView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 935
    iget-object v2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvGalleryView:Lus/zoom/zrc/view/ZRCTextView;

    invoke-virtual {v2, v1}, Lus/zoom/zrc/view/ZRCTextView;->setEnabled(Z)V

    .line 936
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isFloatingVideoStripSupported()Z

    move-result v1

    if-nez v1, :cond_a

    .line 937
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvGalleryView:Landroid/widget/ImageView;

    sget v1, Lus/zoom/zrcbox/R$drawable;->meeting_video_control:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 938
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvGalleryView:Lus/zoom/zrc/view/ZRCTextView;

    sget v1, Lus/zoom/zrcbox/R$string;->video_control:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/ZRCTextView;->setText(I)V

    const/4 v0, 0x5

    goto/16 :goto_2

    .line 943
    :cond_6
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/AppModel;->getQuantityOfScreens()I

    move-result v2

    if-le v2, v1, :cond_9

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isCanSwitchWallview()Z

    move-result v2

    if-nez v2, :cond_9

    .line 944
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->canVideoLayoutPopoverShowInShareOnAllScreensSupported()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 945
    iget-object v2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvGalleryView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 946
    iget-object v2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvGalleryView:Lus/zoom/zrc/view/ZRCTextView;

    invoke-virtual {v2, v1}, Lus/zoom/zrc/view/ZRCTextView;->setEnabled(Z)V

    goto/16 :goto_2

    .line 948
    :cond_7
    iget-object v2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {v2}, Lus/zoom/zrc/model/ZRCPinUserManager;->shouldShowChangeContent()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 949
    iget-object v2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->llGalleryLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 950
    iget-object v2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->tvShareSourcesCount:Landroid/widget/TextView;

    iget-object v3, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {v3}, Lus/zoom/zrc/model/ZRCPinUserManager;->getAllShareSources()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 951
    iget-object v2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->llChangeContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 952
    iget-object v2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ivChangeContentIcon:Landroid/widget/ImageView;

    sget v3, Lus/zoom/zrcbox/R$drawable;->content_view:I

    invoke-direct {p0, v2, v3}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->drawImageViewRedCircle(Landroid/widget/ImageView;I)V

    .line 953
    iget-object v2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ivChangeContentIcon:Landroid/widget/ImageView;

    sget v3, Lus/zoom/zrcbox/R$string;->total_of_shared_screens:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    .line 954
    invoke-virtual {v5}, Lus/zoom/zrc/model/ZRCPinUserManager;->getAllShareSources()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 953
    invoke-virtual {p0, v3, v1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 956
    :cond_8
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->llChangeContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 957
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->llGalleryLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 958
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvGalleryView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 959
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvGalleryView:Lus/zoom/zrc/view/ZRCTextView;

    invoke-virtual {v1, v4}, Lus/zoom/zrc/view/ZRCTextView;->setEnabled(Z)V

    .line 960
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mVideoLayoutViewSelectDialogFragment:Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 961
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mVideoLayoutViewSelectDialogFragment:Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;

    invoke-virtual {v1}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->dismissAllowingStateLoss()V

    goto :goto_2

    .line 966
    :cond_9
    iget-object v2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvGalleryView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 967
    iget-object v2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvGalleryView:Lus/zoom/zrc/view/ZRCTextView;

    invoke-virtual {v2, v1}, Lus/zoom/zrc/view/ZRCTextView;->setEnabled(Z)V

    .line 971
    :cond_a
    :goto_2
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mVideoLayoutViewSelectDialogFragment:Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 972
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mVideoLayoutViewSelectDialogFragment:Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lus/zoom/zrc/view/VideoLayoutViewSelectDialogFragment;->onUpdateMeetingVideoLayoutUI(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V

    .line 975
    :cond_b
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->updateVideoLayoutChangerView(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V

    .line 977
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isSwitchFloatingShareContentSupported()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isInShareOnAllScreens()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 978
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvGalleryView:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->content_view:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 979
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvGalleryView:Lus/zoom/zrc/view/ZRCTextView;

    sget v0, Lus/zoom/zrcbox/R$string;->change_view:I

    invoke-virtual {p1, v0}, Lus/zoom/zrc/view/ZRCTextView;->setText(I)V

    const/4 v0, 0x4

    .line 984
    :cond_c
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->shouldShowRedPointOnChangeContent()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 985
    invoke-direct {p0, v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->updateGalleryViewIcon(I)V

    :cond_d
    return-void
.end method

.method public updateLockMeetingState(Z)V
    .locals 1

    .line 1067
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mInviteProcessor:Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/MeetingMainControllerFragment$InviteProcessor;->onUpdateLockMeetingState(Z)V

    .line 1068
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mParticipantsDialog:Lus/zoom/zrc/view/ParticipantsDialogFragment;

    if-eqz v0, :cond_0

    .line 1069
    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/ParticipantsDialogFragment;->updateLockMeetingState(Z)V

    :cond_0
    return-void
.end method

.method public updateMeetingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1020
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mMeetingInformationView:Lus/zoom/zrc/view/MeetingInformationView;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/MeetingInformationView;->updateMeetingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V

    .line 1021
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mMeetingId:Landroid/widget/TextView;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getMeetingNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lus/zoom/zrc/utils/Util;->getDisplayMeetingNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1023
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isEncryptedMeeting()Z

    move-result v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->updateMeetingEncryptedStatus(Z)V

    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1025
    sget v1, Lus/zoom/zrcbox/R$string;->zrc_accessibility_meeting_id:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mMeetingId:Landroid/widget/TextView;

    .line 1027
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1025
    invoke-virtual {p0, v1, v2}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isEncryptedMeeting()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, ", "

    .line 1029
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lus/zoom/zrcbox/R$string;->encrypted:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->llMeetingId:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateOptionsVisible()V
    .locals 3

    .line 1334
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->canVideoControlShowInFloatingVideoStripSupported()Z

    move-result v0

    .line 1335
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mOptions:Landroid/view/View;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    .line 1336
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1337
    :cond_1
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ft_options_speaker_view:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1338
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isSwitchFloatingShareContentSupported()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1339
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->canVideoControlShowInSingleScreen()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1340
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ft_options_speaker_view:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->onUpdateVideoThumbInfo(Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)V

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    .line 1344
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ft_options_speaker_view:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-virtual {v1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->dismiss()V

    goto :goto_1

    .line 1346
    :cond_3
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ft_options_speaker_view:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->onUpdateVideoThumbInfo(Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)V

    .line 1350
    :cond_4
    :goto_1
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez v0, :cond_5

    .line 1352
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->dismiss()V

    :cond_5
    return-void
.end method

.method public updateShareContent(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1419
    sget p1, Lus/zoom/zrcbox/R$string;->share_content_or_camera:I

    goto :goto_0

    :cond_0
    sget p1, Lus/zoom/zrcbox/R$string;->share_content:I

    :goto_0
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1422
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mShareContentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1423
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mShareContentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1424
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mShareContent:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateTurnVideoArrowStatus(Lus/zoom/zrcsdk/model/VideoPageStatus;)V
    .locals 1

    .line 741
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->updateTurnVideoArrowStatus(Lus/zoom/zrcsdk/model/VideoPageStatus;)V

    .line 743
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->updateSwapContentLayoutVisible()V

    .line 745
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->updateVideoArrowStatus()V

    return-void
.end method

.method public updateVideoLayoutChangerView(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V
    .locals 1

    .line 990
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 991
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->ft_options_thumbnail_view:Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->updateVideoLayoutChangerView(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V

    .line 993
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->updateVideoArrowStatus()V

    return-void
.end method

.method public updateVideoStatus(Lus/zoom/zrcsdk/model/ZRCVideoStatus;Z)V
    .locals 4

    .line 836
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->isAdded()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 840
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->isHasSource()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 841
    :goto_1
    iget-object v3, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mStartStopVideo:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 842
    iget-object v3, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvStartStopVideo:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-eqz p2, :cond_7

    .line 849
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->isSending()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 850
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mStartStopVideo:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->stop_video:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 851
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvStartStopVideo:Landroid/widget/TextView;

    sget v0, Lus/zoom/zrcbox/R$string;->stop_video:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 853
    sget p2, Lus/zoom/zrcbox/R$string;->accessibility_stop_my_video:I

    invoke-virtual {p0, p2}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mStartStopVideo:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 854
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 855
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mStartStopVideo:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$string;->accessibility_video_now_started:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->announceForAccessibilityCompat(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 857
    :cond_4
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mStartStopVideo:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$string;->accessibility_stop_my_video:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 860
    :cond_5
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mStartStopVideo:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->start_video_normal:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 861
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvStartStopVideo:Landroid/widget/TextView;

    sget v0, Lus/zoom/zrcbox/R$string;->start_video:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 863
    sget p2, Lus/zoom/zrcbox/R$string;->accessibility_start_my_video:I

    invoke-virtual {p0, p2}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mStartStopVideo:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 864
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 865
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mStartStopVideo:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$string;->accessibility_video_now_stopped:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->announceForAccessibilityCompat(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 867
    :cond_6
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mStartStopVideo:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$string;->accessibility_start_my_video:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 872
    :cond_7
    :goto_2
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->isSending()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 873
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mCameraControl:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 874
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvSwitchCameraForVideo:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 875
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvCameraControl:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 876
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvSwitchCameraForVideo:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_3

    .line 878
    :cond_8
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mCameraControl:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 879
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mIvSwitchCameraForVideo:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 880
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvCameraControl:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 881
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->mTvSwitchCameraForVideo:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 882
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment;->switchCameraPopupWindow:Lus/zoom/zrc/view/SwitchCameraPopupWindow;

    if-eqz p1, :cond_9

    .line 883
    invoke-virtual {p1}, Lus/zoom/zrc/view/SwitchCameraPopupWindow;->dismiss()V

    :cond_9
    :goto_3
    return-void
.end method
