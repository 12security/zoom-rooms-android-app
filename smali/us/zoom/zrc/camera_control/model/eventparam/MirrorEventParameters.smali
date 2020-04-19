.class public Lus/zoom/zrc/camera_control/model/eventparam/MirrorEventParameters;
.super Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;
.source "MirrorEventParameters.java"


# instance fields
.field private cameraControlType:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

.field private final mAppModel:Lus/zoom/zrc/model/AppModel;

.field private mConfApp:Lus/zoom/zrcsdk/ConfApp;


# direct methods
.method public constructor <init>(Lus/zoom/zrcsdk/ConfApp;Lus/zoom/zrc/model/AppModel;Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;)V
    .locals 1

    const/4 v0, -0x1

    .line 23
    invoke-direct {p0, v0, v0}, Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;-><init>(II)V

    .line 24
    iput-object p1, p0, Lus/zoom/zrc/camera_control/model/eventparam/MirrorEventParameters;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    .line 25
    iput-object p2, p0, Lus/zoom/zrc/camera_control/model/eventparam/MirrorEventParameters;->mAppModel:Lus/zoom/zrc/model/AppModel;

    .line 26
    iput-object p3, p0, Lus/zoom/zrc/camera_control/model/eventparam/MirrorEventParameters;->cameraControlType:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    return-void
.end method


# virtual methods
.method public getAppModel()Lus/zoom/zrc/model/AppModel;
    .locals 1

    .line 34
    iget-object v0, p0, Lus/zoom/zrc/camera_control/model/eventparam/MirrorEventParameters;->mAppModel:Lus/zoom/zrc/model/AppModel;

    return-object v0
.end method

.method public getCameraControlType()Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;
    .locals 1

    .line 38
    iget-object v0, p0, Lus/zoom/zrc/camera_control/model/eventparam/MirrorEventParameters;->cameraControlType:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    return-object v0
.end method

.method public getConfApp()Lus/zoom/zrcsdk/ConfApp;
    .locals 1

    .line 30
    iget-object v0, p0, Lus/zoom/zrc/camera_control/model/eventparam/MirrorEventParameters;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZoomEventParameters{instruction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/model/eventparam/MirrorEventParameters;->getInstruction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/model/eventparam/MirrorEventParameters;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "mAppModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/model/eventparam/MirrorEventParameters;->mAppModel:Lus/zoom/zrc/model/AppModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "mConfApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/model/eventparam/MirrorEventParameters;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "cameraControlType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/model/eventparam/MirrorEventParameters;->cameraControlType:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
