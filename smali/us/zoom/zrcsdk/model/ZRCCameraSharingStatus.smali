.class public Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;
.super Ljava/lang/Object;
.source "ZRCCameraSharingStatus.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private canBeControlled:Z

.field private deviceId:Ljava/lang/String;

.field private isMirrored:Z

.field private isSharing:Z

.field private panTiltSpeedPercentage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->panTiltSpeedPercentage:I

    const-string v0, ""

    .line 33
    iput-object v0, p0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZZZLjava/lang/String;I)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->panTiltSpeedPercentage:I

    .line 37
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->isSharing:Z

    .line 38
    iput-boolean p2, p0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->isMirrored:Z

    .line 39
    iput-boolean p3, p0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->canBeControlled:Z

    .line 40
    iput-object p4, p0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->deviceId:Ljava/lang/String;

    .line 41
    iput p5, p0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->panTiltSpeedPercentage:I

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 15
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->clone()Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 89
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;-><init>()V

    .line 96
    :cond_0
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->isSharing:Z

    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->isSharing:Z

    .line 97
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->isMirrored:Z

    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->isMirrored:Z

    .line 98
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->canBeControlled:Z

    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->canBeControlled:Z

    .line 99
    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->deviceId:Ljava/lang/String;

    iput-object v1, v0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->deviceId:Ljava/lang/String;

    .line 100
    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->panTiltSpeedPercentage:I

    iput v1, v0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->panTiltSpeedPercentage:I

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 108
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    .line 109
    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->isSharing:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->isSharing:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->isMirrored:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->isMirrored:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->canBeControlled:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->canBeControlled:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->panTiltSpeedPercentage:I

    iget v3, p1, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->panTiltSpeedPercentage:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->deviceId:Ljava/lang/String;

    iget-object p1, p1, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->deviceId:Ljava/lang/String;

    .line 113
    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getPanTiltSpeedPercentage()I
    .locals 1

    .line 69
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->panTiltSpeedPercentage:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    .line 118
    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->isSharing:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->isMirrored:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->canBeControlled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->deviceId:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->panTiltSpeedPercentage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isCanBeControlled()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->canBeControlled:Z

    return v0
.end method

.method public isMirrored()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->isMirrored:Z

    return v0
.end method

.method public isSharing()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->isSharing:Z

    return v0
.end method

.method public setCanBeControlled(Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->canBeControlled:Z

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setMirroerd(Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->isMirrored:Z

    return-void
.end method

.method public setPanTiltSpeedPercentage(I)V
    .locals 0

    .line 73
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->panTiltSpeedPercentage:I

    return-void
.end method

.method public setSharing(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->isSharing:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 124
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "isSharing"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->isSharing:Z

    .line 125
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "isMirrored"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->isMirrored:Z

    .line 126
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "canBeControlled"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->canBeControlled:Z

    .line 127
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "deviceId"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->deviceId:Ljava/lang/String;

    .line 128
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "panTiltSpeedPercentage"

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->panTiltSpeedPercentage:I

    .line 129
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
