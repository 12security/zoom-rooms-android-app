.class public Lus/zoom/zrcsdk/model/ZRCParticipant;
.super Ljava/lang/Object;
.source "ZRCParticipant.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lus/zoom/zrcsdk/model/ZRCParticipant;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private audioStatus:Lus/zoom/zrcsdk/model/ZRCAudioStatus;

.field private avatarUrl:Ljava/lang/String;

.field private cameraControlStatus:Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;

.field private canEditClosedCaption:Z

.field private canRecord:Z

.field private handStatus:Lus/zoom/zrcsdk/model/ZRCHandStatus;

.field private host:Z

.field private isClientSupportClosedCaption:Z

.field private isClientSupportCoHost:Z

.field private isCohost:Z

.field private isGuest:Z

.field private isInSilentMode:Z

.field private isMyself:Z

.field private isRecording:Z

.field private isSupportSilentMode:Z

.field private isVideoCanMuteByHost:Z

.field private isVideoCanUnmuteByHost:Z

.field private recordingDisabled:Z

.field private userId:I

.field private userName:Ljava/lang/String;

.field private userType:I

.field private videoStatus:Lus/zoom/zrcsdk/model/ZRCVideoStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;ZZLjava/lang/String;ZZZLus/zoom/zrcsdk/model/ZRCAudioStatus;Lus/zoom/zrcsdk/model/ZRCVideoStatus;Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;ZZZ)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->userType:I

    .line 45
    iput p2, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->userId:I

    .line 46
    iput-object p3, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->userName:Ljava/lang/String;

    .line 47
    iput-boolean p4, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->host:Z

    .line 48
    iput-boolean p5, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isMyself:Z

    .line 49
    iput-object p6, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->avatarUrl:Ljava/lang/String;

    .line 50
    iput-boolean p7, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->canRecord:Z

    .line 51
    iput-boolean p9, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->recordingDisabled:Z

    .line 52
    iput-boolean p8, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isRecording:Z

    .line 53
    iput-object p10, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->audioStatus:Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    .line 54
    iput-object p11, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->videoStatus:Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    .line 55
    iput-object p12, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->cameraControlStatus:Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;

    .line 56
    iput-boolean p13, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isVideoCanMuteByHost:Z

    .line 57
    iput-boolean p14, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isVideoCanUnmuteByHost:Z

    .line 58
    iput-boolean p15, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isCohost:Z

    return-void
.end method


