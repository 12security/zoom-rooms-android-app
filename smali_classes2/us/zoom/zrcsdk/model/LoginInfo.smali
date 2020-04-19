.class public Lus/zoom/zrcsdk/model/LoginInfo;
.super Ljava/lang/Object;
.source "LoginInfo.java"


# instance fields
.field private accountID:Ljava/lang/String;

.field private autoEndScheduleMeeting:Z

.field private autoStartScheduleMeeting:Z

.field private billingType:I

.field private calendarRefreshInterval:I

.field private calendarRefreshTokenExpired:Z

.field private calendarType:I

.field private callHistoryDisabled:Z

.field private calloutCountryCodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/CountryCode;",
            ">;"
        }
    .end annotation
.end field

.field private calloutType:I

.field private checkInStatus:Z

.field private countForReleaseRecurringMeetings:I

.field private crcCalloutOnlyEnabled:Z

.field private defaultCallinCountry:Ljava/lang/String;

.field private disableNextMeetingAlert:Z

.field private disableNextMeetingAlertInMeeting:Z

.field private disableNextMeetingAlertOnController:Z

.field private disableNextMeetingAlertOnTV:Z

.field private firstName:Ljava/lang/String;

.field private forcePrivateMeeting:Z

.field private freeTrialDays:I

.field private h323Enabled:Z

.field private hideContactList:Z

.field private hideHostInfoForPrivateMeeting:Z

.field private iOSSharingDisabled:Z

.field private isCheckInEnableNotification:Z

.field private isStandaloneDigitalSignage:Z

.field private isStandaloneZRP:Z

.field private operationTimeDays:I

.field private operationTimeEnd:J

.field private operationTimeOptions:J

.field private operationTimeStart:J

.field private passcode:Ljava/lang/String;

.field private postMeetingFeedbackEnabled:Z

.field private publicRoomEnabled:Z

.field private releaseNotesRefreshInterval:J

.field private reserveOtherRoomInLocation:I

.field private roomJid:Ljava/lang/String;

.field private roomLogicEmail:Ljava/lang/String;

.field private roomName:Ljava/lang/String;

.field private roomSupportEmail:Ljava/lang/String;

.field private roomSupportPhone:Ljava/lang/String;

.field private speakerVolumeControlLocked:Z

.field private supportDialToThirdPartyMeeting:Z

.field private timeForNoCheckInRelease:I

.field private timeForPriorCheckIn:I

.field private ultrasonicDisabled:Z

.field private userID:Ljava/lang/String;

.field private workEmailSubType:I

.field private zoomPresenceAddress:Ljava/lang/String;

.field private zoomPresenceToken:Ljava/lang/String;

.field private zoomToken:Ljava/lang/String;

.field private zrSharedCustomHdmiText:Ljava/lang/String;

.field private zrpBackgroundImgUrl:Ljava/lang/String;

.field private zrpReserveDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountID()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->accountID:Ljava/lang/String;

    return-object v0
.end method

.method public getBillingType()I
    .locals 1

    .line 302
    iget v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->billingType:I

    return v0
.end method

.method public getCalendarRefreshInterval()I
    .locals 1

    .line 390
    iget v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->calendarRefreshInterval:I

    return v0
.end method

.method public getCalendarType()I
    .locals 1

    .line 382
    iget v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->calendarType:I

    return v0
.end method

.method public getCallOutCountryCodeByCode(Ljava/lang/String;)Lus/zoom/zrcsdk/model/CountryCode;
    .locals 4

    .line 216
    iget-object v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->calloutCountryCodes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 219
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/CountryCode;

    .line 220
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/CountryCode;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method public getCalloutCountryCodes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/CountryCode;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->calloutCountryCodes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCalloutType()I
    .locals 1

    .line 203
    iget v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->calloutType:I

    return v0
.end method

