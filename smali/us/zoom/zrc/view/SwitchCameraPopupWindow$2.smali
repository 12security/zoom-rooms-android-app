.class Lus/zoom/zrc/view/SwitchCameraPopupWindow$2;
.super Ljava/lang/Object;
.source "SwitchCameraPopupWindow.java"

# interfaces
.implements Lus/zoom/zrc/view/adapter/SwitchCameraAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/SwitchCameraPopupWindow;->show(Ljava/util/List;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/SwitchCameraPopupWindow;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/SwitchCameraPopupWindow;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lus/zoom/zrc/view/SwitchCameraPopupWindow$2;->this$0:Lus/zoom/zrc/view/SwitchCameraPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V
    .locals 4

    .line 80
    iget-object v0, p0, Lus/zoom/zrc/view/SwitchCameraPopupWindow$2;->this$0:Lus/zoom/zrc/view/SwitchCameraPopupWindow;

    invoke-virtual {v0}, Lus/zoom/zrc/view/SwitchCameraPopupWindow;->dismiss()V

    .line 81
    new-instance v0, Lus/zoom/zrc/camera_control/model/eventparam/SwitchCameraEventParameters;

    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v1

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p1}, Lus/zoom/zrc/camera_control/model/eventparam/SwitchCameraEventParameters;-><init>(Lus/zoom/zrcsdk/ConfApp;Lus/zoom/zrc/model/AppModel;Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    .line 82
    new-instance p1, Lus/zoom/zrc/camera_control/ctrl/CameraControl;

    invoke-direct {p1}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;-><init>()V

    .line 83
    new-instance v1, Lus/zoom/zrc/camera_control/ctrl/CameraControl$SwitchCamCameraControlEvent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p1, v0}, Lus/zoom/zrc/camera_control/ctrl/CameraControl$SwitchCamCameraControlEvent;-><init>(Lus/zoom/zrc/camera_control/ctrl/CameraControl;Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;)V

    invoke-virtual {p1, v1}, Lus/zoom/zrc/camera_control/ctrl/CameraControl;->run(Lus/zoom/zrc/camera_control/model/Executable;)V

    return-void
.end method
