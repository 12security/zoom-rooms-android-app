.class public Lus/zoom/zrcsdk/model/ZRCLocationInfo;
.super Ljava/lang/Object;
.source "ZRCLocationInfo.java"


# instance fields
.field private backgroundMap:Ljava/lang/String;

.field private canvasHeight:I

.field private canvasWidth:I

.field private childLocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCLocationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private fetchedTimeMillis:J

.field private locationID:Ljava/lang/String;

.field private locationName:Ljava/lang/String;

.field private locationType:I

.field private path:Ljava/lang/String;

.field private roomCalendarType:I

.field private roomForcePrivateMeeting:Z

.field private roomHideHostInfoForPrivateMeeting:Z

.field private roomIsBusy:Z

.field private roomReserveDisabled:Z

.field private roomType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseRoomLocationInfos(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCLocationInfo;",
            ">;)V"
        }
    .end annotation

    .line 161
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->getLocationType()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    .line 162
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 163
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->getLocationType()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 164
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->getChildLocations()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 166
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCLocationInfo;

    .line 167
    invoke-direct {v1, p1}, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->parseRoomLocationInfos(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 184
    :cond_0
    instance-of v1, p1, Lus/zoom/zrcsdk/model/ZRCLocationInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 185
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCLocationInfo;

    .line 186
    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->locationType:I

    iget v3, p1, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->locationType:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->canvasWidth:I

    iget v3, p1, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->canvasWidth:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->canvasHeight:I

    iget v3, p1, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->canvasHeight:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->roomType:I

    iget v3, p1, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->roomType:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->roomCalendarType:I

    iget v3, p1, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->roomCalendarType:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->roomIsBusy:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->roomIsBusy:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->roomReserveDisabled:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->roomReserveDisabled:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->roomForcePrivateMeeting:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->roomForcePrivateMeeting:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->roomHideHostInfoForPrivateMeeting:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->roomHideHostInfoForPrivateMeeting:Z

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->fetchedTimeMillis:J

    iget-wide v5, p1, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->fetchedTimeMillis:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->locationID:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->locationID:Ljava/lang/String;

    .line 196
    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->locationName:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->locationName:Ljava/lang/String;

    .line 197
    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->backgroundMap:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->backgroundMap:Ljava/lang/String;

    .line 198
    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->path:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->path:Ljava/lang/String;

    .line 199
    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->childLocations:Ljava/util/List;

    iget-object p1, p1, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->childLocations:Ljava/util/List;

    .line 200
    invoke-static {v1, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAllSubRoomLocationInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCLocationInfo;",
            ">;"
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    invoke-direct {p0, v0}, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->parseRoomLocationInfos(Ljava/util/List;)V

    return-object v0
.end method

.method public getBackgroundMap()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->backgroundMap:Ljava/lang/String;

    return-object v0
.end method

.method public getCanvasHeight()I
    .locals 1

    .line 75
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->canvasHeight:I

    return v0
.end method

.method public getCanvasWidth()I
    .locals 1

    .line 67
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->canvasWidth:I

    return v0
.end method

.method public getChildLocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCLocationInfo;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->childLocations:Ljava/util/List;

    return-object v0
.end method

.method public getLocationID()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->locationID:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->locationName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationType()I
    .locals 1

    .line 51
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->locationType:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomCalendarType()I
    .locals 1

    .line 99
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->roomCalendarType:I

    return v0
.end method

.method public getRoomType()I
    .locals 1

    .line 91
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->roomType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xf

    .line 205
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->locationID:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->locationName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->locationType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->backgroundMap:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->canvasWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->canvasHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->path:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->roomType:I

    .line 206
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->roomCalendarType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->roomIsBusy:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->roomReserveDisabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->roomForcePrivateMeeting:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->roomHideHostInfoForPrivateMeeting:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->childLocations:Ljava/util/List;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-wide v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->fetchedTimeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 205
    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isExpired()Z
    .locals 5

    .line 151
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->fetchedTimeMillis:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x6ddd00

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFloorWithMap()Z
    .locals 2

    .line 174
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->locationType:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->backgroundMap:Ljava/lang/String;

    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->canvasWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->canvasHeight:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRoomCanDrawInMap()Z
    .locals 2

    .line 178
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->locationType:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->path:Ljava/lang/String;

    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRoomForcePrivateMeeting()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->roomForcePrivateMeeting:Z

    return v0
.end method

.method public isRoomHideHostInfoForPrivateMeeting()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->roomHideHostInfoForPrivateMeeting:Z

    return v0
.end method

.method public isRoomIsBusy()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->roomIsBusy:Z

    return v0
.end method

.method public isRoomReserveDisabled()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->roomReserveDisabled:Z

    return v0
.end method

.method public setBackgroundMap(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->backgroundMap:Ljava/lang/String;

    return-void
.end method

.method public setCanvasHeight(I)V
    .locals 0

    .line 79
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->canvasHeight:I

    return-void
.end method

.method public setCanvasWidth(I)V
    .locals 0

    .line 71
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->canvasWidth:I

    return-void
.end method

.method public setChildLocations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCLocationInfo;",
            ">;)V"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->childLocations:Ljava/util/List;

    return-void
.end method

.method public setFetchedTimeMillis(J)V
    .locals 0

    .line 147
    iput-wide p1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->fetchedTimeMillis:J

    return-void
.end method

.method public setLocationID(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->locationID:Ljava/lang/String;

    return-void
.end method

.method public setLocationName(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->locationName:Ljava/lang/String;

    return-void
.end method

.method public setLocationType(I)V
    .locals 0

    .line 55
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->locationType:I

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->path:Ljava/lang/String;

    return-void
.end method

.method public setRoomCalendarType(I)V
    .locals 0

    .line 103
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->roomCalendarType:I

    return-void
.end method

.method public setRoomForcePrivateMeeting(Z)V
    .locals 0

    .line 127
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->roomForcePrivateMeeting:Z

    return-void
.end method

.method public setRoomHideHostInfoForPrivateMeeting(Z)V
    .locals 0

    .line 135
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->roomHideHostInfoForPrivateMeeting:Z

    return-void
.end method

.method public setRoomIsBusy(Z)V
    .locals 0

    .line 111
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->roomIsBusy:Z

    return-void
.end method

.method public setRoomReserveDisabled(Z)V
    .locals 0

    .line 119
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->roomReserveDisabled:Z

    return-void
.end method

.method public setRoomType(I)V
    .locals 0

    .line 95
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->roomType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 212
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "locationID"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->locationID:Ljava/lang/String;

    .line 213
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "locationName"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->locationName:Ljava/lang/String;

    .line 214
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "locationType"

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->locationType:I

    .line 215
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "backgroundMap"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->backgroundMap:Ljava/lang/String;

    .line 216
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "canvasWidth"

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->canvasWidth:I

    .line 217
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "canvasHeight"

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->canvasHeight:I

    .line 218
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "path"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->path:Ljava/lang/String;

    .line 219
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "roomType"

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->roomType:I

    .line 220
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "roomCalendarType"

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->roomCalendarType:I

    .line 221
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "roomIsBusy"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->roomIsBusy:Z

    .line 222
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "roomReserveDisabled"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->roomReserveDisabled:Z

    .line 223
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "roomForcePrivateMeeting"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->roomForcePrivateMeeting:Z

    .line 224
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "roomHideHostInfoForPrivateMeeting"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->roomHideHostInfoForPrivateMeeting:Z

    .line 225
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "childLocations"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->childLocations:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 226
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
