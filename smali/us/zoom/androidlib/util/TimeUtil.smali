.class public Lus/zoom/androidlib/util/TimeUtil;
.super Ljava/lang/Object;
.source "TimeUtil.java"


# static fields
.field public static final DATE_FORMAT_YYYY_MM_DD_T_HH_MM_SS_Z:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ssZ"

.field public static final DATE_FORMAT_YYYY_MM_DD_T_HH_MM_SS_Z_WITH_QUOTE:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

.field public static final ONE_DAY_IN_MILLISECONDS:J = 0x5265c00L

.field public static final ONE_DAY_IN_SECONDS:J = 0x15180L

.field public static final ONE_HOUR_IN_SECONDS:J = 0xe10L

.field public static final ONE_MINUTE_IN_SECONDS:J = 0x3cL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dateDiff(JJ)I
    .locals 0

    .line 103
    invoke-static {p0, p1}, Lus/zoom/androidlib/util/TimeUtil;->getDayZeroTime(J)J

    move-result-wide p0

    .line 104
    invoke-static {p2, p3}, Lus/zoom/androidlib/util/TimeUtil;->getDayZeroTime(J)J

    move-result-wide p2

    sub-long/2addr p0, p2

    const-wide/32 p2, 0x5265c00

    .line 105
    div-long/2addr p0, p2

    long-to-int p1, p0

    return p1
.end method