.method public getCountForReleaseRecurringMeetings()I
    .locals 1

    .line 366
    iget v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->countForReleaseRecurringMeetings:I

    return v0
.end method

.method public getDefaultCallinCountry()Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->defaultCallinCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayZoomPresenceAddress()Ljava/lang/String;
    .locals 3

    .line 116
    iget-object v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->zoomPresenceAddress:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->zoomPresenceAddress:Ljava/lang/String;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 120
    iget-object v1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->zoomPresenceAddress:Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    if-ne v1, v2, :cond_2

    .line 125
    iget-object v1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->zoomPresenceAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 127
    :cond_2
    iget-object v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->zoomPresenceAddress:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 117
    :cond_3
    :goto_0
    iget-object v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->zoomPresenceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getFreeTrialDays()I
    .locals 1

    .line 310
    iget v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->freeTrialDays:I

    return v0
.end method

.method public getOperationTimeDays()I
    .locals 1

    .line 499
    iget v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->operationTimeDays:I

    return v0
.end method

.method public getOperationTimeEnd()J
    .locals 2

    .line 483
    iget-wide v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->operationTimeEnd:J

    return-wide v0
.end method

.method public getOperationTimeOptions()J
    .locals 2

    .line 491
    iget-wide v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->operationTimeOptions:J

    return-wide v0
.end method

.method public getOperationTimeStart()J
    .locals 2

    .line 475
    iget-wide v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->operationTimeStart:J

    return-wide v0
.end method

.method public getPasscode()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->passcode:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseNotesRefreshInterval()J
    .locals 2

    .line 507
    iget-wide v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->releaseNotesRefreshInterval:J

    return-wide v0
.end method

.method public getReserveOtherRoomInLocation()I
    .locals 1

    .line 459
    iget v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->reserveOtherRoomInLocation:I

    return v0
.end method

.method public getRoomJid()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->roomJid:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomLogicEmail()Ljava/lang/String;
    .locals 1

    .line 410
    iget-object v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->roomLogicEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomName()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->roomName:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomSupportEmail()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->roomSupportEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomSupportPhone()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->roomSupportPhone:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeForNoCheckInRelease()I
    .locals 1

    .line 358
    iget v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->timeForNoCheckInRelease:I

    return v0
.end method

.method public getTimeForPriorCheckIn()I
    .locals 1

    .line 350
    iget v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->timeForPriorCheckIn:I

    return v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->userID:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkEmailSubType()I
    .locals 1

    .line 197
    iget v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->workEmailSubType:I

    return v0
.end method

.method public getZoomPresenceAddress()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->zoomPresenceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getZoomPresenceToken()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->zoomPresenceToken:Ljava/lang/String;

    return-object v0
.end method

.method public getZoomToken()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->zoomToken:Ljava/lang/String;

    return-object v0
.end method

.method public getZrSharedCustomHdmiText()Ljava/lang/String;
    .locals 1

    .line 451
    iget-object v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->zrSharedCustomHdmiText:Ljava/lang/String;

    return-object v0
.end method

.method public getZrpBackgroundImgUrl()Ljava/lang/String;
    .locals 1

    .line 418
    iget-object v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->zrpBackgroundImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoEndScheduleMeeting()Z
    .locals 1

    .line 294
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->autoEndScheduleMeeting:Z

    return v0
.end method

.method public isAutoStartScheduleMeeting()Z
    .locals 1

    .line 286
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->autoStartScheduleMeeting:Z

    return v0
.end method

.method public isCalendarRefreshTokenExpired()Z
    .locals 1

    .line 467
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->calendarRefreshTokenExpired:Z

    return v0
.end method

.method public isCallHistoryDisabled()Z
    .locals 1

    .line 430
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->callHistoryDisabled:Z

    return v0
.end method

.method public isCheckInEnableNotification()Z
    .locals 1

    .line 374
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->isCheckInEnableNotification:Z

    return v0
.end method

