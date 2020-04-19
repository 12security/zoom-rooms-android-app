.class public Lus/zoom/zrc/model/ZRCMeetingListItemHelper;
.super Ljava/lang/Object;
.source "ZRCMeetingListItemHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;,
        Lus/zoom/zrc/model/ZRCMeetingListItemHelper$Holder;
    }
.end annotation


# static fields
.field private static final CHECK_IN_STATE_CHECKED_IN:I = 0x1

.field private static final CHECK_IN_STATE_CHECK_IN:I = 0x2

.field private static final CHECK_IN_STATE_NONE:I = 0x0

.field private static final MEETING_BTN_TYPE_CHECKED_IN:I = 0x5

.field private static final MEETING_BTN_TYPE_CHECK_IN:I = 0x4

.field private static final MEETING_BTN_TYPE_DIAL_IN:I = 0x6

.field private static final MEETING_BTN_TYPE_JOIN_ROOMSYSTEM:I = 0x2

.field private static final MEETING_BTN_TYPE_JOIN_ZOOM:I = 0x3

.field private static final MEETING_BTN_TYPE_NONE:I = 0x0

.field private static final MEETING_BTN_TYPE_START_ZOOM:I = 0x1

.field private static final TIME_SLICE:J = 0xaL

.field private static final dataFormatter:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 532
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZZZZZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->dataFormatter:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lus/zoom/zrc/model/ZRCMeetingListItemHelper$1;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;-><init>()V

    return-void
.end method

