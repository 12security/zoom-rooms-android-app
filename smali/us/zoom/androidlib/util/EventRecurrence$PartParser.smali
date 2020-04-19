.class abstract Lus/zoom/androidlib/util/EventRecurrence$PartParser;
.super Ljava/lang/Object;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/util/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "PartParser"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseIntRange(Ljava/lang/String;IIZ)I
    .locals 2

    const/4 v0, 0x0

    .line 680
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 682
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 684
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt v0, p1, :cond_2

    if-gt v0, p2, :cond_2

    if-nez v0, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    return v0

    .line 686
    :cond_2
    new-instance p1, Lus/zoom/androidlib/util/EventRecurrence$InvalidFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Integer value out of range: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lus/zoom/androidlib/util/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    :catch_0
    new-instance p1, Lus/zoom/androidlib/util/EventRecurrence$InvalidFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid integer value: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lus/zoom/androidlib/util/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static parseNumberList(Ljava/lang/String;IIZ)[I
    .locals 4

    const-string v0, ","

    .line 707
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 709
    new-array v0, v0, [I

    .line 710
    invoke-static {p0, p1, p2, p3}, Lus/zoom/androidlib/util/EventRecurrence$PartParser;->parseIntRange(Ljava/lang/String;IIZ)I

    move-result p0

    aput p0, v0, v1

    goto :goto_1

    :cond_0
    const-string v0, ","

    .line 712
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 713
    array-length v0, p0

    .line 714
    new-array v2, v0, [I

    :goto_0
    if-ge v1, v0, :cond_1

    .line 716
    aget-object v3, p0, v1

    invoke-static {v3, p1, p2, p3}, Lus/zoom/androidlib/util/EventRecurrence$PartParser;->parseIntRange(Ljava/lang/String;IIZ)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_1
    return-object v0
.end method


# virtual methods
.method public abstract parsePart(Ljava/lang/String;Lus/zoom/androidlib/util/EventRecurrence;)I
.end method
