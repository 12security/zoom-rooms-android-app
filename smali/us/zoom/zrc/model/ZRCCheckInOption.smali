.class public Lus/zoom/zrc/model/ZRCCheckInOption;
.super Ljava/lang/Object;
.source "ZRCCheckInOption.java"


# instance fields
.field private countForReleaseRecurringMeetings:I

.field private enableNotification:Z

.field private status:Z

.field private timeForNoCheckInRelease:I

.field private timeForPriorCheckIn:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    if-eqz p1, :cond_7

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 64
    :cond_1
    check-cast p1, Lus/zoom/zrc/model/ZRCCheckInOption;

    .line 66
    iget-boolean v2, p0, Lus/zoom/zrc/model/ZRCCheckInOption;->status:Z

    iget-boolean v3, p1, Lus/zoom/zrc/model/ZRCCheckInOption;->status:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 67
    :cond_2
    iget v2, p0, Lus/zoom/zrc/model/ZRCCheckInOption;->timeForPriorCheckIn:I

    iget v3, p1, Lus/zoom/zrc/model/ZRCCheckInOption;->timeForPriorCheckIn:I

    if-eq v2, v3, :cond_3

    return v1

    .line 68
    :cond_3
    iget v2, p0, Lus/zoom/zrc/model/ZRCCheckInOption;->timeForNoCheckInRelease:I

    iget v3, p1, Lus/zoom/zrc/model/ZRCCheckInOption;->timeForNoCheckInRelease:I

    if-eq v2, v3, :cond_4

    return v1

    .line 69
    :cond_4
    iget v2, p0, Lus/zoom/zrc/model/ZRCCheckInOption;->countForReleaseRecurringMeetings:I

    iget v3, p1, Lus/zoom/zrc/model/ZRCCheckInOption;->countForReleaseRecurringMeetings:I

    if-eq v2, v3, :cond_5

    return v1

    .line 70
    :cond_5
    iget-boolean v2, p0, Lus/zoom/zrc/model/ZRCCheckInOption;->enableNotification:Z

    iget-boolean p1, p1, Lus/zoom/zrc/model/ZRCCheckInOption;->enableNotification:Z

    if-ne v2, p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_7
    :goto_1
    return v1
.end method

.method public getCountForReleaseRecurringMeetings()I
    .locals 1

    .line 52
    iget v0, p0, Lus/zoom/zrc/model/ZRCCheckInOption;->countForReleaseRecurringMeetings:I

    return v0
.end method

.method public getStatus()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lus/zoom/zrc/model/ZRCCheckInOption;->status:Z

    return v0
.end method

.method public getTimeForNoCheckInRelease()I
    .locals 1

    .line 48
    iget v0, p0, Lus/zoom/zrc/model/ZRCCheckInOption;->timeForNoCheckInRelease:I

    return v0
.end method

.method public getTimeForPriorCheckIn()I
    .locals 1

    .line 44
    iget v0, p0, Lus/zoom/zrc/model/ZRCCheckInOption;->timeForPriorCheckIn:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 75
    iget-boolean v0, p0, Lus/zoom/zrc/model/ZRCCheckInOption;->status:Z

    mul-int/lit8 v0, v0, 0x1f

    .line 76
    iget v1, p0, Lus/zoom/zrc/model/ZRCCheckInOption;->timeForPriorCheckIn:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 77
    iget v1, p0, Lus/zoom/zrc/model/ZRCCheckInOption;->timeForNoCheckInRelease:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 78
    iget v1, p0, Lus/zoom/zrc/model/ZRCCheckInOption;->countForReleaseRecurringMeetings:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 79
    iget-boolean v1, p0, Lus/zoom/zrc/model/ZRCCheckInOption;->enableNotification:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isEnableNotification()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lus/zoom/zrc/model/ZRCCheckInOption;->enableNotification:Z

    return v0
.end method

.method public setCountForReleaseRecurringMeetings(I)V
    .locals 0

    .line 32
    iput p1, p0, Lus/zoom/zrc/model/ZRCCheckInOption;->countForReleaseRecurringMeetings:I

    return-void
.end method

.method setEnableNotification(Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lus/zoom/zrc/model/ZRCCheckInOption;->enableNotification:Z

    return-void
.end method

.method setStatus(Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lus/zoom/zrc/model/ZRCCheckInOption;->status:Z

    return-void
.end method

.method setTimeForNoCheckInRelease(I)V
    .locals 0

    .line 28
    iput p1, p0, Lus/zoom/zrc/model/ZRCCheckInOption;->timeForNoCheckInRelease:I

    return-void
.end method

.method setTimeForPriorCheckIn(I)V
    .locals 0

    .line 24
    iput p1, p0, Lus/zoom/zrc/model/ZRCCheckInOption;->timeForPriorCheckIn:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZRCCheckInOption{status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrc/model/ZRCCheckInOption;->status:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", timeForPriorCheckIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrc/model/ZRCCheckInOption;->timeForPriorCheckIn:I

    int-to-long v1, v1

    .line 87
    invoke-static {v1, v2}, Lus/zoom/zrcsdk/util/ZRCTimeUtils;->logTimeIntervalInSeconds(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timeForNoCheckInRelease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrc/model/ZRCCheckInOption;->timeForNoCheckInRelease:I

    int-to-long v1, v1

    .line 88
    invoke-static {v1, v2}, Lus/zoom/zrcsdk/util/ZRCTimeUtils;->logTimeIntervalInSeconds(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", countForReleaseRecurringMeetings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrc/model/ZRCCheckInOption;->countForReleaseRecurringMeetings:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enableNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrc/model/ZRCCheckInOption;->enableNotification:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
