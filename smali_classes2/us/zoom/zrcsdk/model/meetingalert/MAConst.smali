.class public final Lus/zoom/zrcsdk/model/meetingalert/MAConst;
.super Ljava/lang/Object;
.source "MAConst.java"


# static fields
.field public static final DATE_NMA_F:Ljava/lang/String; = "EEEE, MMMM d"

.field public static final DEF_COLOR:Ljava/lang/String; = "#000000"

.field public static final EMPTY_MEETING_TIME:Ljava/lang/String; = ""

.field public static final INSTANT_MEETING:Ljava/lang/String; = "Instant Meeting"

.field public static final MA_TIME_FORMATTER:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ssZZZZZ"

.field public static final OVERTIME_COLOR:Ljava/lang/String; = "#eb5959"

.field public static TASK_REFRESH_INTERVAL_FOR_NMA:J = 0x0L

.field public static final TIME_12_HOUR_F:Ljava/lang/String; = "h:mm aa"

.field public static final TIME_24_HOUR_F:Ljava/lang/String; = "H:mm"

.field public static final TIME_FORMATTER:Ljava/text/SimpleDateFormat;

.field public static final TIME_ZONE_REP:Ljava/lang/String; = "+00:00"

.field public static final TIME_ZONE_RGX:Ljava/lang/String; = "Z$"

.field public static final UPCOMING_COLOR:Ljava/lang/String; = "#ff9933"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZZZZZ"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lus/zoom/zrcsdk/model/meetingalert/MAConst;->TIME_FORMATTER:Ljava/text/SimpleDateFormat;

    const-wide/32 v0, 0xea60

    .line 31
    sput-wide v0, Lus/zoom/zrcsdk/model/meetingalert/MAConst;->TASK_REFRESH_INTERVAL_FOR_NMA:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
