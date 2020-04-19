.class public Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;
.super Ljava/lang/Object;
.source "ZRCRoomMeetingList.java"


# static fields
.field private static final EXPIRED_TIME_MILLIS:J = 0x493e0L


# instance fields
.field private errorCode:I

.field private errorMessage:Ljava/lang/String;

.field private fetchedTimeMillis:J

.field private meetingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingListItem;",
            ">;"
        }
    .end annotation
.end field

.field private roomID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 63
    :cond_0
    instance-of v1, p1, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 64
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;

    .line 65
    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;->errorCode:I

    iget v3, p1, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;->errorCode:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;->errorMessage:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;->errorMessage:Ljava/lang/String;

    .line 66
    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;->roomID:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;->roomID:Ljava/lang/String;

    .line 67
    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;->meetingList:Ljava/util/List;

    iget-object p1, p1, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;->meetingList:Ljava/util/List;

    .line 68
    invoke-static {v1, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 21
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;->errorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getMeetingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingListItem;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;->meetingList:Ljava/util/List;

    return-object v0
.end method

.method public getRoomID()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;->roomID:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    .line 73
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;->errorCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;->errorMessage:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;->roomID:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;->meetingList:Ljava/util/List;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isExpired()Z
    .locals 5

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;->fetchedTimeMillis:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setErrorCode(I)V
    .locals 0

    .line 25
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;->errorCode:I

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public setFetchedTimeMillis(J)V
    .locals 0

    .line 53
    iput-wide p1, p0, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;->fetchedTimeMillis:J

    return-void
.end method

.method public setMeetingList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingListItem;",
            ">;)V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;->meetingList:Ljava/util/List;

    return-void
.end method

.method public setRoomID(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;->roomID:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZRCRoomMeetingList{errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", roomID=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;->roomID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", meetingList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;->meetingList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
