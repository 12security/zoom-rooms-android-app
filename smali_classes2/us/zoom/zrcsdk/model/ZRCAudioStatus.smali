.class public Lus/zoom/zrcsdk/model/ZRCAudioStatus;
.super Ljava/lang/Object;
.source "ZRCAudioStatus.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ZRCAudioTypeNone:I = 0x0

.field public static final ZRCAudioTypeTelephone:I = 0x2

.field public static final ZRCAudioTypeVoIP:I = 0x1


# instance fields
.field private audioType:I

.field private muted:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->audioType:I

    .line 19
    iput-boolean p2, p0, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->muted:Z

    return-void
.end method

.method public constructor <init>(Lus/zoom/zrcsdk/model/ZRCAudioStatus;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iget v0, p1, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->audioType:I

    iput v0, p0, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->audioType:I

    .line 24
    iget-boolean p1, p1, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->muted:Z

    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->muted:Z

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
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    .line 48
    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->audioType:I

    iget v3, p1, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->audioType:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->muted:Z

    iget-boolean p1, p1, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->muted:Z

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

.method public getAudioType()I
    .locals 1

    .line 28
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->audioType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 54
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->audioType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->muted:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isMuted()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->muted:Z

    return v0
.end method

.method public setAudioType(I)V
    .locals 0

    .line 32
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->audioType:I

    return-void
.end method

.method public setMuted(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->muted:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 60
    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->audioType:I

    if-nez v1, :cond_0

    const-string v0, "none"

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v0, "voip"

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const-string v0, "phone"

    .line 68
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",mute:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->muted:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
