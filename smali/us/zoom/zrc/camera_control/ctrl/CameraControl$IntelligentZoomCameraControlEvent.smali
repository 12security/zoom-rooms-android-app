.class public Lus/zoom/zrc/camera_control/ctrl/CameraControl$IntelligentZoomCameraControlEvent;
.super Lus/zoom/zrc/camera_control/model/CameraControlEvent;
.source "CameraControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/camera_control/ctrl/CameraControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IntelligentZoomCameraControlEvent"
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/camera_control/ctrl/CameraControl;


# direct methods
.method public constructor <init>(Lus/zoom/zrc/camera_control/ctrl/CameraControl;Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lus/zoom/zrc/camera_control/ctrl/CameraControl$IntelligentZoomCameraControlEvent;->this$0:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    .line 451
    invoke-direct {p0, p2}, Lus/zoom/zrc/camera_control/model/CameraControlEvent;-><init>(Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;)V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 4

    .line 459
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/ctrl/CameraControl$IntelligentZoomCameraControlEvent;->getEventParameters()Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/camera_control/model/eventparam/IntelligentZoomParameters;

    .line 461
    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/IntelligentZoomParameters;->getAppModel()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/IntelligentZoomParameters;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 462
    iget-object v1, p0, Lus/zoom/zrc/camera_control/ctrl/CameraControl$IntelligentZoomCameraControlEvent;->this$0:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/IntelligentZoomParameters;->getAppModel()Lus/zoom/zrc/model/AppModel;

    move-result-object v2

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/IntelligentZoomParameters;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v3

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/IntelligentZoomParameters;->isOn()Z

    move-result v0

    invoke-static {v1, v2, v3, v0}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->access$500(Lus/zoom/zrc/camera_control/ctrl/CameraControl;Lus/zoom/zrc/model/AppModel;Lus/zoom/zrcsdk/PTApp;Z)V

    :cond_0
    return-void
.end method