.method public isCheckInStatus()Z
    .locals 1

    .line 342
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->checkInStatus:Z

    return v0
.end method

.method public isCrcCalloutOnlyEnabled()Z
    .locals 1

    .line 519
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->crcCalloutOnlyEnabled:Z

    return v0
.end method

.method public isDisableNextMeetingAlert()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->disableNextMeetingAlert:Z

    return v0
.end method

.method public isDisableNextMeetingAlertInMeeting()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->disableNextMeetingAlertInMeeting:Z

    return v0
.end method

.method public isDisableNextMeetingAlertOnController()Z
    .locals 1

    .line 175
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->disableNextMeetingAlertOnController:Z

    return v0
.end method

.method public isDisableNextMeetingAlertOnTV()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->disableNextMeetingAlertOnTV:Z

    return v0
.end method

.method public isForcePrivateMeeting()Z
    .locals 1

    .line 270
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->forcePrivateMeeting:Z

    return v0
.end method

.method public isH323Enabled()Z
    .locals 1

    .line 434
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->h323Enabled:Z

    return v0
.end method

.method public isHideContactList()Z
    .locals 1

    .line 442
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->hideContactList:Z

    return v0
.end method

.method public isHideHostInfoForPrivateMeeting()Z
    .locals 1

    .line 278
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->hideHostInfoForPrivateMeeting:Z

    return v0
.end method

.method public isPostMeetingFeedbackEnabled()Z
    .locals 1

    .line 257
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->postMeetingFeedbackEnabled:Z

    return v0
.end method

.method public isPublicRoomEnabled()Z
    .locals 1

    .line 191
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->publicRoomEnabled:Z

    return v0
.end method

.method public isSpeakerVolumeControlLocked()Z
    .locals 1

    .line 251
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->speakerVolumeControlLocked:Z

    return v0
.end method

.method public isStandaloneDigitalSignage()Z
    .locals 1

    .line 326
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->isStandaloneDigitalSignage:Z

    return v0
.end method

.method public isStandaloneZRP()Z
    .locals 1

    .line 318
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->isStandaloneZRP:Z

    return v0
.end method

.method public isSupportDialToThirdPartyMeeting()Z
    .locals 1

    .line 402
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->supportDialToThirdPartyMeeting:Z

    return v0
.end method

.method public isUltrasonicDisabled()Z
    .locals 1

    .line 263
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->ultrasonicDisabled:Z

    return v0
.end method

.method public isZrpReserveDisabled()Z
    .locals 1

    .line 334
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->zrpReserveDisabled:Z

    return v0
.end method

.method public isiOSSharingDisabled()Z
    .locals 1

    .line 227
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/LoginInfo;->iOSSharingDisabled:Z

    return v0
.end method

