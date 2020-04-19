.class public abstract Lus/zoom/zrc/camera_control/model/EventRunnable;
.super Ljava/lang/Object;
.source "EventRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private currentCameraControlEvent:Lus/zoom/zrc/camera_control/model/CameraControlEvent;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCurrentCameraControlEvent()Lus/zoom/zrc/camera_control/model/CameraControlEvent;
    .locals 1

    .line 22
    iget-object v0, p0, Lus/zoom/zrc/camera_control/model/EventRunnable;->currentCameraControlEvent:Lus/zoom/zrc/camera_control/model/CameraControlEvent;

    return-object v0
.end method

.method public setEvent(Lus/zoom/zrc/camera_control/model/CameraControlEvent;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lus/zoom/zrc/camera_control/model/EventRunnable;->currentCameraControlEvent:Lus/zoom/zrc/camera_control/model/CameraControlEvent;

    return-void
.end method
