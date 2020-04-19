.class public Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "CameraControlDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lus/zoom/zrc/camera_control/view/ICameraControl$View;


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraControlDialogFragment"


# instance fields
.field private final GAP:I

.field private final PRESET_POS_0:I

.field private final PRESET_POS_1:I

.field private final PRESET_POS_2:I

.field private bottomLineView:Landroid/view/View;

.field private camControlTitle:Landroid/widget/TextView;

.field private camTitleTV:Landroid/widget/TextView;

.field private cameraControlPanel:Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;

.field private cameraControlSharingHintTV:Landroid/widget/TextView;

.field private cameraPresetPanelHidden:Z

.field private cameraPresetsGroup:Landroid/view/ViewGroup;

.field private cpIntelligentZoomSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

.field private cpIntelligentZoomView:Landroid/view/View;

.field private cpMirrorEffectSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

.field private cpMirrorEffectView:Landroid/view/View;

.field private cpSwitchCamTV:Landroid/widget/TextView;

.field private doneView:Landroid/view/View;

.field private listener:Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;

.field private mBtnZoomIn:Landroid/widget/ImageView;

.field private mBtnZoomOut:Landroid/widget/ImageView;

.field private mIvDown:Landroid/widget/ImageView;

.field private mIvLeft:Landroid/widget/ImageView;

.field private mIvRight:Landroid/widget/ImageView;

.field private mIvUp:Landroid/widget/ImageView;

.field private mPresetPopupWindow:Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;

.field private mShareData:Lus/zoom/zrc/camera_control/model/CameraShareData;

.field private needLockSettingsWhenDismiss:Z

.field private panTilSpeedPercentageLayout:Landroid/view/View;

.field private panTilSpeedPercentageSeekBar:Landroid/widget/SeekBar;

.field private renameDialog:Landroid/app/Dialog;

.field private switchCameraPopupWindow:Lus/zoom/zrc/view/SwitchCameraPopupWindow;

.field private userActionsListener:Lus/zoom/zrc/camera_control/view/ICameraControl$AdvancedUserActionsListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 81
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cameraPresetPanelHidden:Z

    const/4 v1, 0x0

    .line 91
    iput v1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->PRESET_POS_0:I

    .line 92
    iput v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->PRESET_POS_1:I

    const/4 v0, 0x2

    .line 93
    iput v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->PRESET_POS_2:I

    const/16 v0, 0x1e

    .line 94
    iput v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->GAP:I

    .line 128
    new-instance v0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$1;-><init>(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->listener:Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)Lus/zoom/zrc/camera_control/view/ICameraControl$AdvancedUserActionsListener;
    .locals 0

    .line 81
    iget-object p0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->userActionsListener:Lus/zoom/zrc/camera_control/view/ICameraControl$AdvancedUserActionsListener;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)Lus/zoom/zrc/base/widget/ZRCSwitchButton;
    .locals 0

    .line 81
    iget-object p0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cpMirrorEffectSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)Lus/zoom/zrc/camera_control/model/CameraShareData;
    .locals 0

    .line 81
    iget-object p0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mShareData:Lus/zoom/zrc/camera_control/model/CameraShareData;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)Landroid/widget/TextView;
    .locals 0

    .line 81
    iget-object p0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->camControlTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;
    .locals 0

    .line 81
    iget-object p0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cameraControlPanel:Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;

    return-object p0
.end method

