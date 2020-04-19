.class public Lus/zoom/zrcsdk/model/ZRCMeetingInfo;
.super Ljava/lang/Object;
.source "ZRCMeetingInfo.java"


# static fields
.field private static final MTG_OPTIONS2_ALLOW_USER_REJOIN_AFTER_REMOVE:J = 0x8000000000000L

.field public static final MTG_OPTIONS2_PROMPT_FOR_EMAIL_BEFORE_RECORDING:J = 0x10000000000L

.field public static final MTG_OPTIONS3_ZR_ENABlE_CRC_CALLOUT_ONLY:J = 0x1L

.field private static final MTG_SCHEDULE_OPTION_CHAT_OFF:J = 0x200L


# instance fields
.field private amIOriginalHost:Z

.field private callinCountryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;",
            ">;"
        }
    .end annotation
.end field

.field private callinTSPInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCTSPInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private callingRoomSystemEnabled:Z

.field private calloutCountryCodeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;",
            ">;"
        }
    .end annotation
.end field

.field private calloutType:I

.field private canPutOnHold:Z

.field private contentOfInvitationEmail:Ljava/lang/String;

.field private defaultCallinCountry:Ljava/lang/String;

.field private dialInNumber:Ljava/lang/String;

.field private hostUserType:I

.field private identifyGuestParticipants:Z

.field private internationalNumberUrl:Ljava/lang/String;

.field private isCallinCountryListAvailable:Z

.field private isEncryptedMeeting:Z

.field private isTollfreeCallinListAvailable:Z

.field private isViewOnly:Z

.field private isWaitingRoom:Z

.field private isWebinar:Z

.field private meetingId:Ljava/lang/String;

.field private meetingListItem:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

.field private meetingName:Ljava/lang/String;

.field private meetingNumber:Ljava/lang/String;

.field private meetingPassword:Ljava/lang/String;

.field private meetingType:I

.field private myUserId:I

.field private participantId:I

.field private scheduleOption:J

.field private scheduleOption2:J

.field private scheduleOption3:J

.field private subjectOfInvitationEmail:Ljava/lang/String;

.field private tollFreeNumber:Ljava/lang/String;

.field private tollfreeCallinList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 40
    iput-wide v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->scheduleOption:J

    .line 41
    iput-wide v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->scheduleOption2:J

    .line 42
    iput-wide v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->scheduleOption3:J

    return-void
.end method


# virtual methods
.method public canPutOnHold()Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->canPutOnHold:Z

    return v0
.end method

.method public getCallinCountryList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->callinCountryList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCallinTSPInfoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCTSPInfoItem;",
            ">;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->callinTSPInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCalloutCountryCodeList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->calloutCountryCodeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCalloutType()I
    .locals 1

    .line 135
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->calloutType:I

    return v0
.end method

.method public getContentOfInvitationEmail()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->contentOfInvitationEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultCallinCountry()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->defaultCallinCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getDialInNumber()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->dialInNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getHostUserType()I
    .locals 1

    .line 51
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->hostUserType:I

    return v0
.end method

.method public getInternationalNumberUrl()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->internationalNumberUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMeetingId()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->meetingId:Ljava/lang/String;

    return-object v0
.end method

.method public getMeetingListItem()Lus/zoom/zrcsdk/model/ZRCMeetingListItem;
    .locals 1

    .line 192
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->meetingListItem:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    return-object v0
.end method

.method public getMeetingName()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->meetingName:Ljava/lang/String;

    return-object v0
.end method

.method public getMeetingNumber()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->meetingNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMeetingPassword()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->meetingPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getMeetingType()I
    .locals 1

    .line 147
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->meetingType:I

    return v0
.end method

.method public getMyUserId()I
    .locals 1

    .line 111
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->myUserId:I

    return v0
.end method

.method public getParticipantId()I
    .locals 1

    .line 105
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->participantId:I

    return v0
.end method

.method public getSubjectOfInvitationEmail()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->subjectOfInvitationEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getTollFreeNumber()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->tollFreeNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTollfreeCallinList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->tollfreeCallinList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasScheduleOption()Z
    .locals 5

    .line 200
    iget-wide v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->scheduleOption:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasScheduleOption2()Z
    .locals 5

    .line 204
    iget-wide v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->scheduleOption2:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAllowUserRejoinAfterRemove()Z
    .locals 5

    .line 250
    iget-wide v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->scheduleOption2:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/high16 v2, 0x8000000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAmIOriginalHost()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->amIOriginalHost:Z

    return v0
.end method

.method public isCallinCountryListAvailable()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isCallinCountryListAvailable:Z

    return v0
.end method

.method public isCallingRoomSystemEnabled()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->callingRoomSystemEnabled:Z

    return v0
.end method

.method public isCrcCalloutOnlyEnabled()Z
    .locals 5

    .line 241
    iget-wide v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->scheduleOption3:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEncryptedMeeting()Z
    .locals 1

    .line 254
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isEncryptedMeeting:Z

    return v0
.end method

.method public isIdentifyGuestParticipants()Z
    .locals 1

    .line 229
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->identifyGuestParticipants:Z

    return v0
.end method

.method public isMeetingChatEnabled()Z
    .locals 5

    .line 246
    iget-wide v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->scheduleOption:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/16 v2, 0x200

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSupportSilentModeMeeting()Z
    .locals 1

    .line 221
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isWaitingRoom:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->canPutOnHold:Z

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

.method public isTollfreeCallinListAvailable()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isTollfreeCallinListAvailable:Z

    return v0
