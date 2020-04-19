.class Lus/zoom/androidlib/util/EventRecurrence$ParseByWeekNo;
.super Lus/zoom/androidlib/util/EventRecurrence$PartParser;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/util/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseByWeekNo"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 861
    invoke-direct {p0}, Lus/zoom/androidlib/util/EventRecurrence$PartParser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lus/zoom/androidlib/util/EventRecurrence$1;)V
    .locals 0

    .line 861
    invoke-direct {p0}, Lus/zoom/androidlib/util/EventRecurrence$ParseByWeekNo;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePart(Ljava/lang/String;Lus/zoom/androidlib/util/EventRecurrence;)I
    .locals 3

    const/16 v0, -0x35

    const/16 v1, 0x35

    const/4 v2, 0x0

    .line 863
    invoke-static {p1, v0, v1, v2}, Lus/zoom/androidlib/util/EventRecurrence$ParseByWeekNo;->parseNumberList(Ljava/lang/String;IIZ)[I

    move-result-object p1

    .line 864
    iput-object p1, p2, Lus/zoom/androidlib/util/EventRecurrence;->byweekno:[I

    .line 865
    array-length p1, p1

    iput p1, p2, Lus/zoom/androidlib/util/EventRecurrence;->byweeknoCount:I

    const/16 p1, 0x400

    return p1
.end method
