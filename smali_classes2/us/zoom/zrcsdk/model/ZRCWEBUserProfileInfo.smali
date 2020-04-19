.class public Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;
.super Ljava/lang/Object;
.source "ZRCWEBUserProfileInfo.java"


# instance fields
.field private calendarRefreshInterval:I

.field private calendarRefreshIntervalUpdate:Z

.field private calendarRefreshTokenExpired:Z

.field private calendarRefreshTokenExpiredUpdate:Z

.field private calendarType:I

.field private calendarTypeUpdate:Z

.field private checkInEnableNotification:Z

.field private checkInEnableNotificationUpdate:Z

.field private checkInStatus:Z

.field private checkInStatusUpdate:Z

.field private countForReleaseRecurringMeetings:I

.field private countForReleaseRecurringMeetingsUpdate:Z

.field private countryCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/CountryCode;",
            ">;"
        }
    .end annotation
.end field

.field private countryCodesUpdate:Z

.field private defaultCallinCountry:Ljava/lang/String;

.field private defaultCallinCountryUpdate:Z

.field private firstName:Ljava/lang/String;

.field private firstNameUpdate:Z

.field private operationTimeDays:I

.field private operationTimeDaysUpdate:Z

.field private operationTimeEnd:J

.field private operationTimeEndUpdate:Z

.field private operationTimeOptions:J

.field private operationTimeOptionsUpdate:Z

.field private operationTimeStart:J

.field private operationTimeStartUpdate:Z

.field private passcode:Ljava/lang/String;

.field private passcodeUpdate:Z

.field private releaseNotesRefreshInterval:J

.field private releaseNotesRefreshIntervalUpdate:Z

.field private reserveOtherRoomInLocation:I

.field private reserveOtherRoomInLocationUpdate:Z

.field private roomLogicEmail:Ljava/lang/String;

.field private roomLogicEmailUpdate:Z

.field private roomName:Ljava/lang/String;

.field private roomNameUpdate:Z

.field private roomSupportEmail:Ljava/lang/String;

.field private roomSupportEmailUpdate:Z

.field private roomSupportPhone:Ljava/lang/String;

.field private roomSupportPhoneUpdate:Z

.field private strPMI:Ljava/lang/String;

.field private strPMIUpdate:Z

.field private timeForNoCheckInRelease:I

.field private timeForNoCheckInReleaseUpdate:Z

.field private timeForPriorCheckIn:I

.field private timeForPriorCheckInUpdate:Z

.field private zoomPresenceToken:Ljava/lang/String;

.field private zoomPresenceTokenUpdate:Z

.field private zrSharedCustomHdmiText:Ljava/lang/String;

.field private zrSharedCustomHdmiTextUpdate:Z

.field private zrpBackgroundImgUrl:Ljava/lang/String;

.field private zrpBackgroundImgUrlUpdate:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCalendarRefreshInterval()I
    .locals 1

    .line 275
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->calendarRefreshInterval:I

    return v0
.end method

.method public getCalendarType()I
    .locals 1

    .line 259
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->calendarType:I

    return v0
.end method

.method public getCountForReleaseRecurringMeetings()I
    .locals 1

    .line 211
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->countForReleaseRecurringMeetings:I

    return v0
.end method

.method public getCountryCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/CountryCode;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->countryCodes:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultCallinCountry()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->defaultCallinCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getOperationTimeDays()I
    .locals 1

    .line 395
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->operationTimeDays:I

    return v0
.end method

.method public getOperationTimeEnd()J
    .locals 2

    .line 379
    iget-wide v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->operationTimeEnd:J

    return-wide v0
.end method

.method public getOperationTimeOptions()J
    .locals 2

    .line 387
    iget-wide v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->operationTimeOptions:J

    return-wide v0
.end method

.method public getOperationTimeStart()J
    .locals 2

    .line 371
    iget-wide v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->operationTimeStart:J

    return-wide v0
.end method

.method public getPasscode()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->passcode:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseNotesRefreshInterval()J
    .locals 2

    .line 403
    iget-wide v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->releaseNotesRefreshInterval:J

    return-wide v0
.end method

.method public getReserveOtherRoomInLocation()I
    .locals 1

    .line 339
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->reserveOtherRoomInLocation:I

    return v0
.end method

.method public getRoomLogicEmail()Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->roomLogicEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomName()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->roomName:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomSupportEmail()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->roomSupportEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomSupportPhone()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->roomSupportPhone:Ljava/lang/String;

    return-object v0
.end method

.method public getStrPMI()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->strPMI:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeForNoCheckInRelease()I
    .locals 1

    .line 203
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->timeForNoCheckInRelease:I

    return v0
.end method

.method public getTimeForPriorCheckIn()I
    .locals 1

    .line 195
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->timeForPriorCheckIn:I

    return v0
.end method

