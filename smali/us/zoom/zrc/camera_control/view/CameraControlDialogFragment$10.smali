.class Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$10;
.super Ljava/lang/Object;
.source "CameraControlDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$10;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 256
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getZrcFeatureListInfo()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 257
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isCanSwitchToSpecificCamera()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 258
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$10;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->providePresenter()Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->provideCameraController()Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$10;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-virtual {v1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->providePresenter()Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->provideSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->sizeOfCompatibleCameras(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)I

    move-result v0

    if-eqz p1, :cond_2

    if-lez v0, :cond_1

    const/4 p1, 0x2

    if-gt v0, p1, :cond_1

    goto :goto_1

    .line 275
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$10;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->providePresenter()Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->provideCameraController()Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$10;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->providePresenter()Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->provideSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->getCompatibleCameras(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)Ljava/util/List;

    move-result-object p1

    .line 276
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$10;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->showSwitchableCameraListPopupWindow(Ljava/util/List;)V

    goto :goto_2

    .line 264
    :cond_2
    :goto_1
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$10;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->providePresenter()Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->provideCameraController()Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$10;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->providePresenter()Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->provideSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->getCompatibleCameras(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)Ljava/util/List;

    move-result-object p1

    .line 265
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    .line 266
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isSelected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 267
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$10;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-static {p1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->access$000(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)Lus/zoom/zrc/camera_control/view/ICameraControl$AdvancedUserActionsListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lus/zoom/zrc/camera_control/view/ICameraControl$AdvancedUserActionsListener;->switchCamera(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    :cond_4
    :goto_2
    return-void
.end method
