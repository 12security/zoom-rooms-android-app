.class Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$RoomComparator;
.super Ljava/lang/Object;
.source "LoginRoomPickerAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RoomComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lus/zoom/zrcsdk/model/RoomInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mCollator:Ljava/text/Collator;

.field private tfIter:Ljava/text/StringCharacterIterator;

.field private tlIter:Ljava/text/StringCharacterIterator;


# direct methods
.method private constructor <init>(Ljava/util/Locale;)V
    .locals 2

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Ljava/text/StringCharacterIterator;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$RoomComparator;->tfIter:Ljava/text/StringCharacterIterator;

    .line 183
    new-instance v0, Ljava/text/StringCharacterIterator;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$RoomComparator;->tlIter:Ljava/text/StringCharacterIterator;

    .line 161
    invoke-static {p1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$RoomComparator;->mCollator:Ljava/text/Collator;

    .line 162
    iget-object p1, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$RoomComparator;->mCollator:Ljava/text/Collator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/text/Collator;->setStrength(I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Locale;Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$1;)V
    .locals 0

    .line 156
    invoke-direct {p0, p1}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$RoomComparator;-><init>(Ljava/util/Locale;)V

    return-void
.end method

.method private compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 194
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-eqz p2, :cond_d

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_8

    :cond_1
    const/4 v1, -0x1

    if-eqz p1, :cond_c

    .line 198
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_7

    :cond_2
    const/4 v2, 0x1

    if-eqz p2, :cond_b

    .line 201
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_6

    .line 204
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 205
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_4

    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    .line 206
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v3, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 207
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v3, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 209
    :goto_2
    iget-object v3, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$RoomComparator;->tfIter:Ljava/text/StringCharacterIterator;

    invoke-virtual {v3, p1}, Ljava/text/StringCharacterIterator;->setText(Ljava/lang/String;)V

    .line 210
    iget-object p1, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$RoomComparator;->tlIter:Ljava/text/StringCharacterIterator;

    invoke-virtual {p1, p2}, Ljava/text/StringCharacterIterator;->setText(Ljava/lang/String;)V

    .line 214
    iget-object p1, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$RoomComparator;->tfIter:Ljava/text/StringCharacterIterator;

    invoke-virtual {p1}, Ljava/text/StringCharacterIterator;->first()C

    move-result p1

    .line 215
    iget-object p2, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$RoomComparator;->tlIter:Ljava/text/StringCharacterIterator;

    invoke-virtual {p2}, Ljava/text/StringCharacterIterator;->first()C

    move-result p2

    :goto_3
    const v3, 0xffff

    if-eq p1, v3, :cond_8

    if-eq p2, v3, :cond_8

    .line 218
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$RoomComparator;->compareChars(CC)I

    move-result v3

    if-eqz v3, :cond_7

    .line 220
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$RoomComparator;->compareChars(CC)I

    move-result p1

    goto :goto_4

    .line 224
    :cond_7
    iget-object p1, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$RoomComparator;->tfIter:Ljava/text/StringCharacterIterator;

    invoke-virtual {p1}, Ljava/text/StringCharacterIterator;->next()C

    move-result p1

    .line 225
    iget-object p2, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$RoomComparator;->tlIter:Ljava/text/StringCharacterIterator;

    invoke-virtual {p2}, Ljava/text/StringCharacterIterator;->next()C

    move-result p2

    goto :goto_3

    :cond_8
    const/4 p1, 0x0

    const/4 v0, 0x1

    :goto_4
    if-eqz v0, :cond_a

    if-eqz v4, :cond_9

    const/4 p1, 0x1

    goto :goto_5

    :cond_9
    const/4 p1, -0x1

    :cond_a
    :goto_5
    return p1

    :cond_b
    :goto_6
    return v2

    :cond_c
    :goto_7
    return v1

    :cond_d
    :goto_8
    return v0
.end method

.method private compareChars(CC)I
    .locals 1

    if-eq p1, p2, :cond_1

    .line 237
    invoke-static {p1}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->access$400(C)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->access$400(C)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->access$500(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->access$500(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    .line 239
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p2

    sub-int/2addr p1, p2

    return p1

    :cond_1
    if-le p1, p2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 v0, 0x0

    if-ne p1, p2, :cond_3

    return v0

    :cond_3
    if-ge p1, p2, :cond_4

    const/4 p1, -0x1

    return p1

    :cond_4
    return v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 156
    check-cast p1, Lus/zoom/zrcsdk/model/RoomInfo;

    check-cast p2, Lus/zoom/zrcsdk/model/RoomInfo;

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$RoomComparator;->compare(Lus/zoom/zrcsdk/model/RoomInfo;Lus/zoom/zrcsdk/model/RoomInfo;)I

    move-result p1

    return p1
.end method

.method public compare(Lus/zoom/zrcsdk/model/RoomInfo;Lus/zoom/zrcsdk/model/RoomInfo;)I
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 170
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/RoomInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    .line 171
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/RoomInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    .line 173
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$RoomComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
