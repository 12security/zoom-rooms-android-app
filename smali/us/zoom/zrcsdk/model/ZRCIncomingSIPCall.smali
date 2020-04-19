.class public Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;
.super Lus/zoom/zrcsdk/model/ZRCIncomingCall;
.source "ZRCIncomingSIPCall.java"


# instance fields
.field private callId:Ljava/lang/String;

.field private callStartSecond:J

.field private callerID:Lus/zoom/zrcsdk/model/ZRCCallerID;

.field private conferenceInfo:Lus/zoom/zrcsdk/model/ZRCSIPCallConferenceInfo;

.field private isIncomingCall:Z

.field private members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCSIPCallRemoteMember;",
            ">;"
        }
    .end annotation
.end field

.field private originalPeerUri:Ljava/lang/String;

.field private peerDisplayName:Ljava/lang/String;

.field private peerNumber:Ljava/lang/String;

.field private peerUri:Ljava/lang/String;

.field private relatedCallId:Ljava/lang/String;

.field private status:I

.field private thirdPartyDisplayName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lus/zoom/zrcsdk/model/ZRCIncomingCall;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->members:Ljava/util/List;

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->status:I

    return-void
.end method

.method private addMember(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 138
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->members:Ljava/util/List;

    new-instance v1, Lus/zoom/zrcsdk/model/ZRCSIPCallRemoteMember;

    invoke-direct {v1, p1, p2}, Lus/zoom/zrcsdk/model/ZRCSIPCallRemoteMember;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getOriginalPeerUri()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->originalPeerUri:Ljava/lang/String;

    return-object v0
.end method

.method public static isSame(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)Z
    .locals 1
    .param p0    # Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 230
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getCallId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    invoke-direct {p1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getOriginalPeerUri()Ljava/lang/String;

    move-result-object p1

    .line 232
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->isInitCall()Z

    move-result p0

    return p0

    .line 235
    :cond_1
    invoke-direct {p0}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getOriginalPeerUri()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 238
    :cond_2
    invoke-virtual {p0, p1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 155
    :cond_0
    instance-of v0, p1, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 158
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    .line 159
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->callId:Ljava/lang/String;

    iget-object p1, p1, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->callId:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->callId:Ljava/lang/String;

    return-object v0
.end method

.method public getCallStartSecond()J
    .locals 2

    .line 198
    iget-wide v0, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->callStartSecond:J

    return-wide v0
.end method

.method public getCallerID()Lus/zoom/zrcsdk/model/ZRCCallerID;
    .locals 1

    .line 115
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->callerID:Lus/zoom/zrcsdk/model/ZRCCallerID;

    return-object v0
.end method

.method public getConferenceInfo()Lus/zoom/zrcsdk/model/ZRCSIPCallConferenceInfo;
    .locals 1

    .line 124
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->conferenceInfo:Lus/zoom/zrcsdk/model/ZRCSIPCallConferenceInfo;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->peerDisplayName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->peerNumber:Ljava/lang/String;

    return-object v0

    .line 60
    :cond_0
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->peerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getElapsedSecond()J
    .locals 4

    .line 215
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->callStartSecond:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getMembers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCSIPCallRemoteMember;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 143
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->members:Ljava/util/List;

    return-object v0
.end method

.method public getPeerDisplayName()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->peerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerNumber()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->peerNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerUri()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->peerUri:Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedCallId()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->relatedCallId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 49
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->status:I

    return v0
.end method

.method public getThirdPartyDisplayName()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->thirdPartyDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    .line 164
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->callId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isConferenceHost()Z
    .locals 1

    .line 64
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->conferenceInfo:Lus/zoom/zrcsdk/model/ZRCSIPCallConferenceInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSIPCallConferenceInfo;->isHost()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIncomingCall()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->isIncomingCall:Z

    return v0
.end method

.method public isInitCall()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->callId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSameCallerWith(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)Z
    .locals 1

    .line 189
    instance-of v0, p1, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 193
    :cond_0
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    .line 194
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getCallId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getCallId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lus/zoom/zrcsdk/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setCallId(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->callId:Ljava/lang/String;

    return-void
.end method

.method public setCallStartSecond(J)V
    .locals 0

    .line 211
    iput-wide p1, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->callStartSecond:J

    return-void
.end method

.method public setCallStartSecondByElapsed(J)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const-wide/16 p1, -0x1

    .line 204
    iput-wide p1, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->callStartSecond:J

    goto :goto_0

    .line 206
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->callStartSecond:J

    :goto_0
    return-void
.end method

.method public setCallerID(Lus/zoom/zrcsdk/model/ZRCCallerID;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->callerID:Lus/zoom/zrcsdk/model/ZRCCallerID;

    return-void
.end method

.method public setConferenceInfo(Lus/zoom/zrcsdk/model/ZRCSIPCallConferenceInfo;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->conferenceInfo:Lus/zoom/zrcsdk/model/ZRCSIPCallConferenceInfo;

    return-void
.end method

.method public setIncomingCall(Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->isIncomingCall:Z

    return-void
.end method

.method public setOriginalPeerUri(Ljava/lang/String;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->originalPeerUri:Ljava/lang/String;

    return-void
.end method

.method public setPeerDisplayName(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->peerDisplayName:Ljava/lang/String;

    return-void
.end method

.method public setPeerNumber(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->peerNumber:Ljava/lang/String;

    return-void
.end method

.method public setPeerUri(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->peerUri:Ljava/lang/String;

    return-void
.end method

.method public setRelatedCallId(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->relatedCallId:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 53
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->status:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 170
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "callId"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->callId:Ljava/lang/String;

    .line 171
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "peerDisplayName"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->peerDisplayName:Ljava/lang/String;

    .line 172
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "peerNumber"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->peerNumber:Ljava/lang/String;

    .line 173
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "peerUri"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->peerUri:Ljava/lang/String;

    .line 174
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "isIncomingCall"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->isIncomingCall:Z

    .line 175
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "callerID"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->callerID:Lus/zoom/zrcsdk/model/ZRCCallerID;

    .line 176
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "conferenceInfo"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->conferenceInfo:Lus/zoom/zrcsdk/model/ZRCSIPCallConferenceInfo;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "members"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->members:Ljava/util/List;

    .line 178
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "callStartSecond"

    iget-wide v2, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->callStartSecond:J

    .line 179
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "relatedCallId"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->relatedCallId:Ljava/lang/String;

    .line 180
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "thirdPartyDisplayName"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->thirdPartyDisplayName:Ljava/lang/String;

    .line 181
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "originalPeerUri"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->originalPeerUri:Ljava/lang/String;

    .line 182
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "status"

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->status:I

    .line 183
    invoke-static {v2}, Lus/zoom/zrcsdk/model/ZRCSIPCallStatus;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateByPreviousCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 5
    .param p1    # Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 42
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->setStatus(I)V

    .line 43
    iget-wide v0, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->callStartSecond:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 44
    iget-wide v0, p1, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->callStartSecond:J

    iput-wide v0, p0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->callStartSecond:J

    :cond_0
    return-void
.end method
