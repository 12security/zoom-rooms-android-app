.class public Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;
.super Ljava/lang/Object;
.source "ZRPRoomInfoListWrapper.java"


# instance fields
.field private allRooms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrp/model/ZRPRoomInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final availabilityChangedRoomIndexInAllRoomList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private otherReservableRooms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrp/model/ZRPRoomInfo;",
            ">;"
        }
    .end annotation
.end field

.field private roomMapInfo:Lus/zoom/zrcsdk/model/ZRCLocationInfo;

.field private selectedTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

.field private uncachedRoomIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->allRooms:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->otherReservableRooms:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->uncachedRoomIDs:Ljava/util/List;

    .line 32
    new-instance v0, Lus/zoom/zrp/reserve/ZRPTimeBlock;

    const/4 v1, 0x0

    const/16 v2, 0x1e

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lus/zoom/zrp/reserve/ZRPTimeBlock;-><init>(III)V

    iput-object v0, p0, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->selectedTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    .line 33
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->availabilityChangedRoomIndexInAllRoomList:Ljava/util/List;

    return-void
.end method

.method private placeRoom(Lus/zoom/zrp/model/ZRPRoomInfo;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->allRooms:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {p1}, Lus/zoom/zrp/model/ZRPRoomInfo;->getRoomID()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lus/zoom/zrp/model/ZRPRoomInfo;->isRoomReservable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->otherReservableRooms:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private sortRooms()V
    .locals 1

    .line 130
    iget-object v0, p0, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->allRooms:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 131
    iget-object v0, p0, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->otherReservableRooms:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getAllRooms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrp/model/ZRPRoomInfo;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->allRooms:Ljava/util/List;

    return-object v0
.end method

.method public getAvailabilityChangedRoomIndexInAllRoomList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->availabilityChangedRoomIndexInAllRoomList:Ljava/util/List;

    return-object v0
.end method

.method public getOtherReservableRooms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrp/model/ZRPRoomInfo;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->otherReservableRooms:Ljava/util/List;

    return-object v0
.end method

.method public getRoomMapInfo()Lus/zoom/zrcsdk/model/ZRCLocationInfo;
    .locals 1

    .line 57
    iget-object v0, p0, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->roomMapInfo:Lus/zoom/zrcsdk/model/ZRCLocationInfo;

    return-object v0
.end method

.method public getSelectedTimeBlock()Lus/zoom/zrp/reserve/ZRPTimeBlock;
    .locals 1

    .line 49
    iget-object v0, p0, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->selectedTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    return-object v0
.end method

.method public getUncachedRoomIDs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->uncachedRoomIDs:Ljava/util/List;

    return-object v0
.end method

.method public isShowWithRoomMap()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->roomMapInfo:Lus/zoom/zrcsdk/model/ZRCLocationInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->isFloorWithMap()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public parseRoomsBasedOnLocationInfo(Lus/zoom/zrcsdk/model/ZRCLocationInfo;)V
    .locals 2

    .line 69
    iget-object v0, p0, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->allRooms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 70
    iget-object v0, p0, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->otherReservableRooms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-nez p1, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->getAllSubRoomLocationInfos()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 82
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCLocationInfo;

    if-eqz v1, :cond_2

    .line 84
    invoke-static {v1}, Lus/zoom/zrp/model/ZRPRoomInfo;->createZRPRoomInfoByLocationInfo(Lus/zoom/zrcsdk/model/ZRCLocationInfo;)Lus/zoom/zrp/model/ZRPRoomInfo;

    move-result-object v1

    .line 85
    invoke-direct {p0, v1}, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->placeRoom(Lus/zoom/zrp/model/ZRPRoomInfo;)V

    goto :goto_0

    .line 89
    :cond_3
    invoke-direct {p0}, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->sortRooms()V

    .line 91
    iput-object p1, p0, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->roomMapInfo:Lus/zoom/zrcsdk/model/ZRCLocationInfo;

    return-void
.end method

.method public parseRoomsBasedOnRoomListItemDetails(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;",
            ">;)V"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->allRooms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 96
    iget-object v0, p0, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->otherReservableRooms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-nez p1, :cond_0

    return-void

    .line 102
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;

    if-eqz v0, :cond_1

    .line 104
    invoke-static {v0}, Lus/zoom/zrp/model/ZRPRoomInfo;->createZRPRoomInfoByRoomListItemDetail(Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;)Lus/zoom/zrp/model/ZRPRoomInfo;

    move-result-object v0

    .line 105
    invoke-direct {p0, v0}, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->placeRoom(Lus/zoom/zrp/model/ZRPRoomInfo;)V

    goto :goto_0

    .line 109
    :cond_2
    invoke-direct {p0}, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->sortRooms()V

    const/4 p1, 0x0

    .line 111
    iput-object p1, p0, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->roomMapInfo:Lus/zoom/zrcsdk/model/ZRCLocationInfo;

    return-void
.end method

.method public updateCachedReservableRoomsMeetingList()V
    .locals 5

    .line 139
    iget-object v0, p0, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->uncachedRoomIDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 141
    iget-object v0, p0, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->allRooms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrp/model/ZRPRoomInfo;

    if-nez v1, :cond_1

    goto :goto_2

    .line 146
    :cond_1
    invoke-virtual {v1}, Lus/zoom/zrp/model/ZRPRoomInfo;->getRoomID()Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->getUserID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 149
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getMeetingList()Lus/zoom/zrc/model/MeetingList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lus/zoom/zrp/model/ZRPRoomInfo;->setRoomMeetings(Ljava/util/List;)V

    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {v1}, Lus/zoom/zrp/model/ZRPRoomInfo;->isRoomReservable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3, v2}, Lus/zoom/zrc/model/Model;->findRoomMeetingsInCachedListByRoomID(Ljava/lang/String;)Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 152
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;->isExpired()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 155
    :cond_3
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;->getMeetingList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lus/zoom/zrp/model/ZRPRoomInfo;->setRoomMeetings(Ljava/util/List;)V

    goto :goto_0

    .line 153
    :cond_4
    :goto_1
    iget-object v1, p0, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->uncachedRoomIDs:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method public updateReservableRoomsAvailability()V
    .locals 4

    const/4 v0, 0x0

    .line 162
    :goto_0
    iget-object v1, p0, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->allRooms:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 163
    iget-object v1, p0, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->allRooms:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrp/model/ZRPRoomInfo;

    if-eqz v1, :cond_0

    .line 165
    iget-object v2, p0, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->selectedTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    invoke-virtual {v1, v2}, Lus/zoom/zrp/model/ZRPRoomInfo;->isBusyInDuration(Lus/zoom/zrp/reserve/ZRPTimeBlock;)Z

    move-result v2

    .line 166
    invoke-virtual {v1}, Lus/zoom/zrp/model/ZRPRoomInfo;->isBusy()Z

    move-result v3

    if-eq v3, v2, :cond_0

    .line 167
    invoke-virtual {v1, v2}, Lus/zoom/zrp/model/ZRPRoomInfo;->setBusy(Z)V

    .line 168
    iget-object v1, p0, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->availabilityChangedRoomIndexInAllRoomList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    iget-object v1, p0, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->availabilityChangedRoomIndexInAllRoomList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateSelectedTimeBlock(Lus/zoom/zrp/reserve/ZRPTimeBlock;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->selectedTimeBlock:Lus/zoom/zrp/reserve/ZRPTimeBlock;

    invoke-virtual {p1}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getStart()I

    move-result v1

    invoke-virtual {p1}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->getDuration()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrp/reserve/ZRPTimeBlock;->reset(II)V

    return-void
.end method
