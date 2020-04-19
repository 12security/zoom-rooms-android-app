.class public Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;
.super Ljava/lang/Object;
.source "ZRCCameraControlStatus.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private amIControlling:Z

.field private canIRequestControl:Z

.field private canMoveCamera:Z

.field private canSwitchCamera:Z

.field private canZoomCamera:Z


# direct methods
.method public constructor <init>(Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iget-boolean v0, p1, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->canIRequestControl:Z

    iput-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->canIRequestControl:Z

    .line 31
    iget-boolean v0, p1, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->amIControlling:Z

    iput-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->amIControlling:Z

    .line 32
    iget-boolean v0, p1, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->canSwitchCamera:Z

    iput-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->canSwitchCamera:Z

    .line 33
    iget-boolean v0, p1, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->canMoveCamera:Z

    iput-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->canMoveCamera:Z

    .line 34
    iget-boolean p1, p1, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->canZoomCamera:Z

    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->canZoomCamera:Z

    return-void
.end method

.method public constructor <init>(ZZZZZ)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->canIRequestControl:Z

    .line 22
    iput-boolean p2, p0, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->amIControlling:Z

    .line 23
    iput-boolean p3, p0, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->canSwitchCamera:Z

    .line 24
    iput-boolean p4, p0, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->canMoveCamera:Z

    .line 25
    iput-boolean p5, p0, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->canZoomCamera:Z

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "constructor method:canZoomCamera="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 81
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;

    .line 82
    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->canIRequestControl:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->canIRequestControl:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->amIControlling:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->amIControlling:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->canSwitchCamera:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->canSwitchCamera:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->canMoveCamera:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->canMoveCamera:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->canZoomCamera:Z

    iget-boolean p1, p1, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->canZoomCamera:Z

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    .line 91
    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->canIRequestControl:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->amIControlling:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->canSwitchCamera:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->canMoveCamera:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->canZoomCamera:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAmIControlling()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->amIControlling:Z

    return v0
.end method

.method public isCanIRequestControl()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->canIRequestControl:Z

    return v0
.end method

.method public isCanMoveCamera()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->canMoveCamera:Z

    return v0
.end method

.method public isCanSwitchCamera()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->canSwitchCamera:Z

    return v0
.end method

.method public isCanZoomCamera()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->canZoomCamera:Z

    return v0
.end method

.method public setAmIControlling(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->amIControlling:Z

    return-void
.end method

.method public setCanIRequestControl(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->canIRequestControl:Z

    return-void
.end method

.method public setCanMoveCamera(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->canMoveCamera:Z

    return-void
.end method

.method public setCanSwitchCamera(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->canSwitchCamera:Z

    return-void
.end method

.method public setCanZoomCamera(Z)V
    .locals 0

    .line 74
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->canZoomCamera:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZRCCameraControlStatus [canIRequestControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->canIRequestControl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", amIControlling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->amIControlling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canSwitchCamera="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->canSwitchCamera:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canMoveCamera="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->canMoveCamera:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canZoomCamera="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->canZoomCamera:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
