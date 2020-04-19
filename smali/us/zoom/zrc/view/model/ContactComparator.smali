.class public Lus/zoom/zrc/view/model/ContactComparator;
.super Ljava/lang/Object;
.source "ContactComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lus/zoom/zrcsdk/model/ZRCContact;",
        ">;"
    }
.end annotation


# instance fields
.field private mCollator:Ljava/text/Collator;


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/model/ContactComparator;->mCollator:Ljava/text/Collator;

    .line 21
    iget-object p1, p0, Lus/zoom/zrc/view/model/ContactComparator;->mCollator:Ljava/text/Collator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/text/Collator;->setStrength(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 15
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCContact;

    check-cast p2, Lus/zoom/zrcsdk/model/ZRCContact;

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/view/model/ContactComparator;->compare(Lus/zoom/zrcsdk/model/ZRCContact;Lus/zoom/zrcsdk/model/ZRCContact;)I

    move-result p1

    return p1
.end method

.method public compare(Lus/zoom/zrcsdk/model/ZRCContact;Lus/zoom/zrcsdk/model/ZRCContact;)I
    .locals 5

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    if-nez p2, :cond_2

    return v2

    .line 34
    :cond_2
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->getScreenName()Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCContact;->getScreenName()Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_3

    const-string p1, ""

    :cond_3
    if-nez p2, :cond_4

    const-string p2, ""

    .line 43
    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    return v0

    .line 46
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x7fff

    if-ne v3, v2, :cond_6

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_6

    return v2

    .line 49
    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v2, :cond_7

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_7

    return v1

    .line 52
    :cond_7
    iget-object v0, p0, Lus/zoom/zrc/view/model/ContactComparator;->mCollator:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
