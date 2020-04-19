.class public Lus/zoom/zrp/util/ZRPUtils;
.super Ljava/lang/Object;
.source "ZRPUtils.java"


# static fields
.field private static final MEETING_DATE_PATTERN:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ssZZZZZ"

.field private static final ONE_DAY:J = 0x5265c00L

.field private static final ONE_HOUR:J = 0x36ee80L

.field private static final ONE_MINUTE:J = 0xea60L

.field private static final ONE_SECOND:J = 0x3e8L


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cielTime(JI)J
    .locals 3

    .line 195
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 196
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p0, 0xc

    .line 197
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    int-to-double v1, p2

    int-to-double p1, p1

    .line 198
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, p1

    double-to-int p1, v1

    .line 199
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 200
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method public static endOfDay()J
    .locals 4

    .line 182
    invoke-static {}, Lus/zoom/zrp/util/ZRPUtils;->startOfDay()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static floorTime(JI)J
    .locals 3

    .line 186
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 187
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p0, 0xc

    .line 188
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    int-to-double v1, p2

    int-to-double p1, p1

    .line 189
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, p1

    double-to-int p1, v1

    .line 190
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 191
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method public static getFormattedDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .line 51
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, "

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFormattedMeetingTime(J)Ljava/lang/String;
    .locals 3

    .line 65
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZZZZZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 66
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 67
    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 68
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getFormattedMeetingTimeDes(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;Z)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_8

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 110
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 111
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    .line 114
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "h"

    .line 117
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "h"

    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {p1}, Ljava/util/Date;->getMinutes()I

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ":mm"

    .line 121
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_2
    invoke-virtual {p2}, Ljava/util/Date;->getMinutes()I

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, ":mm"

    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_3
    invoke-virtual {p1}, Ljava/util/Date;->getHours()I

    move-result v2

    .line 129
    invoke-virtual {p2}, Ljava/util/Date;->getHours()I

    move-result v3

    if-eqz p3, :cond_5

    const/16 p3, 0xc

    if-ge v2, p3, :cond_4

    if-lt v3, p3, :cond_6

    :cond_4
    if-lt v2, p3, :cond_5

    if-ge v3, p3, :cond_6

    :cond_5
    const-string p3, " a"

    .line 131
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string p3, " a"

    .line 134
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " \u2013 "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/text/SimpleDateFormat;

    .line 137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 112
    :cond_7
    :goto_0
    invoke-static {p0, p1, p2}, Lus/zoom/zrp/util/ZRPUtils;->getStandardMeetingTimeDes(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method public static getFormattedTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    .line 33
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {p0, v0}, Lus/zoom/zrp/util/ZRPUtils;->getFormattedTime(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFormattedTime(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getMeetingTimeDes(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;ZZ)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    .line 88
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isAllDayMeeting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    sget p1, Lus/zoom/zrcbox/R$string;->all_day:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 90
    :cond_1
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getEndDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_2

    .line 92
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartDate()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getEndDate()Ljava/util/Date;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lus/zoom/zrp/util/ZRPUtils;->getStandardMeetingTimeDes(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 94
    :cond_2
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getStartDate()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getEndDate()Ljava/util/Date;

    move-result-object p1

    invoke-static {p0, p2, p1, p3}, Lus/zoom/zrp/util/ZRPUtils;->getFormattedMeetingTimeDes(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method public static getMeetingTopic(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;
    .locals 2

    .line 217
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isForcePrivateMeeting()Z

    move-result v0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->isHideHostInfoForPrivateMeeting()Z

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lus/zoom/zrp/util/ZRPUtils;->getMeetingTopic(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMeetingTopic(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;Lus/zoom/zrp/model/ZRPRoomInfo;)Ljava/lang/String;
    .locals 1

    .line 221
    invoke-virtual {p2}, Lus/zoom/zrp/model/ZRPRoomInfo;->isForcePrivateMeeting()Z

    move-result v0

    invoke-virtual {p2}, Lus/zoom/zrp/model/ZRPRoomInfo;->isHideHostInfoForPrivateMeeting()Z

    move-result p2

    invoke-static {p0, p1, v0, p2}, Lus/zoom/zrp/util/ZRPUtils;->getMeetingTopic(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getMeetingTopic(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;ZZ)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    .line 236
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getCreatorName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getCreatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 237
    :goto_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getCreatorEmail()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getCreatorEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, ""

    .line 238
    :goto_1
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getMeetingName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getMeetingName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    const-string v3, ""

    .line 239
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    goto :goto_3

    .line 241
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 242
    invoke-static {v2}, Lus/zoom/zrp/util/ZRPUtils;->localPartOfEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-static {v1}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    move-object v1, v0

    .line 247
    :goto_3
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isPrivate()Z

    move-result p1

    if-nez p1, :cond_8

    if-eqz p2, :cond_5

    goto :goto_4

    .line 253
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_7

    .line 254
    invoke-static {v1}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 255
    sget p1, Lus/zoom/zrcbox/R$string;->no_subject:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 257
    :cond_6
    sget p1, Lus/zoom/zrcbox/R$string;->whose_meeting:I

    invoke-static {p0, p1, v1}, Lus/zoom/zrcsdk/util/StringUtil;->formatEnglishNameWithApostrophes(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    return-object v3

    :cond_8
    :goto_4
    if-nez p3, :cond_a

    .line 248
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_9

    goto :goto_5

    .line 251
    :cond_9
    sget p1, Lus/zoom/zrcbox/R$string;->whose_meeting:I

    invoke-static {p0, p1, v1}, Lus/zoom/zrcsdk/util/StringUtil;->formatEnglishNameWithApostrophes(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 249
    :cond_a
    :goto_5
    sget p1, Lus/zoom/zrcbox/R$string;->private_meeting:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNormalMeetingTimeDes(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-static {p0, p1, v0, v0}, Lus/zoom/zrp/util/ZRPUtils;->getMeetingTimeDes(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPanelFormattedDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .line 56
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget v1, Lus/zoom/zrcbox/R$string;->zpp_date_format:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 57
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPanelFormattedTime(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .line 42
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 43
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "H:mm"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_0

    .line 45
    :cond_0
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "h:mm"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 47
    :goto_0
    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getReserveTime(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 1

    .line 61
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, p3, p4}, Ljava/util/Date;-><init>(J)V

    const/4 p2, 0x0

    invoke-static {p0, v0, p1, p2}, Lus/zoom/zrp/util/ZRPUtils;->getFormattedMeetingTimeDes(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getStandardMeetingTimeDes(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u2013 "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getZRPMeetingTimeDes(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 81
    invoke-static {p0, p1, v0, p2}, Lus/zoom/zrp/util/ZRPUtils;->getMeetingTimeDes(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hoursOfDay(J)I
    .locals 1

    .line 142
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 143
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p0, 0xb

    .line 144
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public static isMeetingRecurring(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z
    .locals 3

    .line 265
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getCalendarType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    return v2

    .line 274
    :pswitch_0
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getItemType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Occurrence"

    .line 275
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Exception"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "RecurringMaster"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    .line 270
    :pswitch_1
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getRecurringEventId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :pswitch_2
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static localPartOfEmailAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "@"

    .line 208
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    const/4 v1, 0x0

    .line 210
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p0
.end method

.method public static logTimeShort(J)Ljava/lang/String;
    .locals 3

    .line 72
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "H:mm"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 73
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static millis2Mins(J)J
    .locals 2

    long-to-double p0, p0

    const-wide v0, 0x40ed4c0000000000L    # 60000.0

    .line 148
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    return-wide p0
.end method

.method public static mins2Millis(J)J
    .locals 1

    .line 152
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static minsOfDay(J)I
    .locals 1

    .line 156
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 157
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p0, 0xc

    .line 158
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const/16 p1, 0xb

    .line 159
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x3c

    add-int/2addr p0, p1

    return p0
.end method

.method public static startOfDay()J
    .locals 3

    .line 173
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xb

    .line 174
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 175
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 176
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    .line 177
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 178
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static todayMins2Millis(I)J
    .locals 3

    .line 164
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 165
    div-int/lit8 v1, p0, 0x3c

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 166
    rem-int/lit8 p0, p0, 0x3c

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x0

    const/16 v1, 0xd

    .line 167
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    .line 168
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    .line 169
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method