.end method

.method public isViewOnly()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isViewOnly:Z

    return v0
.end method

.method public isWaitingRoom()Z
    .locals 1

    .line 213
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isWaitingRoom:Z

    return v0
.end method

.method public isWebinar()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isWebinar:Z

    return v0
.end method

.method public scheduleOption2PromptForEmailBeforeRecording()Z
    .locals 5

    .line 208
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->hasScheduleOption2()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, 0x10000000000L

    iget-wide v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->scheduleOption2:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAmIOriginalHost(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->amIOriginalHost:Z

    return-void
.end method

.method public setCallinCountryList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;",
            ">;)V"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->callinCountryList:Ljava/util/ArrayList;

    return-void
.end method

.method public setCallinCountryListAvailable(Z)V
    .locals 0

    .line 162
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isCallinCountryListAvailable:Z

    return-void
.end method

.method public setCallinTSPInfoList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCTSPInfoItem;",
            ">;)V"
        }
    .end annotation

    .line 237
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->callinTSPInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method public setCallingRoomSystemEnabled(Z)V
    .locals 0

    .line 168
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->callingRoomSystemEnabled:Z

    return-void
.end method

.method public setCalloutCountryCodeList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;",
            ">;)V"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->calloutCountryCodeList:Ljava/util/ArrayList;

    return-void
.end method

.method public setCalloutType(I)V
    .locals 0

    .line 138
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->calloutType:I

    return-void
.end method

.method public setContentOfInvitationEmail(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->contentOfInvitationEmail:Ljava/lang/String;

    return-void
.end method

.method public setDefaultCallinCountry(Ljava/lang/String;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->defaultCallinCountry:Ljava/lang/String;

    return-void
.end method

.method public setDialInNumber(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->dialInNumber:Ljava/lang/String;

    return-void
.end method

.method public setHostUserType(I)V
    .locals 0

    .line 54
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->hostUserType:I

    return-void
.end method

.method public setInternationalNumberUrl(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->internationalNumberUrl:Ljava/lang/String;

    return-void
.end method

.method public setMeetingId(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->meetingId:Ljava/lang/String;

    return-void
.end method

.method public setMeetingListItem(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->meetingListItem:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    return-void
.end method

.method public setMeetingNumber(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->meetingNumber:Ljava/lang/String;

    return-void
.end method

.method public setMeetingPassword(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->meetingPassword:Ljava/lang/String;

    return-void
.end method

.method public setMeetingType(I)V
    .locals 0

    .line 150
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->meetingType:I

    return-void
.end method

.method public setMyUserId(I)V
    .locals 0

    .line 114
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->myUserId:I

    return-void
.end method

.method public setParticipantId(I)V
    .locals 0

    .line 108
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->participantId:I

    return-void
.end method

.method public setSubjectOfInvitationEmail(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->subjectOfInvitationEmail:Ljava/lang/String;

    return-void
.end method

.method public setTollFreeNumber(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->tollFreeNumber:Ljava/lang/String;

    return-void
.end method

.method public setTollfreeCallinList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;",
            ">;)V"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->tollfreeCallinList:Ljava/util/ArrayList;

    return-void
.end method

.method public setTollfreeCallinListAvailable(Z)V
    .locals 0

    .line 156
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isTollfreeCallinListAvailable:Z

    return-void
.end method

.method public setViewOnly(Z)V
    .locals 0

    .line 180
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isViewOnly:Z

    return-void
.end method

.method public setWebinar(Z)V
    .locals 0

    .line 174
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isWebinar:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 260
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "meetingId"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->meetingId:Ljava/lang/String;

    .line 261
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "meetingNumber"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->meetingNumber:Ljava/lang/String;

    .line 262
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "meetingPassword"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->meetingPassword:Ljava/lang/String;

    .line 263
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "internationalNumberUrl"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->internationalNumberUrl:Ljava/lang/String;

    .line 266
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "participantId"

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->participantId:I

    .line 269
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "myUserId"

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->myUserId:I

    .line 270
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "amIOriginalHost"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->amIOriginalHost:Z

    .line 273
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "calloutType"

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->calloutType:I

    .line 274
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "meetingType"

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->meetingType:I

    .line 276
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "isTollfreeCallinListAvailable"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isTollfreeCallinListAvailable:Z

    .line 277
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "isCallinCountryListAvailable"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isCallinCountryListAvailable:Z

    .line 278
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "callingRoomSystemEnabled"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->callingRoomSystemEnabled:Z

    .line 279
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "isWebinar"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isWebinar:Z

    .line 280
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "isViewOnly"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isViewOnly:Z

    .line 281
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "hostUserType"

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->hostUserType:I

    .line 282
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "defaultCallinCountry"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->defaultCallinCountry:Ljava/lang/String;

    .line 283
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "isWaitingRoom"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isWaitingRoom:Z

    .line 285
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "canPutOnHold"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->canPutOnHold:Z

    .line 286
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "meetingName"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->meetingName:Ljava/lang/String;

    .line 287
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "identifyGuestParticipants"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->identifyGuestParticipants:Z

    .line 288
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "callinTSPInfoList"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->callinTSPInfoList:Ljava/util/ArrayList;

    .line 289
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "crcCalloutOnlyEnabled"

    .line 290
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isCrcCalloutOnlyEnabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "isMeetingChatEnabled"

    .line 291
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isMeetingChatEnabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "isEncryptedMeeting"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isEncryptedMeeting:Z

    .line 292
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
