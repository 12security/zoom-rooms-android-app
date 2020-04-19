.class Lus/zoom/zrc/camera_control/ctrl/CameraController;
.super Ljava/lang/Object;
.source "CameraController.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/zrc/camera_control/model/Executable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 22
    invoke-interface {p1}, Lus/zoom/zrc/camera_control/model/Executable;->action()V

    :cond_0
    return-void
.end method
