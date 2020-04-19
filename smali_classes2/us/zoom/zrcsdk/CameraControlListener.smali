.class public interface abstract Lus/zoom/zrcsdk/CameraControlListener;
.super Ljava/lang/Object;
.source "CameraControlListener.java"


# virtual methods
.method public abstract onCameraIntelligentZoomFinished(Z)V
.end method

.method public abstract onCameraPresetActionFinished(Z)V
.end method

.method public abstract onCameraPresetsChanged()V
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
