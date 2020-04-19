.class public Lus/zoom/zrcsdk/util/ZRCTimeUtils;
.super Ljava/lang/Object;
.source "ZRCTimeUtils.java"


# static fields
.field private static final LOG_TIME_FORMAT:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZZZZZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lus/zoom/zrcsdk/util/ZRCTimeUtils;->LOG_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatElapsedInHMS(J)Ljava/lang/String;
    .locals 10

    const-wide/16 v0, 0x3e8

    .line 23
    div-long/2addr p0, v0

    const-wide/16 v0, 0xe10

    .line 24
    div-long v2, p0, v0

    .line 25
    rem-long/2addr p0, v0

    const-wide/16 v0, 0x3c

    div-long v4, p0, v0

    .line 26
    rem-long/2addr p0, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x2

    const-wide/16 v7, 0x0

    cmp-long v9, v2, v7

    if-lez v9, :cond_0

    .line 28
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%02d:%02d:%02d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v9, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v9, v6

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 30
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%02d:%02d"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v6, v0

    invoke-static {v2, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrentTimeStamp()Ljava/lang/String;
    .locals 2

    .line 69
    sget-object v0, Lus/zoom/zrcsdk/util/ZRCTimeUtils;->LOG_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 70
    sget-object v0, Lus/zoom/zrcsdk/util/ZRCTimeUtils;->LOG_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static logTimeDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .line 55
    sget-object v0, Lus/zoom/zrcsdk/util/ZRCTimeUtils;->LOG_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 56
    sget-object v0, Lus/zoom/zrcsdk/util/ZRCTimeUtils;->LOG_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static logTimeInMillis(J)Ljava/lang/String;
    .locals 2

    .line 18
    sget-object v0, Lus/zoom/zrcsdk/util/ZRCTimeUtils;->LOG_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 19
    sget-object v0, Lus/zoom/zrcsdk/util/ZRCTimeUtils;->LOG_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static logTimeInSeconds(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long p0, p0, v0

    .line 14
    invoke-static {p0, p1}, Lus/zoom/zrcsdk/util/ZRCTimeUtils;->logTimeIntervalInMillis(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static logTimeIntervalInMillis(J)Ljava/lang/String;
    .locals 10

    const-wide/16 v0, 0x3e8

    .line 35
    div-long/2addr p0, v0

    const-wide/16 v0, 0xe10

    .line 37
    div-long v2, p0, v0

    .line 38
    rem-long/2addr p0, v0

    const-wide/16 v0, 0x3c

    div-long v4, p0, v0

    .line 39
    rem-long/2addr p0, v0

    const/4 v0, 0x2

    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v8, 0x0

    cmp-long v9, v2, v6

    if-lez v9, :cond_0

    .line 42
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%02d:%02d:%02d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v9, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v9, v1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v9, v0

    invoke-static {v6, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    cmp-long v2, v4, v6

    if-lez v2, :cond_1

    .line 44
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%02d:%02d"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v8

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v2, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 46
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%02d\""

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v1, v8

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static logTimeIntervalInSeconds(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long p0, p0, v0

    .line 51
    invoke-static {p0, p1}, Lus/zoom/zrcsdk/util/ZRCTimeUtils;->logTimeIntervalInMillis(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static startOfDay()J
    .locals 3

    .line 60
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xb

    .line 61
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 62
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 63
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    .line 64
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 65
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method
