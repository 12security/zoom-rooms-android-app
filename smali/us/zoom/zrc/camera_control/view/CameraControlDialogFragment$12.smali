.class Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$12;
.super Ljava/lang/Object;
.source "CameraControlDialogFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 306
    iput-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$12;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 309
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 310
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->isCameraIntelligentZoomOn()Z

    move-result p1

    if-eq p1, p2, :cond_0

    .line 311
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$12;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-static {p1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->access$000(Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;)Lus/zoom/zrc/camera_control/view/ICameraControl$AdvancedUserActionsListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lus/zoom/zrc/camera_control/view/ICameraControl$AdvancedUserActionsListener;->switchIntelligentZoom(Z)V

    :cond_0
    return-void
.end method
