.class Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter$2;
.super Lus/zoom/zrc/camera_control/model/EventRunnable;
.source "CameraControlPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;


# direct methods
.method constructor <init>(Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter$2;->this$0:Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    invoke-direct {p0}, Lus/zoom/zrc/camera_control/model/EventRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 188
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter$2;->this$0:Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    invoke-static {v0}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->access$300(Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter$2;->getCurrentCameraControlEvent()Lus/zoom/zrc/camera_control/model/CameraControlEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter$2;->this$0:Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    invoke-static {v0}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->access$400(Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;)Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    move-result-object v0

    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter$2;->getCurrentCameraControlEvent()Lus/zoom/zrc/camera_control/model/CameraControlEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->run(Lus/zoom/zrc/camera_control/model/Executable;)V

    .line 192
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter$2;->this$0:Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    invoke-static {v0}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->access$600(Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter$2;->this$0:Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    invoke-static {v1}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->access$500(Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;)Lus/zoom/zrc/camera_control/model/EventRunnable;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 194
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter$2;->this$0:Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;

    invoke-static {v0}, Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;->access$700(Lus/zoom/zrc/camera_control/presenter/CameraControlPresenter;)V

    :goto_0
    return-void
.end method
