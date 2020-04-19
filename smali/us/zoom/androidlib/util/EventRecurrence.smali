.class public Lus/zoom/androidlib/util/EventRecurrence;
.super Ljava/lang/Object;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/util/EventRecurrence$ParseWkst;,
        Lus/zoom/androidlib/util/EventRecurrence$ParseBySetPos;,
        Lus/zoom/androidlib/util/EventRecurrence$ParseByMonth;,
        Lus/zoom/androidlib/util/EventRecurrence$ParseByWeekNo;,
        Lus/zoom/androidlib/util/EventRecurrence$ParseByYearDay;,
        Lus/zoom/androidlib/util/EventRecurrence$ParseByMonthDay;,
        Lus/zoom/androidlib/util/EventRecurrence$ParseByDay;,
        Lus/zoom/androidlib/util/EventRecurrence$ParseByHour;,
        Lus/zoom/androidlib/util/EventRecurrence$ParseByMinute;,
        Lus/zoom/androidlib/util/EventRecurrence$ParseBySecond;,
        Lus/zoom/androidlib/util/EventRecurrence$ParseInterval;,
        Lus/zoom/androidlib/util/EventRecurrence$ParseCount;,
        Lus/zoom/androidlib/util/EventRecurrence$ParseUntil;,
        Lus/zoom/androidlib/util/EventRecurrence$ParseFreq;,
        Lus/zoom/androidlib/util/EventRecurrence$PartParser;,
        Lus/zoom/androidlib/util/EventRecurrence$InvalidFormatException;
    }
.end annotation


# static fields
.field private static final ALLOW_LOWER_CASE:Z = false

.field public static final DAILY:I = 0x4

.field public static final FR:I = 0x200000

.field public static final HOURLY:I = 0x3

.field public static final MINUTELY:I = 0x2

.field public static final MO:I = 0x20000

.field public static final MONTHLY:I = 0x6

.field private static final ONLY_ONE_UNTIL_COUNT:Z = false

.field private static final PARSED_BYDAY:I = 0x80

.field private static final PARSED_BYHOUR:I = 0x40

.field private static final PARSED_BYMINUTE:I = 0x20

.field private static final PARSED_BYMONTH:I = 0x800

.field private static final PARSED_BYMONTHDAY:I = 0x100

.field private static final PARSED_BYSECOND:I = 0x10

.field private static final PARSED_BYSETPOS:I = 0x1000

.field private static final PARSED_BYWEEKNO:I = 0x400

.field private static final PARSED_BYYEARDAY:I = 0x200

.field private static final PARSED_COUNT:I = 0x4

.field private static final PARSED_FREQ:I = 0x1

.field private static final PARSED_INTERVAL:I = 0x8

.field private static final PARSED_UNTIL:I = 0x2

.field private static final PARSED_WKST:I = 0x2000

.field public static final SA:I = 0x400000

.field public static final SECONDLY:I = 0x1

.field public static final SU:I = 0x10000

.field private static TAG:Ljava/lang/String; = "EventRecur"

.field public static final TH:I = 0x100000

.field public static final TU:I = 0x40000

.field private static final VALIDATE_UNTIL:Z = false

.field public static final WE:I = 0x80000

.field public static final WEEKLY:I = 0x5

.field public static final YEARLY:I = 0x7

.field private static final sParseFreqMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sParsePartMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lus/zoom/androidlib/util/EventRecurrence$PartParser;",
            ">;"
        }
    .end annotation
.end field

