.class Lus/zoom/androidlib/util/EventRecurrence$ParseBySecond;
.super Lus/zoom/androidlib/util/EventRecurrence$PartParser;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/util/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseBySecond"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 765
    invoke-direct {p0}, Lus/zoom/androidlib/util/EventRecurrence$PartParser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lus/zoom/androidlib/util/EventRecurrence$1;)V
    .locals 0

    .line 765
    invoke-direct {p0}, Lus/zoom/androidlib/util/EventRecurrence$ParseBySecond;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePart(Ljava/lang/String;Lus/zoom/androidlib/util/EventRecurrence;)I
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x3b

    const/4 v2, 0x1

    .line 767
    invoke-static {p1, v0, v1, v2}, Lus/zoom/androidlib/util/EventRecurrence$ParseBySecond;->parseNumberList(Ljava/lang/String;IIZ)[I

    move-result-object p1

    .line 768
    iput-object p1, p2, Lus/zoom/androidlib/util/EventRecurrence;->bysecond:[I

    .line 769
    array-length p1, p1

    iput p1, p2, Lus/zoom/androidlib/util/EventRecurrence;->bysecondCount:I

    const/16 p1, 0x10

    return p1
.end method
