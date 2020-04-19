.class public Lus/zoom/zrcsdk/model/VideoPageStatus;
.super Ljava/lang/Object;
.source "VideoPageStatus.java"


# instance fields
.field private isInFirstPage:Z

.field private isInLastPage:Z

.field private pageVideoType:I

.field private videoCountInCurrentPage:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPageVideoType()I
    .locals 1

    .line 11
    iget v0, p0, Lus/zoom/zrcsdk/model/VideoPageStatus;->pageVideoType:I

    return v0
.end method

.method public getVideoCountInCurrentPage()I
    .locals 1

    .line 19
    iget v0, p0, Lus/zoom/zrcsdk/model/VideoPageStatus;->videoCountInCurrentPage:I

    return v0
.end method

.method public isInFirstPage()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/VideoPageStatus;->isInFirstPage:Z

    return v0
.end method

.method public isInLastPage()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/VideoPageStatus;->isInLastPage:Z

    return v0
.end method

.method public setInFirstPage(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/VideoPageStatus;->isInFirstPage:Z

    return-void
.end method

.method public setInLastPage(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/VideoPageStatus;->isInLastPage:Z

    return-void
.end method

.method public setPageVideoType(I)V
    .locals 0

    .line 15
    iput p1, p0, Lus/zoom/zrcsdk/model/VideoPageStatus;->pageVideoType:I

    return-void
.end method

.method public setVideoCountInCurrentPage(I)V
    .locals 0

    .line 23
    iput p1, p0, Lus/zoom/zrcsdk/model/VideoPageStatus;->videoCountInCurrentPage:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoPageStatus{isInFirstPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/VideoPageStatus;->isInFirstPage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isInLastPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/VideoPageStatus;->isInLastPage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", pageVideoType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/VideoPageStatus;->pageVideoType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoCountInCurrentPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/VideoPageStatus;->videoCountInCurrentPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