.method public setAccountID(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->accountID:Ljava/lang/String;

    return-void
.end method

.method public setAutoEndScheduleMeeting(Z)V
    .locals 0

    .line 298
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->autoEndScheduleMeeting:Z

    return-void
.end method

.method public setAutoStartScheduleMeeting(Z)V
    .locals 0

    .line 290
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->autoStartScheduleMeeting:Z

    return-void
.end method

.method public setBillingType(I)V
    .locals 0

    .line 306
    iput p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->billingType:I

    return-void
.end method

.method public setCalendarRefreshInterval(I)V
    .locals 0

    .line 394
    iput p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->calendarRefreshInterval:I

    return-void
.end method

.method public setCalendarRefreshTokenExpired(Z)V
    .locals 0

    .line 471
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->calendarRefreshTokenExpired:Z

    return-void
.end method

.method public setCalendarType(I)V
    .locals 0

    .line 386
    iput p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->calendarType:I

    return-void
.end method

.method public setCallHistoryDisabled(Z)V
    .locals 0

    .line 426
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->callHistoryDisabled:Z

    return-void
.end method

.method public setCalloutCountryCodes(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/CountryCode;",
            ">;)V"
        }
    .end annotation

    .line 212
    iput-object p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->calloutCountryCodes:Ljava/util/ArrayList;

    return-void
.end method

.method public setCalloutType(I)V
    .locals 0

    .line 206
    iput p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->calloutType:I

    return-void
.end method

.method public setCheckInEnableNotification(Z)V
    .locals 0

    .line 378
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->isCheckInEnableNotification:Z

    return-void
.end method

.method public setCheckInStatus(Z)V
    .locals 0

    .line 346
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->checkInStatus:Z

    return-void
.end method

.method public setCountForReleaseRecurringMeetings(I)V
    .locals 0

    .line 370
    iput p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->countForReleaseRecurringMeetings:I

    return-void
.end method

.method public setCrcCalloutOnlyEnabled(Z)V
    .locals 0

    .line 515
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->crcCalloutOnlyEnabled:Z

    return-void
.end method

.method public setDefaultCallinCountry(Ljava/lang/String;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->defaultCallinCountry:Ljava/lang/String;

    return-void
.end method

.method public setDisableNextMeetingAlert(Z)V
    .locals 0

    .line 163
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->disableNextMeetingAlert:Z

    return-void
.end method

.method public setDisableNextMeetingAlertInMeeting(Z)V
    .locals 0

    .line 171
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->disableNextMeetingAlertInMeeting:Z

    return-void
.end method

.method public setDisableNextMeetingAlertOnController(Z)V
    .locals 0

    .line 179
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->disableNextMeetingAlertOnController:Z

    return-void
.end method

.method public setDisableNextMeetingAlertOnTV(Z)V
    .locals 0

    .line 187
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->disableNextMeetingAlertOnTV:Z

    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->firstName:Ljava/lang/String;

    return-void
.end method

.method public setForcePrivateMeeting(Z)V
    .locals 0

    .line 274
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->forcePrivateMeeting:Z

    return-void
.end method

.method public setFreeTrialDays(I)V
    .locals 0

    .line 314
    iput p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->freeTrialDays:I

    return-void
.end method

.method public setH323Enabled(Z)V
    .locals 0

    .line 438
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->h323Enabled:Z

    return-void
.end method

.method public setHideContactList(Z)V
    .locals 0

    .line 446
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->hideContactList:Z

    return-void
.end method

.method public setHideHostInfoForPrivateMeeting(Z)V
    .locals 0

    .line 282
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->hideHostInfoForPrivateMeeting:Z

    return-void
.end method

.method public setOperationTimeDays(I)V
    .locals 0

    .line 503
    iput p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->operationTimeDays:I

    return-void
.end method

.method public setOperationTimeEnd(J)V
    .locals 0

    .line 487
    iput-wide p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->operationTimeEnd:J

    return-void
.end method

.method public setOperationTimeOptions(J)V
    .locals 0

    .line 495
    iput-wide p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->operationTimeOptions:J

    return-void
.end method

.method public setOperationTimeStart(J)V
    .locals 0

    .line 479
    iput-wide p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->operationTimeStart:J

    return-void
.end method

.method public setPasscode(Ljava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->passcode:Ljava/lang/String;

    return-void
.end method

.method public setPostMeetingFeedbackEnabled(Z)V
    .locals 0

    .line 260
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->postMeetingFeedbackEnabled:Z

    return-void
.end method

.method public setPublicRoomEnabled(Z)V
    .locals 0

    .line 194
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->publicRoomEnabled:Z

    return-void
.end method

.method public setReleaseNotesRefreshInterval(J)V
    .locals 0

    .line 511
    iput-wide p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->releaseNotesRefreshInterval:J

    return-void
.end method

.method public setReserveOtherRoomInLocation(I)V
    .locals 0

    .line 463
    iput p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->reserveOtherRoomInLocation:I

    return-void
.end method

.method public setRoomJid(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->roomJid:Ljava/lang/String;

    return-void
.end method

.method public setRoomLogicEmail(Ljava/lang/String;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->roomLogicEmail:Ljava/lang/String;

    return-void
.end method

.method public setRoomName(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->roomName:Ljava/lang/String;

    return-void
.end method

.method public setRoomSupportEmail(Ljava/lang/String;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->roomSupportEmail:Ljava/lang/String;

    return-void
.end method

.method public setRoomSupportPhone(Ljava/lang/String;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->roomSupportPhone:Ljava/lang/String;

    return-void
.end method

.method public setSpeakerVolumeControlLocked(Z)V
    .locals 0

    .line 254
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->speakerVolumeControlLocked:Z

    return-void
.end method

.method public setStandaloneDigitalSignage(Z)V
    .locals 0

    .line 330
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->isStandaloneDigitalSignage:Z

    return-void
.end method

.method public setStandaloneZRP(Z)V
    .locals 0

    .line 322
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->isStandaloneZRP:Z

    return-void
.end method

.method public setSupportDialToThirdPartyMeeting(Z)V
    .locals 0

    .line 406
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->supportDialToThirdPartyMeeting:Z

    return-void
.end method

.method public setTimeForNoCheckInRelease(I)V
    .locals 0

    .line 362
    iput p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->timeForNoCheckInRelease:I

    return-void
.end method

.method public setTimeForPriorCheckIn(I)V
    .locals 0

    .line 354
    iput p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->timeForPriorCheckIn:I

    return-void
.end method

.method public setUltrasonicDisabled(Z)V
    .locals 0

    .line 266
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->ultrasonicDisabled:Z

    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->userID:Ljava/lang/String;

    return-void
.end method

.method public setWorkEmailSubType(I)V
    .locals 0

    .line 200
    iput p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->workEmailSubType:I

    return-void
.end method

.method public setZoomPresenceAddress(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->zoomPresenceAddress:Ljava/lang/String;

    return-void
.end method

.method public setZoomPresenceToken(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->zoomPresenceToken:Ljava/lang/String;

    return-void
.end method

.method public setZoomToken(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->zoomToken:Ljava/lang/String;

    return-void
.end method

.method public setZrSharedCustomHdmiText(Ljava/lang/String;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->zrSharedCustomHdmiText:Ljava/lang/String;

    return-void
.end method

.method public setZrpBackgroundImgUrl(Ljava/lang/String;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->zrpBackgroundImgUrl:Ljava/lang/String;

    return-void
.end method

.method public setZrpReserveDisabled(Z)V
    .locals 0

    .line 338
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->zrpReserveDisabled:Z

    return-void
.end method

.method public setiOSSharingDisabled(Z)V
    .locals 0

    .line 230
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/LoginInfo;->iOSSharingDisabled:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 524
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "userID"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->userID:Ljava/lang/String;

    .line 525
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "accountID"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->accountID:Ljava/lang/String;

    .line 526
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "roomJid"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->roomJid:Ljava/lang/String;

    .line 527
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "roomName"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->roomName:Ljava/lang/String;

    .line 528
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "zoomPresenceAddress"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->zoomPresenceAddress:Ljava/lang/String;

    .line 529
    invoke-static {v2}, Lus/zoom/zrcsdk/util/StringUtil;->logToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "zoomPresenceToken"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->zoomPresenceToken:Ljava/lang/String;

    .line 530
    invoke-static {v2}, Lus/zoom/zrcsdk/util/StringUtil;->logToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "zoomToken"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->zoomToken:Ljava/lang/String;

    .line 531
    invoke-static {v2}, Lus/zoom/zrcsdk/util/StringUtil;->logToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "passcode"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->passcode:Ljava/lang/String;

    .line 532
    invoke-static {v2}, Lus/zoom/zrcsdk/util/StringUtil;->logPassword(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "firstName"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->firstName:Ljava/lang/String;

    .line 533
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "roomSupportEmail"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->roomSupportEmail:Ljava/lang/String;

    .line 534
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "roomSupportPhone"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->roomSupportPhone:Ljava/lang/String;

    .line 535
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "defaultCallinCountry"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->defaultCallinCountry:Ljava/lang/String;

    .line 536
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "speakerVolumeControlLocked"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->speakerVolumeControlLocked:Z

    .line 537
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "postMeetingFeedbackEnabled"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->postMeetingFeedbackEnabled:Z

    .line 538
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "ultrasonicDisabled"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->ultrasonicDisabled:Z

    .line 539
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "iOSSharingDisabled"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->iOSSharingDisabled:Z

    .line 540
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "disableNextMeetingAlert"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->disableNextMeetingAlert:Z

    .line 541
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "publicRoomEnabled"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->publicRoomEnabled:Z

    .line 542
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "forcePrivateMeeting"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->forcePrivateMeeting:Z

    .line 543
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "hideHostInfoForPrivateMeeting"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->hideHostInfoForPrivateMeeting:Z

    .line 544
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "autoStartScheduleMeeting"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->autoStartScheduleMeeting:Z

    .line 545
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "autoEndScheduleMeeting"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->autoEndScheduleMeeting:Z

    .line 546
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "workEmailSubType"

    iget v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->workEmailSubType:I

    .line 547
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "calloutType"

    iget v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->calloutType:I

    .line 548
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "calloutCountryCodes"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->calloutCountryCodes:Ljava/util/ArrayList;

    .line 549
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "billingType"

    iget v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->billingType:I

    .line 550
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "freeTrialDays"

    iget v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->freeTrialDays:I

    .line 551
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "isStandaloneZRP"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->isStandaloneZRP:Z

    .line 552
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "isStandaloneDigitalSignage"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->isStandaloneDigitalSignage:Z

    .line 553
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "zrpReserveDisabled"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->zrpReserveDisabled:Z

    .line 554
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "supportDialToThirdPartyMeeting"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->supportDialToThirdPartyMeeting:Z

    .line 555
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "checkInStatus"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->checkInStatus:Z

    .line 556
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "timeForPriorCheckIn"

    iget v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->timeForPriorCheckIn:I

    .line 557
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "timeForNoCheckInRelease"

    iget v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->timeForNoCheckInRelease:I

    .line 558
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "countForReleaseRecurringMeetings"

    iget v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->countForReleaseRecurringMeetings:I

    .line 559
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "isCheckInEnableNotification"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->isCheckInEnableNotification:Z

    .line 560
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "calendarType"

    iget v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->calendarType:I

    .line 561
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "calendarRefreshInterval"

    iget v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->calendarRefreshInterval:I

    .line 562
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "roomLogicEmail"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->roomLogicEmail:Ljava/lang/String;

    .line 563
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "zrpBackgroundImgUrl"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->zrpBackgroundImgUrl:Ljava/lang/String;

    .line 564
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "callHistoryDisabled"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->callHistoryDisabled:Z

    .line 565
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "h323Enabled"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->h323Enabled:Z

    .line 566
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "hideContactList"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->hideContactList:Z

    .line 567
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "zrSharedCustomHdmiText"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->zrSharedCustomHdmiText:Ljava/lang/String;

    .line 568
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "releaseNotesRefreshInterval"

    iget-wide v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->releaseNotesRefreshInterval:J

    .line 569
    invoke-static {v2, v3}, Lus/zoom/zrcsdk/util/ZRCTimeUtils;->logTimeIntervalInSeconds(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "crcCalloutOnlyEnabled"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->crcCalloutOnlyEnabled:Z

    .line 570
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "reserveOtherRoomInLocation"

    iget v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->reserveOtherRoomInLocation:I

    .line 571
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "calendarRefreshTokenExpired"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/LoginInfo;->calendarRefreshTokenExpired:Z

    .line 572
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 573
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
