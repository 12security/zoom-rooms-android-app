.class public Lus/zoom/zrc/camera_control/ctrl/CameraControl$ZoomCameraControlEvent;
.super Lus/zoom/zrc/camera_control/model/CameraControlEvent;
.source "CameraControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/camera_control/ctrl/CameraControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ZoomCameraControlEvent"
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/camera_control/ctrl/CameraControl;


# direct methods
.method public constructor <init>(Lus/zoom/zrc/camera_control/ctrl/CameraControl;Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lus/zoom/zrc/camera_control/ctrl/CameraControl$ZoomCameraControlEvent;->this$0:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    .line 199
    invoke-direct {p0, p2}, Lus/zoom/zrc/camera_control/model/CameraControlEvent;-><init>(Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;)V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 5

    .line 204
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/ctrl/CameraControl$ZoomCameraControlEvent;->getEventParameters()Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/camera_control/model/eventparam/ZoomEventParameters;

    if-eqz v0, :cond_3

    .line 205
    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/ZoomEventParameters;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 208
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/ZoomEventParameters;->getCameraControlType()Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    move-result-object v1

    .line 209
    sget-object v2, Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;->LOCAL:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    if-ne v1, v2, :cond_1

    .line 210
    iget-object v1, p0, Lus/zoom/zrc/camera_control/ctrl/CameraControl$ZoomCameraControlEvent;->this$0:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/ZoomEventParameters;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v2

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/ZoomEventParameters;->getInstruction()I

    move-result v3

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/ZoomEventParameters;->getState()I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->access$000(Lus/zoom/zrc/camera_control/ctrl/CameraControl;Lus/zoom/zrcsdk/ConfApp;II)V

    goto :goto_0

    .line 211
    :cond_1
    sget-object v2, Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;->SHARE:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    if-ne v1, v2, :cond_2

    .line 212
    iget-object v1, p0, Lus/zoom/zrc/camera_control/ctrl/CameraControl$ZoomCameraControlEvent;->this$0:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/ZoomEventParameters;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v2

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/ZoomEventParameters;->getAppModel()Lus/zoom/zrc/model/AppModel;

    move-result-object v3

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/ZoomEventParameters;->getInstruction()I

    move-result v4

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/ZoomEventParameters;->getState()I

    move-result v0

    invoke-static {v1, v2, v3, v4, v0}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->access$100(Lus/zoom/zrc/camera_control/ctrl/CameraControl;Lus/zoom/zrcsdk/ConfApp;Lus/zoom/zrc/model/AppModel;II)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method
