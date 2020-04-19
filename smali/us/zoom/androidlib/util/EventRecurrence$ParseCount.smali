.class Lus/zoom/androidlib/util/EventRecurrence$ParseCount;
.super Lus/zoom/androidlib/util/EventRecurrence$PartParser;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/util/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseCount"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 751
    invoke-direct {p0}, Lus/zoom/androidlib/util/EventRecurrence$PartParser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lus/zoom/androidlib/util/EventRecurrence$1;)V
    .locals 0

    .line 751
    invoke-direct {p0}, Lus/zoom/androidlib/util/EventRecurrence$ParseCount;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePart(Ljava/lang/String;Lus/zoom/androidlib/util/EventRecurrence;)I
    .locals 3

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v2, 0x1

    .line 753
    invoke-static {p1, v0, v1, v2}, Lus/zoom/androidlib/util/EventRecurrence$ParseCount;->parseIntRange(Ljava/lang/String;IIZ)I

    move-result p1

    iput p1, p2, Lus/zoom/androidlib/util/EventRecurrence;->count:I

    const/4 p1, 0x4

    return p1
.end method
