.class public Lus/zoom/zrc/camera_control/view/CameraControlCallbacks;
.super Ljava/lang/Object;
.source "CameraControlCallbacks.java"

# interfaces
.implements Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraIntelligentZoomFinished(Z)V
    .locals 0

    return-void
.end method

.method public onCameraPresetActionFinished(Z)V
    .locals 0

    return-void
.end method

.method public onCameraPresetsChanged()V
    .locals 0

    return-void
.end method

.method public onCameraSharingStatusChanged(Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;)V
    .locals 0

    return-void
.end method

.method public onNamedPresetsOfCurrentCameraChangedTo(Ljava/util/Map;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    return-void
.end method

.method public onSwitchCameraForVideoResult(Z)V
    .locals 0

    return-void
.end method

.method public onVideoStatusChanged(Lus/zoom/zrcsdk/model/ZRCVideoStatus;)V
    .locals 0

    return-void
.end method
