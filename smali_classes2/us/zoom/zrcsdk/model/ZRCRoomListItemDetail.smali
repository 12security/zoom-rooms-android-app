.class public Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;
.super Lus/zoom/zrcsdk/model/RoomInfo;
.source "ZRCRoomListItemDetail.java"


# instance fields
.field private calendarType:I

.field private forcePrivateMeeting:Z

.field private hideHostInfoForPrivateMeeting:Z

.field private identity:Ljava/lang/String;

.field private isBusy:Z

.field private reserveDisabled:Z

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lus/zoom/zrcsdk/model/RoomInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 73
    :cond_0
    instance-of v1, p1, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 74
    :cond_1
    invoke-super {p0, p1}, Lus/zoom/zrcsdk/model/RoomInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 75
    :cond_2
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;

    .line 76
    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->type:I

    iget v3, p1, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->type:I

    if-ne v1, v3, :cond_3

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->calendarType:I

    iget v3, p1, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->calendarType:I

    if-ne v1, v3, :cond_3

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->isBusy:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->isBusy:Z

    if-ne v1, v3, :cond_3

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->reserveDisabled:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->reserveDisabled:Z

    if-ne v1, v3, :cond_3

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->forcePrivateMeeting:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->forcePrivateMeeting:Z

    if-ne v1, v3, :cond_3

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->hideHostInfoForPrivateMeeting:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->hideHostInfoForPrivateMeeting:Z

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->identity:Ljava/lang/String;

    iget-object p1, p1, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->identity:Ljava/lang/String;

    .line 82
    invoke-static {v1, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCalendarType()I
    .locals 1

    .line 31
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->calendarType:I

    return v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->identity:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 23
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x8

    .line 87
    new-array v0, v0, [Ljava/lang/Object;

    invoke-super {p0}, Lus/zoom/zrcsdk/model/RoomInfo;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->identity:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->calendarType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->isBusy:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->reserveDisabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->forcePrivateMeeting:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->hideHostInfoForPrivateMeeting:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isBusy()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->isBusy:Z

    return v0
.end method

.method public isForcePrivateMeeting()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->forcePrivateMeeting:Z

    return v0
.end method

.method public isHideHostInfoForPrivateMeeting()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->hideHostInfoForPrivateMeeting:Z

    return v0
.end method

.method public isReserveDisabled()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->reserveDisabled:Z

    return v0
.end method

.method public setBusy(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->isBusy:Z

    return-void
.end method

.method public setCalendarType(I)V
    .locals 0

    .line 35
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->calendarType:I

    return-void
.end method

.method public setForcePrivateMeeting(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->forcePrivateMeeting:Z

    return-void
.end method

.method public setHideHostInfoForPrivateMeeting(Z)V
    .locals 0

    .line 67
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->hideHostInfoForPrivateMeeting:Z

    return-void
.end method

.method public setIdentity(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->identity:Ljava/lang/String;

    return-void
.end method

.method public setReserveDisabled(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->reserveDisabled:Z

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 27
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZRCRoomListItemDetail{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", email=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", displayName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", identity=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->identity:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", calendarType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->calendarType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isBusy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->isBusy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", reserveDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->reserveDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", forcePrivateMeeting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->forcePrivateMeeting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hideHostInfoForPrivateMeeting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->hideHostInfoForPrivateMeeting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