# virtual methods
.method public canEditClosedCaption()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->canEditClosedCaption:Z

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 8
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {p0, p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->compareTo(Lus/zoom/zrcsdk/model/ZRCParticipant;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lus/zoom/zrcsdk/model/ZRCParticipant;)I
    .locals 8

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 163
    :cond_0
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isMyself:Z

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isMyself()Z

    move-result v2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    .line 164
    iget-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isMyself:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 166
    :cond_2
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->host:Z

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isHost()Z

    move-result v2

    if-eq v1, v2, :cond_4

    .line 167
    iget-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->host:Z

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 170
    :cond_4
    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->handStatus:Lus/zoom/zrcsdk/model/ZRCHandStatus;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCHandStatus;->isRaiseHand()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 171
    :goto_2
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getHandStatus()Lus/zoom/zrcsdk/model/ZRCHandStatus;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getHandStatus()Lus/zoom/zrcsdk/model/ZRCHandStatus;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/ZRCHandStatus;->isRaiseHand()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    if-eq v1, v4, :cond_8

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_8
    if-eqz v1, :cond_a

    if-eqz v4, :cond_a

    .line 177
    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->handStatus:Lus/zoom/zrcsdk/model/ZRCHandStatus;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCHandStatus;->getTimeStamp()J

    move-result-wide v4

    .line 178
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getHandStatus()Lus/zoom/zrcsdk/model/ZRCHandStatus;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCHandStatus;->getTimeStamp()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gez v1, :cond_9

    return v0

    :cond_9
    cmp-long v1, v4, v6

    if-lez v1, :cond_a

    return v3

    .line 187
    :cond_a
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isCohost:Z

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isCohost()Z

    move-result v4

    if-eq v1, v4, :cond_c

    .line 188
    iget-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isCohost:Z

    if-eqz p1, :cond_b

    goto :goto_5

    :cond_b
    const/4 v0, 0x1

    :goto_5
    return v0

    .line 191
    :cond_c
    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->videoStatus:Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->isSending()Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_6

    :cond_d
    const/4 v1, 0x0

    .line 192
    :goto_6
    iget-object v4, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->videoStatus:Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->isSending()Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v4, 0x1

    goto :goto_7

    :cond_e
    const/4 v4, 0x0

    :goto_7
    if-eq v1, v4, :cond_10

    if-eqz v1, :cond_f

    goto :goto_8

    :cond_f
    const/4 v0, 0x1

    :goto_8
    return v0

    .line 197
    :cond_10
    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->videoStatus:Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->isHasSource()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_9

    :cond_11
    const/4 v1, 0x0

    .line 198
    :goto_9
    iget-object v4, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->videoStatus:Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->isHasSource()Z

    move-result v4

    if-eqz v4, :cond_12

    const/4 v4, 0x1

    goto :goto_a

    :cond_12
    const/4 v4, 0x0

    :goto_a
    if-eq v1, v4, :cond_14

    if-eqz v1, :cond_13

    goto :goto_b

    :cond_13
    const/4 v0, 0x1

    :goto_b
    return v0

    .line 203
    :cond_14
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->userName:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v1, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->userName:Ljava/lang/String;

    if-eqz v1, :cond_15

    .line 204
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->userName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_15
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 308
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 309
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCParticipant;

    .line 310
    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->userType:I

    iget v3, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->userType:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->userId:I

    iget v3, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->userId:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->host:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->host:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isMyself:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->isMyself:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->canRecord:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->canRecord:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isRecording:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->isRecording:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->recordingDisabled:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->recordingDisabled:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isVideoCanMuteByHost:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->isVideoCanMuteByHost:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isVideoCanUnmuteByHost:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->isVideoCanUnmuteByHost:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isCohost:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->isCohost:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isClientSupportClosedCaption:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->isClientSupportClosedCaption:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->canEditClosedCaption:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->canEditClosedCaption:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isClientSupportCoHost:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->isClientSupportCoHost:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isInSilentMode:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->isInSilentMode:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isSupportSilentMode:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->isSupportSilentMode:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isGuest:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->isGuest:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->userName:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->userName:Ljava/lang/String;

    .line 326
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->avatarUrl:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->avatarUrl:Ljava/lang/String;

    .line 327
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->audioStatus:Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->audioStatus:Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    .line 328
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->videoStatus:Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->videoStatus:Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    .line 329
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->cameraControlStatus:Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->cameraControlStatus:Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;

    .line 330
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->handStatus:Lus/zoom/zrcsdk/model/ZRCHandStatus;

    iget-object p1, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->handStatus:Lus/zoom/zrcsdk/model/ZRCHandStatus;

    .line 331
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

.method public getAudioStatus()Lus/zoom/zrcsdk/model/ZRCAudioStatus;
    .locals 1

    .line 130
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->audioStatus:Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCameraControlStatus()Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;
    .locals 1

    .line 146
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->cameraControlStatus:Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;

    return-object v0
.end method

.method public getHandStatus()Lus/zoom/zrcsdk/model/ZRCHandStatus;
    .locals 1

    .line 267
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->handStatus:Lus/zoom/zrcsdk/model/ZRCHandStatus;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .line 70
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->userId:I

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserType()I
    .locals 1

    .line 62
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->userType:I

    return v0
.end method

.method public getVideoStatus()Lus/zoom/zrcsdk/model/ZRCVideoStatus;
    .locals 1

    .line 138
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->videoStatus:Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x16

    .line 336
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->userType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->userName:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->host:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isMyself:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->avatarUrl:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->canRecord:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isRecording:Z

    .line 337
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->audioStatus:Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->videoStatus:Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->recordingDisabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isVideoCanMuteByHost:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isVideoCanUnmuteByHost:Z

    .line 338
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isCohost:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->cameraControlStatus:Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isClientSupportClosedCaption:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->canEditClosedCaption:Z

    .line 339
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isClientSupportCoHost:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isInSilentMode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isSupportSilentMode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isGuest:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->handStatus:Lus/zoom/zrcsdk/model/ZRCHandStatus;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 336
    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isCanRecord()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->canRecord:Z

    return v0
.end method

.method public isClientSupportClosedCaption()Z
    .locals 1

    .line 243
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isClientSupportClosedCaption:Z

    return v0
.end method

.method public isClientSupportCoHost()Z
    .locals 1

    .line 259
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isClientSupportCoHost:Z

    return v0
.end method

.method public isCohost()Z
    .locals 1

    .line 235
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isCohost:Z

    return v0
.end method

.method public isGuest()Z
    .locals 1

    .line 263
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isGuest:Z

    return v0
.end method

.method public isHost()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->host:Z

    return v0
.end method

.method public isHostOrCoHost()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->host:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isCohost:Z

    if-eqz v0, :cond_0

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

.method public isInSilentMode()Z
    .locals 1

    .line 251
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isInSilentMode:Z

    return v0
.end method

.method public isMyself()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isMyself:Z

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isRecording:Z

    return v0
.end method

.method public isRecordingDisabled()Z
    .locals 1

    .line 211
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->recordingDisabled:Z

    return v0
.end method

.method public isSameAs(I)Z
    .locals 1

    .line 154
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->userId:I

    shr-int/lit8 v0, v0, 0xa

    shr-int/lit8 p1, p1, 0xa

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSupportSilentMode()Z
    .locals 1

    .line 255
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isSupportSilentMode:Z

    return v0
.end method

.method public isVideoCanMuteByHost()Z
    .locals 1

    .line 219
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isVideoCanMuteByHost:Z

    return v0
.end method

.method public isVideoCanUnmuteByHost()Z
    .locals 1

    .line 227
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isVideoCanUnmuteByHost:Z

    return v0
.end method

.method public mutableCopy()Lus/zoom/zrcsdk/model/ZRCParticipant;
    .locals 1

    .line 343
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/ZRCParticipant;-><init>()V

    .line 344
    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/model/ZRCParticipant;->update(Lus/zoom/zrcsdk/model/ZRCParticipant;)V

    return-object v0
.end method

.method public setAudioStatus(Lus/zoom/zrcsdk/model/ZRCAudioStatus;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->audioStatus:Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    return-void
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->avatarUrl:Ljava/lang/String;

    return-void
.end method

.method public setCameraControlStatus(Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->cameraControlStatus:Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;

    return-void
.end method

.method public setCanRecord(Z)V
    .locals 0

    .line 118
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->canRecord:Z

    return-void
.end method

.method public setCohost(Z)V
    .locals 0

    .line 239
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isCohost:Z

    return-void
.end method

.method public setHost(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->host:Z

    return-void
.end method

.method public setMyself(Z)V
    .locals 0

    .line 102
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isMyself:Z

    return-void
.end method

.method public setRecording(Z)V
    .locals 0

    .line 126
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isRecording:Z

    return-void
.end method

.method public setRecordingDisabled(Z)V
    .locals 0

    .line 215
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->recordingDisabled:Z

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    .line 74
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->userId:I

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->userName:Ljava/lang/String;

    return-void
.end method

.method public setUserType(I)V
    .locals 0

    .line 66
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->userType:I

    return-void
.end method

.method public setVideoCanMuteByHost(Z)V
    .locals 0

    .line 223
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isVideoCanMuteByHost:Z

    return-void
.end method

.method public setVideoCanUnmuteByHost(Z)V
    .locals 0

    .line 231
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isVideoCanUnmuteByHost:Z

    return-void
.end method

.method public setVideoStatus(Lus/zoom/zrcsdk/model/ZRCVideoStatus;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->videoStatus:Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZRCParticipant{userType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->userType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", host="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->host:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isMyself="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isMyself:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", avatarUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", canRecord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->canRecord:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isRecording="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isRecording:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", audioStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->audioStatus:Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->videoStatus:Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", recordingDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->recordingDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isVideoCanMuteByHost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isVideoCanMuteByHost:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isVideoCanUnmuteByHost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isVideoCanUnmuteByHost:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCohost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isCohost:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cameraControlStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->cameraControlStatus:Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isClientSupportClosedCaption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isClientSupportClosedCaption:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canEditClosedCaption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->canEditClosedCaption:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isClientSupportCoHost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isClientSupportCoHost:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isInSilentMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isInSilentMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSupportSilentMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isSupportSilentMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isGuest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isGuest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", handStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->handStatus:Lus/zoom/zrcsdk/model/ZRCHandStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lus/zoom/zrcsdk/model/ZRCParticipant;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 273
    :cond_0
    iget v0, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->userType:I

    iput v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->userType:I

    .line 274
    iget v0, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->userId:I

    iput v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->userId:I

    .line 275
    iget-object v0, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->userName:Ljava/lang/String;

    iput-object v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->userName:Ljava/lang/String;

    .line 276
    iget-boolean v0, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->host:Z

    iput-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->host:Z

    .line 277
    iget-boolean v0, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->isMyself:Z

    iput-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isMyself:Z

    .line 278
    iget-object v0, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->avatarUrl:Ljava/lang/String;

    iput-object v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->avatarUrl:Ljava/lang/String;

    .line 279
    iget-boolean v0, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->canRecord:Z

    iput-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->canRecord:Z

    .line 280
    iget-boolean v0, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->recordingDisabled:Z

    iput-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->recordingDisabled:Z

    .line 281
    iget-boolean v0, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->isRecording:Z

    iput-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isRecording:Z

    .line 282
    iget-boolean v0, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->isVideoCanMuteByHost:Z

    iput-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isVideoCanMuteByHost:Z

    .line 283
    iget-boolean v0, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->isVideoCanUnmuteByHost:Z

    iput-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isVideoCanUnmuteByHost:Z

    .line 284
    iget-boolean v0, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->isCohost:Z

    iput-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isCohost:Z

    .line 285
    iget-boolean v0, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->isClientSupportCoHost:Z

    iput-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isClientSupportCoHost:Z

    .line 286
    iget-boolean v0, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->isClientSupportClosedCaption:Z

    iput-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isClientSupportClosedCaption:Z

    .line 287
    iget-boolean v0, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->canEditClosedCaption:Z

    iput-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->canEditClosedCaption:Z

    .line 288
    iget-boolean v0, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->isInSilentMode:Z

    iput-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isInSilentMode:Z

    .line 289
    iget-boolean v0, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->isSupportSilentMode:Z

    iput-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isSupportSilentMode:Z

    .line 290
    iget-boolean v0, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->isGuest:Z

    iput-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->isGuest:Z

    .line 291
    iget-object v0, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->audioStatus:Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    new-instance v2, Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    invoke-direct {v2, v0}, Lus/zoom/zrcsdk/model/ZRCAudioStatus;-><init>(Lus/zoom/zrcsdk/model/ZRCAudioStatus;)V

    :goto_0
    iput-object v2, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->audioStatus:Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    .line 294
    iget-object v0, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->videoStatus:Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    if-nez v0, :cond_2

    move-object v2, v1

    goto :goto_1

    :cond_2
    new-instance v2, Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    invoke-direct {v2, v0}, Lus/zoom/zrcsdk/model/ZRCVideoStatus;-><init>(Lus/zoom/zrcsdk/model/ZRCVideoStatus;)V

    :goto_1
    iput-object v2, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->videoStatus:Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    .line 297
    iget-object v0, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->cameraControlStatus:Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;

    if-nez v0, :cond_3

    move-object v2, v1

    goto :goto_2

    :cond_3
    new-instance v2, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;

    invoke-direct {v2, v0}, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;-><init>(Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;)V

    :goto_2
    iput-object v2, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->cameraControlStatus:Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;

    .line 300
    iget-object p1, p1, Lus/zoom/zrcsdk/model/ZRCParticipant;->handStatus:Lus/zoom/zrcsdk/model/ZRCHandStatus;

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    new-instance v1, Lus/zoom/zrcsdk/model/ZRCHandStatus;

    invoke-direct {v1, p1}, Lus/zoom/zrcsdk/model/ZRCHandStatus;-><init>(Lus/zoom/zrcsdk/model/ZRCHandStatus;)V

    :goto_3
    iput-object v1, p0, Lus/zoom/zrcsdk/model/ZRCParticipant;->handStatus:Lus/zoom/zrcsdk/model/ZRCHandStatus;

    return-void
.end method
