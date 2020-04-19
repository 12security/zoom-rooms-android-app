.class public Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;
.super Ljava/lang/Object;
.source "ZRCVideoThumbInfo.java"


# static fields
.field public static final ZRCVideoThumbPositionCenter:I = 0x0

.field public static final ZRCVideoThumbPositionDown:I = 0x4

.field public static final ZRCVideoThumbPositionDownLeft:I = 0xc

.field public static final ZRCVideoThumbPositionDownRight:I = 0x6

.field public static final ZRCVideoThumbPositionLeft:I = 0x8

.field public static final ZRCVideoThumbPositionRight:I = 0x2

.field public static final ZRCVideoThumbPositionUp:I = 0x1

.field public static final ZRCVideoThumbPositionUpLeft:I = 0x9

.field public static final ZRCVideoThumbPositionUpRight:I = 0x3

.field public static final ZRCVideoThumbSize1x:I = 0x1

.field public static final ZRCVideoThumbSize2x:I = 0x2

.field public static final ZRCVideoThumbSize3x:I = 0x3

.field public static final ZRCVideoThumbSizeOff:I = 0x0

.field public static final ZRCVideoThumbSizeVideoStrip:I = 0x4


# instance fields
.field private isSupported:Z

.field private pageStatus:Lus/zoom/zrcsdk/model/VideoPageStatus;

.field private position:I

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPageStatus()Lus/zoom/zrcsdk/model/VideoPageStatus;
    .locals 1

    .line 57
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->pageStatus:Lus/zoom/zrcsdk/model/VideoPageStatus;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 41
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->position:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 49
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->size:I

    return v0
.end method

.method public isSupported()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->isSupported:Z

    return v0
.end method

.method public setPageStatus(Lus/zoom/zrcsdk/model/VideoPageStatus;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->pageStatus:Lus/zoom/zrcsdk/model/VideoPageStatus;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 45
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->position:I

    return-void
.end method

.method public setSize(I)V
    .locals 0

    .line 53
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->size:I

    return-void
.end method

.method public setSupported(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->isSupported:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZRCVideoThumbInfo{isSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->isSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pageStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->pageStatus:Lus/zoom/zrcsdk/model/VideoPageStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
