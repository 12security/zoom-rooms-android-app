.class public Lus/zoom/zrcsdk/model/ZRCShareSource;
.super Ljava/lang/Object;
.source "ZRCShareSource.java"


# instance fields
.field private isAudioMuted:Z

.field private isSharingAudio:Z

.field private shareSourceId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IZZ)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCShareSource;->shareSourceId:I

    .line 17
    iput-boolean p2, p0, Lus/zoom/zrcsdk/model/ZRCShareSource;->isSharingAudio:Z

    .line 18
    iput-boolean p3, p0, Lus/zoom/zrcsdk/model/ZRCShareSource;->isAudioMuted:Z

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

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 49
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCShareSource;

    .line 50
    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCShareSource;->shareSourceId:I

    iget v3, p1, Lus/zoom/zrcsdk/model/ZRCShareSource;->shareSourceId:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCShareSource;->isSharingAudio:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCShareSource;->isSharingAudio:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCShareSource;->isAudioMuted:Z

    iget-boolean p1, p1, Lus/zoom/zrcsdk/model/ZRCShareSource;->isAudioMuted:Z

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

.method public getShareSourceId()I
    .locals 1

    .line 22
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCShareSource;->shareSourceId:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 57
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCShareSource;->shareSourceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCShareSource;->isSharingAudio:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCShareSource;->isAudioMuted:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAudioMuted()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCShareSource;->isAudioMuted:Z

    return v0
.end method

.method public isSharingAudio()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCShareSource;->isSharingAudio:Z

    return v0
.end method

.method public setAudioMuted(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCShareSource;->isAudioMuted:Z

    return-void
.end method

.method public setShareSourceId(I)V
    .locals 0

    .line 26
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCShareSource;->shareSourceId:I

    return-void
.end method

.method public setSharingAudio(Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCShareSource;->isSharingAudio:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZRCShareSource{shareSourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCShareSource;->shareSourceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isSharingAudio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCShareSource;->isSharingAudio:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAudioMuted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCShareSource;->isAudioMuted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
