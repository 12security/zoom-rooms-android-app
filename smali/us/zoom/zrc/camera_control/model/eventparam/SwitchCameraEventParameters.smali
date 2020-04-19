.class public Lus/zoom/zrc/camera_control/model/eventparam/SwitchCameraEventParameters;
.super Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;
.source "SwitchCameraEventParameters.java"


# instance fields
.field private mAppModel:Lus/zoom/zrc/model/AppModel;

.field private mCallbacks:Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;

.field private mConfApp:Lus/zoom/zrcsdk/ConfApp;

.field private mTarget:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;


# direct methods
.method public constructor <init>(Lus/zoom/zrcsdk/ConfApp;Lus/zoom/zrc/model/AppModel;Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V
    .locals 1

    const/4 v0, -0x1

    .line 25
    invoke-direct {p0, v0, v0}, Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;-><init>(II)V

    .line 26
    iput-object p1, p0, Lus/zoom/zrc/camera_control/model/eventparam/SwitchCameraEventParameters;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    .line 27
    iput-object p2, p0, Lus/zoom/zrc/camera_control/model/eventparam/SwitchCameraEventParameters;->mAppModel:Lus/zoom/zrc/model/AppModel;

    .line 28
    iput-object p3, p0, Lus/zoom/zrc/camera_control/model/eventparam/SwitchCameraEventParameters;->mCallbacks:Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;

    .line 29
    iput-object p4, p0, Lus/zoom/zrc/camera_control/model/eventparam/SwitchCameraEventParameters;->mTarget:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    return-void
.end method


# virtual methods
.method public getAppModel()Lus/zoom/zrc/model/AppModel;
    .locals 1

    .line 37
    iget-object v0, p0, Lus/zoom/zrc/camera_control/model/eventparam/SwitchCameraEventParameters;->mAppModel:Lus/zoom/zrc/model/AppModel;

    return-object v0
.end method

.method public getCallbacks()Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;
    .locals 1

    .line 41
    iget-object v0, p0, Lus/zoom/zrc/camera_control/model/eventparam/SwitchCameraEventParameters;->mCallbacks:Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;

    return-object v0
.end method

.method public getConfApp()Lus/zoom/zrcsdk/ConfApp;
    .locals 1

    .line 33
    iget-object v0, p0, Lus/zoom/zrc/camera_control/model/eventparam/SwitchCameraEventParameters;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    return-object v0
.end method

.method public getToTargetCamera()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;
    .locals 1

    .line 45
    iget-object v0, p0, Lus/zoom/zrc/camera_control/model/eventparam/SwitchCameraEventParameters;->mTarget:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SwitchCameraEventParameters{instruction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/model/eventparam/SwitchCameraEventParameters;->getInstruction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/model/eventparam/SwitchCameraEventParameters;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "mConfApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/model/eventparam/SwitchCameraEventParameters;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "mAppModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/model/eventparam/SwitchCameraEventParameters;->mAppModel:Lus/zoom/zrc/model/AppModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "mCallbacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/model/eventparam/SwitchCameraEventParameters;->mCallbacks:Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "mTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/model/eventparam/SwitchCameraEventParameters;->mTarget:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
