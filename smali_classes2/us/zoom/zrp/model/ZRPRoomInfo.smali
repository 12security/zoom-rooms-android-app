.class public Lus/zoom/zrp/model/ZRPRoomInfo;
.super Ljava/lang/Object;
.source "ZRPRoomInfo.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lus/zoom/zrp/model/ZRPRoomInfo;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lus/zoom/zrp/model/ZRPRoomInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private forcePrivateMeeting:Z

.field private hideHostInfoForPrivateMeeting:Z

.field private isBusy:Z

.field private path:Ljava/lang/String;

.field private reserveDisabled:Z

.field private roomCalendarType:I

.field private roomID:Ljava/lang/String;

.field private roomMeetings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingListItem;",
            ">;"
        }
    .end annotation
.end field

.field private roomName:Ljava/lang/String;

.field private roomType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 251
    new-instance v0, Lus/zoom/zrp/model/ZRPRoomInfo$1;

    invoke-direct {v0}, Lus/zoom/zrp/model/ZRPRoomInfo$1;-><init>()V

    sput-object v0, Lus/zoom/zrp/model/ZRPRoomInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->roomID:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->roomName:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->path:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->roomType:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->roomCalendarType:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->isBusy:Z

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->reserveDisabled:Z

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->forcePrivateMeeting:Z

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->hideHostInfoForPrivateMeeting:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lus/zoom/zrp/model/ZRPRoomInfo$1;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lus/zoom/zrp/model/ZRPRoomInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static createZRPRoomInfoByLocationInfo(Lus/zoom/zrcsdk/model/ZRCLocationInfo;)Lus/zoom/zrp/model/ZRPRoomInfo;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 210
    :cond_0
    new-instance v0, Lus/zoom/zrp/model/ZRPRoomInfo;

    invoke-direct {v0}, Lus/zoom/zrp/model/ZRPRoomInfo;-><init>()V

    .line 211
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->getLocationID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lus/zoom/zrp/model/ZRPRoomInfo;->roomID:Ljava/lang/String;

    .line 212
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lus/zoom/zrp/model/ZRPRoomInfo;->path:Ljava/lang/String;

    .line 213
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->getLocationName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lus/zoom/zrp/model/ZRPRoomInfo;->roomName:Ljava/lang/String;

    .line 214
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->getRoomType()I

    move-result v1

    iput v1, v0, Lus/zoom/zrp/model/ZRPRoomInfo;->roomType:I

    .line 215
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->getRoomCalendarType()I

    move-result v1

    iput v1, v0, Lus/zoom/zrp/model/ZRPRoomInfo;->roomCalendarType:I

    .line 216
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->isRoomIsBusy()Z

    move-result v1

    iput-boolean v1, v0, Lus/zoom/zrp/model/ZRPRoomInfo;->isBusy:Z

    .line 217
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->isRoomReserveDisabled()Z

    move-result v1

    iput-boolean v1, v0, Lus/zoom/zrp/model/ZRPRoomInfo;->reserveDisabled:Z

    .line 218
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->isRoomForcePrivateMeeting()Z

    move-result v1

    iput-boolean v1, v0, Lus/zoom/zrp/model/ZRPRoomInfo;->forcePrivateMeeting:Z

    .line 219
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->isRoomHideHostInfoForPrivateMeeting()Z

    move-result p0

    iput-boolean p0, v0, Lus/zoom/zrp/model/ZRPRoomInfo;->hideHostInfoForPrivateMeeting:Z

    return-object v0
.end method

