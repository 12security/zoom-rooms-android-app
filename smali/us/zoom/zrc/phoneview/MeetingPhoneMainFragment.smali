.class public Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;
.super Lus/zoom/zrc/view/CommonMeetingControlFragment;
.source "MeetingPhoneMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "MeetingPhoneMainFragment"


# instance fields
.field private context:Landroid/content/Context;

.field private ivMoreRedPoint:Landroid/widget/ImageView;

.field private lastClickSystemTime:J

.field private layoutMore:Landroid/view/View;

.field private mCameraControl:Landroid/widget/ImageView;

.field private mCameraControlDialogFragment:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

.field private mMeetingInfo:Landroid/widget/ImageView;

.field private mMeetingInfoDialog:Landroid/app/Dialog;

.field private mMeetingInformationView:Lus/zoom/zrc/view/MeetingInformationView;

.field private mMeetingMore:Landroid/widget/ImageView;

.field private mMeetingMute:Landroid/widget/ImageView;

.field private mMeetingMuteTxt:Landroid/widget/TextView;

.field private mMeetingNumber:Landroid/widget/TextView;

.field private mMeetingRoomName:Landroid/widget/TextView;

.field private mMeetingShare:Landroid/widget/ImageView;

.field private mMeetingVideo:Landroid/widget/ImageView;

.field private mMeetingVideoTxt:Landroid/widget/TextView;

.field private mTvCameraControl:Landroid/widget/TextView;

.field private meetingPhoneMoreFragment:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

.field private ptListener:Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;

