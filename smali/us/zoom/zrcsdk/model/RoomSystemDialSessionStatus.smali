.class public Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;
.super Ljava/lang/Object;
.source "RoomSystemDialSessionStatus.java"


# static fields
.field public static final SITUATION_CALL_MANUALLY:I = 0xc8

.field public static final SITUATION_INVITE_IN_MEETING:I = 0x12c

.field public static final SITUATION_MEETING_LIST:I = 0x64

.field public static final SITUATION_NOT_VALID:I = 0x0

.field public static final StatusAccepted:I = 0x0

.field public static final StatusAcceptedParticipantDataReceived:I = 0x3e9

.field public static final StatusCSExceedFreePort:I = 0x72

.field public static final StatusCalling:I = 0x270e

.field public static final StatusCanceled:I = 0x270f

.field public static final StatusEnd:I = 0x2711

.field public static final StatusFailed:I = 0x3

.field public static final StatusInit:I = -0x1

.field public static final StatusParticipantHasLeft:I = 0x3f2

.field public static final StatusRequestCall:I = 0x6e

.field public static final StatusRequestCancel:I = 0x78

.field public static final StatusRinging:I = 0x1

.field public static final StatusTimeOut:I = 0x2

.field public static final StatusWaitingMeetingStarted:I = 0x64


# instance fields
.field private dtmfKey:Ljava/lang/String;

.field private ipOrE164Number:Ljava/lang/String;

.field private originalMeetingListItem:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

.field private originalThirdPartyMeeting:Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;

.field private previousStatus:I

.field private protocolType:I

.field private serviceProvider:I

.field private situation:I

.field private status:I

.field private userId:I

.field private userName:Ljava/lang/String;

.field private zrcUserChangedEntity:Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->situation:I

    const/16 v0, 0x2711

    .line 110
    iput v0, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->previousStatus:I

    .line 111
    iput v0, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->status:I

    return-void
.end method