.method public static createZRPRoomInfoByRoomListItemDetail(Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;)Lus/zoom/zrp/model/ZRPRoomInfo;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 192
    :cond_0
    new-instance v0, Lus/zoom/zrp/model/ZRPRoomInfo;

    invoke-direct {v0}, Lus/zoom/zrp/model/ZRPRoomInfo;-><init>()V

    .line 193
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->getIdentity()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lus/zoom/zrp/model/ZRPRoomInfo;->roomID:Ljava/lang/String;

    .line 194
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lus/zoom/zrp/model/ZRPRoomInfo;->roomName:Ljava/lang/String;

    .line 195
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->getType()I

    move-result v1

    iput v1, v0, Lus/zoom/zrp/model/ZRPRoomInfo;->roomType:I

    .line 196
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->getCalendarType()I

    move-result v1

    iput v1, v0, Lus/zoom/zrp/model/ZRPRoomInfo;->roomCalendarType:I

    .line 197
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->isBusy()Z

    move-result v1

    iput-boolean v1, v0, Lus/zoom/zrp/model/ZRPRoomInfo;->isBusy:Z

    .line 198
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->isReserveDisabled()Z

    move-result v1

    iput-boolean v1, v0, Lus/zoom/zrp/model/ZRPRoomInfo;->reserveDisabled:Z

    .line 199
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->isForcePrivateMeeting()Z

    move-result v1

    iput-boolean v1, v0, Lus/zoom/zrp/model/ZRPRoomInfo;->forcePrivateMeeting:Z

    .line 200
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;->isHideHostInfoForPrivateMeeting()Z

    move-result p0

    iput-boolean p0, v0, Lus/zoom/zrp/model/ZRPRoomInfo;->hideHostInfoForPrivateMeeting:Z

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 19
    check-cast p1, Lus/zoom/zrp/model/ZRPRoomInfo;

    invoke-virtual {p0, p1}, Lus/zoom/zrp/model/ZRPRoomInfo;->compareTo(Lus/zoom/zrp/model/ZRPRoomInfo;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lus/zoom/zrp/model/ZRPRoomInfo;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 230
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrp/model/ZRPRoomInfo;->getRoomName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lus/zoom/zrp/model/ZRPRoomInfo;->getRoomName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 152
    :cond_0
    instance-of v1, p1, Lus/zoom/zrp/model/ZRPRoomInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 153
    :cond_1
    check-cast p1, Lus/zoom/zrp/model/ZRPRoomInfo;

    .line 154
    iget v1, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->roomType:I

    iget v3, p1, Lus/zoom/zrp/model/ZRPRoomInfo;->roomType:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->roomCalendarType:I

    iget v3, p1, Lus/zoom/zrp/model/ZRPRoomInfo;->roomCalendarType:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->isBusy:Z

    iget-boolean v3, p1, Lus/zoom/zrp/model/ZRPRoomInfo;->isBusy:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->reserveDisabled:Z

    iget-boolean v3, p1, Lus/zoom/zrp/model/ZRPRoomInfo;->reserveDisabled:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->forcePrivateMeeting:Z

    iget-boolean v3, p1, Lus/zoom/zrp/model/ZRPRoomInfo;->forcePrivateMeeting:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->hideHostInfoForPrivateMeeting:Z

    iget-boolean v3, p1, Lus/zoom/zrp/model/ZRPRoomInfo;->hideHostInfoForPrivateMeeting:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->roomID:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrp/model/ZRPRoomInfo;->roomID:Ljava/lang/String;

    .line 160
    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->roomName:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrp/model/ZRPRoomInfo;->roomName:Ljava/lang/String;

    .line 161
    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->path:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrp/model/ZRPRoomInfo;->path:Ljava/lang/String;

    .line 162
    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->roomMeetings:Ljava/util/List;

    iget-object p1, p1, Lus/zoom/zrp/model/ZRPRoomInfo;->roomMeetings:Ljava/util/List;

    .line 163
    invoke-static {v1, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomCalendarType()I
    .locals 1

    .line 81
    iget v0, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->roomCalendarType:I

    return v0
.end method

.method public getRoomID()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->roomID:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomMeetings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingListItem;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->roomMeetings:Ljava/util/List;

    return-object v0
.end method

.method public getRoomName()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->roomName:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomType()I
    .locals 1

    .line 73
    iget v0, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->roomType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xa

    .line 168
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->roomID:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->roomName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->path:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->roomType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->roomCalendarType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->isBusy:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->reserveDisabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->forcePrivateMeeting:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->hideHostInfoForPrivateMeeting:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->roomMeetings:Ljava/util/List;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isBusy()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->isBusy:Z

    return v0
.end method

.method public isBusyInDuration(Lus/zoom/zrp/reserve/ZRPTimeBlock;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 144
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrp/model/ZRPRoomInfo;->getRoomMeetings()Ljava/util/List;

    move-result-object v0

    .line 145
    invoke-static {v0}, Lus/zoom/zrp/reserve/ZRPReserveMeeting;->parseZRCMeetingListItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 146
    invoke-virtual {p1, v0}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->isOccupiedByMeetings(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public isForcePrivateMeeting()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->forcePrivateMeeting:Z

    return v0
.end method

.method public isHideHostInfoForPrivateMeeting()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->hideHostInfoForPrivateMeeting:Z

    return v0
.end method

.method public isReserveDisabled()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->reserveDisabled:Z

    return v0
.end method

.method public isRoomCanDrawInMap()Z
    .locals 1

    .line 129
    iget-object v0, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->path:Ljava/lang/String;

    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isRoomReservable()Z
    .locals 2

    .line 133
    invoke-virtual {p0}, Lus/zoom/zrp/model/ZRPRoomInfo;->isReserveDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lus/zoom/zrp/model/ZRPRoomInfo;->getRoomType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 135
    invoke-virtual {p0}, Lus/zoom/zrp/model/ZRPRoomInfo;->getRoomCalendarType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lus/zoom/zrp/model/ZRPRoomInfo;->getRoomCalendarType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBusy(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->isBusy:Z

    return-void
.end method

.method public setForcePrivateMeeting(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->forcePrivateMeeting:Z

    return-void
.end method

.method public setHideHostInfoForPrivateMeeting(Z)V
    .locals 0

    .line 117
    iput-boolean p1, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->hideHostInfoForPrivateMeeting:Z

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->path:Ljava/lang/String;

    return-void
.end method

.method public setReserveDisabled(Z)V
    .locals 0

    .line 101
    iput-boolean p1, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->reserveDisabled:Z

    return-void
.end method

.method public setRoomCalendarType(I)V
    .locals 0

    .line 85
    iput p1, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->roomCalendarType:I

    return-void
.end method

.method public setRoomID(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->roomID:Ljava/lang/String;

    return-void
.end method

.method public setRoomMeetings(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingListItem;",
            ">;)V"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->roomMeetings:Ljava/util/List;

    return-void
.end method

.method public setRoomName(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->roomName:Ljava/lang/String;

    return-void
.end method

.method public setRoomType(I)V
    .locals 0

    .line 77
    iput p1, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->roomType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZRPRoomInfo{roomID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->roomID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", roomName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->roomName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", path=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", roomType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->roomType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", roomCalendarType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->roomCalendarType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isBusy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->isBusy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", reserveDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->reserveDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", forcePrivateMeeting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->forcePrivateMeeting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hideHostInfoForPrivateMeeting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->hideHostInfoForPrivateMeeting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", roomMeetings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->roomMeetings:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 240
    iget-object p2, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->roomID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    iget-object p2, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->roomName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    iget-object p2, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    iget p2, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->roomType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    iget p2, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->roomCalendarType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget-boolean p2, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->isBusy:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 246
    iget-boolean p2, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->reserveDisabled:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 247
    iget-boolean p2, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->forcePrivateMeeting:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 248
    iget-boolean p2, p0, Lus/zoom/zrp/model/ZRPRoomInfo;->hideHostInfoForPrivateMeeting:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
