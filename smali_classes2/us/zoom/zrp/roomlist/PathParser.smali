.class Lus/zoom/zrp/roomlist/PathParser;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrp/roomlist/PathParser$PathDataNode;
    }
.end annotation


# static fields
.field static final LOGTAG:Ljava/lang/String; = "PathParser"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addNode(Ljava/util/ArrayList;C[F)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrp/roomlist/PathParser$PathDataNode;",
            ">;C[F)V"
        }
    .end annotation

    .line 61
    new-instance v0, Lus/zoom/zrp/roomlist/PathParser$PathDataNode;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lus/zoom/zrp/roomlist/PathParser$PathDataNode;-><init>(C[FLus/zoom/zrp/roomlist/PathParser$1;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static createNodesFromPathData(Ljava/lang/String;)[Lus/zoom/zrp/roomlist/PathParser$PathDataNode;
    .locals 7

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 34
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 35
    invoke-static {p0, v3}, Lus/zoom/zrp/roomlist/PathParser;->nextStart(Ljava/lang/String;I)I

    move-result v3

    .line 36
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 37
    invoke-static {v4}, Lus/zoom/zrp/roomlist/PathParser;->getFloats(Ljava/lang/String;)[F

    move-result-object v5

    .line 38
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v0, v4, v5}, Lus/zoom/zrp/roomlist/PathParser;->addNode(Ljava/util/ArrayList;C[F)V

    add-int/lit8 v4, v3, 0x1

    move v6, v4

    move v4, v3

    move v3, v6

    goto :goto_0

    :cond_0
    sub-int/2addr v3, v4

    if-ne v3, v1, :cond_1

    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v4, v1, :cond_1

    .line 43
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result p0

    new-array v1, v2, [F

    invoke-static {v0, p0, v1}, Lus/zoom/zrp/roomlist/PathParser;->addNode(Ljava/util/ArrayList;C[F)V

    .line 45
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lus/zoom/zrp/roomlist/PathParser$PathDataNode;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lus/zoom/zrp/roomlist/PathParser$PathDataNode;

    return-object p0
.end method

.method static createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 1

    .line 17
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 18
    invoke-static {p0}, Lus/zoom/zrp/roomlist/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Lus/zoom/zrp/roomlist/PathParser$PathDataNode;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 20
    invoke-static {p0, v0}, Lus/zoom/zrp/roomlist/PathParser$PathDataNode;->nodesToPath([Lus/zoom/zrp/roomlist/PathParser$PathDataNode;Landroid/graphics/Path;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static extract(Ljava/lang/String;I)I
    .locals 2

    const/16 v0, 0x20

    .line 104
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/16 v1, 0x2c

    .line 105
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    const/4 p1, -0x1

    if-ne v0, p1, :cond_0

    return p0

    :cond_0
    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    if-le p0, v0, :cond_2

    move p0, v0

    :cond_2
    return p0
.end method

.method private static getFloats(Ljava/lang/String;)[F
    .locals 5

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x7a

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5a

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    or-int/2addr v1, v3

    if-eqz v1, :cond_2

    .line 73
    new-array p0, v0, [F

    return-object p0

    .line 76
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [F

    .line 79
    :goto_2
    invoke-static {p0, v2}, Lus/zoom/zrp/roomlist/PathParser;->extract(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_4

    if-ge v2, v3, :cond_3

    add-int/lit8 v4, v0, 0x1

    .line 81
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v1, v0

    move v0, v4

    :cond_3
    add-int/lit8 v2, v3, 0x1

    goto :goto_2

    .line 86
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    add-int/lit8 v3, v0, 0x1

    .line 87
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v1, v0

    move v0, v3

    .line 89
    :cond_5
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 91
    sget-object v1, Lus/zoom/zrp/roomlist/PathParser;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error in parsing \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    throw v0

    return-void
.end method

.method private static nextStart(Ljava/lang/String;I)I
    .locals 3

    .line 50
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 51
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v1, v0, -0x41

    add-int/lit8 v2, v0, -0x5a

    mul-int v1, v1, v2

    if-lez v1, :cond_1

    add-int/lit8 v1, v0, -0x61

    add-int/lit8 v0, v0, -0x7a

    mul-int v1, v1, v0

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1

    :cond_2
    return p1
.end method