.field private static final sParseWeekdayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public byday:[I

.field public bydayCount:I

.field public bydayNum:[I

.field public byhour:[I

.field public byhourCount:I

.field public byminute:[I

.field public byminuteCount:I

.field public bymonth:[I

.field public bymonthCount:I

.field public bymonthday:[I

.field public bymonthdayCount:I

.field public bysecond:[I

.field public bysecondCount:I

.field public bysetpos:[I

.field public bysetposCount:I

.field public byweekno:[I

.field public byweeknoCount:I

.field public byyearday:[I

.field public byyeardayCount:I

.field public count:I

.field public freq:I

.field public interval:I

.field public startDate:Landroid/text/format/Time;

.field public until:Ljava/lang/String;

.field public wkst:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lus/zoom/androidlib/util/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    .line 84
    sget-object v0, Lus/zoom/androidlib/util/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "FREQ"

    new-instance v2, Lus/zoom/androidlib/util/EventRecurrence$ParseFreq;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lus/zoom/androidlib/util/EventRecurrence$ParseFreq;-><init>(Lus/zoom/androidlib/util/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lus/zoom/androidlib/util/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "UNTIL"

    new-instance v2, Lus/zoom/androidlib/util/EventRecurrence$ParseUntil;

    invoke-direct {v2, v3}, Lus/zoom/androidlib/util/EventRecurrence$ParseUntil;-><init>(Lus/zoom/androidlib/util/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lus/zoom/androidlib/util/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "COUNT"

    new-instance v2, Lus/zoom/androidlib/util/EventRecurrence$ParseCount;

    invoke-direct {v2, v3}, Lus/zoom/androidlib/util/EventRecurrence$ParseCount;-><init>(Lus/zoom/androidlib/util/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lus/zoom/androidlib/util/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "INTERVAL"

    new-instance v2, Lus/zoom/androidlib/util/EventRecurrence$ParseInterval;

    invoke-direct {v2, v3}, Lus/zoom/androidlib/util/EventRecurrence$ParseInterval;-><init>(Lus/zoom/androidlib/util/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lus/zoom/androidlib/util/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYSECOND"

    new-instance v2, Lus/zoom/androidlib/util/EventRecurrence$ParseBySecond;

    invoke-direct {v2, v3}, Lus/zoom/androidlib/util/EventRecurrence$ParseBySecond;-><init>(Lus/zoom/androidlib/util/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lus/zoom/androidlib/util/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYMINUTE"

    new-instance v2, Lus/zoom/androidlib/util/EventRecurrence$ParseByMinute;

    invoke-direct {v2, v3}, Lus/zoom/androidlib/util/EventRecurrence$ParseByMinute;-><init>(Lus/zoom/androidlib/util/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lus/zoom/androidlib/util/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYHOUR"

    new-instance v2, Lus/zoom/androidlib/util/EventRecurrence$ParseByHour;

    invoke-direct {v2, v3}, Lus/zoom/androidlib/util/EventRecurrence$ParseByHour;-><init>(Lus/zoom/androidlib/util/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lus/zoom/androidlib/util/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYDAY"

    new-instance v2, Lus/zoom/androidlib/util/EventRecurrence$ParseByDay;

    invoke-direct {v2, v3}, Lus/zoom/androidlib/util/EventRecurrence$ParseByDay;-><init>(Lus/zoom/androidlib/util/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lus/zoom/androidlib/util/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYMONTHDAY"

    new-instance v2, Lus/zoom/androidlib/util/EventRecurrence$ParseByMonthDay;

    invoke-direct {v2, v3}, Lus/zoom/androidlib/util/EventRecurrence$ParseByMonthDay;-><init>(Lus/zoom/androidlib/util/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lus/zoom/androidlib/util/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYYEARDAY"

    new-instance v2, Lus/zoom/androidlib/util/EventRecurrence$ParseByYearDay;

    invoke-direct {v2, v3}, Lus/zoom/androidlib/util/EventRecurrence$ParseByYearDay;-><init>(Lus/zoom/androidlib/util/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lus/zoom/androidlib/util/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYWEEKNO"

    new-instance v2, Lus/zoom/androidlib/util/EventRecurrence$ParseByWeekNo;

    invoke-direct {v2, v3}, Lus/zoom/androidlib/util/EventRecurrence$ParseByWeekNo;-><init>(Lus/zoom/androidlib/util/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lus/zoom/androidlib/util/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYMONTH"

    new-instance v2, Lus/zoom/androidlib/util/EventRecurrence$ParseByMonth;

    invoke-direct {v2, v3}, Lus/zoom/androidlib/util/EventRecurrence$ParseByMonth;-><init>(Lus/zoom/androidlib/util/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lus/zoom/androidlib/util/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYSETPOS"

    new-instance v2, Lus/zoom/androidlib/util/EventRecurrence$ParseBySetPos;

    invoke-direct {v2, v3}, Lus/zoom/androidlib/util/EventRecurrence$ParseBySetPos;-><init>(Lus/zoom/androidlib/util/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lus/zoom/androidlib/util/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "WKST"

    new-instance v2, Lus/zoom/androidlib/util/EventRecurrence$ParseWkst;

    invoke-direct {v2, v3}, Lus/zoom/androidlib/util/EventRecurrence$ParseWkst;-><init>(Lus/zoom/androidlib/util/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lus/zoom/androidlib/util/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    .line 119
    sget-object v0, Lus/zoom/androidlib/util/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    const-string v1, "SECONDLY"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lus/zoom/androidlib/util/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    const-string v1, "MINUTELY"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lus/zoom/androidlib/util/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    const-string v1, "HOURLY"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lus/zoom/androidlib/util/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    const-string v1, "DAILY"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lus/zoom/androidlib/util/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    const-string v1, "WEEKLY"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lus/zoom/androidlib/util/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    const-string v1, "MONTHLY"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lus/zoom/androidlib/util/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    const-string v1, "YEARLY"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lus/zoom/androidlib/util/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    .line 131
    sget-object v0, Lus/zoom/androidlib/util/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    const-string v1, "SU"

    const/high16 v2, 0x10000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lus/zoom/androidlib/util/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    const-string v1, "MO"

    const/high16 v2, 0x20000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lus/zoom/androidlib/util/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    const-string v1, "TU"

    const/high16 v2, 0x40000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lus/zoom/androidlib/util/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    const-string v1, "WE"

    const/high16 v2, 0x80000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lus/zoom/androidlib/util/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    const-string v1, "TH"

    const/high16 v2, 0x100000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lus/zoom/androidlib/util/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    const-string v1, "FR"

    const/high16 v2, 0x200000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lus/zoom/androidlib/util/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    const-string v1, "SA"

    const/high16 v2, 0x400000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1400()Ljava/util/HashMap;
    .locals 1

    .line 32
    sget-object v0, Lus/zoom/androidlib/util/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/util/HashMap;
    .locals 1

    .line 32
    sget-object v0, Lus/zoom/androidlib/util/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private appendByDay(Ljava/lang/StringBuilder;I)V
    .locals 1

    .line 313
    iget-object v0, p0, Lus/zoom/androidlib/util/EventRecurrence;->bydayNum:[I

    aget v0, v0, p2

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 318
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/util/EventRecurrence;->byday:[I

    aget p2, v0, p2

    invoke-static {p2}, Lus/zoom/androidlib/util/EventRecurrence;->day2String(I)Ljava/lang/String;

    move-result-object p2

    .line 319
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V
    .locals 1

    if-lez p2, :cond_1

    .line 301
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p2, :cond_0

    .line 304
    aget v0, p3, p1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    .line 305
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 307
    :cond_0
    aget p1, p3, p2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method private static arraysEqual([II[II)Z
    .locals 3

    const/4 v0, 0x0

    if-eq p1, p3, :cond_0

    return v0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_2

    .line 464
    aget v1, p0, p3

    aget v2, p2, p3

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static calendarDay2Day(I)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    .line 189
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day of week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/high16 p0, 0x400000

    return p0

    :pswitch_1
    const/high16 p0, 0x200000

    return p0

    :pswitch_2
    const/high16 p0, 0x100000

    return p0

    :pswitch_3
    const/high16 p0, 0x80000

    return p0

    :pswitch_4
    const/high16 p0, 0x40000

    return p0

    :pswitch_5
    const/high16 p0, 0x20000

    return p0

    :pswitch_6
    const/high16 p0, 0x10000

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static day2CalendarDay(I)I
    .locals 3

    const/high16 v0, 0x10000

    if-eq p0, v0, :cond_6

    const/high16 v0, 0x20000

    if-eq p0, v0, :cond_5

    const/high16 v0, 0x40000

    if-eq p0, v0, :cond_4

    const/high16 v0, 0x80000

    if-eq p0, v0, :cond_3

    const/high16 v0, 0x100000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x200000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x400000

    if-ne p0, v0, :cond_0

    const/4 p0, 0x7

    return p0

    .line 262
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day of week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 p0, 0x6

    return p0

    :cond_2
    const/4 p0, 0x5

    return p0

    :cond_3
    const/4 p0, 0x4

    return p0

    :cond_4
    const/4 p0, 0x3

    return p0

    :cond_5
    const/4 p0, 0x2

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method private static day2String(I)Ljava/lang/String;
    .locals 3

    const/high16 v0, 0x10000

    if-eq p0, v0, :cond_6

    const/high16 v0, 0x20000

    if-eq p0, v0, :cond_5

    const/high16 v0, 0x40000

    if-eq p0, v0, :cond_4

    const/high16 v0, 0x80000

    if-eq p0, v0, :cond_3

    const/high16 v0, 0x100000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x200000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x400000

    if-ne p0, v0, :cond_0

    const-string p0, "SA"

    return-object p0

    .line 293
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "FR"

    return-object p0

    :cond_2
    const-string p0, "TH"

    return-object p0

    :cond_3
    const-string p0, "WE"

    return-object p0

    :cond_4
    const-string p0, "TU"

    return-object p0

    :cond_5
    const-string p0, "MO"

    return-object p0

    :cond_6
    const-string p0, "SU"

    return-object p0
.end method

.method public static day2TimeDay(I)I
    .locals 3

    const/high16 v0, 0x10000

    if-eq p0, v0, :cond_6

    const/high16 v0, 0x20000

    if-eq p0, v0, :cond_5

    const/high16 v0, 0x40000

    if-eq p0, v0, :cond_4

    const/high16 v0, 0x80000

    if-eq p0, v0, :cond_3

    const/high16 v0, 0x100000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x200000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x400000

    if-ne p0, v0, :cond_0

    const/4 p0, 0x6

    return p0

    .line 234
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day of week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 p0, 0x5

    return p0

    :cond_2
    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x3

    return p0

    :cond_4
    const/4 p0, 0x2

    return p0

    :cond_5
    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private resetFields()V
    .locals 1

    const/4 v0, 0x0

    .line 517
    iput-object v0, p0, Lus/zoom/androidlib/util/EventRecurrence;->until:Ljava/lang/String;

    const/4 v0, 0x0

    .line 518
    iput v0, p0, Lus/zoom/androidlib/util/EventRecurrence;->bysetposCount:I

    iput v0, p0, Lus/zoom/androidlib/util/EventRecurrence;->bymonthCount:I

    iput v0, p0, Lus/zoom/androidlib/util/EventRecurrence;->byweeknoCount:I

    iput v0, p0, Lus/zoom/androidlib/util/EventRecurrence;->byyeardayCount:I

    iput v0, p0, Lus/zoom/androidlib/util/EventRecurrence;->bymonthdayCount:I

    iput v0, p0, Lus/zoom/androidlib/util/EventRecurrence;->bydayCount:I

    iput v0, p0, Lus/zoom/androidlib/util/EventRecurrence;->byhourCount:I

    iput v0, p0, Lus/zoom/androidlib/util/EventRecurrence;->byminuteCount:I

    iput v0, p0, Lus/zoom/androidlib/util/EventRecurrence;->bysecondCount:I

    iput v0, p0, Lus/zoom/androidlib/util/EventRecurrence;->interval:I

    iput v0, p0, Lus/zoom/androidlib/util/EventRecurrence;->count:I

    iput v0, p0, Lus/zoom/androidlib/util/EventRecurrence;->freq:I

    return-void
.end method

.method public static timeDay2Day(I)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    .line 212
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day of week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/high16 p0, 0x400000

    return p0

    :pswitch_1
    const/high16 p0, 0x200000

    return p0

    :pswitch_2
    const/high16 p0, 0x100000

    return p0

    :pswitch_3
    const/high16 p0, 0x80000

    return p0

    :pswitch_4
    const/high16 p0, 0x40000

    return p0

    :pswitch_5
    const/high16 p0, 0x20000

    return p0

    :pswitch_6
    const/high16 p0, 0x10000

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 476
    :cond_0
    instance-of v1, p1, Lus/zoom/androidlib/util/EventRecurrence;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 480
    :cond_1
    check-cast p1, Lus/zoom/androidlib/util/EventRecurrence;

    .line 481
    iget-object v1, p0, Lus/zoom/androidlib/util/EventRecurrence;->startDate:Landroid/text/format/Time;

    if-nez v1, :cond_2

    iget-object v1, p1, Lus/zoom/androidlib/util/EventRecurrence;->startDate:Landroid/text/format/Time;

    if-nez v1, :cond_4

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lus/zoom/androidlib/util/EventRecurrence;->startDate:Landroid/text/format/Time;

    .line 482
    invoke-static {v1, v3}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    iget v1, p0, Lus/zoom/androidlib/util/EventRecurrence;->freq:I

    iget v3, p1, Lus/zoom/androidlib/util/EventRecurrence;->freq:I

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lus/zoom/androidlib/util/EventRecurrence;->until:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p1, Lus/zoom/androidlib/util/EventRecurrence;->until:Ljava/lang/String;

    if-nez v1, :cond_4

    goto :goto_1

    :cond_3
    iget-object v3, p1, Lus/zoom/androidlib/util/EventRecurrence;->until:Ljava/lang/String;

    .line 484
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    iget v1, p0, Lus/zoom/androidlib/util/EventRecurrence;->count:I

    iget v3, p1, Lus/zoom/androidlib/util/EventRecurrence;->count:I

    if-ne v1, v3, :cond_4

    iget v1, p0, Lus/zoom/androidlib/util/EventRecurrence;->interval:I

    iget v3, p1, Lus/zoom/androidlib/util/EventRecurrence;->interval:I

    if-ne v1, v3, :cond_4

    iget v1, p0, Lus/zoom/androidlib/util/EventRecurrence;->wkst:I

    iget v3, p1, Lus/zoom/androidlib/util/EventRecurrence;->wkst:I

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lus/zoom/androidlib/util/EventRecurrence;->bysecond:[I

    iget v3, p0, Lus/zoom/androidlib/util/EventRecurrence;->bysecondCount:I

    iget-object v4, p1, Lus/zoom/androidlib/util/EventRecurrence;->bysecond:[I

    iget v5, p1, Lus/zoom/androidlib/util/EventRecurrence;->bysecondCount:I

    .line 488
    invoke-static {v1, v3, v4, v5}, Lus/zoom/androidlib/util/EventRecurrence;->arraysEqual([II[II)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lus/zoom/androidlib/util/EventRecurrence;->byminute:[I

    iget v3, p0, Lus/zoom/androidlib/util/EventRecurrence;->byminuteCount:I

    iget-object v4, p1, Lus/zoom/androidlib/util/EventRecurrence;->byminute:[I

    iget v5, p1, Lus/zoom/androidlib/util/EventRecurrence;->byminuteCount:I

    .line 489
    invoke-static {v1, v3, v4, v5}, Lus/zoom/androidlib/util/EventRecurrence;->arraysEqual([II[II)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lus/zoom/androidlib/util/EventRecurrence;->byhour:[I

    iget v3, p0, Lus/zoom/androidlib/util/EventRecurrence;->byhourCount:I

    iget-object v4, p1, Lus/zoom/androidlib/util/EventRecurrence;->byhour:[I

    iget v5, p1, Lus/zoom/androidlib/util/EventRecurrence;->byhourCount:I

    .line 490
    invoke-static {v1, v3, v4, v5}, Lus/zoom/androidlib/util/EventRecurrence;->arraysEqual([II[II)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lus/zoom/androidlib/util/EventRecurrence;->byday:[I

    iget v3, p0, Lus/zoom/androidlib/util/EventRecurrence;->bydayCount:I

    iget-object v4, p1, Lus/zoom/androidlib/util/EventRecurrence;->byday:[I

    iget v5, p1, Lus/zoom/androidlib/util/EventRecurrence;->bydayCount:I

    .line 491
    invoke-static {v1, v3, v4, v5}, Lus/zoom/androidlib/util/EventRecurrence;->arraysEqual([II[II)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lus/zoom/androidlib/util/EventRecurrence;->bydayNum:[I

    iget v3, p0, Lus/zoom/androidlib/util/EventRecurrence;->bydayCount:I

    iget-object v4, p1, Lus/zoom/androidlib/util/EventRecurrence;->bydayNum:[I

    iget v5, p1, Lus/zoom/androidlib/util/EventRecurrence;->bydayCount:I

    .line 492
    invoke-static {v1, v3, v4, v5}, Lus/zoom/androidlib/util/EventRecurrence;->arraysEqual([II[II)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lus/zoom/androidlib/util/EventRecurrence;->bymonthday:[I

    iget v3, p0, Lus/zoom/androidlib/util/EventRecurrence;->bymonthdayCount:I

    iget-object v4, p1, Lus/zoom/androidlib/util/EventRecurrence;->bymonthday:[I

    iget v5, p1, Lus/zoom/androidlib/util/EventRecurrence;->bymonthdayCount:I

    .line 493
    invoke-static {v1, v3, v4, v5}, Lus/zoom/androidlib/util/EventRecurrence;->arraysEqual([II[II)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lus/zoom/androidlib/util/EventRecurrence;->byyearday:[I

    iget v3, p0, Lus/zoom/androidlib/util/EventRecurrence;->byyeardayCount:I

    iget-object v4, p1, Lus/zoom/androidlib/util/EventRecurrence;->byyearday:[I

    iget v5, p1, Lus/zoom/androidlib/util/EventRecurrence;->byyeardayCount:I

    .line 494
    invoke-static {v1, v3, v4, v5}, Lus/zoom/androidlib/util/EventRecurrence;->arraysEqual([II[II)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lus/zoom/androidlib/util/EventRecurrence;->byweekno:[I

    iget v3, p0, Lus/zoom/androidlib/util/EventRecurrence;->byweeknoCount:I

    iget-object v4, p1, Lus/zoom/androidlib/util/EventRecurrence;->byweekno:[I

    iget v5, p1, Lus/zoom/androidlib/util/EventRecurrence;->byweeknoCount:I

    .line 495
    invoke-static {v1, v3, v4, v5}, Lus/zoom/androidlib/util/EventRecurrence;->arraysEqual([II[II)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lus/zoom/androidlib/util/EventRecurrence;->bymonth:[I

    iget v3, p0, Lus/zoom/androidlib/util/EventRecurrence;->bymonthCount:I

    iget-object v4, p1, Lus/zoom/androidlib/util/EventRecurrence;->bymonth:[I

    iget v5, p1, Lus/zoom/androidlib/util/EventRecurrence;->bymonthCount:I

    .line 496
    invoke-static {v1, v3, v4, v5}, Lus/zoom/androidlib/util/EventRecurrence;->arraysEqual([II[II)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lus/zoom/androidlib/util/EventRecurrence;->bysetpos:[I

    iget v3, p0, Lus/zoom/androidlib/util/EventRecurrence;->bysetposCount:I

    iget-object v4, p1, Lus/zoom/androidlib/util/EventRecurrence;->bysetpos:[I

    iget p1, p1, Lus/zoom/androidlib/util/EventRecurrence;->bysetposCount:I

    .line 497
    invoke-static {v1, v3, v4, p1}, Lus/zoom/androidlib/util/EventRecurrence;->arraysEqual([II[II)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 502
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 9

    .line 594
    invoke-direct {p0}, Lus/zoom/androidlib/util/EventRecurrence;->resetFields()V

    const-string v0, ";"

    .line 601
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 603
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v5, v0, v3

    const/16 v6, 0x3d

    .line 604
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_4

    .line 610
    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    .line 611
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 612
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_3

    .line 620
    sget-object v5, Lus/zoom/androidlib/util/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lus/zoom/androidlib/util/EventRecurrence$PartParser;

    if-nez v5, :cond_1

    const-string v5, "X-"

    .line 622
    invoke-virtual {v7, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 626
    :cond_0
    new-instance p1, Lus/zoom/androidlib/util/EventRecurrence$InvalidFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t find parser for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lus/zoom/androidlib/util/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 628
    :cond_1
    invoke-virtual {v5, v6, p0}, Lus/zoom/androidlib/util/EventRecurrence$PartParser;->parsePart(Ljava/lang/String;Lus/zoom/androidlib/util/EventRecurrence;)I

    move-result v5

    and-int v6, v4, v5

    if-nez v6, :cond_2

    or-int/2addr v4, v5

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 630
    :cond_2
    new-instance p1, Lus/zoom/androidlib/util/EventRecurrence$InvalidFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Part "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was specified twice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lus/zoom/androidlib/util/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 613
    :cond_3
    new-instance p1, Lus/zoom/androidlib/util/EventRecurrence$InvalidFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing RHS in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lus/zoom/androidlib/util/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 607
    :cond_4
    new-instance p1, Lus/zoom/androidlib/util/EventRecurrence$InvalidFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing LHS in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lus/zoom/androidlib/util/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    and-int/lit16 v0, v4, 0x2000

    if-nez v0, :cond_6

    const/high16 v0, 0x20000

    .line 638
    iput v0, p0, Lus/zoom/androidlib/util/EventRecurrence;->wkst:I

    :cond_6
    and-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x6

    and-int/lit8 v1, v4, 0x6

    if-ne v1, v0, :cond_7

    .line 651
    sget-object v0, Lus/zoom/androidlib/util/EventRecurrence;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning: rrule has both UNTIL and COUNT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    .line 643
    :cond_8
    new-instance p1, Lus/zoom/androidlib/util/EventRecurrence$InvalidFormatException;

    const-string v0, "Must specify a FREQ value"

    invoke-direct {p1, v0}, Lus/zoom/androidlib/util/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    return-void
.end method

.method public repeatsMonthlyOnDayCount()Z
    .locals 3

    .line 433
    iget v0, p0, Lus/zoom/androidlib/util/EventRecurrence;->freq:I

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    return v1

    .line 437
    :cond_0
    iget v0, p0, Lus/zoom/androidlib/util/EventRecurrence;->bydayCount:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget v0, p0, Lus/zoom/androidlib/util/EventRecurrence;->bymonthdayCount:I

    if-eqz v0, :cond_1

    goto :goto_0

    .line 441
    :cond_1
    iget-object v0, p0, Lus/zoom/androidlib/util/EventRecurrence;->bydayNum:[I

    aget v0, v0, v1

    if-gtz v0, :cond_2

    return v1

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method public repeatsOnEveryWeekDay()Z
    .locals 5

    .line 400
    iget v0, p0, Lus/zoom/androidlib/util/EventRecurrence;->freq:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 404
    :cond_0
    iget v0, p0, Lus/zoom/androidlib/util/EventRecurrence;->bydayCount:I

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 410
    iget-object v3, p0, Lus/zoom/androidlib/util/EventRecurrence;->byday:[I

    aget v3, v3, v1

    const/high16 v4, 0x10000

    if-eq v3, v4, :cond_3

    const/high16 v4, 0x400000

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v2

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public setStartDate(Landroid/text/format/Time;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lus/zoom/androidlib/util/EventRecurrence;->startDate:Landroid/text/format/Time;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FREQ="

    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    iget v1, p0, Lus/zoom/androidlib/util/EventRecurrence;->freq:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "YEARLY"

    .line 350
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    const-string v1, "MONTHLY"

    .line 347
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    const-string v1, "WEEKLY"

    .line 344
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_3
    const-string v1, "DAILY"

    .line 341
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_4
    const-string v1, "HOURLY"

    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_5
    const-string v1, "MINUTELY"

    .line 335
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_6
    const-string v1, "SECONDLY"

    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    :goto_0
    iget-object v1, p0, Lus/zoom/androidlib/util/EventRecurrence;->until:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ";UNTIL="

    .line 355
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    iget-object v1, p0, Lus/zoom/androidlib/util/EventRecurrence;->until:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    :cond_0
    iget v1, p0, Lus/zoom/androidlib/util/EventRecurrence;->count:I

    if-eqz v1, :cond_1

    const-string v1, ";COUNT="

    .line 360
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    iget v1, p0, Lus/zoom/androidlib/util/EventRecurrence;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 364
    :cond_1
    iget v1, p0, Lus/zoom/androidlib/util/EventRecurrence;->interval:I

    if-eqz v1, :cond_2

    const-string v1, ";INTERVAL="

    .line 365
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    iget v1, p0, Lus/zoom/androidlib/util/EventRecurrence;->interval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 369
    :cond_2
    iget v1, p0, Lus/zoom/androidlib/util/EventRecurrence;->wkst:I

    if-eqz v1, :cond_3

    const-string v1, ";WKST="

    .line 370
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    iget v1, p0, Lus/zoom/androidlib/util/EventRecurrence;->wkst:I

    invoke-static {v1}, Lus/zoom/androidlib/util/EventRecurrence;->day2String(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, ";BYSECOND="

    .line 374
    iget v2, p0, Lus/zoom/androidlib/util/EventRecurrence;->bysecondCount:I

    iget-object v3, p0, Lus/zoom/androidlib/util/EventRecurrence;->bysecond:[I

    invoke-static {v0, v1, v2, v3}, Lus/zoom/androidlib/util/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    const-string v1, ";BYMINUTE="

    .line 375
    iget v2, p0, Lus/zoom/androidlib/util/EventRecurrence;->byminuteCount:I

    iget-object v3, p0, Lus/zoom/androidlib/util/EventRecurrence;->byminute:[I

    invoke-static {v0, v1, v2, v3}, Lus/zoom/androidlib/util/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    const-string v1, ";BYSECOND="

    .line 376
    iget v2, p0, Lus/zoom/androidlib/util/EventRecurrence;->byhourCount:I

    iget-object v3, p0, Lus/zoom/androidlib/util/EventRecurrence;->byhour:[I

    invoke-static {v0, v1, v2, v3}, Lus/zoom/androidlib/util/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 379
    iget v1, p0, Lus/zoom/androidlib/util/EventRecurrence;->bydayCount:I

    if-lez v1, :cond_5

    const-string v2, ";BYDAY="

    .line 381
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    .line 384
    invoke-direct {p0, v0, v2}, Lus/zoom/androidlib/util/EventRecurrence;->appendByDay(Ljava/lang/StringBuilder;I)V

    const-string v3, ","

    .line 385
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 387
    :cond_4
    invoke-direct {p0, v0, v1}, Lus/zoom/androidlib/util/EventRecurrence;->appendByDay(Ljava/lang/StringBuilder;I)V

    :cond_5
    const-string v1, ";BYMONTHDAY="

    .line 390
    iget v2, p0, Lus/zoom/androidlib/util/EventRecurrence;->bymonthdayCount:I

    iget-object v3, p0, Lus/zoom/androidlib/util/EventRecurrence;->bymonthday:[I

    invoke-static {v0, v1, v2, v3}, Lus/zoom/androidlib/util/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    const-string v1, ";BYYEARDAY="

    .line 391
    iget v2, p0, Lus/zoom/androidlib/util/EventRecurrence;->byyeardayCount:I

    iget-object v3, p0, Lus/zoom/androidlib/util/EventRecurrence;->byyearday:[I

    invoke-static {v0, v1, v2, v3}, Lus/zoom/androidlib/util/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    const-string v1, ";BYWEEKNO="

    .line 392
    iget v2, p0, Lus/zoom/androidlib/util/EventRecurrence;->byweeknoCount:I

    iget-object v3, p0, Lus/zoom/androidlib/util/EventRecurrence;->byweekno:[I

    invoke-static {v0, v1, v2, v3}, Lus/zoom/androidlib/util/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    const-string v1, ";BYMONTH="

    .line 393
    iget v2, p0, Lus/zoom/androidlib/util/EventRecurrence;->bymonthCount:I

    iget-object v3, p0, Lus/zoom/androidlib/util/EventRecurrence;->bymonth:[I

    invoke-static {v0, v1, v2, v3}, Lus/zoom/androidlib/util/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    const-string v1, ";BYSETPOS="

    .line 394
    iget v2, p0, Lus/zoom/androidlib/util/EventRecurrence;->bysetposCount:I

    iget-object v3, p0, Lus/zoom/androidlib/util/EventRecurrence;->bysetpos:[I

    invoke-static {v0, v1, v2, v3}, Lus/zoom/androidlib/util/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 396
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
