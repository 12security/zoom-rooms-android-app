.class public interface abstract Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;
.super Ljava/lang/Object;
.source "ICameraControl.java"

# interfaces
.implements Lus/zoom/androidlib/util/IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/camera_control/view/ICameraControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract onCameraIntelligentZoomFinished(Z)V
.end method

.method public abstract onCameraPresetActionFinished(Z)V
.end method

.method public abstract onCameraPresetsChanged()V
.end method

.method public abstract onCameraSharingStatusChanged(Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;)V
.end method

.method public abstract onNamedPresetsOfCurrentCameraChangedTo(Ljava/util/Map;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation
.end method

.method public abstract onSwitchCameraForVideoResult(Z)V
.end method

.method public abstract onVideoStatusChanged(Lus/zoom/zrcsdk/model/ZRCVideoStatus;)V
.end method
