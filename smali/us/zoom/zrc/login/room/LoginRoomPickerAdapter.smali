.class Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;
.super Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;
.source "LoginRoomPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$ChineseRoomComparator;,
        Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$RoomComparator;,
        Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter<",
        "Lus/zoom/zrcsdk/model/RoomInfo;",
        "Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static comparator:Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$RoomComparator;


# instance fields
.field private mDisplayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/RoomInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mRoomList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/RoomInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    new-instance v0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$RoomComparator;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$RoomComparator;-><init>(Ljava/util/Locale;Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$1;)V

    sput-object v0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->comparator:Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$RoomComparator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 48
    invoke-direct {p0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->mDisplayList:Ljava/util/List;

    .line 49
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->enableRepeatSelection()V

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$400(C)Z
    .locals 0

    .line 30
    invoke-static {p0}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->isLetter(C)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(C)Z
    .locals 0

    .line 30
    invoke-static {p0}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->isUpper(C)Z

    move-result p0

    return p0
.end method

.method private static isChineseCharacter(C)Z
    .locals 1

    .line 396
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object p0

    .line 397
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isDigit(C)Z
    .locals 0

    .line 385
    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result p0

    return p0
.end method

.method private static isLetter(C)Z
    .locals 0

    .line 411
    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    move-result p0

    return p0
.end method

.method private static isSpecialChar(C)Z
    .locals 1

    .line 421
    invoke-static {p0}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->isChineseCharacter(C)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isUpper(C)Z
    .locals 0

    .line 431
    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result p0

    return p0
.end method

.method private process(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/RoomInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_a

    .line 311
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 318
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 319
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 320
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 321
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 322
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 327
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lus/zoom/zrcsdk/model/RoomInfo;

    .line 328
    invoke-virtual {v6}, Lus/zoom/zrcsdk/model/RoomInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 329
    invoke-virtual {v6}, Lus/zoom/zrcsdk/model/RoomInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 330
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 331
    invoke-static {v7}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->isSpecialChar(C)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 332
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 333
    :cond_2
    invoke-static {v7}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 334
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 335
    :cond_3
    invoke-static {v7}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->isChineseCharacter(C)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 336
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 337
    :cond_4
    invoke-static {v7}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 338
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 345
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 346
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 351
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 352
    invoke-static {v2}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->sort(Ljava/util/List;)V

    .line 353
    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 356
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 357
    invoke-static {v1}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->sort(Ljava/util/List;)V

    .line 358
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 361
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 362
    invoke-direct {p0, v4}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->processWithLetterStarts(Ljava/util/List;)Ljava/util/List;

    .line 363
    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 366
    :cond_8
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 367
    invoke-static {v3}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->sortChineseChar(Ljava/util/List;)V

    .line 368
    invoke-interface {p1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 374
    :cond_9
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 375
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 376
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 377
    invoke-interface {v4}, Ljava/util/List;->clear()V

    return-void

    :cond_a
    :goto_1
    return-void
.end method

.method private processWithLetterStarts(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/RoomInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/RoomInfo;",
            ">;"
        }
    .end annotation

    .line 452
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 453
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/RoomInfo;

    .line 454
    new-instance v3, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$1RoomInfoWrapper;

    invoke-direct {v3, p0}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$1RoomInfoWrapper;-><init>(Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;)V

    .line 455
    invoke-static {v3, v2}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$1RoomInfoWrapper;->access$702(Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$1RoomInfoWrapper;Lus/zoom/zrcsdk/model/RoomInfo;)Lus/zoom/zrcsdk/model/RoomInfo;

    .line 456
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/RoomInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$1RoomInfoWrapper;->access$802(Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$1RoomInfoWrapper;Ljava/lang/String;)Ljava/lang/String;

    .line 457
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/RoomInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->isUpper(C)Z

    move-result v4

    invoke-static {v3, v4}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$1RoomInfoWrapper;->access$902(Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$1RoomInfoWrapper;Z)Z

    .line 458
    invoke-static {v3}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$1RoomInfoWrapper;->access$900(Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$1RoomInfoWrapper;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 459
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/RoomInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 460
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/RoomInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lus/zoom/zrcsdk/model/RoomInfo;->setDisplayName(Ljava/lang/String;)V

    .line 462
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 466
    :cond_1
    invoke-static {p1}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->sort(Ljava/util/List;)V

    .line 469
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$1RoomInfoWrapper;

    .line 470
    invoke-static {v2}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$1RoomInfoWrapper;->access$900(Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$1RoomInfoWrapper;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 471
    invoke-static {v2}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$1RoomInfoWrapper;->access$700(Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$1RoomInfoWrapper;)Lus/zoom/zrcsdk/model/RoomInfo;

    move-result-object v3

    invoke-static {v2}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$1RoomInfoWrapper;->access$800(Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$1RoomInfoWrapper;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lus/zoom/zrcsdk/model/RoomInfo;->setDisplayName(Ljava/lang/String;)V

    goto :goto_1

    .line 476
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p1
.end method

.method private static sort(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/RoomInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 283
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    sget-object v0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->comparator:Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$RoomComparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private static sortChineseChar(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/RoomInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 295
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 298
    :cond_0
    new-instance v0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$ChineseRoomComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$ChineseRoomComparator;-><init>(Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$1;)V

    .line 299
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private sortDisplayData()V
    .locals 1

    .line 100
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->mDisplayList:Ljava/util/List;

    invoke-direct {p0, v0}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->process(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 136
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected getKeyForWidth(I)Ljava/lang/String;
    .locals 0

    .line 105
    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->getListItem(I)Lus/zoom/zrcsdk/model/RoomInfo;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/RoomInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic getListItem(I)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->getListItem(I)Lus/zoom/zrcsdk/model/RoomInfo;

    move-result-object p1

    return-object p1
.end method

.method protected getListItem(I)Lus/zoom/zrcsdk/model/RoomInfo;
    .locals 1

    .line 111
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/RoomInfo;

    return-object p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 30
    check-cast p1, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->onBindViewHolder(Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$ViewHolder;I)V
    .locals 2

    .line 122
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 123
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lus/zoom/zrcsdk/model/RoomInfo;

    .line 124
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/RoomInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/RoomInfo;->getName()Ljava/lang/String;

    move-result-object p2

    .line 126
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p2, v0

    .line 130
    :cond_0
    invoke-static {p1}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$ViewHolder;->access$200(Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    invoke-static {p1}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$ViewHolder;->access$300(Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$ViewHolder;
    .locals 2

    .line 116
    iget-object p2, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lus/zoom/zrcbox/R$layout;->login_list_item_zoom_room:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 117
    new-instance p2, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$ViewHolder;-><init>(Landroid/view/View;Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$1;)V

    return-object p2
.end method

.method public search(Ljava/lang/String;)I
    .locals 5

    .line 64
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->mRoomList:Ljava/util/List;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 68
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 69
    invoke-static {p1}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object p1, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->mDisplayList:Ljava/util/List;

    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->mRoomList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
    invoke-direct {p0}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->sortDisplayData()V

    .line 72
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->notifyDataSetChanged()V

    return v1

    .line 75
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 76
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->mRoomList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/RoomInfo;

    .line 77
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/RoomInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/RoomInfo;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_3

    const-string v3, ""

    :cond_3
    if-nez v4, :cond_4

    const-string v4, ""

    .line 81
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 82
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 84
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 85
    :cond_5
    iget-object v3, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_6
    iget-object p1, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_7

    const/4 p1, 0x1

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_8

    .line 91
    iget-object v2, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->mDisplayList:Ljava/util/List;

    iget-object v3, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->mRoomList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 93
    :cond_8
    invoke-direct {p0}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->sortDisplayData()V

    .line 94
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->notifyDataSetChanged()V

    if-eqz p1, :cond_9

    goto :goto_2

    :cond_9
    const/4 v0, -0x1

    :goto_2
    return v0
.end method

.method updateRoomList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/RoomInfo;",
            ">;)V"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 55
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 56
    invoke-direct {p0}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->sortDisplayData()V

    .line 57
    iput-object p1, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->mRoomList:Ljava/util/List;

    .line 58
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->notifyDataSetChanged()V

    .line 59
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->clearSelection()V

    return-void
.end method