.method public getZoomPresenceToken()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->zoomPresenceToken:Ljava/lang/String;

    return-object v0
.end method

.method public getZrSharedCustomHdmiText()Ljava/lang/String;
    .locals 1

    .line 323
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->zrSharedCustomHdmiText:Ljava/lang/String;

    return-object v0
.end method

.method public getZrpBackgroundImgUrl()Ljava/lang/String;
    .locals 1

    .line 307
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->zrpBackgroundImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isCalendarRefreshIntervalUpdate()Z
    .locals 1

    .line 283
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->calendarRefreshIntervalUpdate:Z

    return v0
.end method

.method public isCalendarRefreshTokenExpired()Z
    .locals 1

    .line 355
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->calendarRefreshTokenExpired:Z

    return v0
.end method

.method public isCalendarRefreshTokenExpiredUpdate()Z
    .locals 1

    .line 363
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->calendarRefreshTokenExpiredUpdate:Z

    return v0
.end method

.method public isCalendarTypeUpdate()Z
    .locals 1

    .line 267
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->calendarTypeUpdate:Z

    return v0
.end method

.method public isCheckInEnableNotification()Z
    .locals 1

    .line 219
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->checkInEnableNotification:Z

    return v0
.end method

.method public isCheckInEnableNotificationUpdate()Z
    .locals 1

    .line 251
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->checkInEnableNotificationUpdate:Z

    return v0
.end method

.method public isCheckInStatus()Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->checkInStatus:Z

    return v0
.end method

.method public isCheckInStatusUpdate()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->checkInStatusUpdate:Z

    return v0
.end method

.method public isCountForReleaseRecurringMeetingsUpdate()Z
    .locals 1

    .line 243
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->countForReleaseRecurringMeetingsUpdate:Z

    return v0
.end method

.method public isCountryCodesUpdate()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->countryCodesUpdate:Z

    return v0
.end method

.method public isDefaultCallinCountryUpdate()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->defaultCallinCountryUpdate:Z

    return v0
.end method

.method public isFirstNameUpdate()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->firstNameUpdate:Z

    return v0
.end method

.method public isOperationTimeDaysUpdate()Z
    .locals 1

    .line 399
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->operationTimeDaysUpdate:Z

    return v0
.end method

.method public isOperationTimeEndUpdate()Z
    .locals 1

    .line 383
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->operationTimeEndUpdate:Z

    return v0
.end method

.method public isOperationTimeOptionsUpdate()Z
    .locals 1

    .line 391
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->operationTimeOptionsUpdate:Z

    return v0
.end method

.method public isOperationTimeStartUpdate()Z
    .locals 1

    .line 375
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->operationTimeStartUpdate:Z

    return v0
.end method

.method public isPasscodeUpdate()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->passcodeUpdate:Z

    return v0
.end method

.method public isReleaseNotesRefreshIntervalUpdate()Z
    .locals 1

    .line 407
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->releaseNotesRefreshIntervalUpdate:Z

    return v0
.end method

.method public isReserveOtherRoomInLocationUpdate()Z
    .locals 1

    .line 347
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->reserveOtherRoomInLocationUpdate:Z

    return v0
.end method

.method public isRoomLogicEmailUpdate()Z
    .locals 1

    .line 299
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->roomLogicEmailUpdate:Z

    return v0
.end method

.method public isRoomNameUpdate()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->roomNameUpdate:Z

    return v0
.end method

.method public isRoomSupportEmailUpdate()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->roomSupportEmailUpdate:Z

    return v0
.end method

.method public isRoomSupportPhoneUpdate()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->roomSupportPhoneUpdate:Z

    return v0
.end method

.method public isStrPMIUpdate()Z
    .locals 1

    .line 166
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->strPMIUpdate:Z

    return v0
.end method

.method public isTimeForNoCheckInReleaseUpdate()Z
    .locals 1

    .line 235
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->timeForNoCheckInReleaseUpdate:Z

    return v0
.end method

.method public isTimeForPriorCheckInUpdate()Z
    .locals 1

    .line 227
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->timeForPriorCheckInUpdate:Z

    return v0
.end method

.method public isZoomPresenceTokenUpdate()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->zoomPresenceTokenUpdate:Z

    return v0
.end method

.method public isZrSharedCustomHdmiTextUpdate()Z
    .locals 1

    .line 331
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->zrSharedCustomHdmiTextUpdate:Z

    return v0
.end method

.method public isZrpBackgroundImgUrlUpdate()Z
    .locals 1

    .line 315
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->zrpBackgroundImgUrlUpdate:Z

    return v0
.end method

.method public setCalendarRefreshInterval(I)V
    .locals 0

    .line 279
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->calendarRefreshInterval:I

    return-void
.end method

.method public setCalendarRefreshIntervalUpdate(Z)V
    .locals 0

    .line 287
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->calendarRefreshIntervalUpdate:Z

    return-void
