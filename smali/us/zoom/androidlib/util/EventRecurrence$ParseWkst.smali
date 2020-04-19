.class Lus/zoom/androidlib/util/EventRecurrence$ParseWkst;
.super Lus/zoom/androidlib/util/EventRecurrence$PartParser;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/util/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseWkst"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 888
    invoke-direct {p0}, Lus/zoom/androidlib/util/EventRecurrence$PartParser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lus/zoom/androidlib/util/EventRecurrence$1;)V
    .locals 0

    .line 888
    invoke-direct {p0}, Lus/zoom/androidlib/util/EventRecurrence$ParseWkst;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePart(Ljava/lang/String;Lus/zoom/androidlib/util/EventRecurrence;)I
    .locals 2

    .line 890
    invoke-static {}, Lus/zoom/androidlib/util/EventRecurrence;->access$1500()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 894
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p2, Lus/zoom/androidlib/util/EventRecurrence;->wkst:I

    const/16 p1, 0x2000

    return p1

    .line 892
    :cond_0
    new-instance p2, Lus/zoom/androidlib/util/EventRecurrence$InvalidFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid WKST value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lus/zoom/androidlib/util/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
