.class public Lus/zoom/zrc/model/ZRCParticipantList;
.super Ljava/util/ArrayList;
.source "ZRCParticipantList.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lus/zoom/zrcsdk/model/ZRCParticipant;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method private indexOfParticipantByUserId(Lus/zoom/zrcsdk/model/ZRCParticipant;)I
    .locals 3

    const/4 v0, 0x0

    .line 32
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/model/ZRCParticipantList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 33
    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/ZRCParticipantList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v2

    invoke-static {v1, v2}, Lus/zoom/zrcsdk/util/Util;->areTwoUserIdsEqual(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method changeHostTo(Lus/zoom/zrcsdk/model/ZRCParticipant;)V
    .locals 6

    .line 52
    invoke-virtual {p0}, Lus/zoom/zrc/model/ZRCParticipantList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCParticipant;

    .line 53
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v4

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v5

    invoke-static {v4, v5}, Lus/zoom/zrcsdk/util/Util;->areTwoUserIdsEqual(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    invoke-virtual {v1, v2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->setHost(Z)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v1, v3}, Lus/zoom/zrcsdk/model/ZRCParticipant;->setHost(Z)V

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isMyself()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isHost()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 61
    :goto_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1, v2}, Lus/zoom/zrc/model/Model;->setAmIHost(Z)V

    return-void
.end method

.method public getParticipantByUserId(I)Lus/zoom/zrcsdk/model/ZRCParticipant;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return-object v0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/model/ZRCParticipantList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lus/zoom/zrcsdk/model/ZRCParticipant;

    if-eqz v3, :cond_1

    .line 23
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v4

    if-eq v4, v1, :cond_1

    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v4

    invoke-static {v4, p1}, Lus/zoom/zrcsdk/util/Util;->areTwoUserIdsEqual(II)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_2
    return-object v0
.end method

.method public mutableCopy()Lus/zoom/zrc/model/ZRCParticipantList;
    .locals 3

    .line 136
    new-instance v0, Lus/zoom/zrc/model/ZRCParticipantList;

    invoke-direct {v0}, Lus/zoom/zrc/model/ZRCParticipantList;-><init>()V

    .line 138
    invoke-virtual {p0}, Lus/zoom/zrc/model/ZRCParticipantList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCParticipant;

    .line 139
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->mutableCopy()Lus/zoom/zrcsdk/model/ZRCParticipant;

    move-result-object v2

    invoke-virtual {v0, v2}, Lus/zoom/zrc/model/ZRCParticipantList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public mutableCopyFrom(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCParticipant;",
            ">;)V"
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Lus/zoom/zrc/model/ZRCParticipantList;->clear()V

    .line 149
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCParticipant;

    .line 150
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCParticipant;->mutableCopy()Lus/zoom/zrcsdk/model/ZRCParticipant;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/ZRCParticipantList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method removeParticipantByUserId(Lus/zoom/zrcsdk/model/ZRCParticipant;)Z
    .locals 4

    .line 42
    invoke-virtual {p0}, Lus/zoom/zrc/model/ZRCParticipantList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCParticipant;

    .line 43
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v2

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v3

    invoke-static {v2, v3}, Lus/zoom/zrcsdk/util/Util;->areTwoUserIdsEqual(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {p0, v1}, Lus/zoom/zrc/model/ZRCParticipantList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method sortParticipants()V
    .locals 0

    .line 130
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method updateMyRolesInMeeting()V
    .locals 3

    .line 82
    invoke-virtual {p0}, Lus/zoom/zrc/model/ZRCParticipantList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCParticipant;

    .line 83
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isMyself()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isHost()Z

    move-result v2

    invoke-virtual {v0, v2}, Lus/zoom/zrc/model/Model;->setAmIHost(Z)V

    .line 85
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isCohost()Z

    move-result v2

    invoke-virtual {v0, v2}, Lus/zoom/zrc/model/Model;->setAmICoHost(Z)V

    .line 86
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isGuest()Z

    move-result v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->setAmIGuest(Z)V

    return-void

    :cond_1
    return-void
.end method

.method updateParticipant(Lus/zoom/zrcsdk/model/ZRCParticipant;)Z
    .locals 4

    .line 67
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isMyself()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isCohost()Z

    move-result v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->setAmICoHost(Z)V

    .line 71
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/model/ZRCParticipantList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCParticipant;

    .line 72
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v2

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v3

    invoke-static {v2, v3}, Lus/zoom/zrcsdk/util/Util;->areTwoUserIdsEqual(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    invoke-virtual {v1, p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->update(Lus/zoom/zrcsdk/model/ZRCParticipant;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method updateParticipantListByEvent(Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;)Z
    .locals 5

    .line 93
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;->getParticipant()Lus/zoom/zrcsdk/model/ZRCParticipant;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 95
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;->getParticipant()Lus/zoom/zrcsdk/model/ZRCParticipant;

    move-result-object v0

    .line 96
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;->getEvent()I

    move-result p1

    .line 97
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/ZRCParticipantList;->indexOfParticipantByUserId(Lus/zoom/zrcsdk/model/ZRCParticipant;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-le v2, v4, :cond_1

    .line 120
    invoke-virtual {p0, v2, v0}, Lus/zoom/zrc/model/ZRCParticipantList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-virtual {p0}, Lus/zoom/zrc/model/ZRCParticipantList;->updateMyRolesInMeeting()V

    return v3

    :pswitch_1
    if-le v2, v4, :cond_1

    .line 114
    invoke-virtual {p0, v2, v0}, Lus/zoom/zrc/model/ZRCParticipantList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return v3

    :pswitch_2
    if-le v2, v4, :cond_1

    .line 108
    invoke-virtual {p0, v2}, Lus/zoom/zrc/model/ZRCParticipantList;->remove(I)Ljava/lang/Object;

    return v3

    :pswitch_3
    if-ne v2, v4, :cond_1

    .line 102
    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/ZRCParticipantList;->add(Ljava/lang/Object;)Z

    return v3

    :cond_1
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
