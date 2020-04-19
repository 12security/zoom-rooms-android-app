.class public Lus/zoom/zrc/utils/ZRCContactCompare;
.super Ljava/lang/Object;
.source "ZRCContactCompare.java"

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

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {p1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/utils/ZRCContactCompare;->mCollator:Ljava/text/Collator;

    .line 14
    iget-object p1, p0, Lus/zoom/zrc/utils/ZRCContactCompare;->mCollator:Ljava/text/Collator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/text/Collator;->setStrength(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 9
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCContact;

    check-cast p2, Lus/zoom/zrcsdk/model/ZRCContact;

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/utils/ZRCContactCompare;->compare(Lus/zoom/zrcsdk/model/ZRCContact;Lus/zoom/zrcsdk/model/ZRCContact;)I

    move-result p1

    return p1
.end method

.method public compare(Lus/zoom/zrcsdk/model/ZRCContact;Lus/zoom/zrcsdk/model/ZRCContact;)I
    .locals 4

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    .line 23
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->getFirstName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->getItemSortKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCContact;->getFirstName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lus/zoom/zrc/utils/Util;->getItemSortKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    if-nez p2, :cond_2

    const-string p2, ""

    .line 32
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    .line 35
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x7fff

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_4

    return v3

    .line 38
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_5

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_5

    const/4 p1, -0x1

    return p1

    .line 41
    :cond_5
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCContactCompare;->mCollator:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
