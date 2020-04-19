.class public Lus/zoom/zrcsdk/model/RoomInfo;
.super Ljava/lang/Object;
.source "RoomInfo.java"


# instance fields
.field private displayName:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lus/zoom/zrcsdk/model/RoomInfo;->name:Ljava/lang/String;

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lus/zoom/zrcsdk/model/RoomInfo;->email:Ljava/lang/String;

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lus/zoom/zrcsdk/model/RoomInfo;->displayName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lus/zoom/zrcsdk/model/RoomInfo;->name:Ljava/lang/String;

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lus/zoom/zrcsdk/model/RoomInfo;->email:Ljava/lang/String;

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lus/zoom/zrcsdk/model/RoomInfo;->displayName:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lus/zoom/zrcsdk/model/RoomInfo;->name:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lus/zoom/zrcsdk/model/RoomInfo;->email:Ljava/lang/String;

    if-nez p3, :cond_0

    .line 26
    iget-object p3, p0, Lus/zoom/zrcsdk/model/RoomInfo;->displayName:Ljava/lang/String;

    :cond_0
    iput-object p3, p0, Lus/zoom/zrcsdk/model/RoomInfo;->displayName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 56
    :cond_0
    instance-of v1, p1, Lus/zoom/zrcsdk/model/RoomInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 57
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/RoomInfo;

    .line 58
    iget-object v1, p0, Lus/zoom/zrcsdk/model/RoomInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/RoomInfo;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/RoomInfo;->email:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/RoomInfo;->email:Ljava/lang/String;

    .line 59
    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/RoomInfo;->displayName:Ljava/lang/String;

    iget-object p1, p1, Lus/zoom/zrcsdk/model/RoomInfo;->displayName:Ljava/lang/String;

    .line 60
    invoke-static {v1, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lus/zoom/zrcsdk/model/RoomInfo;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lus/zoom/zrcsdk/model/RoomInfo;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lus/zoom/zrcsdk/model/RoomInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 65
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/RoomInfo;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/RoomInfo;->email:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/RoomInfo;->displayName:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lus/zoom/zrcsdk/model/RoomInfo;->displayName:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lus/zoom/zrcsdk/model/RoomInfo;->email:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lus/zoom/zrcsdk/model/RoomInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RoomInfo{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/RoomInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", email=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrcsdk/model/RoomInfo;->email:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", displayName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrcsdk/model/RoomInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
