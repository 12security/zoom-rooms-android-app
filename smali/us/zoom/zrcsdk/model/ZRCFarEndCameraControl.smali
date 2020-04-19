.class public Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;
.super Ljava/lang/Object;
.source "ZRCFarEndCameraControl.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private cameraControlStatus:Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;

.field private remoteResponse:Z

.field private state:I

.field private userDisplayName:Ljava/lang/String;

.field private userId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 10
    iput-object v0, p0, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->userDisplayName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 69
    :cond_0
    instance-of v1, p1, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 70
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;

    .line 71
    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->userId:I

    iget v3, p1, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->userId:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->userDisplayName:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->userDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->remoteResponse:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->remoteResponse:Z

    if-ne v1, v3, :cond_1

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->state:I

    iget p1, p1, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->state:I

    if-ne v1, p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public getCameraControlStatus()Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;
    .locals 1

    .line 50
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->cameraControlStatus:Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 42
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->state:I

    return v0
.end method

.method public getUserDisplayName()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->userDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .line 18
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->userId:I

    return v0
.end method

.method public isRemoteResponse()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->remoteResponse:Z

    return v0
.end method

.method public setCameraControlStatus(Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->cameraControlStatus:Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;

    return-void
.end method

.method public setRemoteResponse(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->remoteResponse:Z

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 46
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->state:I

    return-void
.end method

.method public setUserDisplayName(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->userDisplayName:Ljava/lang/String;

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    .line 22
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->userId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZRCFarEndCameraControl [userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userDisplayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->userDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", remoteResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->remoteResponse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",cameraControlStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;->cameraControlStatus:Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
