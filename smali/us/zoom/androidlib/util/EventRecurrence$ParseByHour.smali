.class Lus/zoom/androidlib/util/EventRecurrence$ParseByHour;
.super Lus/zoom/androidlib/util/EventRecurrence$PartParser;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/util/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseByHour"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 783
    invoke-direct {p0}, Lus/zoom/androidlib/util/EventRecurrence$PartParser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lus/zoom/androidlib/util/EventRecurrence$1;)V
    .locals 0

    .line 783
    invoke-direct {p0}, Lus/zoom/androidlib/util/EventRecurrence$ParseByHour;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePart(Ljava/lang/String;Lus/zoom/androidlib/util/EventRecurrence;)I
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x17

    const/4 v2, 0x1

    .line 785
    invoke-static {p1, v0, v1, v2}, Lus/zoom/androidlib/util/EventRecurrence$ParseByHour;->parseNumberList(Ljava/lang/String;IIZ)[I

    move-result-object p1

    .line 786
    iput-object p1, p2, Lus/zoom/androidlib/util/EventRecurrence;->byhour:[I

    .line 787
    array-length p1, p1

    iput p1, p2, Lus/zoom/androidlib/util/EventRecurrence;->byhourCount:I

    const/16 p1, 0x40

    return p1
.end method
