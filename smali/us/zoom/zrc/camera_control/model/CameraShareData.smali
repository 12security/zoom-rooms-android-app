.class public final Lus/zoom/zrc/camera_control/model/CameraShareData;
.super Ljava/lang/Object;
.source "CameraShareData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private deviceId:Ljava/lang/String;

.field private type:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lus/zoom/zrc/camera_control/model/CameraShareData;->deviceId:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lus/zoom/zrc/camera_control/model/CameraShareData;->type:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lus/zoom/zrc/camera_control/model/CameraShareData;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;
    .locals 1

    .line 33
    iget-object v0, p0, Lus/zoom/zrc/camera_control/model/CameraShareData;->type:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    return-object v0
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lus/zoom/zrc/camera_control/model/CameraShareData;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setType(Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lus/zoom/zrc/camera_control/model/CameraShareData;->type:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraShareData{deviceId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/model/CameraShareData;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/model/CameraShareData;->type:Lus/zoom/zrc/camera_control/model/ZRCCameraControlType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