.method private canCallRoomSystem(Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 312
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->supportInviteRoomSystemAndDialPreMeeting()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->isRoomSystemAddressEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private canJoinPSTNThirdPartyMeeting()Z
    .locals 1

    .line 158
    invoke-direct {p0}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->canJoinThirdPartyMeeting()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->isSipCallOutSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private canJoinThirdPartyMeeting()Z
    .locals 2

    .line 151
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isThirdPartyMeetingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getUserProfile()Lus/zoom/zrc/model/ZRCUserProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 153
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getUserProfile()Lus/zoom/zrc/model/ZRCUserProfile;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/ZRCUserProfile;->getBillingType()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getCheckInState(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)I
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 443
    :cond_0
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->isCheckInEnabled(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getCalendarType()I

    move-result v1

    invoke-virtual {p1, v1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->canEditItem(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "1"

    .line 444
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getCheckInStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x3e8

    .line 449
    :try_start_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    div-long v1, v5, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :catch_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getCheckInOption()Lus/zoom/zrc/model/ZRCCheckInOption;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/ZRCCheckInOption;->getTimeForPriorCheckIn()I

    move-result p1

    int-to-long v5, p1

    .line 454
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getCheckInOption()Lus/zoom/zrc/model/ZRCCheckInOption;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/ZRCCheckInOption;->getTimeForNoCheckInRelease()I

    move-result p1

    int-to-long v7, p1

    .line 455
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    div-long/2addr v9, v3

    sub-long/2addr v9, v1

    neg-long v1, v5

    cmp-long p1, v9, v1

    if-ltz p1, :cond_2

    const-wide/16 v1, 0x3c

    add-long/2addr v7, v1

    cmp-long p1, v9, v7

    if-gtz p1, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    return v0

    :cond_3
    return v0
.end method

.method private getDateFromTime(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 487
    sget-object v0, Lus/zoom/zrcsdk/model/meetingalert/MAConst;->TIME_FORMATTER:Ljava/text/SimpleDateFormat;

    const-string v1, "Z$"

    const-string v2, "+00:00"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;
    .locals 1

    .line 77
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper$Holder;->access$100()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v0

    return-object v0
.end method

.method private getMeetingState(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 592
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 594
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getEndTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 596
    sget-object p1, Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;->UNKNOWN:Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;

    return-object p1

    .line 600
    :cond_2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 601
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartTime()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getDateFromTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 602
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getEndTime()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getDateFromTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 604
    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 606
    sget-object p1, Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;->OVER:Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;

    return-object p1

    .line 608
    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 610
    sget-object p1, Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;->UPCOMING:Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;

    return-object p1

    .line 612
    :cond_4
    invoke-virtual {v1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 614
    sget-object p1, Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;->MEETING:Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;

    return-object p1

    .line 617
    :cond_5
    sget-object p1, Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;->UNKNOWN:Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 621
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    .line 625
    sget-object p1, Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;->UNKNOWN:Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;

    return-object p1
.end method

.method private isCheckInEnabled(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z
    .locals 2
    .param p1    # Lus/zoom/zrcsdk/model/ZRCMeetingListItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 469
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getThirdPartyMeeting()Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->isValidThirdPartyMeetingAndAllowed(Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;)Z

    move-result v0

    .line 471
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->isCheckInEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 472
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getMeetingNumber()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->isValidMeetingNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 473
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isAllDayMeeting()Z

    move-result p1

    if-nez p1, :cond_0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isDialNumberCanCallout(Ljava/util/List;)Z
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCDialNumber;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 241
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 246
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCDialNumber;

    .line 247
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCDialNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    .line 248
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCDialNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_5

    .line 251
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "^([48])0{2}$"

    .line 257
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 258
    invoke-virtual {p1, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 260
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 268
    :cond_2
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getCallOutCountryCode()Ljava/util/List;

    move-result-object p1

    .line 269
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lus/zoom/zrcsdk/model/CountryCode;

    .line 270
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/CountryCode;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->removeCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 271
    invoke-direct {p0, v1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->removeCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 272
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_5
    :goto_1
    return v0

    :cond_6
    :goto_2
    return v0
.end method

.method private isInstantMeeting(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "Instant Meeting"

    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isPersonalMeetingId(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 127
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getRoomInfo()Lus/zoom/zrcsdk/model/ZRCRoomInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->getMeetingNumber()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isSipCallOutSupported()Z
    .locals 3

    .line 167
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x7

    .line 168
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v2

    if-ne v0, v2, :cond_0

    return v1

    .line 171
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipService()Lus/zoom/zrcsdk/model/ZRCSipService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsSipCallout()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isValidMeetingNumber(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 141
    :cond_0
    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->isMeetingId(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0x9

    if-lt p1, v1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x5

    if-lt p1, v1, :cond_2

    :goto_0
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private removeCharacter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 288
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 289
    array-length v1, v0

    if-nez v1, :cond_0

    const-string p1, ""

    return-object p1

    .line 293
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 294
    :goto_0
    array-length v2, v0

    if-ge p1, v2, :cond_2

    .line 295
    aget-char v2, v0, p1

    .line 296
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 297
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 301
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private zpcTrim(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 764
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 767
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public calculateAmPm(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;
    .locals 4
    .param p1    # Lus/zoom/zrcsdk/model/ZRCMeetingListItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 535
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    :try_start_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartTime()Ljava/lang/String;

    move-result-object p1

    .line 538
    sget-object v0, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->dataFormatter:Ljava/text/SimpleDateFormat;

    const-string v1, "Z$"

    const-string v2, "+00:00"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 539
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "a"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 540
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    if-eqz p1, :cond_0

    .line 542
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 545
    sget-object v0, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->TAG:Ljava/lang/String;

    const-string v1, "parse date or time wrongly, stack trace: "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public calculateReleaseTime(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)J
    .locals 6

    .line 685
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isCheckInEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getCheckInOption()Lus/zoom/zrc/model/ZRCCheckInOption;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCCheckInOption;->getTimeForNoCheckInRelease()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x927c0

    .line 688
    :goto_0
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->currentTimeOverStartTime(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public calculateStartTime(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1    # Lus/zoom/zrcsdk/model/ZRCMeetingListItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 496
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isAllDayMeeting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lus/zoom/zrcbox/R$string;->all_day:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 499
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 501
    invoke-static {p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "H:mm"

    goto :goto_0

    :cond_1
    const-string p2, "h:mm aa"

    .line 503
    :goto_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, ""

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 504
    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 506
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 507
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartDate()Ljava/util/Date;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 508
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 511
    sget-object p2, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->TAG:Ljava/lang/String;

    const-string v0, "parse date or time wrongly, stack trace: "

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {p2, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const-string p1, ""

    return-object p1
.end method

.method public currentTimeOverStartTime(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/Long;
    .locals 8

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    .line 692
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 697
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 698
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    div-long/2addr v6, v4

    sub-long/2addr v2, v6

    .line 699
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 701
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 704
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 693
    :cond_1
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public filterNextAlertMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z
    .locals 13

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 802
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartTime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getEndTime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 803
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getEndTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    .line 807
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getMeetingName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->isInstantMeeting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 811
    :cond_2
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->isCheckedIn(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    .line 815
    :cond_3
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getMeetingBtnType(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)I

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 821
    :cond_4
    :try_start_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 822
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getEndDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 824
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-gez p1, :cond_5

    return v0

    .line 832
    :cond_5
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getCheckInOption()Lus/zoom/zrc/model/ZRCCheckInOption;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/ZRCCheckInOption;->getStatus()Z

    move-result p1

    const-wide/16 v3, 0xa

    if-eqz p1, :cond_6

    .line 833
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getCheckInOption()Lus/zoom/zrc/model/ZRCCheckInOption;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/ZRCCheckInOption;->getTimeForPriorCheckIn()I

    move-result p1

    div-int/lit8 p1, p1, 0x3c

    int-to-long v3, p1

    .line 834
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getCheckInOption()Lus/zoom/zrc/model/ZRCCheckInOption;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/ZRCCheckInOption;->getTimeForNoCheckInRelease()I

    move-result p1

    div-int/lit8 p1, p1, 0x3c

    int-to-long v7, p1

    goto :goto_0

    :cond_6
    move-wide v7, v3

    :goto_0
    sub-long/2addr v1, v5

    const-wide/16 v5, 0x3c

    const-wide/16 v9, 0x3e8

    const-wide/16 v11, 0x0

    cmp-long p1, v1, v11

    if-ltz p1, :cond_7

    mul-long v3, v3, v9

    mul-long v3, v3, v5

    cmp-long p1, v1, v3

    if-ltz p1, :cond_8

    :cond_7
    cmp-long p1, v1, v11

    if-gez p1, :cond_9

    .line 839
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-long v7, v7, v9

    mul-long v7, v7, v5

    cmp-long p1, v1, v7

    if-gez p1, :cond_9

    :cond_8
    const/4 v0, 0x1

    :cond_9
    return v0

    :catch_0
    move-exception p1

    .line 841
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :cond_a
    :goto_1
    return v0
.end method

.method public formatMeetingTime(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lus/zoom/zrcsdk/model/ZRCMeetingListItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 404
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isAllDayMeeting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    sget p2, Lus/zoom/zrcbox/R$string;->all_day:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 409
    :cond_0
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 410
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "H:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_0

    .line 412
    :cond_1
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "h:mm aa"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 415
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const-string v0, ""

    const-string v1, ""

    .line 420
    :try_start_0
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 421
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getEndDate()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 423
    sget-object p2, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->TAG:Ljava/lang/String;

    const-string v2, ""

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, v2, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " \u2013 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatTime(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;
    .locals 3

    .line 776
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 779
    :cond_0
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "H:mm"

    goto :goto_0

    :cond_1
    const-string p1, "h:mm aa"

    .line 780
    :goto_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 781
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 784
    :try_start_0
    sget-object p1, Lus/zoom/zrcsdk/model/meetingalert/MAConst;->TIME_FORMATTER:Ljava/text/SimpleDateFormat;

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartTime()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Z$"

    const-string v2, "+00:00"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 786
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 789
    sget-object p2, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->TAG:Ljava/lang/String;

    const-string v0, ""

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const-string p1, ""

    return-object p1
.end method

.method public getMeetingBtnText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    packed-switch p2, :pswitch_data_0

    const-string p1, ""

    return-object p1

    .line 192
    :pswitch_0
    sget p2, Lus/zoom/zrcbox/R$string;->join_audio:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 190
    :pswitch_1
    sget p2, Lus/zoom/zrcbox/R$string;->checked_in:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 188
    :pswitch_2
    sget p2, Lus/zoom/zrcbox/R$string;->check_in:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 184
    :pswitch_3
    sget p2, Lus/zoom/zrcbox/R$string;->join_meeting:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 182
    :pswitch_4
    sget p2, Lus/zoom/zrcbox/R$string;->join_meeting:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 186
    :pswitch_5
    sget p2, Lus/zoom/zrcbox/R$string;->start_meeting:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMeetingBtnText(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;
    .locals 0

    .line 175
    invoke-virtual {p0, p2}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getMeetingBtnType(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)I

    move-result p2

    .line 176
    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getMeetingBtnText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMeetingBtnType(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)I
    .locals 3

    .line 198
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getThirdPartyMeeting()Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;

    move-result-object v0

    .line 200
    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->isValidThirdPartyMeetingAndAllowed(Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 202
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->canCallRoomSystem(Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :cond_0
    const/4 v2, 0x6

    goto :goto_1

    .line 208
    :cond_1
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getMeetingNumber()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->isValidMeetingNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 210
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isStandaloneDigitalSignage()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 217
    :goto_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getMeetingName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->isInstantMeeting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getMeetingNumber()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->isPersonalMeetingId(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v0

    :cond_4
    :goto_1
    if-nez v2, :cond_6

    .line 224
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->isCheckIn(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, 0x4

    goto :goto_2

    .line 226
    :cond_5
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->isCheckedIn(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v2, 0x5

    :cond_6
    :goto_2
    return v2
.end method

.method public getMeetingIconRes(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)I
    .locals 1
    .param p1    # Lus/zoom/zrcsdk/model/ZRCMeetingListItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    .line 520
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getMeetingBtnType(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)I

    move-result p1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 527
    :pswitch_0
    sget p1, Lus/zoom/zrcbox/R$drawable;->meeting_list_type_zoom:I

    return p1

    .line 523
    :cond_0
    sget p1, Lus/zoom/zrcbox/R$drawable;->audio_only:I

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getMeetingNumber(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;
    .locals 2
    .param p1    # Lus/zoom/zrcsdk/model/ZRCMeetingListItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 552
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isForcePrivateMeeting()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isHideHostInfoForPrivateMeeting()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, ""

    return-object p1

    .line 557
    :cond_1
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getThirdPartyMeeting()Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 558
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->canShowMeetingNumber()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 559
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->getMeetingNumber()Ljava/lang/String;

    move-result-object p1

    const-string v0, "-"

    .line 560
    invoke-static {p1, v0}, Lus/zoom/zrc/utils/Util;->formatDisplayMeetingNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 561
    :cond_2
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getMeetingNumber()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->isValidMeetingNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 562
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getMeetingNumber()Ljava/lang/String;

    move-result-object p1

    const-string v0, "-"

    .line 563
    invoke-static {p1, v0}, Lus/zoom/zrc/utils/Util;->formatDisplayMeetingNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-string p1, ""

    return-object p1
.end method

.method public getMeetingText(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lus/zoom/zrcsdk/model/ZRCMeetingListItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 655
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getMeetingNumber()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lus/zoom/zrc/utils/Util;->getDisplayMeetingNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 656
    invoke-static {p2}, Lus/zoom/zrc/utils/Util;->isMeetingId(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lus/zoom/zrcbox/R$string;->meeting_id:I

    .line 657
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lus/zoom/zrcbox/R$string;->personal_link:I

    .line 658
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getMeetingTopic(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p2, :cond_0

    const-string p1, "Meeting Topic"

    return-object p1

    .line 721
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isForcePrivateMeeting()Z

    move-result v0

    .line 722
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isPrivate()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v1, :cond_7

    if-eqz v0, :cond_1

    goto :goto_1

    .line 745
    :cond_1
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getMeetingName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 747
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getCreatorName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->zpcTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 748
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getCreatorName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->zpcTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 749
    :cond_2
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getCreatorEmail()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->zpcTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 750
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getCreatorEmail()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->zpcTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "@"

    .line 751
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_3

    .line 752
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_3
    move-object v4, p2

    .line 755
    :cond_4
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 756
    sget p2, Lus/zoom/zrcbox/R$string;->whose_meeting:I

    invoke-static {p1, p2, v4}, Lus/zoom/zrcsdk/util/StringUtil;->formatEnglishNameWithApostrophes(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 758
    :cond_5
    sget p2, Lus/zoom/zrcbox/R$string;->no_subject:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 760
    :cond_6
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getMeetingName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 725
    :cond_7
    :goto_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isHideHostInfoForPrivateMeeting()Z

    move-result v0

    if-nez v0, :cond_b

    .line 728
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getCreatorName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->zpcTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 729
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getCreatorEmail()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->zpcTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 730
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    move-object v4, v0

    goto :goto_2

    .line 732
    :cond_8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "@"

    .line 734
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_9

    .line 735
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_9
    move-object v4, p2

    .line 739
    :cond_a
    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 740
    sget p2, Lus/zoom/zrcbox/R$string;->whose_meeting:I

    invoke-static {p1, p2, v4}, Lus/zoom/zrcsdk/util/StringUtil;->formatEnglishNameWithApostrophes(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 743
    :cond_b
    sget p2, Lus/zoom/zrcbox/R$string;->private_meeting:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRoomIdleDuration()J
    .locals 4

    .line 853
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingList()Lus/zoom/zrc/model/MeetingList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/MeetingList;->upcomingMeetingList()Ljava/util/List;

    move-result-object v0

    .line 855
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const-wide/16 v2, -0x1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 856
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    .line 857
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    return-wide v2

    .line 862
    :cond_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0

    :cond_1
    return-wide v2
.end method

.method public getServiceProviderName(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lus/zoom/zrcsdk/model/ZRCMeetingListItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 327
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getThirdPartyMeeting()Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;

    move-result-object p2

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    .line 330
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->getServiceProvider()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    :goto_0
    if-eq p2, v0, :cond_1

    packed-switch p2, :pswitch_data_0

    .line 356
    sget p2, Lus/zoom/zrcbox/R$string;->service_provider_unknown:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 353
    :pswitch_0
    sget p2, Lus/zoom/zrcbox/R$string;->service_provider_googlehangout:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 350
    :pswitch_1
    sget p2, Lus/zoom/zrcbox/R$string;->service_provider_bluejeans:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 347
    :pswitch_2
    sget p2, Lus/zoom/zrcbox/R$string;->service_provider_teams:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 344
    :pswitch_3
    sget p2, Lus/zoom/zrcbox/R$string;->service_provider_gotomeeting:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 341
    :pswitch_4
    sget p2, Lus/zoom/zrcbox/R$string;->service_provider_skype:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 338
    :pswitch_5
    sget p2, Lus/zoom/zrcbox/R$string;->service_provider_webex:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 335
    :cond_1
    sget p2, Lus/zoom/zrcbox/R$string;->service_provider_unknown:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getStartTime(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;
    .locals 1

    .line 771
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->formatTime(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public getThirdPartyMeetingNumber(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lus/zoom/zrcsdk/model/ZRCMeetingListItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 366
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getThirdPartyMeeting()Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->getServiceProvider()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    const-string p1, ""

    goto :goto_1

    .line 385
    :pswitch_0
    sget v0, Lus/zoom/zrcbox/R$string;->googlehangout_id:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 382
    :pswitch_1
    sget v0, Lus/zoom/zrcbox/R$string;->meeting_id:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 379
    :pswitch_2
    sget v0, Lus/zoom/zrcbox/R$string;->gotomeeting_id:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 376
    :pswitch_3
    sget v0, Lus/zoom/zrcbox/R$string;->skype_id:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 372
    :pswitch_4
    sget v0, Lus/zoom/zrcbox/R$string;->webex_id:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 392
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getThirdPartyMeeting()Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->getMeetingNumber()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->getDisplayMeetingNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isCheckIn(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z
    .locals 1

    .line 491
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getCheckInState(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)I

    move-result p1

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isCheckedIn(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z
    .locals 1

    .line 435
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getCheckInState(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)I

    move-result p1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHostShow(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z
    .locals 2
    .param p1    # Lus/zoom/zrcsdk/model/ZRCMeetingListItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 679
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isForcePrivateMeeting()Z

    move-result v0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->isHideHostInfoForPrivateMeeting()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getMeetingCreatorName(ZZ)Ljava/lang/String;

    move-result-object p1

    .line 680
    invoke-static {p1}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public isMeetingIDShow(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z
    .locals 2
    .param p1    # Lus/zoom/zrcsdk/model/ZRCMeetingListItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 648
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getThirdPartyMeeting()Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 649
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->canShowMeetingNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 650
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isForcePrivateMeeting()Z

    move-result v0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->isHideHostInfoForPrivateMeeting()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getMeetingNumberForDisplay(ZZ)Ljava/lang/String;

    move-result-object p1

    .line 651
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->isValidMeetingNumber(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isNotUpcomingMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z
    .locals 1

    .line 581
    sget-object v0, Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;->UPCOMING:Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;

    invoke-direct {p0, p1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getMeetingState(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;

    move-result-object p1

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper$MeetingState;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public isServiceProviderShow(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z
    .locals 1
    .param p1    # Lus/zoom/zrcsdk/model/ZRCMeetingListItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 671
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getThirdPartyMeeting()Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;

    move-result-object v0

    .line 672
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getThirdPartyMeeting()Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 675
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->canShowMeetingNumber()Z

    move-result p1

    return p1
.end method

.method public isThirdPartyMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z
    .locals 0

    .line 577
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getThirdPartyMeeting()Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/model/ZRCThirdPartyMeetingUtils;->invalidThirdPartyMeeting(Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public isThirdPartyMeetingIdShow(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z
    .locals 2
    .param p1    # Lus/zoom/zrcsdk/model/ZRCMeetingListItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 662
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getThirdPartyMeeting()Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 663
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getThirdPartyMeeting()Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;

    move-result-object p1

    .line 666
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->canShowMeetingNumber()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 667
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->isHideHostInfoForPrivateMeeting()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->isForcePrivateMeeting()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isValidThirdPartyMeetingAndAllowed(Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 479
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->canShowMeetingNumber()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 481
    :cond_1
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->getDialNumbers()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->isDialNumberCanCallout(Ljava/util/List;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->canJoinPSTNThirdPartyMeeting()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 482
    :goto_0
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->canCallRoomSystem(Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->canJoinThirdPartyMeeting()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-nez v1, :cond_4

    if-eqz p1, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    return v0
.end method

.method public startMeeting(ILus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 2
    .param p2    # Lus/zoom/zrcsdk/model/ZRCMeetingListItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 116
    :pswitch_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1, p2}, Lus/zoom/zrc/model/Model;->callThirdPartyMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    .line 117
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p1

    sget-object v0, Lus/zoom/zrc/base/notification/UserEvent;->DialOutPstnCall:Lus/zoom/zrc/base/notification/UserEvent;

    const-string v1, "meeting"

    invoke-static {v1, p2}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    goto :goto_0

    .line 101
    :pswitch_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1, p2}, Lus/zoom/zrc/model/Model;->checkInCalendarEvent(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    const-string p1, "1"

    .line 102
    invoke-virtual {p2, p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->setCheckInStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :pswitch_2
    invoke-static {}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getDefault()Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->newRoomSystemSession(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    .line 113
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p1

    sget-object p2, Lus/zoom/zrc/base/notification/UserEvent;->ClickStartRoomSystemMeeting:Lus/zoom/zrc/base/notification/UserEvent;

    invoke-virtual {p1, p2}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;)V

    goto :goto_0

    .line 108
    :pswitch_3
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/Model;->setMeetingType(I)V

    .line 109
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object p1

    invoke-virtual {p1, p2}, Lus/zoom/zrcsdk/PTApp;->startMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)I

    :goto_0
    :pswitch_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public startMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 1
    .param p1    # Lus/zoom/zrcsdk/model/ZRCMeetingListItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 94
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getMeetingBtnType(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)I

    move-result v0

    .line 95
    invoke-virtual {p0, v0, p1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->startMeeting(ILus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    return-void
.end method
