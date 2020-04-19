.class public Lus/zoom/zrcsdk/model/ZRCUserChangedEntityUtils;
.super Ljava/lang/Object;
.source "ZRCUserChangedEntityUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UserChangeEntity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contains(Ljava/util/List;II)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;",
            ">;II)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "UserChangeEntity"

    const-string p1, "contains() called with: changedParticipants = null"

    .line 18
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 21
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;

    if-eqz v1, :cond_1

    .line 23
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;->getEvent()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 24
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;->getParticipant()Lus/zoom/zrcsdk/model/ZRCParticipant;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 25
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;->getParticipant()Lus/zoom/zrcsdk/model/ZRCParticipant;

    move-result-object v1

    invoke-virtual {v1, p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isSameAs(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public static getById(Ljava/util/List;I)Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;",
            ">;I)",
            "Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "UserChangeEntity"

    const-string p1, "contains() called with: changedParticipants = null"

    const/4 v1, 0x0

    .line 35
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 38
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;

    if-eqz v1, :cond_1

    .line 40
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;->getParticipant()Lus/zoom/zrcsdk/model/ZRCParticipant;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 41
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;->getParticipant()Lus/zoom/zrcsdk/model/ZRCParticipant;

    move-result-object v2

    invoke-virtual {v2, p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isSameAs(I)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method
