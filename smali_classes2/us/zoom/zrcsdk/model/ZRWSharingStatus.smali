.class public Lus/zoom/zrcsdk/model/ZRWSharingStatus;
.super Ljava/lang/Object;
.source "ZRWSharingStatus.java"


# instance fields
.field private isSharing:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRWSharingStatus;->isSharing:Z

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

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 30
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/ZRWSharingStatus;

    .line 31
    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRWSharingStatus;->isSharing:Z

    iget-boolean p1, p1, Lus/zoom/zrcsdk/model/ZRWSharingStatus;->isSharing:Z

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    .line 36
    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRWSharingStatus;->isSharing:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isSharing()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRWSharingStatus;->isSharing:Z

    return v0
.end method

.method public setSharing(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRWSharingStatus;->isSharing:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zrw isSharing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRWSharingStatus;->isSharing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