.method static synthetic access$500(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)Z
    .locals 0

    .line 81
    invoke-direct {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->isTablet()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;
    .locals 0

    .line 81
    iget-object p0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mPresetPopupWindow:Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;

    return-object p0
.end method

.method static synthetic access$700(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)Landroid/app/Dialog;
    .locals 0

    .line 81
    iget-object p0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->renameDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$802(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;Z)Z
    .locals 0

    .line 81
    iput-boolean p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->needLockSettingsWhenDismiss:Z

    return p1
.end method

.method static synthetic access$900(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)Lus/zoom/zrc/base/widget/ZRCSwitchButton;
    .locals 0

    .line 81
    iget-object p0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cpIntelligentZoomSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    return-object p0
.end method

.method private handleOnTouch(Landroid/view/View;ZI)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1234
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setPressed(Z)V

    .line 1236
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 1237
    sget p2, Lus/zoom/zrcbox/R$id;->cpZoomOut:I

    if-ne p1, p2, :cond_1

    .line 1238
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->providePresenter()Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->zoomOut(I)V

    goto :goto_0

    .line 1240
    :cond_1
    sget p2, Lus/zoom/zrcbox/R$id;->cpZoomIn:I

    if-ne p1, p2, :cond_2

    .line 1241
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->providePresenter()Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->zoomIn(I)V

    goto :goto_0

    .line 1243
    :cond_2
    sget p2, Lus/zoom/zrcbox/R$id;->cpShiftLeft:I

    if-ne p1, p2, :cond_3

    .line 1244
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->providePresenter()Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->camLeft(I)V

    goto :goto_0

    .line 1246
    :cond_3
    sget p2, Lus/zoom/zrcbox/R$id;->cpShiftRight:I

    if-ne p1, p2, :cond_4

    .line 1247
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->providePresenter()Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->camRight(I)V

    goto :goto_0

    .line 1249
    :cond_4
    sget p2, Lus/zoom/zrcbox/R$id;->cpShiftUp:I

    if-ne p1, p2, :cond_5

    .line 1250
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->providePresenter()Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->camUp(I)V

    goto :goto_0

    .line 1252
    :cond_5
    sget p2, Lus/zoom/zrcbox/R$id;->cpShiftDown:I

    if-ne p1, p2, :cond_6

    .line 1253
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->providePresenter()Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->camDown(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method private isTablet()Z
    .locals 1

    .line 1278
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private onMirrorOwnVideoResult(ILjava/lang/String;ZLjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_2

    .line 1355
    invoke-static {p2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1356
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mShareData:Lus/zoom/zrc/camera_control/model/CameraShareData;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lus/zoom/zrc/camera_control/model/CameraShareData;->getType()Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    move-result-object p1

    sget-object p2, Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;->SHARE:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    if-ne p1, p2, :cond_0

    .line 1357
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getCameraSharingStatus()Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->clone()Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    move-result-object p1

    .line 1358
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->isMirrored()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    .line 1359
    invoke-virtual {p1, p2}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->setMirroerd(Z)V

    .line 1360
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p3

    invoke-virtual {p3, p1}, Lus/zoom/zrc/model/AppModel;->setCameraSharingStatus(Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;)V

    .line 1361
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p3

    invoke-virtual {p3, p1}, Lus/zoom/zrc/model/Model;->setCameraSharingStatus(Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;)V

    .line 1363
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->isSharingCameraEqualToSelectedCamera()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1364
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1366
    invoke-virtual {p1, p2}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->setIs_self_video_mirrored(Z)V

    .line 1367
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p2

    invoke-virtual {p2, p1}, Lus/zoom/zrc/model/AppModel;->setSettingsDeviceInfo(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)V

    goto :goto_0

    .line 1371
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "CameraControlDialogFragment"

    const-string p2, "onMirrorOwnVideoResult deviceInfo == null"

    const/4 p3, 0x0

    .line 1373
    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1376
    :cond_1
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->isIs_self_video_mirrored()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    .line 1377
    invoke-virtual {p1, p2}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->setIs_self_video_mirrored(Z)V

    .line 1378
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p3

    invoke-virtual {p3, p1}, Lus/zoom/zrc/model/AppModel;->setSettingsDeviceInfo(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)V

    .line 1380
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getCameraSharingStatus()Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->clone()Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    move-result-object p1

    .line 1381
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->isSharing()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p3

    invoke-virtual {p3}, Lus/zoom/zrc/model/Model;->isSharingCameraEqualToSelectedCamera()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 1382
    invoke-virtual {p1, p2}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->setMirroerd(Z)V

    .line 1383
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p2

    invoke-virtual {p2, p1}, Lus/zoom/zrc/model/AppModel;->setCameraSharingStatus(Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;)V

    .line 1384
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2, p1}, Lus/zoom/zrc/model/Model;->setCameraSharingStatus(Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;)V

    .line 1389
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->providePresenter()Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    move-result-object p1

    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->fetchShareData()Lus/zoom/zrc/camera_control/model/CameraShareData;

    move-result-object p2

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p3

    invoke-virtual {p3}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->loadCameraControlView(Lus/zoom/zrc/camera_control/model/CameraShareData;Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)V

    return-void
.end method

.method private onSettingsDeviceInfoChanged()V
    .locals 2

    .line 1335
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mPresetPopupWindow:Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1339
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1344
    :cond_1
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSelectedCamera()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v0

    .line 1347
    iget-object v1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mPresetPopupWindow:Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;

    invoke-virtual {v1}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;->getSelectedCamera()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1348
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mPresetPopupWindow:Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;->dismiss()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method private onVideoStatusChanged()V
    .locals 1

    .line 1328
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getVideoStatus()Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1329
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->isSending()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1330
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->dismissAllowingStateLoss()V

    :cond_1
    return-void
.end method

.method private updateDefaultPresetStatus()V
    .locals 8

    .line 888
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 892
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getCameraPresetsManager()Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 896
    :cond_1
    invoke-virtual {v1}, Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;->cameraPresetDefaultIndex()I

    move-result v1

    .line 897
    invoke-direct {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->isTablet()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-eqz v2, :cond_5

    .line 898
    sget v2, Lus/zoom/zrcbox/R$id;->camera_preset_default_fst:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v1, :cond_2

    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    const/16 v7, 0x8

    :goto_0
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 899
    sget v2, Lus/zoom/zrcbox/R$id;->camera_preset_default_2nd:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-ne v4, v1, :cond_3

    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 900
    sget v2, Lus/zoom/zrcbox/R$id;->camera_preset_default_3rd:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-ne v3, v1, :cond_4

    goto :goto_2

    :cond_4
    const/16 v5, 0x8

    :goto_2
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 902
    :cond_5
    sget v2, Lus/zoom/zrcbox/R$id;->camera_preset_default_fst_port:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v1, :cond_6

    const/4 v7, 0x0

    goto :goto_3

    :cond_6
    const/16 v7, 0x8

    :goto_3
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 903
    sget v2, Lus/zoom/zrcbox/R$id;->camera_preset_default_2nd_port:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-ne v4, v1, :cond_7

    const/4 v4, 0x0

    goto :goto_4

    :cond_7
    const/16 v4, 0x8

    :goto_4
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 904
    sget v2, Lus/zoom/zrcbox/R$id;->camera_preset_default_3rd_port:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-ne v3, v1, :cond_8

    goto :goto_5

    :cond_8
    const/16 v5, 0x8

    :goto_5
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 907
    :goto_6
    invoke-direct {p0, v1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->updatePresetWrapperWidth(I)V

    return-void
.end method

.method private updatePresetWrapperWidth(I)V
    .locals 7

    .line 911
    invoke-direct {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 915
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 916
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    if-nez p1, :cond_2

    .line 923
    sget p1, Lus/zoom/zrcbox/R$id;->camera_preset_default_fst:I

    .line 924
    sget v2, Lus/zoom/zrcbox/R$id;->preset_wrapper_layout_fst:I

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 926
    sget p1, Lus/zoom/zrcbox/R$id;->camera_preset_default_2nd:I

    .line 927
    sget v2, Lus/zoom/zrcbox/R$id;->preset_wrapper_layout_2nd:I

    goto :goto_0

    :cond_3
    if-ne p1, v1, :cond_4

    .line 929
    sget p1, Lus/zoom/zrcbox/R$id;->camera_preset_default_3rd:I

    .line 930
    sget v2, Lus/zoom/zrcbox/R$id;->preset_wrapper_layout_3rd:I

    .line 935
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 936
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 937
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 938
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    const/4 v5, 0x0

    .line 939
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v3, v5, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 941
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 942
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lus/zoom/zrcbox/R$dimen;->cp_preset_item_max_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 943
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lus/zoom/zrcbox/R$dimen;->preset_default_tv_padding:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    .line 945
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 946
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    add-int/2addr v3, p1

    add-int/2addr v3, v4

    .line 947
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 949
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_4
    return-void

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public enableCameraMoveActions(Z)V
    .locals 1

    .line 516
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mIvLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 517
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mIvUp:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 518
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mIvRight:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 519
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mIvDown:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 522
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mIvLeft:Landroid/widget/ImageView;

    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->setAlphaFilterTransparent(Landroid/widget/ImageView;)V

    .line 523
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mIvRight:Landroid/widget/ImageView;

    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->setAlphaFilterTransparent(Landroid/widget/ImageView;)V

    .line 524
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mIvUp:Landroid/widget/ImageView;

    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->setAlphaFilterTransparent(Landroid/widget/ImageView;)V

    .line 525
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mIvDown:Landroid/widget/ImageView;

    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->setAlphaFilterTransparent(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 527
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mIvLeft:Landroid/widget/ImageView;

    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->setAlphaFilterGray(Landroid/widget/ImageView;)V

    .line 528
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mIvRight:Landroid/widget/ImageView;

    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->setAlphaFilterGray(Landroid/widget/ImageView;)V

    .line 529
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mIvUp:Landroid/widget/ImageView;

    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->setAlphaFilterGray(Landroid/widget/ImageView;)V

    .line 530
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mIvDown:Landroid/widget/ImageView;

    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->setAlphaFilterGray(Landroid/widget/ImageView;)V

    :goto_0
    return-void
.end method

.method public enableCameraZoomActions(Z)V
    .locals 1

    .line 541
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mBtnZoomIn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 542
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mBtnZoomOut:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 545
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mBtnZoomOut:Landroid/widget/ImageView;

    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->setAlphaFilterTransparent(Landroid/widget/ImageView;)V

    .line 546
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mBtnZoomIn:Landroid/widget/ImageView;

    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->setAlphaFilterTransparent(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 548
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mBtnZoomOut:Landroid/widget/ImageView;

    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->setAlphaFilterGray(Landroid/widget/ImageView;)V

    .line 549
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mBtnZoomIn:Landroid/widget/ImageView;

    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->setAlphaFilterGray(Landroid/widget/ImageView;)V

    :goto_0
    return-void
.end method

.method public final fetchShareData()Lus/zoom/zrc/camera_control/model/CameraShareData;
    .locals 1

    .line 1265
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mShareData:Lus/zoom/zrc/camera_control/model/CameraShareData;

    return-object v0
.end method

.method public fitScreen()V
    .locals 4

    .line 558
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 560
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "requestLargeLayout dialog has not init yet!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 564
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    .line 566
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "requestLargeLayout window has not init yet!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 570
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lus/zoom/zrc/utils/Util;->getWidth(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    .line 571
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lus/zoom/zrc/utils/Util;->getHeight(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    .line 572
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x3f59999a    # 0.85f

    mul-float v1, v1, v3

    float-to-int v1, v1

    const v3, 0x3f666666    # 0.9f

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 573
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0

    :cond_2
    const v2, 0x3f733333    # 0.95f

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/4 v2, -0x2

    .line 575
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 578
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cameraControlPanel:Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;

    new-instance v1, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$15;

    invoke-direct {v1, p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$15;-><init>(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getShowingDialog()Landroid/app/Dialog;
    .locals 1

    .line 1202
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCameraIntelligentZoomAvailableChanged(Z)V
    .locals 0

    .line 1183
    invoke-virtual {p0, p1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->setCameraIntelligentZoomAvailable(Z)V

    return-void
.end method

.method public onCameraIntelligentZoomOnChanged(Z)V
    .locals 0

    .line 1174
    invoke-virtual {p0, p1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->setCameraIntelligentZoomOn(Z)V

    return-void
.end method

.method public onCameraListChanged(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1132
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getDisplayDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->updateNavigationTitle(Ljava/lang/String;)V

    return-void
.end method

.method public onCameraPresetDefaultPositionUpdate(I)V
    .locals 2

    .line 854
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsDefaultCameraPreset()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 859
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->updateDefaultPresetStatus()V

    .line 861
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mPresetPopupWindow:Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 865
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 870
    :cond_2
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSelectedCamera()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v0

    .line 873
    iget-object v1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mPresetPopupWindow:Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;

    invoke-virtual {v1}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;->getSelectedCamera()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 874
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mPresetPopupWindow:Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;

    invoke-virtual {p1}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;->dismiss()V

    return-void

    .line 879
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mPresetPopupWindow:Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;->isDefaultPreset()Z

    move-result v0

    .line 880
    iget-object v1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mPresetPopupWindow:Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;

    invoke-virtual {v1}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;->getShowingIndex()I

    move-result v1

    if-ne p1, v1, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    if-eq v0, p1, :cond_5

    .line 882
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mPresetPopupWindow:Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;

    invoke-virtual {p1}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;->dismiss()V

    .line 883
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mPresetPopupWindow:Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;

    invoke-virtual {p1}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;->getShowingIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->showPresetPopupWindow(I)V

    :cond_5
    return-void

    :cond_6
    :goto_1
    return-void
.end method

.method public onCanCurrentCameraBeControlledChanged(Z)V
    .locals 0

    .line 1118
    invoke-virtual {p0, p1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->enableCameraMoveActions(Z)V

    .line 1119
    invoke-virtual {p0, p1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->enableCameraZoomActions(Z)V

    return-void
.end method

.method public onCanSwitchCameraChanged(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 1142
    invoke-virtual {p0, p1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->setSwitchCameraHidden(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 142
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 147
    new-instance v0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;-><init>(Lus/zoom/zrc/camera_control/view/ICameraControl$View;Landroid/content/Context;)V

    iput-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->userActionsListener:Lus/zoom/zrc/camera_control/view/ICameraControl$AdvancedUserActionsListener;

    .line 149
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->providePresenter()Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    move-result-object v0

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->injectAppModel(Lus/zoom/zrc/model/AppModel;)V

    .line 150
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->providePresenter()Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    move-result-object v0

    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->injectConfApp(Lus/zoom/zrcsdk/ConfApp;)V

    .line 151
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->providePresenter()Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    move-result-object v0

    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->injectPTApp(Lus/zoom/zrcsdk/PTApp;)V

    if-eqz p1, :cond_0

    const-string v0, "ShareData"

    .line 154
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/camera_control/model/CameraShareData;

    iput-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mShareData:Lus/zoom/zrc/camera_control/model/CameraShareData;

    .line 155
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getCameraSharingStatus()Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    .line 156
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mShareData:Lus/zoom/zrc/camera_control/model/CameraShareData;

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/CameraShareData;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 157
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mShareData:Lus/zoom/zrc/camera_control/model/CameraShareData;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/camera_control/model/CameraShareData;->setDeviceId(Ljava/lang/String;)V

    goto :goto_1

    .line 160
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mShareData:Lus/zoom/zrc/camera_control/model/CameraShareData;

    if-nez p1, :cond_1

    sget-object p1, Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;->LOCAL:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lus/zoom/zrc/camera_control/model/CameraShareData;->getType()Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    move-result-object p1

    .line 161
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->providePresenter()Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->provideCameraController()Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->setCurrentCameraControlType(Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;)V

    .line 164
    :cond_2
    :goto_1
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->listener:Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/AppEngine;->addZRMeetingEventListener(Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;)V

    .line 165
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Lus/zoom/zrc/base/notification/NotificationEvent;

    const/4 v1, 0x0

    sget-object v2, Lus/zoom/zrc/base/notification/ModelEvent;->onCameraIntelligentZoomNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lus/zoom/zrc/base/notification/ModelEvent;->MirrorOwnVideoResult:Lus/zoom/zrc/base/notification/ModelEvent;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerNotification([Lus/zoom/zrc/base/notification/NotificationEvent;)V

    .line 166
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const/4 p3, 0x1

    .line 172
    invoke-virtual {p0, p3}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->requestWindowFeature(I)V

    .line 174
    invoke-direct {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->isTablet()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 175
    sget p3, Lus/zoom/zrcbox/R$layout;->camera_control_fragment:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 177
    :cond_0
    sget p3, Lus/zoom/zrcbox/R$layout;->camera_control_fragment_port:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 180
    :goto_0
    sget p2, Lus/zoom/zrcbox/R$id;->txtTitle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->camControlTitle:Landroid/widget/TextView;

    .line 185
    invoke-direct {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->isTablet()Z

    move-result p2

    if-nez p2, :cond_1

    .line 186
    sget p2, Lus/zoom/zrcbox/R$id;->sc_done_bt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->doneView:Landroid/view/View;

    .line 187
    sget p2, Lus/zoom/zrcbox/R$id;->cc_cam_title_tv:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->camTitleTV:Landroid/widget/TextView;

    .line 188
    iget-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->doneView:Landroid/view/View;

    new-instance p3, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$2;

    invoke-direct {p3, p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$2;-><init>(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 195
    :cond_1
    sget p2, Lus/zoom/zrcbox/R$id;->cameraControlDoneTV:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->doneView:Landroid/view/View;

    .line 196
    iget-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->doneView:Landroid/view/View;

    new-instance p3, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$3;

    invoke-direct {p3, p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$3;-><init>(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    :goto_1
    sget p2, Lus/zoom/zrcbox/R$id;->cameraPresetVS:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    .line 205
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cameraPresetsGroup:Landroid/view/ViewGroup;

    .line 206
    iget-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cameraPresetsGroup:Landroid/view/ViewGroup;

    sget p3, Lus/zoom/zrcbox/R$id;->cameraControl1View:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 207
    iget-object p3, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cameraPresetsGroup:Landroid/view/ViewGroup;

    sget v0, Lus/zoom/zrcbox/R$id;->cameraControl2View:I

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 208
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cameraPresetsGroup:Landroid/view/ViewGroup;

    sget v1, Lus/zoom/zrcbox/R$id;->cameraControl3View:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 210
    new-instance v1, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$4;

    invoke-direct {v1, p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$4;-><init>(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    new-instance v1, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$5;

    invoke-direct {v1, p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$5;-><init>(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 224
    new-instance p2, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$6;

    invoke-direct {p2, p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$6;-><init>(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)V

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    new-instance p2, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$7;

    invoke-direct {p2, p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$7;-><init>(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)V

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 238
    new-instance p2, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$8;

    invoke-direct {p2, p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$8;-><init>(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    new-instance p2, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$9;

    invoke-direct {p2, p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$9;-><init>(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 252
    sget p2, Lus/zoom/zrcbox/R$id;->cpSwitchCamTV:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cpSwitchCamTV:Landroid/widget/TextView;

    .line 253
    iget-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cpSwitchCamTV:Landroid/widget/TextView;

    new-instance p3, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$10;

    invoke-direct {p3, p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$10;-><init>(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    sget p2, Lus/zoom/zrcbox/R$id;->cpMirrorEffectView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cpMirrorEffectView:Landroid/view/View;

    .line 282
    sget p2, Lus/zoom/zrcbox/R$id;->cpMirrorEffectSwitch:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    iput-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cpMirrorEffectSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    .line 283
    iget-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cpMirrorEffectSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    new-instance p3, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$11;

    invoke-direct {p3, p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$11;-><init>(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)V

    invoke-virtual {p2, p3}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setOnSwitchChangedListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 304
    sget p2, Lus/zoom/zrcbox/R$id;->cpIntelligentZoomView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cpIntelligentZoomView:Landroid/view/View;

    .line 305
    sget p2, Lus/zoom/zrcbox/R$id;->cpIntelligentZoomSwitch:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    iput-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cpIntelligentZoomSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    .line 306
    iget-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cpIntelligentZoomSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    new-instance p3, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$12;

    invoke-direct {p3, p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$12;-><init>(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)V

    invoke-virtual {p2, p3}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setOnSwitchChangedListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 316
    sget p2, Lus/zoom/zrcbox/R$id;->cameraControlPanel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;

    iput-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cameraControlPanel:Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;

    .line 317
    iget-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cameraControlPanel:Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;

    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->providePresenter()Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    move-result-object p3

    invoke-virtual {p3}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->isCurrentCameraSharing()Z

    move-result p3

    invoke-virtual {p2, p3}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->setSharing(Z)V

    .line 318
    iget-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cameraControlPanel:Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;

    invoke-virtual {p2}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->loadKeyboard()V

    .line 320
    sget p2, Lus/zoom/zrcbox/R$id;->cpShiftUp:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mIvUp:Landroid/widget/ImageView;

    .line 321
    sget p2, Lus/zoom/zrcbox/R$id;->cpShiftDown:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mIvDown:Landroid/widget/ImageView;

    .line 322
    sget p2, Lus/zoom/zrcbox/R$id;->cpShiftLeft:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mIvLeft:Landroid/widget/ImageView;

    .line 323
    sget p2, Lus/zoom/zrcbox/R$id;->cpShiftRight:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mIvRight:Landroid/widget/ImageView;

    .line 324
    sget p2, Lus/zoom/zrcbox/R$id;->cpZoomOut:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mBtnZoomOut:Landroid/widget/ImageView;

    .line 325
    sget p2, Lus/zoom/zrcbox/R$id;->cpZoomIn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mBtnZoomIn:Landroid/widget/ImageView;

    .line 326
    sget p2, Lus/zoom/zrcbox/R$id;->cameraControlSharingHintTV:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cameraControlSharingHintTV:Landroid/widget/TextView;

    .line 327
    sget p2, Lus/zoom/zrcbox/R$id;->ccBottomLineView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->bottomLineView:Landroid/view/View;

    .line 328
    sget p2, Lus/zoom/zrcbox/R$id;->pan_til_speed_percentage:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->panTilSpeedPercentageLayout:Landroid/view/View;

    .line 329
    sget p2, Lus/zoom/zrcbox/R$id;->seekbar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->panTilSpeedPercentageSeekBar:Landroid/widget/SeekBar;

    .line 331
    iget-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mBtnZoomIn:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 332
    iget-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mBtnZoomOut:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 333
    iget-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mIvLeft:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 334
    iget-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mIvRight:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 335
    iget-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mIvUp:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 336
    iget-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mIvDown:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 338
    iget-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->panTilSpeedPercentageSeekBar:Landroid/widget/SeekBar;

    new-instance p3, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$13;

    invoke-direct {p3, p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$13;-><init>(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 382
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->camControlTitle:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    .line 383
    new-instance p3, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$14;

    invoke-direct {p3, p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$14;-><init>(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p2, p3, v0, v1}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 445
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onDestroy()V

    .line 448
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->providePresenter()Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 449
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->providePresenter()Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->release()V

    const/4 v0, 0x0

    .line 450
    iput-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->userActionsListener:Lus/zoom/zrc/camera_control/view/ICameraControl$AdvancedUserActionsListener;

    .line 453
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->switchCameraPopupWindow:Lus/zoom/zrc/view/SwitchCameraPopupWindow;

    if-eqz v0, :cond_1

    .line 454
    invoke-virtual {v0}, Lus/zoom/zrc/view/SwitchCameraPopupWindow;->dismiss()V

    .line 456
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->listener:Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppEngine;->removeZRMeetingEventListener(Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;)V

    return-void
.end method

.method public onMyVideoStatusChanged(Z)V
    .locals 0

    .line 1152
    invoke-virtual {p0, p1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->setSwitchCameraEnabled(Z)V

    .line 1153
    invoke-virtual {p0, p1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->setMirrorMyVideoEnable(Z)V

    return-void
.end method

.method public onOwnVideoMirroredChanged(Z)V
    .locals 0

    .line 1163
    invoke-virtual {p0, p1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->setMirrorMyVideoOn(Z)V

    return-void
.end method

.method public onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 3

    .line 1303
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    .line 1304
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->onCameraIntelligentZoomNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_0

    .line 1305
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->providePresenter()Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->updateCameraControlStatus()V

    goto :goto_0

    .line 1306
    :cond_0
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->MirrorOwnVideoResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_1

    const-string p1, "result"

    .line 1307
    invoke-static {p2, p1}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->intFromMap(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p1

    const-string v0, "requestId"

    .line 1308
    invoke-static {p2, v0}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->valueFromMap(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "isMirrored"

    .line 1309
    invoke-static {p2, v1}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->boolFromMap(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "deviceID"

    .line 1310
    invoke-static {p2, v2}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->valueFromMap(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1311
    invoke-direct {p0, p1, v0, v1, p2}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->onMirrorOwnVideoResult(ILjava/lang/String;ZLjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 1317
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 1318
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->cameraSharingStatus:I

    if-ne p1, p2, :cond_0

    .line 1319
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->providePresenter()Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->getCallbacks()Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/Model;->getCameraSharingStatus()Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    move-result-object p2

    invoke-interface {p1, p2}, Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;->onCameraSharingStatusChanged(Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;)V

    goto :goto_0

    .line 1320
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->settingsDeviceInfo:I

    if-ne p1, p2, :cond_1

    .line 1321
    invoke-direct {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->onSettingsDeviceInfoChanged()V

    goto :goto_0

    .line 1322
    :cond_1
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->videoStatus:I

    if-ne p1, p2, :cond_2

    .line 1323
    invoke-direct {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->onVideoStatusChanged()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 415
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onResume()V

    .line 418
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->providePresenter()Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mShareData:Lus/zoom/zrc/camera_control/model/CameraShareData;

    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->providePresenter()Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->provideSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->loadCameraControlView(Lus/zoom/zrc/camera_control/model/CameraShareData;Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1270
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "ShareData"

    .line 1271
    iget-object v1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mShareData:Lus/zoom/zrc/camera_control/model/CameraShareData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 398
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onStart()V

    .line 401
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->providePresenter()Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    move-result-object v0

    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->attachCameraControlListener(Lus/zoom/zrc/model/AppEngine;)V

    .line 404
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->fitScreen()V

    .line 407
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cameraPresetsGroup:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 409
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->updateSpeedControlView()V

    .line 410
    invoke-direct {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->updateDefaultPresetStatus()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 423
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onStop()V

    .line 425
    iget-boolean v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->needLockSettingsWhenDismiss:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isConnectedToZoomRoom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->setSettingsLocked(Z)V

    const/4 v0, 0x0

    .line 427
    iput-boolean v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->needLockSettingsWhenDismiss:Z

    .line 431
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->providePresenter()Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    move-result-object v0

    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->removeCameraControlListener(Lus/zoom/zrc/model/AppEngine;)V

    .line 434
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->getContentView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 435
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 437
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->renameDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 438
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->renameDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 440
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->dismiss(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 470
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    .line 483
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    :pswitch_1
    const/4 p2, 0x2

    .line 478
    invoke-direct {p0, p1, v0, p2}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->handleOnTouch(Landroid/view/View;ZI)V

    goto :goto_0

    .line 472
    :pswitch_2
    invoke-direct {p0, p1, v1, v0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->handleOnTouch(Landroid/view/View;ZI)V

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public providePresenter()Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;
    .locals 1

    .line 1192
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->userActionsListener:Lus/zoom/zrc/camera_control/view/ICameraControl$AdvancedUserActionsListener;

    check-cast v0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    return-object v0
.end method

.method public final receiveShareData(Lus/zoom/zrc/camera_control/model/CameraShareData;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1261
    :cond_0
    iput-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mShareData:Lus/zoom/zrc/camera_control/model/CameraShareData;

    return-void
.end method

.method public setBottomLineHidden(Z)V
    .locals 1

    .line 1217
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->bottomLineView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setCameraIntelligentZoomAvailable(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 1110
    invoke-virtual {p0, p1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->setIntelligentZoomHidden(Z)V

    return-void
.end method

.method public setCameraIntelligentZoomOn(Z)V
    .locals 1

    .line 1074
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cpIntelligentZoomSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setCheckedOnlyForUI(Z)V

    return-void
.end method

.method public setCameraPresetClickable(Z)V
    .locals 1

    .line 827
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cameraPresetsGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 828
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public setCameraSharingHintHidden(Z)V
    .locals 1

    .line 1212
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cameraControlSharingHintTV:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setDoneHidden(Z)V
    .locals 1

    .line 1207
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->doneView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setIntelligentZoomEnable(ZJ)V
    .locals 2

    .line 1085
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cpIntelligentZoomSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    new-instance v1, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$25;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$25;-><init>(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;Z)V

    invoke-virtual {v0, v1, p2, p3}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setIntelligentZoomHidden(Z)V
    .locals 1

    .line 1100
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cpIntelligentZoomView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setMirrorMyVideoEnable(Z)V
    .locals 1

    .line 1026
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cpMirrorEffectSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 1029
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cpMirrorEffectSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setAlpha(F)V

    goto :goto_0

    .line 1031
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cpMirrorEffectSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public setMirrorMyVideoHidden(Z)V
    .locals 1

    .line 1043
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cpMirrorEffectView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setMirrorMyVideoOn(Z)V
    .locals 1

    .line 1016
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cpMirrorEffectSwitch:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setCheckedOnlyForUI(Z)V

    return-void
.end method

.method public setNameOfCameraPreset(ILjava/lang/String;)V
    .locals 5

    .line 988
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cameraPresetsGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cameraPresetPanelHidden:Z

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 994
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gt v1, v0, :cond_3

    .line 995
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cameraPresetsGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 996
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 997
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 998
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 999
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1000
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1002
    :cond_1
    sget v3, Lus/zoom/zrcbox/R$string;->cp_preset_hint:I

    invoke-virtual {p0, v3}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method public setNumberOfPresets(I)V
    .locals 3

    .line 959
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->fetchShareData()Lus/zoom/zrc/camera_control/model/CameraShareData;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/CameraShareData;->getType()Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;->LOCAL:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cameraPresetPanelHidden:Z

    .line 963
    iget-boolean p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cameraPresetPanelHidden:Z

    if-eqz p1, :cond_2

    .line 964
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cameraPresetsGroup:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    .line 967
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cameraPresetsGroup:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 p1, 0x0

    .line 973
    :goto_2
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cameraPresetsGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 974
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cameraPresetsGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 976
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public setSwitchCameraEnabled(Z)V
    .locals 1

    .line 1058
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cpSwitchCamTV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 1061
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cpSwitchCamTV:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 1063
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cpSwitchCamTV:Landroid/widget/TextView;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public setSwitchCameraHidden(Z)V
    .locals 1

    .line 1053
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cpSwitchCamTV:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public showPassCodeForLockDialog()V
    .locals 3

    .line 791
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->ask_for_passcode_for_changing_camera_preset:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$23;

    invoke-direct {v2, p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$23;-><init>(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)V

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/CharSequence;Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method public showPresetPopupWindow(I)V
    .locals 13

    .line 604
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    .line 605
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getCameraPresetsManager()Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;

    move-result-object v1

    .line 606
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 608
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_a

    if-eqz v2, :cond_a

    if-eqz v0, :cond_a

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 611
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSelectedCamera()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v9

    if-nez v9, :cond_1

    return-void

    .line 616
    :cond_1
    invoke-virtual {v1}, Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;->cameraPresetDefaultIndex()I

    move-result v0

    const/4 v3, 0x1

    const/4 v12, 0x0

    if-ne v0, p1, :cond_2

    const/4 v11, 0x1

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    .line 619
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v4, Lus/zoom/zrcbox/R$layout;->layout_whiteboard_popup_window:I

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 621
    sget v4, Lus/zoom/zrcbox/R$id;->wbSavePosTV:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$16;

    invoke-direct {v5, p0, p1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$16;-><init>(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 632
    sget v4, Lus/zoom/zrcbox/R$id;->wbRenameTV:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$17;

    invoke-direct {v5, p0, p1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$17;-><init>(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 643
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsDefaultCameraPreset()Z

    move-result v4

    .line 645
    sget v5, Lus/zoom/zrcbox/R$id;->wbSetDefaultPosTV:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/16 v6, 0x8

    if-eqz v4, :cond_3

    const/4 v7, 0x0

    goto :goto_1

    :cond_3
    const/16 v7, 0x8

    .line 646
    :goto_1
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 647
    sget v7, Lus/zoom/zrcbox/R$id;->wbSetDefaultDivider:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v4, :cond_4

    const/4 v6, 0x0

    :cond_4
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 649
    invoke-virtual {v1}, Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;->cameraPresetDefaultIndex()I

    move-result v1

    if-ne p1, v1, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_6

    .line 651
    sget v4, Lus/zoom/zrcbox/R$string;->cancel_set_default_camera_preset_position:I

    .line 653
    invoke-virtual {p0, v4}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_6
    sget v4, Lus/zoom/zrcbox/R$string;->set_default_camera_preset_position:I

    .line 654
    invoke-virtual {p0, v4}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 651
    :goto_3
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    new-instance v4, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$18;

    invoke-direct {v4, p0, v1, p1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$18;-><init>(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;ZI)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 667
    invoke-static {v12, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 668
    invoke-static {v12, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 667
    invoke-virtual {v0, v1, v4}, Landroid/view/View;->measure(II)V

    .line 670
    new-instance v1, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    const/4 v8, 0x1

    move-object v4, v1

    move-object v5, v0

    move v10, p1

    invoke-direct/range {v4 .. v11}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;-><init>(Landroid/view/View;IIZLus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;IZ)V

    iput-object v1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mPresetPopupWindow:Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;

    .line 671
    iget-object v1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mPresetPopupWindow:Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;

    invoke-virtual {v1, v3}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;->setOutsideTouchable(Z)V

    .line 672
    iget-object v1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mPresetPopupWindow:Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v1, v4}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 673
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v1, v4, :cond_7

    .line 674
    iget-object v1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mPresetPopupWindow:Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;

    const/high16 v4, 0x41000000    # 8.0f

    invoke-virtual {v1, v4}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;->setElevation(F)V

    :cond_7
    if-nez p1, :cond_8

    .line 677
    sget p1, Lus/zoom/zrcbox/R$id;->cp_preset_img_fst:I

    .line 678
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_4

    :cond_8
    if-ne p1, v3, :cond_9

    sget p1, Lus/zoom/zrcbox/R$id;->cp_preset_img_2nd:I

    .line 680
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_4

    :cond_9
    sget p1, Lus/zoom/zrcbox/R$id;->cp_preset_img_3rd:I

    .line 681
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_4
    const/4 v1, 0x2

    .line 683
    new-array v2, v1, [I

    .line 684
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 686
    aget v4, v2, v12

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/2addr v5, v1

    add-int/2addr v4, v5

    .line 687
    aget v1, v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1e

    .line 689
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mPresetPopupWindow:Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;

    invoke-virtual {v0, p1, v12, v4, v1}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPresetPopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void

    :cond_a
    :goto_5
    return-void
.end method

.method public showProgressingDialog()V
    .locals 4

    .line 808
    sget v0, Lus/zoom/zrcbox/R$string;->position_saved:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->showWaitingDialog(Ljava/lang/CharSequence;)V

    .line 812
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->getContentView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$24;

    invoke-direct {v1, p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$24;-><init>(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showRenamePresetDialog(ILjava/lang/String;)V
    .locals 5

    .line 701
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$layout;->layout_rename_dialog:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 702
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "window"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    .line 704
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 705
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 706
    invoke-virtual {v1, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 708
    new-instance v1, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$19;

    invoke-direct {v1, p0, v0, v3}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$19;-><init>(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;Landroid/view/View;Landroid/graphics/Point;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 727
    :cond_0
    sget v1, Lus/zoom/zrcbox/R$id;->wbNameInputET:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 728
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 729
    sget p2, Lus/zoom/zrcbox/R$string;->cp_preset_hint:I

    invoke-virtual {p0, p2}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v3, " "

    invoke-virtual {p2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 731
    :cond_1
    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 732
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p2}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    .line 735
    new-instance p2, Landroid/app/Dialog;

    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    sget v4, Lus/zoom/zrcbox/R$style;->CameraPresetInputDialog:I

    invoke-direct {p2, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->renameDialog:Landroid/app/Dialog;

    .line 736
    iget-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->renameDialog:Landroid/app/Dialog;

    sget v3, Lus/zoom/zrcbox/R$string;->rename_camera_preset_prompt:I

    invoke-virtual {p2, v3}, Landroid/app/Dialog;->setTitle(I)V

    .line 737
    iget-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->renameDialog:Landroid/app/Dialog;

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 738
    iget-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->renameDialog:Landroid/app/Dialog;

    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 739
    iget-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->renameDialog:Landroid/app/Dialog;

    invoke-virtual {p2, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 740
    iget-object p2, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->renameDialog:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    .line 743
    sget p2, Lus/zoom/zrcbox/R$id;->renameSaveBtn:I

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 744
    new-instance v2, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$20;

    invoke-direct {v2, p0, v1, p1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$20;-><init>(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;Landroid/widget/EditText;I)V

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 758
    sget p1, Lus/zoom/zrcbox/R$id;->renameCancelBtn:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$21;

    invoke-direct {v0, p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$21;-><init>(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 767
    new-instance p1, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$22;

    invoke-direct {p1, p0, p2}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$22;-><init>(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;Landroid/widget/Button;)V

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public showSwitchableCameraListPopupWindow(Ljava/util/List;)V
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

    .line 840
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->switchCameraPopupWindow:Lus/zoom/zrc/view/SwitchCameraPopupWindow;

    if-nez v0, :cond_1

    .line 841
    new-instance v0, Lus/zoom/zrc/view/SwitchCameraPopupWindow;

    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lus/zoom/zrc/view/SwitchCameraPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->switchCameraPopupWindow:Lus/zoom/zrc/view/SwitchCameraPopupWindow;

    .line 842
    invoke-direct {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->switchCameraPopupWindow:Lus/zoom/zrc/view/SwitchCameraPopupWindow;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/SwitchCameraPopupWindow;->setFixedRows(I)V

    goto :goto_0

    .line 845
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->switchCameraPopupWindow:Lus/zoom/zrc/view/SwitchCameraPopupWindow;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/SwitchCameraPopupWindow;->setFixedRows(I)V

    .line 848
    :cond_1
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->switchCameraPopupWindow:Lus/zoom/zrc/view/SwitchCameraPopupWindow;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->cpSwitchCamTV:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v1}, Lus/zoom/zrc/view/SwitchCameraPopupWindow;->show(Ljava/util/List;Landroid/view/View;)V

    return-void
.end method

.method public updateNavigationTitle(Ljava/lang/String;)V
    .locals 2

    .line 496
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    sget p1, Lus/zoom/zrcbox/R$string;->camera_control:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->getString(I)Ljava/lang/String;

    goto :goto_2

    .line 499
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mShareData:Lus/zoom/zrc/camera_control/model/CameraShareData;

    if-eqz v0, :cond_2

    sget-object v0, Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;->LOCAL:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mShareData:Lus/zoom/zrc/camera_control/model/CameraShareData;

    invoke-virtual {v1}, Lus/zoom/zrc/camera_control/model/CameraShareData;->getType()Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 500
    :goto_1
    invoke-direct {p0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 501
    sget v0, Lus/zoom/zrcbox/R$string;->camera_control:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 502
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->camControlTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 504
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->camTitleTV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method public updateShareCameraName(Ljava/lang/String;)V
    .locals 1

    .line 1197
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->camControlTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateSpeedControlView()V
    .locals 4

    .line 1282
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mShareData:Lus/zoom/zrc/camera_control/model/CameraShareData;

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/CameraShareData;->getType()Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;->SHARE:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v1, :cond_1

    .line 1283
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getCameraSharingStatus()Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1284
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getCameraSharingStatus()Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->getPanTiltSpeedPercentage()I

    move-result v0

    if-lez v0, :cond_0

    .line 1285
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->panTilSpeedPercentageLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1286
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->panTilSpeedPercentageSeekBar:Landroid/widget/SeekBar;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getCameraSharingStatus()Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->getPanTiltSpeedPercentage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 1288
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->panTilSpeedPercentageLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1290
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->mShareData:Lus/zoom/zrc/camera_control/model/CameraShareData;

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/CameraShareData;->getType()Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;->LOCAL:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    if-ne v0, v1, :cond_3

    .line 1291
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1292
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getPanTiltSpeedPercentage()I

    move-result v0

    if-lez v0, :cond_2

    .line 1293
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->panTilSpeedPercentageLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1294
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->panTilSpeedPercentageSeekBar:Landroid/widget/SeekBar;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getPanTiltSpeedPercentage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 1296
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->panTilSpeedPercentageLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method
