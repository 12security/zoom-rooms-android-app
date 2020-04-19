.class Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$1;
.super Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;
.source "CameraControlDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;
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

    .line 128
    iput-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$1;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-direct {p0}, Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraSharingStatusChanged(Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;)V
    .locals 0

    .line 131
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$1;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->updateSpeedControlView()V

    return-void
.end method

.method public onUpdateSettingsDeviceInfo(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)V
    .locals 0

    .line 136
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment$1;->this$0:Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/camera_control/view/CameraControlDialogFragment;->updateSpeedControlView()V

    return-void
.end method
