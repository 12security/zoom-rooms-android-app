.class public Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;
.super Ljava/lang/Object;
.source "ZRCRoomProfileInfo.java"


# instance fields
.field private id:Ljava/lang/String;

.field private issueDevicesType:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private selected:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;->id:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;->name:Ljava/lang/String;

    .line 18
    iput-boolean p3, p0, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;->selected:Z

    .line 19
    iput-object p4, p0, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;->issueDevicesType:Ljava/util/List;

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

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 54
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;

    .line 55
    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;->selected:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;->selected:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;->id:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;->id:Ljava/lang/String;

    .line 56
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;->name:Ljava/lang/String;

    .line 57
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;->issueDevicesType:Ljava/util/List;

    iget-object p1, p1, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;->issueDevicesType:Ljava/util/List;

    .line 58
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

.method public getId()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIssueDevicesType()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;->issueDevicesType:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    .line 63
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;->id:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;->name:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;->selected:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;->issueDevicesType:Ljava/util/List;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isSame(Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 70
    :cond_0
    iget-object v0, p0, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;->id:Ljava/lang/String;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isSelected()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;->selected:Z

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;->selected:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZRCRoomProfileInfo{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", selected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;->selected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", issueDevicesType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;->issueDevicesType:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
