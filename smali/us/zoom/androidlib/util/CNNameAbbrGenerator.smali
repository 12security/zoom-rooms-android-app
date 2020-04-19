.class public Lus/zoom/androidlib/util/CNNameAbbrGenerator;
.super Ljava/lang/Object;
.source "CNNameAbbrGenerator.java"

# interfaces
.implements Lus/zoom/androidlib/util/INameAbbrGenerator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getLast2Chars(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 46
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getNameAbbreviation(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const-string p2, "\\s"

    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 14
    array-length v0, p2

    const/4 v1, 0x2

    if-lt v0, v1, :cond_4

    const/4 p1, 0x0

    .line 15
    aget-object v0, p2, p1

    invoke-static {v0}, Lus/zoom/androidlib/util/StringUtil;->isAllAssii(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    aget-object v0, p2, v1

    invoke-static {v0}, Lus/zoom/androidlib/util/StringUtil;->isAllAssii(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    const-string v2, ""

    .line 19
    aget-object v3, p2, p1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 20
    aget-object v0, p2, p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 22
    :cond_1
    aget-object v3, p2, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 23
    aget-object p2, p2, v1

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    .line 25
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 27
    :cond_3
    array-length p1, p2

    sub-int/2addr p1, v1

    aget-object p1, p2, p1

    .line 28
    invoke-direct {p0, p1}, Lus/zoom/androidlib/util/CNNameAbbrGenerator;->getLast2Chars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 30
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_5

    const-string p1, ""

    goto :goto_0

    .line 33
    :cond_5
    invoke-direct {p0, p1}, Lus/zoom/androidlib/util/CNNameAbbrGenerator;->getLast2Chars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 36
    :goto_0
    invoke-static {}, Lus/zoom/androidlib/util/CompatUtils;->getLocalDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