.method private static format(Ljava/text/DateFormat;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 157
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static format(Ljava/text/DateFormat;Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 190
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    if-eqz p2, :cond_1

    .line 193
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 196
    :cond_1
    invoke-static {p0, v0}, Lus/zoom/androidlib/util/TimeUtil;->format(Ljava/text/DateFormat;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static formatDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    const v0, 0x801a

    .line 68
    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDate(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    .line 164
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object p0

    goto :goto_0

    .line 166
    :cond_0
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    .line 168
    :goto_0
    invoke-static {p0, p1}, Lus/zoom/androidlib/util/TimeUtil;->format(Ljava/text/DateFormat;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDate(Landroid/content/Context;Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    .line 202
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object p0

    goto :goto_0

    .line 204
    :cond_0
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    .line 206
    :goto_0
    invoke-static {p0, p1, p2}, Lus/zoom/androidlib/util/TimeUtil;->format(Ljava/text/DateFormat;Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDateTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa11

    .line 40
    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDateTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 0

    .line 172
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object p0

    invoke-static {p0, p1}, Lus/zoom/androidlib/util/TimeUtil;->format(Ljava/text/DateFormat;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDateTime(Landroid/content/Context;Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 0

    .line 210
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lus/zoom/androidlib/util/TimeUtil;->format(Ljava/text/DateFormat;Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDateTimeCap(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xb11

    .line 60
    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDateTimeShort(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x11

    .line 64
    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDateWithSystem(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    .line 49
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {v0}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const v0, 0x20a14

    .line 56
    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDateWithYear(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    const v0, 0x8016

    .line 72
    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatFullDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    const v0, 0x8017

    .line 75
    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatTemplateDateTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xb15

    .line 79
    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa01

    .line 32
    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    .line 178
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object p0

    goto :goto_0

    .line 180
    :cond_0
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    .line 182
    :goto_0
    invoke-static {p0, p1}, Lus/zoom/androidlib/util/TimeUtil;->format(Ljava/text/DateFormat;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatTime(Landroid/content/Context;Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    .line 216
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object p0

    goto :goto_0

    .line 218
    :cond_0
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    .line 220
    :goto_0
    invoke-static {p0, p1, p2}, Lus/zoom/androidlib/util/TimeUtil;->format(Ljava/text/DateFormat;Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatTimeCap(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xb01

    .line 36
    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatTimeMin(J)Ljava/lang/String;
    .locals 1

    .line 25
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    const-string p0, "HH:mm:ss"

    .line 27
    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-direct {p1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatYearMonthDay(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x14

    .line 44
    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formateDuration(J)Ljava/lang/String;
    .locals 9

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v1, 0x15180

    cmp-long v3, p0, v1

    if-ltz v3, :cond_0

    .line 238
    div-long v3, p0, v1

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    rem-long/2addr p0, v1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0xe10

    cmp-long v5, p0, v3

    if-ltz v5, :cond_1

    const-string v5, "%02d"

    .line 242
    new-array v6, v2, [Ljava/lang/Object;

    div-long v7, p0, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    rem-long/2addr p0, v3

    :cond_1
    const-wide/16 v3, 0x3c

    cmp-long v5, p0, v3

    if-ltz v5, :cond_2

    const-string v5, "%02d"

    .line 246
    new-array v6, v2, [Ljava/lang/Object;

    div-long v7, p0, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    rem-long/2addr p0, v3

    goto :goto_0

    :cond_2
    const-string v3, "00:"

    .line 250
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v3, "%02d"

    .line 252
    new-array v2, v2, [Ljava/lang/Object;

    long-to-int p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formateHourAmPm(J)Ljava/lang/String;
    .locals 2

    const-string v0, "hh:mm a"

    .line 259
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDayZeroTime(J)J
    .locals 4

    .line 125
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr p0, v0

    const-wide/32 v2, 0x5265c00

    .line 126
    div-long/2addr p0, v2

    mul-long p0, p0, v2

    sub-long/2addr p0, v0

    return-wide p0
.end method

.method public static isInSameMonth(JJ)Z
    .locals 1

    .line 225
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 226
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 228
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 229
    invoke-virtual {p0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x1

    .line 230
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p3

    if-ne p2, p3, :cond_0

    const/4 p2, 0x2

    .line 231
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-ne p3, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static isSameDate(JJ)Z
    .locals 1

    .line 83
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 84
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 85
    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result p1

    invoke-virtual {p0}, Ljava/util/Date;->getYear()I

    move-result p2

    if-ne p1, p2, :cond_0

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result p1

    invoke-virtual {p0}, Ljava/util/Date;->getMonth()I

    move-result p2

    if-ne p1, p2, :cond_0

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result p1

    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isToday(J)Z
    .locals 2

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lus/zoom/androidlib/util/TimeUtil;->isSameDate(JJ)Z

    move-result p0

    return p0
.end method

.method public static isTomorrow(J)Z
    .locals 4

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    .line 94
    invoke-static {p0, p1, v0, v1}, Lus/zoom/androidlib/util/TimeUtil;->isSameDate(JJ)Z

    move-result p0

    return p0
.end method

.method public static isYesterday(J)Z
    .locals 4

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    sub-long/2addr v0, v2

    .line 99
    invoke-static {p0, p1, v0, v1}, Lus/zoom/androidlib/util/TimeUtil;->isSameDate(JJ)Z

    move-result p0

    return p0
.end method

.method public static monthsDiff(JJ)I
    .locals 2

    .line 109
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 110
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 111
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 112
    invoke-virtual {v1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 113
    invoke-static {p0, p1, p2, p3}, Lus/zoom/androidlib/util/TimeUtil;->yearsDiff(JJ)I

    move-result p0

    mul-int/lit8 p0, p0, 0xc

    const/4 p1, 0x2

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    sub-int/2addr p2, p1

    add-int/2addr p0, p2

    return p0
.end method

.method public static varargs stringToMilliseconds(Ljava/lang/String;[Ljava/lang/String;)J
    .locals 7

    .line 130
    invoke-static {p0}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    const/4 v0, 0x0

    .line 134
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 137
    new-instance v5, Ljava/text/SimpleDateFormat;

    aget-object v6, p1, v4

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v6, "GMT"

    .line 138
    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 140
    :try_start_0
    invoke-virtual {v5, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    return-wide v1

    .line 148
    :cond_2
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    return-wide p0
.end method

.method public static yearsDiff(JJ)I
    .locals 2

    .line 116
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 117
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 118
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 119
    invoke-virtual {v1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x1

    .line 120
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method
