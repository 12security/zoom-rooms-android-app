.class Lus/zoom/androidlib/util/EventRecurrence$ParseByDay;
.super Lus/zoom/androidlib/util/EventRecurrence$PartParser;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/util/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseByDay"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 792
    invoke-direct {p0}, Lus/zoom/androidlib/util/EventRecurrence$PartParser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lus/zoom/androidlib/util/EventRecurrence$1;)V
    .locals 0

    .line 792
    invoke-direct {p0}, Lus/zoom/androidlib/util/EventRecurrence$ParseByDay;-><init>()V

    return-void
.end method

.method private static parseWday(Ljava/lang/String;[I[II)V
    .locals 5

    .line 822
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 827
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, -0x35

    const/16 v4, 0x35

    .line 828
    invoke-static {v2, v3, v4, v1}, Lus/zoom/androidlib/util/EventRecurrence$ParseByDay;->parseIntRange(Ljava/lang/String;IIZ)I

    move-result v1

    .line 829
    aput v1, p2, p3

    .line 830
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p0

    .line 835
    :goto_0
    invoke-static {}, Lus/zoom/androidlib/util/EventRecurrence;->access$1500()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_1

    .line 839
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    aput p0, p1, p3

    return-void

    .line 837
    :cond_1
    new-instance p1, Lus/zoom/androidlib/util/EventRecurrence$InvalidFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid BYDAY value: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lus/zoom/androidlib/util/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public parsePart(Ljava/lang/String;Lus/zoom/androidlib/util/EventRecurrence;)I
    .locals 5

    const-string v0, ","

    .line 798
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_0

    .line 801
    new-array v0, v2, [I

    .line 802
    new-array v3, v2, [I

    .line 803
    invoke-static {p1, v0, v3, v1}, Lus/zoom/androidlib/util/EventRecurrence$ParseByDay;->parseWday(Ljava/lang/String;[I[II)V

    goto :goto_1

    :cond_0
    const-string v0, ","

    .line 805
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 806
    array-length v2, p1

    .line 808
    new-array v0, v2, [I

    .line 809
    new-array v3, v2, [I

    :goto_0
    if-ge v1, v2, :cond_1

    .line 811
    aget-object v4, p1, v1

    invoke-static {v4, v0, v3, v1}, Lus/zoom/androidlib/util/EventRecurrence$ParseByDay;->parseWday(Ljava/lang/String;[I[II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 814
    :cond_1
    :goto_1
    iput-object v0, p2, Lus/zoom/androidlib/util/EventRecurrence;->byday:[I

    .line 815
    iput-object v3, p2, Lus/zoom/androidlib/util/EventRecurrence;->bydayNum:[I

    .line 816
    iput v2, p2, Lus/zoom/androidlib/util/EventRecurrence;->bydayCount:I

    const/16 p1, 0x80

    return p1
.end method
