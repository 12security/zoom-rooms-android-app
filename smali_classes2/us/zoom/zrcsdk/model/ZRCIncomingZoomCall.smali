.class public Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;
.super Lus/zoom/zrcsdk/model/ZRCIncomingCall;
.source "ZRCIncomingZoomCall.java"


# instance fields
.field private calleeJid:Ljava/lang/String;

.field private callerAvatarUrl:Ljava/lang/String;

.field private callerJid:Ljava/lang/String;

.field private callerName:Ljava/lang/String;

.field private expireTime:J

.field private lifeTime:I

.field private meetingId:Ljava/lang/String;

.field private meetingNumber:J

.field private meetingOptions:J

.field private password:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lus/zoom/zrcsdk/model/ZRCIncomingCall;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lus/zoom/zrcsdk/model/ZRCIncomingCall;-><init>()V

    .line 29
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->callerJid:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->callerName:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->callerAvatarUrl:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->calleeJid:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->meetingId:Ljava/lang/String;

    .line 34
    iput-object p6, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->password:Ljava/lang/String;

    .line 35
    iput-wide p7, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->meetingOptions:J

    .line 36
    iput-wide p9, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->meetingNumber:J

    .line 37
    iput p11, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->lifeTime:I

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    mul-int/lit16 p11, p11, 0x3e8

    int-to-long p3, p11

    add-long/2addr p1, p3

    iput-wide p1, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->expireTime:J

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

    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 126
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;

    .line 127
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->callerJid:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->callerJid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->callerName:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->callerName:Ljava/lang/String;

    .line 128
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->callerAvatarUrl:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->callerAvatarUrl:Ljava/lang/String;

    .line 129
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->calleeJid:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->calleeJid:Ljava/lang/String;

    .line 130
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->meetingId:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->meetingId:Ljava/lang/String;

    .line 131
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->password:Ljava/lang/String;

    iget-object p1, p1, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->password:Ljava/lang/String;

    .line 132
    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getCalleeJid()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->calleeJid:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerAvatarUrl()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->callerAvatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerJid()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->callerJid:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->callerName:Ljava/lang/String;

    return-object v0
.end method

.method public getExpireTime()J
    .locals 2

    .line 115
    iget-wide v0, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->expireTime:J

    return-wide v0
.end method

.method public getLifeTime()I
    .locals 1

    .line 107
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->lifeTime:I

    return v0
.end method

.method public getMeetingId()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->meetingId:Ljava/lang/String;

    return-object v0
.end method

.method public getMeetingNumber()J
    .locals 2

    .line 99
    iget-wide v0, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->meetingNumber:J

    return-wide v0
.end method

.method public getMeetingOptions()J
    .locals 2

    .line 91
    iget-wide v0, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->meetingOptions:J

    return-wide v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->password:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x9

    .line 137
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->callerJid:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->callerName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->callerAvatarUrl:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->calleeJid:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->meetingId:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->password:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-wide v1, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->meetingOptions:J

    .line 143
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-wide v1, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->meetingNumber:J

    .line 144
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->lifeTime:I

    .line 145
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 137
    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isSameCallerWith(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)Z
    .locals 1

    .line 166
    instance-of v0, p1, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 170
    :cond_0
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;

    .line 171
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->getCallerJid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->getCallerJid()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lus/zoom/zrcsdk/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setCalleeJid(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->calleeJid:Ljava/lang/String;

    return-void
.end method

.method public setCallerAvatarUrl(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->callerAvatarUrl:Ljava/lang/String;

    return-void
.end method

.method public setCallerJid(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->callerJid:Ljava/lang/String;

    return-void
.end method

.method public setCallerName(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->callerName:Ljava/lang/String;

    return-void
.end method

.method public setExpireTime(J)V
    .locals 0

    .line 119
    iput-wide p1, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->expireTime:J

    return-void
.end method

.method public setLifeTime(I)V
    .locals 0

    .line 111
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->lifeTime:I

    return-void
.end method

.method public setMeetingId(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->meetingId:Ljava/lang/String;

    return-void
.end method

.method public setMeetingNumber(J)V
    .locals 0

    .line 103
    iput-wide p1, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->meetingNumber:J

    return-void
.end method

.method public setMeetingOptions(J)V
    .locals 0

    .line 95
    iput-wide p1, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->meetingOptions:J

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->password:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 150
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "callerJid"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->callerJid:Ljava/lang/String;

    .line 151
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "callerName"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->callerName:Ljava/lang/String;

    .line 152
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "callerAvatarUrl"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->callerAvatarUrl:Ljava/lang/String;

    .line 153
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "calleeJid"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->calleeJid:Ljava/lang/String;

    .line 154
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "meetingId"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->meetingId:Ljava/lang/String;

    .line 155
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "password"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->password:Ljava/lang/String;

    .line 156
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "meetingOptions"

    iget-wide v2, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->meetingOptions:J

    .line 157
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "meetingNumber"

    iget-wide v2, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->meetingNumber:J

    .line 158
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "lifeTime"

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->lifeTime:I

    .line 159
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "expireTime"

    iget-wide v2, p0, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;->expireTime:J

    .line 160
    invoke-static {v2, v3}, Lus/zoom/zrcsdk/util/ZRCTimeUtils;->logTimeInMillis(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
