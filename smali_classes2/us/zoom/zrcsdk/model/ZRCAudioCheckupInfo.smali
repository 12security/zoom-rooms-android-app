.class public Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;
.super Ljava/lang/Object;
.source "ZRCAudioCheckupInfo.java"


# instance fields
.field private aecLevel:I

.field private canRestartZoomRoomsSystem:Z

.field private intervalAfterFinshed:I

.field private intervalAfterScheduled:I

.field private percentageOfCheckup:I

.field private status:I

.field private testTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIZIILjava/lang/String;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->aecLevel:I

    .line 20
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->status:I

    .line 21
    iput p2, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->intervalAfterScheduled:I

    .line 22
    iput p3, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->percentageOfCheckup:I

    .line 23
    iput-boolean p4, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->canRestartZoomRoomsSystem:Z

    .line 24
    iput p5, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->intervalAfterFinshed:I

    .line 25
    iput p6, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->aecLevel:I

    .line 26
    iput-object p7, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->testTime:Ljava/lang/String;

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

    if-eqz p1, :cond_4

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 94
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;

    .line 95
    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->status:I

    iget v3, p1, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->status:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->intervalAfterScheduled:I

    iget v3, p1, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->intervalAfterScheduled:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->percentageOfCheckup:I

    iget v3, p1, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->percentageOfCheckup:I

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->canRestartZoomRoomsSystem:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->canRestartZoomRoomsSystem:Z

    if-ne v2, v3, :cond_3

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->intervalAfterFinshed:I

    iget v3, p1, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->intervalAfterFinshed:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->aecLevel:I

    iget v3, p1, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->aecLevel:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->testTime:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object p1, p1, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->testTime:Ljava/lang/String;

    .line 101
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->testTime:Ljava/lang/String;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getAecLevel()I
    .locals 1

    .line 70
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->aecLevel:I

    return v0
.end method

.method public getIntervalAfterFinshed()I
    .locals 1

    .line 62
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->intervalAfterFinshed:I

    return v0
.end method

.method public getIntervalAfterScheduled()I
    .locals 1

    .line 38
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->intervalAfterScheduled:I

    return v0
.end method

.method public getPercentageOfCheckup()I
    .locals 1

    .line 46
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->percentageOfCheckup:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 30
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->status:I

    return v0
.end method

.method public getTestTime()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->testTime:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    .line 87
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->status:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->intervalAfterScheduled:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->percentageOfCheckup:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->canRestartZoomRoomsSystem:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->intervalAfterFinshed:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->aecLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->testTime:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isCanRestartZoomRoomsSystem()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->canRestartZoomRoomsSystem:Z

    return v0
.end method

.method public setAecLevel(I)V
    .locals 0

    .line 74
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->aecLevel:I

    return-void
.end method

.method public setCanRestartZoomRoomsSystem(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->canRestartZoomRoomsSystem:Z

    return-void
.end method

.method public setIntervalAfterFinshed(I)V
    .locals 0

    .line 66
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->intervalAfterFinshed:I

    return-void
.end method

.method public setIntervalAfterScheduled(I)V
    .locals 0

    .line 42
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->intervalAfterScheduled:I

    return-void
.end method

.method public setPercentageOfCheckup(I)V
    .locals 0

    .line 50
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->percentageOfCheckup:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 34
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->status:I

    return-void
.end method

.method public setTestTime(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->testTime:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZRCAudioCheckupInfo{status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", intervalAfterScheduled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->intervalAfterScheduled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", percentageOfCheckup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->percentageOfCheckup:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", canRestartZoomRoomsSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->canRestartZoomRoomsSystem:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", intervalAfterFinshed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->intervalAfterFinshed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", aecLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->aecLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", testTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->testTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
