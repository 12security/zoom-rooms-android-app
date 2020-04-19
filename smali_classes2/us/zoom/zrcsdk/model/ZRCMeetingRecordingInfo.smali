.class public Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;
.super Ljava/lang/Object;
.source "ZRCMeetingRecordingInfo.java"


# instance fields
.field private amIRecording:Z

.field private canIRecord:Z

.field private isCMRInProgress:Z

.field private isConnectingToCMR:Z

.field private isMeetingBeingRecorded:Z

.field private selected:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZZZZZZ)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;->canIRecord:Z

    .line 21
    iput-boolean p2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;->amIRecording:Z

    .line 22
    iput-boolean p3, p0, Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;->isMeetingBeingRecorded:Z

    .line 23
    iput-boolean p4, p0, Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;->isConnectingToCMR:Z

    .line 24
    iput-boolean p5, p0, Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;->isCMRInProgress:Z

    .line 25
    iput-boolean p6, p0, Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;->selected:Z

    return-void
.end method


# virtual methods
.method public isAmIRecording()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;->amIRecording:Z

    return v0
.end method

.method public isCMRInProgress()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;->isCMRInProgress:Z

    return v0
.end method

.method public isCanIRecord()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;->canIRecord:Z

    return v0
.end method

.method public isConnectingToCMR()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;->isConnectingToCMR:Z

    return v0
.end method

.method public isMeetingBeingRecorded()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;->isMeetingBeingRecorded:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;->selected:Z

    return v0
.end method

.method public setAmIRecording(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;->amIRecording:Z

    return-void
.end method

.method public setCMRInProgress(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;->isCMRInProgress:Z

    return-void
.end method

.method public setCanIRecord(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;->canIRecord:Z

    return-void
.end method

.method public setConnectingToCMR(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;->isConnectingToCMR:Z

    return-void
.end method

.method public setMeetingBeingRecorded(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;->isMeetingBeingRecorded:Z

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;->selected:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canIRecord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;->canIRecord:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",amIRecording="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;->amIRecording:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isMeetingBeingRecorded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;->isMeetingBeingRecorded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isConnectingToCMR="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;->isConnectingToCMR:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isCMRInProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;->isCMRInProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",selected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;->selected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