.end method

.method public setCalendarRefreshTokenExpired(Z)V
    .locals 0

    .line 359
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->calendarRefreshTokenExpired:Z

    return-void
.end method

.method public setCalendarRefreshTokenExpiredUpdate(Z)V
    .locals 0

    .line 367
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->calendarRefreshTokenExpiredUpdate:Z

    return-void
.end method

.method public setCalendarType(I)V
    .locals 0

    .line 263
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->calendarType:I

    return-void
.end method

.method public setCalendarTypeUpdate(Z)V
    .locals 0

    .line 271
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->calendarTypeUpdate:Z

    return-void
.end method

.method public setCheckInEnableNotification(Z)V
    .locals 0

    .line 223
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->checkInEnableNotification:Z

    return-void
.end method

.method public setCheckInEnableNotificationUpdate(Z)V
    .locals 0

    .line 255
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->checkInEnableNotificationUpdate:Z

    return-void
.end method

.method public setCheckInStatus(Z)V
    .locals 0

    .line 183
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->checkInStatus:Z

    return-void
.end method

.method public setCheckInStatusUpdate(Z)V
    .locals 0

    .line 191
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->checkInStatusUpdate:Z

    return-void
.end method

.method public setCountForReleaseRecurringMeetings(I)V
    .locals 0

    .line 215
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->countForReleaseRecurringMeetings:I

    return-void
.end method

.method public setCountForReleaseRecurringMeetingsUpdate(Z)V
    .locals 0

    .line 247
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->countForReleaseRecurringMeetingsUpdate:Z

    return-void
.end method

.method public setCountryCodes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/CountryCode;",
            ">;)V"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->countryCodes:Ljava/util/List;

    return-void
.end method

.method public setCountryCodesUpdate(Z)V
    .locals 0

    .line 175
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->countryCodesUpdate:Z

    return-void
.end method