.method public static statusToString(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x64

    if-eq p0, v0, :cond_6

    const/16 v0, 0x6e

    if-eq p0, v0, :cond_5

    const/16 v0, 0x72

    if-eq p0, v0, :cond_4

    const/16 v0, 0x78

    if-eq p0, v0, :cond_3

    const/16 v0, 0x3e9

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3f2

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2711

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const-string p0, "Unknown status"

    return-object p0

    :pswitch_0
    const-string p0, "Canceled"

    return-object p0

    :pswitch_1
    const-string p0, "Calling"

    return-object p0

    :pswitch_2
    const-string p0, "Failed"

    return-object p0

    :pswitch_3
    const-string p0, "TimeOut"

    return-object p0

    :pswitch_4
    const-string p0, "Ringing"

    return-object p0

    :pswitch_5
    const-string p0, "Accepted"

    return-object p0

    :pswitch_6
    const-string p0, "Init"

    return-object p0

    :cond_0
    const-string p0, "End"

    return-object p0

    :cond_1
    const-string p0, "ParticipantHasLeft"

    return-object p0

    :cond_2
    const-string p0, "AcceptedParticipantDataReceived"

    return-object p0

    :cond_3
    const-string p0, "RequestCancel"

    return-object p0

    :cond_4
    const-string p0, "CSExceedFreePort"

    return-object p0

    :cond_5
    const-string p0, "RequestCall"

    return-object p0

    :cond_6
    const-string p0, "WaitingMeetingStarted"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x270e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public canCall()Z
    .locals 2

    .line 243
    iget v0, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->status:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/16 v1, 0x270f

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3f2

    if-eq v0, v1, :cond_0

    const/16 v1, 0x72

    if-ne v0, v1, :cond_1

    .line 252
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->isDataValidToCall()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canCancelCall()Z
    .locals 3

    .line 265
    iget v0, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->status:I

    const/4 v1, 0x1

    const/16 v2, 0x270e

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    .line 267
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->isDataValidToCall()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public cloneBasicData()Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;
    .locals 2

    .line 337
    new-instance v0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;-><init>()V

    .line 338
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getIpOrE164Number()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->setIpOrE164Number(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getDtmfKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->setDtmfKey(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getServiceProvider()I

    move-result v1

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->setServiceProvider(I)V

    .line 341
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getProtocolType()I

    move-result v1

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->setProtocolType(I)V

    return-object v0
.end method

.method public getAddressToCall()Ljava/lang/String;
    .locals 4

    .line 302
    iget v0, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->protocolType:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 303
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getIpOrE164Number()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 305
    :cond_0
    iget-object v0, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->dtmfKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getIpOrE164Number()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 308
    :cond_1
    iget v0, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->serviceProvider:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    .line 312
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getIpOrE164Number()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "%s##%s"

    .line 310
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getIpOrE164Number()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getDtmfKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDtmfKey()Ljava/lang/String;
    .locals 1

    .line 321
    iget-object v0, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->dtmfKey:Ljava/lang/String;

    return-object v0
.end method

.method public getIpOrE164Number()Ljava/lang/String;
    .locals 1

    .line 298
    iget-object v0, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->ipOrE164Number:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalMeetingListItem()Lus/zoom/zrcsdk/model/ZRCMeetingListItem;
    .locals 1

    .line 144
    iget-object v0, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->originalMeetingListItem:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    return-object v0
.end method

.method public getOriginalThirdPartyMeeting()Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;
    .locals 1

    .line 136
    iget-object v0, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->originalThirdPartyMeeting:Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;

    return-object v0
.end method

.method public getPreviousStatus()I
    .locals 1

    .line 286
    iget v0, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->previousStatus:I

    return v0
.end method

.method public getProtocolType()I
    .locals 1

    .line 290
    iget v0, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->protocolType:I

    return v0
.end method

.method public getServiceProvider()I
    .locals 1

    .line 152
    iget v0, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->serviceProvider:I

    return v0
.end method

.method public getSituation()I
    .locals 1

    .line 160
    iget v0, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->situation:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 271
    iget v0, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->status:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .line 186
    iget v0, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->userId:I

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserNameToDisplay()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 196
    iget-object v0, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->userName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getAddressToCall()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->userName:Ljava/lang/String;

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public getZrcUserChangedEntity()Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;
    .locals 1

    .line 208
    iget-object v0, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->zrcUserChangedEntity:Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;

    return-object v0
.end method

.method public isAutoConnectGateway()Z
    .locals 2

    .line 224
    iget v0, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->situation:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCallingStarted()Z
    .locals 3

    .line 256
    iget v0, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->status:I

    const/4 v1, 0x1

    const/16 v2, 0x6e

    if-eq v0, v2, :cond_1

    const/16 v2, 0x270e

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isDataValidToCall()Z
    .locals 1

    .line 332
    iget v0, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->protocolType:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->ipOrE164Number:Ljava/lang/String;

    .line 333
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInUISession()Z
    .locals 2

    .line 181
    iget v0, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->situation:I

    if-eqz v0, :cond_0

    iget v0, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->status:I

    const/16 v1, 0x2711

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSituationInMeeting()Z
    .locals 2

    .line 168
    iget v0, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->situation:I

    const/16 v1, 0x12c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSituationMeetingListAndError()Z
    .locals 2

    .line 172
    iget v0, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->situation:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    iget v0, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->status:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/16 v1, 0x270f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x72

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDtmfKey(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "-"

    const-string v1, ""

    .line 326
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 328
    :cond_0
    iput-object p1, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->dtmfKey:Ljava/lang/String;

    return-void
.end method

.method public setIpOrE164Number(Ljava/lang/String;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->ipOrE164Number:Ljava/lang/String;

    return-void
.end method

.method public setOriginalMeetingListItem(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->originalMeetingListItem:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    return-void
.end method

.method public setOriginalThirdPartyMeeting(Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->originalThirdPartyMeeting:Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;

    return-void
.end method

.method public setProtocolType(I)V
    .locals 0

    .line 294
    iput p1, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->protocolType:I

    return-void
.end method

.method public setServiceProvider(I)V
    .locals 0

    .line 156
    iput p1, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->serviceProvider:I

    return-void
.end method

.method public setSituation(I)V
    .locals 0

    .line 164
    iput p1, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->situation:I

    return-void
.end method

.method public setStatus(I)V
    .locals 1

    .line 278
    iget v0, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->status:I

    iput v0, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->previousStatus:I

    .line 279
    iput p1, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->status:I

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    .line 212
    iput p1, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->userId:I

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->userName:Ljava/lang/String;

    return-void
.end method

.method public setZrcUserChangedEntity(Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->zrcUserChangedEntity:Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;

    return-void
.end method

.method public shouldSimulateDial()Z
    .locals 6

    .line 232
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->isAutoConnectGateway()Z

    move-result v0

    .line 236
    iget v1, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->protocolType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 237
    :goto_0
    iget v4, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->serviceProvider:I

    if-ne v4, v3, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 238
    :goto_1
    iget-object v5, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->dtmfKey:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v3

    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    and-int v0, v4, v5

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    :goto_2
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RoomSystemDialSessionStatus{status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", protocolType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->protocolType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ipOrE164Number=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->ipOrE164Number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dtmfKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->dtmfKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
