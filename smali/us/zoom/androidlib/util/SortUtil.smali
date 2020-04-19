.class public Lus/zoom/androidlib/util/SortUtil;
.super Ljava/lang/Object;
.source "SortUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fastCompare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .line 51
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 53
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 55
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 56
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_0

    sub-int/2addr v4, v5

    return v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v1

    return v0
.end method

.method private static getGroupChar(Ljava/lang/String;)C
    .locals 2

    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x23

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    add-int/lit8 p0, p0, -0x20

    int-to-char p0, p0

    return p0

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    return p0

    :cond_2
    return v1
.end method

.method public static getSortKey(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_4

    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    .line 20
    :cond_1
    invoke-static {p0}, Lus/zoom/androidlib/util/PinyinUtil;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    return-object p0

    .line 25
    :cond_2
    invoke-static {p0}, Lus/zoom/androidlib/util/SortUtil;->getGroupChar(Ljava/lang/String;)C

    move-result p1

    const/16 v0, 0x23

    if-ne v0, p1, :cond_3

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0

    :cond_4
    :goto_0
    const-string p0, "!"

    return-object p0
.end method
