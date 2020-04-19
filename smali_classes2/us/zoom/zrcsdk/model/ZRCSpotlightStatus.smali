.class public Lus/zoom/zrcsdk/model/ZRCSpotlightStatus;
.super Ljava/lang/Object;
.source "ZRCSpotlightStatus.java"


# instance fields
.field private present:Z

.field private userId:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCSpotlightStatus;->userId:I

    .line 16
    iput-boolean p2, p0, Lus/zoom/zrcsdk/model/ZRCSpotlightStatus;->present:Z

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

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 47
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCSpotlightStatus;

    .line 48
    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCSpotlightStatus;->userId:I

    iget v3, p1, Lus/zoom/zrcsdk/model/ZRCSpotlightStatus;->userId:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCSpotlightStatus;->present:Z

    iget-boolean p1, p1, Lus/zoom/zrcsdk/model/ZRCSpotlightStatus;->present:Z

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

.method public getUserId()I
    .locals 1

    .line 20
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCSpotlightStatus;->userId:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 54
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCSpotlightStatus;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCSpotlightStatus;->present:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isPresent()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCSpotlightStatus;->present:Z

    return v0
.end method

.method public setPresent(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCSpotlightStatus;->present:Z

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    .line 24
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCSpotlightStatus;->userId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZRCSpotlightStatus{userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCSpotlightStatus;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", present="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCSpotlightStatus;->present:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