.method public setDefaultCallinCountry(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->defaultCallinCountry:Ljava/lang/String;

    return-void
.end method

.method public setDefaultCallinCountryUpdate(Z)V
    .locals 0

    .line 163
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->defaultCallinCountryUpdate:Z

    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->firstName:Ljava/lang/String;

    return-void
.end method

.method public setFirstNameUpdate(Z)V
    .locals 0

    .line 133
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->firstNameUpdate:Z

    return-void
.end method

.method public setPasscode(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->passcode:Ljava/lang/String;

    return-void
.end method

.method public setPasscodeUpdate(Z)V
    .locals 0

    .line 139
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->passcodeUpdate:Z

    return-void
.end method

.method public setReserveOtherRoomInLocation(I)V
    .locals 0

    .line 343
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->reserveOtherRoomInLocation:I

    return-void
.end method

.method public setReserveOtherRoomInLocationUpdate(Z)V
    .locals 0

    .line 351
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->reserveOtherRoomInLocationUpdate:Z

    return-void
.end method

.method public setRoomLogicEmail(Ljava/lang/String;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->roomLogicEmail:Ljava/lang/String;

    return-void
.end method

.method public setRoomLogicEmailUpdate(Z)V
    .locals 0

    .line 303
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->roomLogicEmailUpdate:Z

    return-void
.end method

.method public setRoomName(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->roomName:Ljava/lang/String;

    return-void
.end method

.method public setRoomNameUpdate(Z)V
    .locals 0

    .line 127
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->roomNameUpdate:Z

    return-void
.end method

.method public setRoomSupportEmail(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->roomSupportEmail:Ljava/lang/String;

    return-void
.end method

.method public setRoomSupportEmailUpdate(Z)V
    .locals 0

    .line 151
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->roomSupportEmailUpdate:Z

    return-void
.end method

.method public setRoomSupportPhone(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->roomSupportPhone:Ljava/lang/String;

    return-void
.end method

.method public setRoomSupportPhoneUpdate(Z)V
    .locals 0

    .line 157
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->roomSupportPhoneUpdate:Z

    return-void
.end method

.method public setStrPMI(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->strPMI:Ljava/lang/String;

    return-void
.end method

.method public setStrPMIUpdate(Z)V
    .locals 0

    .line 169
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->strPMIUpdate:Z

    return-void
.end method

.method public setTimeForNoCheckInRelease(I)V
    .locals 0

    .line 207
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->timeForNoCheckInRelease:I

    return-void
.end method

.method public setTimeForNoCheckInReleaseUpdate(Z)V
    .locals 0

    .line 239
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->timeForNoCheckInReleaseUpdate:Z

    return-void
.end method

.method public setTimeForPriorCheckIn(I)V
    .locals 0

    .line 199
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->timeForPriorCheckIn:I

    return-void
.end method

.method public setTimeForPriorCheckInUpdate(Z)V
    .locals 0

    .line 231
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->timeForPriorCheckInUpdate:Z

    return-void
.end method

.method public setZoomPresenceToken(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->zoomPresenceToken:Ljava/lang/String;

    return-void
.end method

.method public setZoomPresenceTokenUpdate(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->zoomPresenceTokenUpdate:Z

    return-void
.end method

.method public setZrSharedCustomHdmiText(Ljava/lang/String;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->zrSharedCustomHdmiText:Ljava/lang/String;

    return-void
.end method

.method public setZrSharedCustomHdmiTextUpdate(Z)V
    .locals 0

    .line 335
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->zrSharedCustomHdmiTextUpdate:Z

    return-void
.end method

.method public setZrpBackgroundImgUrl(Ljava/lang/String;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->zrpBackgroundImgUrl:Ljava/lang/String;

    return-void
.end method

.method public setZrpBackgroundImgUrlUpdate(Z)V
    .locals 0

    .line 319
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->zrpBackgroundImgUrlUpdate:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 412
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 413
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isRoomNameUpdate()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "roomName"

    .line 414
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->roomName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 416
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isFirstNameUpdate()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "firstName"

    .line 417
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->firstName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 419
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isPasscodeUpdate()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "passcode"

    .line 420
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->passcode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 422
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isZoomPresenceTokenUpdate()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "zoomPresenceToken"

    .line 423
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->zoomPresenceToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 425
    :cond_3
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isRoomSupportEmailUpdate()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "roomSupportEmail"

    .line 426
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->roomSupportEmail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 428
    :cond_4
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isRoomSupportPhoneUpdate()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "roomSupportPhone"

    .line 429
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->roomSupportPhone:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 431
    :cond_5
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isDefaultCallinCountryUpdate()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "defaultCallinCountry"

    .line 432
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->defaultCallinCountry:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 434
    :cond_6
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isStrPMIUpdate()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "strPMI"

    .line 435
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->strPMI:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 437
    :cond_7
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isCountryCodesUpdate()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "countryCodes"

    .line 438
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->countryCodes:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 440
    :cond_8
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isCheckInStatusUpdate()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "checkInStatus"

    .line 441
    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->checkInStatus:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 443
    :cond_9
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isTimeForPriorCheckInUpdate()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "timeForPriorCheckIn"

    .line 444
    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->timeForPriorCheckIn:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 446
    :cond_a
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isTimeForNoCheckInReleaseUpdate()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "timeForNoCheckInRelease"

    .line 447
    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->timeForNoCheckInRelease:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 449
    :cond_b
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isCountForReleaseRecurringMeetingsUpdate()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "countForReleaseRecurringMeetings"

    .line 450
    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->countForReleaseRecurringMeetings:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 452
    :cond_c
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isCheckInEnableNotificationUpdate()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "checkInEnableNotification"

    .line 453
    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->checkInEnableNotification:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 455
    :cond_d
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isCalendarTypeUpdate()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "calendarType"

    .line 456
    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->calendarType:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 458
    :cond_e
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isCalendarRefreshIntervalUpdate()Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "calendarRefreshInterval"

    .line 459
    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->calendarRefreshInterval:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 461
    :cond_f
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isRoomLogicEmailUpdate()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "roomLogicEmail"

    .line 462
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->roomLogicEmail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 464
    :cond_10
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isZrpBackgroundImgUrlUpdate()Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "zrpBackgroundImgUrl"

    .line 465
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->zrpBackgroundImgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 467
    :cond_11
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isOperationTimeStartUpdate()Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "operationTimeStart"

    .line 468
    iget-wide v2, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->operationTimeStart:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 470
    :cond_12
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isOperationTimeEndUpdate()Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "operationTimeEnd"

    .line 471
    iget-wide v2, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->operationTimeEnd:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 473
    :cond_13
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isOperationTimeOptionsUpdate()Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "operationTimeOptions"

    .line 474
    iget-wide v2, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->operationTimeOptions:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 476
    :cond_14
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isOperationTimeDaysUpdate()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "operationTimeDays"

    .line 477
    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->operationTimeDays:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 479
    :cond_15
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isReleaseNotesRefreshIntervalUpdate()Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "releaseNotesRefreshInterval"

    .line 480
    iget-wide v2, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->releaseNotesRefreshInterval:J

    invoke-static {v2, v3}, Lus/zoom/zrcsdk/util/ZRCTimeUtils;->logTimeIntervalInSeconds(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 482
    :cond_16
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isReserveOtherRoomInLocationUpdate()Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "reserveOtherRoomInLocation"

    .line 483
    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->reserveOtherRoomInLocation:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 485
    :cond_17
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isCalendarRefreshIntervalUpdate()Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "calendarRefreshTokenExpired"

    .line 486
    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->calendarRefreshTokenExpired:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 488
    :cond_18
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