.field private shareContentTV:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment;-><init>()V

    .line 87
    new-instance v0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment$1;-><init>(Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->ptListener:Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;Lus/zoom/zrcsdk/model/ZRCSharingStatus;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->onUpdateMeetingSharingStatusSub(Lus/zoom/zrcsdk/model/ZRCSharingStatus;)V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;)Landroid/app/Dialog;
    .locals 0

    .line 62
    iget-object p0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingInfoDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method private initMeetingInformationDialog()V
    .locals 4

    .line 142
    new-instance v0, Lus/zoom/zrc/base/app/ZRCDialog;

    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lus/zoom/zrc/base/app/ZRCDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingInfoDialog:Landroid/app/Dialog;

    .line 143
    new-instance v0, Lus/zoom/zrc/view/MeetingInformationView;

    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lus/zoom/zrc/view/MeetingInformationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingInformationView:Lus/zoom/zrc/view/MeetingInformationView;

    .line 144
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingInformationView:Lus/zoom/zrc/view/MeetingInformationView;

    new-instance v1, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment$2;

    invoke-direct {v1, p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment$2;-><init>(Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/MeetingInformationView;->setOnClickCloseBtnListener(Lus/zoom/zrc/view/MeetingInformationView$OnClickCloseListener;)V

    .line 151
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingInfoDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 152
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lus/zoom/zrc/utils/Util;->getHeight(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 155
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingInfoDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingInformationView:Lus/zoom/zrc/view/MeetingInformationView;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private onUpdateMeetingSharingStatusSub(Lus/zoom/zrcsdk/model/ZRCSharingStatus;)V
    .locals 0

    return-void
.end method

.method private showCameraControlDialog()V
    .locals 3

    .line 353
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mCameraControlDialogFragment:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mCameraControlDialogFragment:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v2, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 355
    :cond_0
    new-instance v0, Lus/zoom/zrc/camera_control/model/CameraShareData;

    const-string v1, ""

    sget-object v2, Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;->LOCAL:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    invoke-direct {v0, v1, v2}, Lus/zoom/zrc/camera_control/model/CameraShareData;-><init>(Ljava/lang/String;Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;)V

    .line 356
    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mCameraControlDialogFragment:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-virtual {v1, v0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->receiveShareData(Lus/zoom/zrc/camera_control/model/CameraShareData;)V

    return-void
.end method

.method private updateMuteEnableState()V
    .locals 2

    .line 285
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 287
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAudioStatus()Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    move-result-object v0

    .line 288
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 290
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->getAudioType()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 292
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getMicPermissionStatus()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 294
    :goto_0
    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingMute:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 295
    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingMuteTxt:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private updateShareContent(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 517
    sget p1, Lus/zoom/zrcbox/R$string;->share_content_or_camera:I

    goto :goto_0

    :cond_0
    sget p1, Lus/zoom/zrcbox/R$string;->share_content:I

    :goto_0
    invoke-virtual {p0, p1}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 520
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->shareContentTV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->shareContentTV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 522
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingShare:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public LoginInfoPullBack(Lus/zoom/zrcsdk/model/LoginInfo;)V
    .locals 0

    .line 310
    invoke-virtual {p0, p1}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->onUpdatedWebSettingsNotification(Lus/zoom/zrcsdk/model/LoginInfo;)V

    return-void
.end method

.method public dismissDialogs()V
    .locals 1

    .line 366
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mCameraControlDialogFragment:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mCameraControlDialogFragment:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->dismissAllowingStateLoss()V

    .line 369
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingInfoDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 373
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mSettingsInMeetingDialogFragment:Landroidx/fragment/app/DialogFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mSettingsInMeetingDialogFragment:Landroidx/fragment/app/DialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 374
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mSettingsInMeetingDialogFragment:Landroidx/fragment/app/DialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_2
    return-void
.end method

.method public getMeetingPhoneMoreFragment()Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;
    .locals 1

    .line 380
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->meetingPhoneMoreFragment:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 209
    invoke-super {p0, p1}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 210
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->updateMeetingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V

    .line 211
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getAudioStatus()Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->updateAudioMuteStatus(Lus/zoom/zrcsdk/model/ZRCAudioStatus;)V

    .line 212
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getVideoStatus()Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->updateVideoStatus(Lus/zoom/zrcsdk/model/ZRCVideoStatus;Z)V

    .line 213
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getDisplayedRoomName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 214
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingRoomName:Landroid/widget/TextView;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getDisplayedRoomName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->updateMeetingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 109
    invoke-super {p0, p1}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->onAttach(Landroid/content/Context;)V

    .line 110
    iput-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->context:Landroid/content/Context;

    const-wide/16 v0, 0x0

    .line 111
    iput-wide v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->lastClickSystemTime:J

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->lastClickSystemTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 316
    :cond_0
    invoke-super {p0, p1}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->onClick(Landroid/view/View;)V

    .line 317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->lastClickSystemTime:J

    .line 318
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingMute:Landroid/widget/ImageView;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    .line 319
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getAudioStatus()Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->getAudioType()I

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 322
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getAudioStatus()Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->isMuted()Z

    move-result p1

    .line 323
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v0

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/ConfApp;->updateAudioStatus(Z)Z

    goto/16 :goto_1

    .line 324
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingVideo:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_4

    .line 325
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getVideoStatus()Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->isSending()Z

    move-result p1

    xor-int/2addr p1, v1

    .line 326
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v0

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ConfApp;->updateVideoStatus(Z)I

    goto/16 :goto_1

    .line 327
    :cond_4
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingInfo:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_5

    .line 328
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingInfoDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_8

    .line 329
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingInfoDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 330
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->getWidth(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3f733333    # 0.95f

    mul-float p1, p1, v0

    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$dimen;->zrc_meeting_info_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    .line 331
    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 332
    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lus/zoom/zrc/utils/Util;->getHeight(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v0, v2

    invoke-virtual {v1, p1, v0}, Landroid/view/Window;->setLayout(II)V

    goto :goto_1

    .line 335
    :cond_5
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingShare:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_6

    .line 336
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 337
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/MeetingActivity;

    invoke-virtual {p1}, Lus/zoom/zrc/MeetingActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->showShareContent(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V

    goto :goto_1

    .line 339
    :cond_6
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->layoutMore:Landroid/view/View;

    if-ne p1, v0, :cond_7

    .line 340
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->context:Landroid/content/Context;

    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_8

    .line 341
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    .line 342
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 343
    sget v0, Lus/zoom/zrcbox/R$anim;->slide_in_bottom:I

    sget v1, Lus/zoom/zrcbox/R$anim;->slide_out_bottom:I

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    .line 344
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->meetingPhoneMoreFragment:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_8

    .line 345
    sget v0, Lus/zoom/zrcbox/R$id;->ll_container:I

    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->meetingPhoneMoreFragment:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    const-class v2, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->meetingPhoneMoreFragment:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_1

    .line 347
    :cond_7
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mCameraControl:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_8

    .line 348
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->showCameraControlDialog()V

    :cond_8
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 116
    invoke-super {p0, p1}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->onCreate(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-class v0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    iput-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->meetingPhoneMoreFragment:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    .line 118
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->meetingPhoneMoreFragment:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    if-nez p1, :cond_0

    .line 119
    new-instance p1, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-direct {p1}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->meetingPhoneMoreFragment:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    .line 122
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->ptListener:Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/AppEngine;->addZRMeetingEventListener(Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
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
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CutPasteId"
        }
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 162
    sget p3, Lus/zoom/zrcbox/R$layout;->meeting_phone_main_fragmet:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 163
    sget p2, Lus/zoom/zrcbox/R$id;->meeting_number:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingNumber:Landroid/widget/TextView;

    .line 164
    sget p2, Lus/zoom/zrcbox/R$id;->meeting_control_info_help:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingInfo:Landroid/widget/ImageView;

    .line 165
    sget p2, Lus/zoom/zrcbox/R$id;->iv_mute_unmute_microphone:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingMute:Landroid/widget/ImageView;

    .line 166
    sget p2, Lus/zoom/zrcbox/R$id;->tv_mute_unmute_microphone:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingMuteTxt:Landroid/widget/TextView;

    .line 167
    sget p2, Lus/zoom/zrcbox/R$id;->iv_start_stop_video:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingVideo:Landroid/widget/ImageView;

    .line 168
    sget p2, Lus/zoom/zrcbox/R$id;->tv_start_stop_video:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingVideoTxt:Landroid/widget/TextView;

    .line 169
    sget p2, Lus/zoom/zrcbox/R$id;->iv_share_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingShare:Landroid/widget/ImageView;

    .line 170
    sget p2, Lus/zoom/zrcbox/R$id;->tv_share_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->shareContentTV:Landroid/widget/TextView;

    .line 171
    sget p2, Lus/zoom/zrcbox/R$id;->iv_camera_control:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mCameraControl:Landroid/widget/ImageView;

    .line 172
    sget p2, Lus/zoom/zrcbox/R$id;->iv_more:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingMore:Landroid/widget/ImageView;

    .line 173
    sget p2, Lus/zoom/zrcbox/R$id;->layout_more_red_point:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->layoutMore:Landroid/view/View;

    .line 174
    sget p2, Lus/zoom/zrcbox/R$id;->iv_more_red_point:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->ivMoreRedPoint:Landroid/widget/ImageView;

    .line 175
    sget p2, Lus/zoom/zrcbox/R$id;->meeting_room_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingRoomName:Landroid/widget/TextView;

    .line 176
    sget p2, Lus/zoom/zrcbox/R$id;->iv_camera_control_txt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mTvCameraControl:Landroid/widget/TextView;

    .line 178
    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingInfo:Landroid/widget/ImageView;

    iget-object p3, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingNumber:Landroid/widget/TextView;

    invoke-static {p2, p3}, Lus/zoom/zrc/utils/ZRCUIUtils;->matchImageViewToTextSize(Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 180
    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingInfo:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingMute:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingVideo:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingShare:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mCameraControl:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->layoutMore:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->initMeetingInformationDialog()V

    .line 188
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-class p3, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mCameraControlDialogFragment:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    .line 189
    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mCameraControlDialogFragment:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    if-nez p2, :cond_0

    .line 190
    new-instance p2, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-direct {p2}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;-><init>()V

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mCameraControlDialogFragment:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    .line 193
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/AppModel;->isPairedWithoutLogin()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 194
    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingShare:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 195
    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->shareContentTV:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 197
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/AppModel;->isShareDualCameraSupported()Z

    move-result p2

    invoke-direct {p0, p2}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->updateShareContent(Z)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 127
    invoke-super {p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->onDestroy()V

    .line 128
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->ptListener:Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppEngine;->removeZRMeetingEventListener(Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;)V

    return-void
.end method

.method public onMeetingCloudRecordingErrorNotification(I)V
    .locals 3

    .line 401
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/view/CloudRecordingStopDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/CloudRecordingStopDialog;

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {v0}, Lus/zoom/zrc/view/CloudRecordingStopDialog;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/view/CloudRecordingStopDialog;->dismiss()V

    .line 403
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/view/ZRCMeetingCloudRecordingErrorFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/ZRCMeetingCloudRecordingErrorFragment;

    if-nez v0, :cond_1

    .line 405
    new-instance v0, Lus/zoom/zrc/view/ZRCMeetingCloudRecordingErrorFragment;

    invoke-direct {v0}, Lus/zoom/zrc/view/ZRCMeetingCloudRecordingErrorFragment;-><init>()V

    .line 406
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "errorCode"

    .line 407
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 408
    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/ZRCMeetingCloudRecordingErrorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 409
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lus/zoom/zrc/view/ZRCMeetingCloudRecordingErrorFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    goto :goto_0

    .line 412
    :cond_1
    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/ZRCMeetingCloudRecordingErrorFragment;->updateUI(I)V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 361
    invoke-super {p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->onPause()V

    .line 362
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->dismissDialogs()V

    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 99
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 100
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->redPointFlag:I

    if-ne p2, p1, :cond_0

    .line 101
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->meetingRedPointController:Lus/zoom/zrc/view/MeetingRedPointController;

    invoke-virtual {p1}, Lus/zoom/zrc/view/MeetingRedPointController;->shouldShowOnMore()Z

    move-result p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->updateMoreRedPoint(Z)V

    goto :goto_0

    .line 102
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->settingsDeviceInfo:I

    if-ne p1, p2, :cond_1

    .line 103
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->onUpdateSettingsDeviceInfo()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 136
    invoke-super {p0}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->onResume()V

    .line 137
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoStatus()Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->updateVideoStatus(Lus/zoom/zrcsdk/model/ZRCVideoStatus;Z)V

    .line 138
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getAudioStatus()Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->updateAudioMuteStatus(Lus/zoom/zrcsdk/model/ZRCAudioStatus;)V

    return-void
.end method

.method public onSetCloudRecordingNotificationEmailResult(I)V
    .locals 1

    .line 462
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->meetingPhoneMoreFragment:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->meetingPhoneMoreFragment:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->onSetCloudRecordingNotificationEmailResult(I)V

    :cond_0
    return-void
.end method

.method public onUpdateIsOnEntryMuted(Z)V
    .locals 1

    .line 423
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->meetingPhoneMoreFragment:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->meetingPhoneMoreFragment:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->onUpdateIsOnEntryMuted(Z)V

    :cond_0
    return-void
.end method

.method public onUpdateMeetingLockStatus(Z)V
    .locals 1

    .line 429
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->meetingPhoneMoreFragment:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->meetingPhoneMoreFragment:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->onUpdateMeetingLockStatus(Z)V

    :cond_0
    return-void
.end method

.method public onUpdateMeetingRecordingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;)V
    .locals 1

    .line 417
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->meetingPhoneMoreFragment:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->meetingPhoneMoreFragment:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->onUpdateMeetingRecordingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;)V

    :cond_0
    return-void
.end method

.method public onUpdateSettingsDeviceInfo()V
    .locals 2

    .line 468
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    .line 469
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->updateMuteEnableState()V

    if-eqz v0, :cond_1

    .line 475
    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->meetingPhoneMoreFragment:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->meetingPhoneMoreFragment:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-virtual {v1, v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->updateSwitchCameraContainer(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)V

    .line 481
    :cond_0
    invoke-virtual {p0, v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->updateCameraControlView(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)V

    .line 485
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->isShareDualCameraSupported()Z

    move-result v0

    .line 486
    invoke-direct {p0, v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->updateShareContent(Z)V

    return-void
.end method

.method public onUpdatedWebSettingsNotification(Lus/zoom/zrcsdk/model/LoginInfo;)V
    .locals 1

    .line 220
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getDisplayedRoomName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 221
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingRoomName:Landroid/widget/TextView;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getDisplayedRoomName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
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

    .line 203
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 204
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->meetingRedPointController:Lus/zoom/zrc/view/MeetingRedPointController;

    invoke-virtual {p1}, Lus/zoom/zrc/view/MeetingRedPointController;->shouldShowOnMore()Z

    move-result p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->updateMoreRedPoint(Z)V

    return-void
.end method

.method public startCameraControlFragment(Lus/zoom/zrc/camera_control/model/CameraShareData;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 390
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 393
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 394
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mCameraControlDialogFragment:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 395
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mCameraControlDialogFragment:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v2, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mCameraControlDialogFragment:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->receiveShareData(Lus/zoom/zrc/camera_control/model/CameraShareData;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public updateAudioMuteStatus(Lus/zoom/zrcsdk/model/ZRCAudioStatus;)V
    .locals 2

    .line 257
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

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

    .line 260
    :cond_1
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->updateMuteEnableState()V

    if-nez p1, :cond_2

    return-void

    .line 265
    :cond_2
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->isMuted()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 266
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->getAudioType()I

    move-result p1

    if-ne p1, v1, :cond_3

    .line 267
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingMute:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->unmute_normal_phone:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 269
    :cond_3
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingMute:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->unmute_normal:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 271
    :goto_1
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingMuteTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->unmute:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingMute:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->unmute:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 274
    :cond_4
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->getAudioType()I

    move-result p1

    if-ne p1, v1, :cond_5

    .line 275
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingMute:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->mute_phone:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 277
    :cond_5
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingMute:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->mute:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 279
    :goto_2
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingMuteTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->mute:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingMute:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->mute:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method

.method public updateCameraControl(Lus/zoom/zrcsdk/model/ZRCVideoStatus;)V
    .locals 1
    .param p1    # Lus/zoom/zrcsdk/model/ZRCVideoStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 441
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->isSending()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 442
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mCameraControl:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 443
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mTvCameraControl:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 445
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mCameraControl:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 446
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mTvCameraControl:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public updateCameraControlView(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)V
    .locals 3
    .param p1    # Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 496
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mCameraControlDialogFragment:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 497
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mCameraControlDialogFragment:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->providePresenter()Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 500
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mCameraControlDialogFragment:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->fetchShareData()Lus/zoom/zrc/camera_control/model/CameraShareData;

    move-result-object v0

    .line 501
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSelectedCamera()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSelectedCamera()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 502
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 503
    invoke-virtual {v0, v1}, Lus/zoom/zrc/camera_control/model/CameraShareData;->setDeviceId(Ljava/lang/String;)V

    .line 505
    :cond_1
    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mCameraControlDialogFragment:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-virtual {v1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->providePresenter()Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->loadCameraControlView(Lus/zoom/zrc/camera_control/model/CameraShareData;Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)V

    :cond_2
    return-void
.end method

.method public updateMeetingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingInformationView:Lus/zoom/zrc/view/MeetingInformationView;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/MeetingInformationView;->updateMeetingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V

    .line 304
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingNumber:Landroid/widget/TextView;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getMeetingNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lus/zoom/zrc/utils/Util;->getDisplayMeetingNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isEncryptedMeeting()Z

    move-result p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->updateMeetingEncryptedStatus(Z)V

    return-void
.end method

.method public updateMoreRedPoint(Z)V
    .locals 2

    .line 530
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->ivMoreRedPoint:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 531
    sget-object p1, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->TAG:Ljava/lang/String;

    const-string v0, "updateMoreRedPoint() called with: ivMoreRedPoint == null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 535
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 537
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public updateVideoStatus(Lus/zoom/zrcsdk/model/ZRCVideoStatus;Z)V
    .locals 3

    .line 227
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->isAdded()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

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

    .line 230
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->isHasSource()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 231
    :goto_1
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 232
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingVideoTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-eqz p2, :cond_5

    .line 238
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->isSending()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 239
    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingVideo:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->stop_video:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 240
    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingVideoTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->stop_video:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingVideo:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->stop_video:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 243
    :cond_4
    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingVideo:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->start_video_normal:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 244
    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingVideoTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->start_video:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->mMeetingVideo:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->start_video:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 248
    :cond_5
    :goto_2
    invoke-virtual {p0, p1}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->updateCameraControl(Lus/zoom/zrcsdk/model/ZRCVideoStatus;)V

    .line 250
    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->meetingPhoneMoreFragment:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->isAdded()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 251
    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->meetingPhoneMoreFragment:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-virtual {p2, p1}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->updateSwitchCameraView(Lus/zoom/zrcsdk/model/ZRCVideoStatus;)V

    :cond_6
    return-void
.end method
