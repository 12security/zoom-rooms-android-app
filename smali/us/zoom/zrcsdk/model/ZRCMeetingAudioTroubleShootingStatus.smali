.class public Lus/zoom/zrcsdk/model/ZRCMeetingAudioTroubleShootingStatus;
.super Ljava/lang/Object;
.source "ZRCMeetingAudioTroubleShootingStatus.java"


# instance fields
.field private is_record:Z

.field private timeStamp:J

.field private time_left:I

.field private total_duration:I


# direct methods
.method public constructor <init>(ZII)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingAudioTroubleShootingStatus;->is_record:Z

    .line 22
    iput p2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingAudioTroubleShootingStatus;->total_duration:I

    .line 23
    iput p3, p0, Lus/zoom/zrcsdk/model/ZRCMeetingAudioTroubleShootingStatus;->time_left:I

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingAudioTroubleShootingStatus;->timeStamp:J

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

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 63
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCMeetingAudioTroubleShootingStatus;

    .line 64
    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingAudioTroubleShootingStatus;->is_record:Z

    iget-boolean p1, p1, Lus/zoom/zrcsdk/model/ZRCMeetingAudioTroubleShootingStatus;->is_record:Z

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

.method public getTimeStamp()J
    .locals 2

    .line 52
    iget-wide v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingAudioTroubleShootingStatus;->timeStamp:J

    return-wide v0
.end method

.method public getTime_left()I
    .locals 1

    .line 44
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingAudioTroubleShootingStatus;->time_left:I

    return v0
.end method

.method public getTotal_duration()I
    .locals 1

    .line 36
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingAudioTroubleShootingStatus;->total_duration:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    .line 69
    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingAudioTroubleShootingStatus;->is_record:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public is_record()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingAudioTroubleShootingStatus;->is_record:Z

    return v0
.end method

.method public setIs_record(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingAudioTroubleShootingStatus;->is_record:Z

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0

    .line 56
    iput-wide p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingAudioTroubleShootingStatus;->timeStamp:J

    return-void
.end method

.method public setTime_left(I)V
    .locals 0

    .line 48
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingAudioTroubleShootingStatus;->time_left:I

    return-void
.end method

.method public setTotal_duration(I)V
    .locals 0

    .line 40
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingAudioTroubleShootingStatus;->total_duration:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 75
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "is_record"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingAudioTroubleShootingStatus;->is_record:Z

    .line 76
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "total_duration"

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingAudioTroubleShootingStatus;->total_duration:I

    int-to-long v2, v2

    .line 77
    invoke-static {v2, v3}, Lus/zoom/zrcsdk/util/ZRCTimeUtils;->logTimeIntervalInSeconds(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "time_left"

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingAudioTroubleShootingStatus;->time_left:I

    int-to-long v2, v2

    .line 78
    invoke-static {v2, v3}, Lus/zoom/zrcsdk/util/ZRCTimeUtils;->logTimeIntervalInSeconds(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "timeStamp"

    iget-wide v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingAudioTroubleShootingStatus;->timeStamp:J

    .line 79
    invoke-static {v2, v3}, Lus/zoom/zrcsdk/util/ZRCTimeUtils;->logTimeInSeconds(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
