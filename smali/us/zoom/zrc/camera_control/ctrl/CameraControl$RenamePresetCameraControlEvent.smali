.class public Lus/zoom/zrc/camera_control/ctrl/CameraControl$RenamePresetCameraControlEvent;
.super Lus/zoom/zrc/camera_control/model/CameraControlEvent;
.source "CameraControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/camera_control/ctrl/CameraControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RenamePresetCameraControlEvent"
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/camera_control/ctrl/CameraControl;


# direct methods
.method public constructor <init>(Lus/zoom/zrc/camera_control/ctrl/CameraControl;Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lus/zoom/zrc/camera_control/ctrl/CameraControl$RenamePresetCameraControlEvent;->this$0:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    .line 377
    invoke-direct {p0, p2}, Lus/zoom/zrc/camera_control/model/CameraControlEvent;-><init>(Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;)V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 9

    .line 385
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/ctrl/CameraControl$RenamePresetCameraControlEvent;->getEventParameters()Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/camera_control/model/eventparam/RenameEventParameters;

    if-eqz v0, :cond_4

    .line 387
    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/RenameEventParameters;->getAppModel()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 388
    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/RenameEventParameters;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 389
    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/RenameEventParameters;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 392
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/RenameEventParameters;->getIndex()I

    move-result v1

    if-ltz v1, :cond_3

    .line 395
    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/RenameEventParameters;->getAppModel()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 396
    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/RenameEventParameters;->getAppModel()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSelectedCamera()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 398
    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/RenameEventParameters;->getAppModel()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSelectedCamera()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v1

    .line 399
    iget-object v2, p0, Lus/zoom/zrc/camera_control/ctrl/CameraControl$RenamePresetCameraControlEvent;->this$0:Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/RenameEventParameters;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v3

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/RenameEventParameters;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/model/eventparam/RenameEventParameters;->getIndex()I

    move-result v5

    .line 400
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getDeviceAlias()Ljava/lang/String;

    move-result-object v8

    .line 399
    invoke-static/range {v2 .. v8}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->access$300(Lus/zoom/zrc/camera_control/ctrl/CameraControl;Lus/zoom/zrcsdk/PTApp;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 393
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Index can not be negative number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    return-void
.end method
