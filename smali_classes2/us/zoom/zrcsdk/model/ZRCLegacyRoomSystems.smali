.class public Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;
.super Ljava/lang/Object;
.source "ZRCLegacyRoomSystems.java"


# instance fields
.field private roomsOfCurrentMeeting:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;"
        }
    .end annotation
.end field

.field private roomsOfMine:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->roomsOfMine:Ljava/util/List;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->roomsOfCurrentMeeting:Ljava/util/List;

    return-void
.end method

.method private createContactFromRoom(Ljava/lang/String;)Lus/zoom/zrcsdk/model/ZRCContact;
    .locals 1

    .line 57
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCContact;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/ZRCContact;-><init>()V

    .line 58
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/ZRCContact;->setScreenName(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 59
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/ZRCContact;->setPresence(I)V

    const/4 p1, 0x1

    .line 60
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/ZRCContact;->setZoomRoomsGroup(Z)V

    return-object v0
.end method


# virtual methods
.method public addRooms(Ljava/lang/String;Z)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->createContactFromRoom(Ljava/lang/String;)Lus/zoom/zrcsdk/model/ZRCContact;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 68
    iget-object p2, p0, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->roomsOfMine:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    :cond_0
    iget-object p2, p0, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->roomsOfCurrentMeeting:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public copyFrom(Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;)Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;
    .locals 7

    .line 33
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;-><init>()V

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 36
    :goto_0
    iget-object v5, p1, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->roomsOfMine:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 37
    new-instance v5, Lus/zoom/zrcsdk/model/ZRCContact;

    invoke-direct {v5}, Lus/zoom/zrcsdk/model/ZRCContact;-><init>()V

    .line 38
    iget-object v6, p1, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->roomsOfMine:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lus/zoom/zrcsdk/model/ZRCContact;

    invoke-virtual {v5, v6}, Lus/zoom/zrcsdk/model/ZRCContact;->update(Lus/zoom/zrcsdk/model/ZRCContact;)V

    .line 39
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 41
    :cond_0
    :goto_1
    iget-object v4, p1, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->roomsOfCurrentMeeting:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 42
    new-instance v4, Lus/zoom/zrcsdk/model/ZRCContact;

    invoke-direct {v4}, Lus/zoom/zrcsdk/model/ZRCContact;-><init>()V

    .line 43
    iget-object v5, p1, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->roomsOfCurrentMeeting:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lus/zoom/zrcsdk/model/ZRCContact;

    invoke-virtual {v4, v5}, Lus/zoom/zrcsdk/model/ZRCContact;->update(Lus/zoom/zrcsdk/model/ZRCContact;)V

    .line 44
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 46
    :cond_1
    iput-object v1, v0, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->roomsOfMine:Ljava/util/List;

    .line 47
    iput-object v2, v0, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->roomsOfCurrentMeeting:Ljava/util/List;

    return-object v0
.end method

.method public getRoomsOfCurrentMeeting()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->roomsOfCurrentMeeting:Ljava/util/List;

    return-object v0
.end method

.method public getRoomsOfMine()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->roomsOfMine:Ljava/util/List;

    return-object v0
.end method

.method public resetRooms(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 52
    iget-object p1, p0, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->roomsOfMine:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 53
    :cond_0
    iget-object p1, p0, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->roomsOfCurrentMeeting:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :goto_0
    return-void
.end method

.method public setRoomsOfCurrentMeeting(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->roomsOfCurrentMeeting:Ljava/util/List;

    return-void
.end method

.method public setRoomsOfMine(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;)V"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->roomsOfMine:Ljava/util/List;

    return-void
.end method
