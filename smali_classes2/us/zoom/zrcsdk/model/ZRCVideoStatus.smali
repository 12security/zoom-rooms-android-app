.class public Lus/zoom/zrcsdk/model/ZRCVideoStatus;
.super Ljava/lang/Object;
.source "ZRCVideoStatus.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private hasSource:Z

.field private receiving:Z

.field private sending:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lus/zoom/zrcsdk/model/ZRCVideoStatus;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iget-boolean v0, p1, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->hasSource:Z

    iput-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->hasSource:Z

    .line 19
    iget-boolean v0, p1, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->receiving:Z

    iput-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->receiving:Z

    .line 20
    iget-boolean p1, p1, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->sending:Z

    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->sending:Z

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->hasSource:Z

    .line 26
    iput-boolean p2, p0, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->receiving:Z

    .line 27
    iput-boolean p3, p0, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->sending:Z

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

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 59
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    .line 60
    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->hasSource:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->hasSource:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->receiving:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->receiving:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->sending:Z

    iget-boolean p1, p1, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->sending:Z

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

    const/4 v0, 0x3

    .line 67
    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->hasSource:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->receiving:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->sending:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isHasSource()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->hasSource:Z

    return v0
.end method

.method public isReceiving()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->receiving:Z

    return v0
.end method

.method public isSending()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->sending:Z

    return v0
.end method

.method public setHasSource(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->hasSource:Z

    return-void
.end method

.method public setReceiving(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->receiving:Z

    return-void
.end method

.method public setSending(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->sending:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasSource:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->hasSource:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",receiving:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->receiving:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",sending:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->sending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
