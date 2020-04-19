.class public Lus/zoom/zrc/camera_control/model/eventparam/ShiftEventParameters;
.super Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;
.source "ShiftEventParameters.java"


# instance fields
.field private controlType:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

.field private final mAppModel:Lus/zoom/zrc/model/AppModel;

.field private mConfApp:Lus/zoom/zrcsdk/ConfApp;


# direct methods
.method public constructor <init>(IILus/zoom/zrc/camera_control/model/ZRCCameraControlType;Lus/zoom/zrcsdk/ConfApp;Lus/zoom/zrc/model/AppModel;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/camera_control/model/eventparam/EventParameters;-><init>(II)V

    .line 22
    sget-object p1, Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;->LOCAL:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    iput-object p1, p0, Lus/zoom/zrc/camera_control/model/eventparam/ShiftEventParameters;->controlType:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    .line 29
    iput-object p4, p0, Lus/zoom/zrc/camera_control/model/eventparam/ShiftEventParameters;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    .line 30
    iput-object p5, p0, Lus/zoom/zrc/camera_control/model/eventparam/ShiftEventParameters;->mAppModel:Lus/zoom/zrc/model/AppModel;

    .line 31
    iput-object p3, p0, Lus/zoom/zrc/camera_control/model/eventparam/ShiftEventParameters;->controlType:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    return-void
.end method


# virtual methods
.method public getAppModel()Lus/zoom/zrc/model/AppModel;
    .locals 1

    .line 39
    iget-object v0, p0, Lus/zoom/zrc/camera_control/model/eventparam/ShiftEventParameters;->mAppModel:Lus/zoom/zrc/model/AppModel;

    return-object v0
.end method

.method public getCameraControlType()Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;
    .locals 1

    .line 43
    iget-object v0, p0, Lus/zoom/zrc/camera_control/model/eventparam/ShiftEventParameters;->controlType:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    return-object v0
.end method

.method public getConfApp()Lus/zoom/zrcsdk/ConfApp;
    .locals 1

    .line 35
    iget-object v0, p0, Lus/zoom/zrc/camera_control/model/eventparam/ShiftEventParameters;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShiftEventParameters{instruction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/model/eventparam/ShiftEventParameters;->getInstruction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/model/eventparam/ShiftEventParameters;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "mConfApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/model/eventparam/ShiftEventParameters;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "mAppModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/model/eventparam/ShiftEventParameters;->mAppModel:Lus/zoom/zrc/model/AppModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "controlType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/model/eventparam/ShiftEventParameters;->controlType:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
