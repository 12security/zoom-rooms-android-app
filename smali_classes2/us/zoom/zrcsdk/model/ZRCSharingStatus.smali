.class public Lus/zoom/zrcsdk/model/ZRCSharingStatus;
.super Ljava/lang/Object;
.source "ZRCSharingStatus.java"


# static fields
.field public static final ZRCSharingStateConnecting:I = 0x1

.field public static final ZRCSharingStateNone:I = 0x0

.field public static final ZRCSharingStateReceiving:I = 0x3

.field public static final ZRCSharingStateSending:I = 0x2

.field public static final ZRCSharingStateSendingAndReceiving:I = 0x4


# instance fields
.field private paused:Z

.field private sharingState:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCSharingStatus;->sharingState:I

    .line 21
    iput-boolean p2, p0, Lus/zoom/zrcsdk/model/ZRCSharingStatus;->paused:Z

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

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 58
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCSharingStatus;

    .line 60
    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCSharingStatus;->sharingState:I

    iget v3, p1, Lus/zoom/zrcsdk/model/ZRCSharingStatus;->sharingState:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCSharingStatus;->paused:Z

    iget-boolean p1, p1, Lus/zoom/zrcsdk/model/ZRCSharingStatus;->paused:Z

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

.method public getSharingState()I
    .locals 1

    .line 25
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCSharingStatus;->sharingState:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 65
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCSharingStatus;->sharingState:I

    mul-int/lit8 v0, v0, 0x1f

    .line 66
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCSharingStatus;->paused:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCSharingStatus;->paused:Z

    return v0
.end method

.method public isReceiving()Z
    .locals 2

    .line 45
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCSharingStatus;->sharingState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSending()Z
    .locals 2

    .line 41
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCSharingStatus;->sharingState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setPaused(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCSharingStatus;->paused:Z

    return-void
.end method

.method public setSharingState(I)V
    .locals 0

    .line 29
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCSharingStatus;->sharingState:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sharingState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCSharingStatus;->sharingState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",paused:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCSharingStatus;->paused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
