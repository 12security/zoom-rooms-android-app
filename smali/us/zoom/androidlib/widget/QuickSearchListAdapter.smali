.class Lus/zoom/androidlib/widget/QuickSearchListAdapter;
.super Landroid/widget/BaseAdapter;
.source "QuickSearchListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/widget/QuickSearchListAdapter$QuickSearchListItemComparator;,
        Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItemComparator;,
        Lus/zoom/androidlib/widget/QuickSearchListAdapter$GroupHeaderItem;,
        Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItem;
    }
.end annotation


# static fields
.field private static final ITEM_TYPE_GROUP_HEADER:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataAdapter:Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;

.field private mDataAdapterObserver:Landroid/database/DataSetObserver;

.field private mHandler:Landroid/os/Handler;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Lus/zoom/androidlib/widget/QuickSearchListView;

.field private mRebuildItemsRunnable:Ljava/lang/Runnable;

.field private mbQuickSearchEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lus/zoom/androidlib/widget/QuickSearchListView;)V
    .locals 1

    .line 423
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mItems:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 393
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mbQuickSearchEnabled:Z

    .line 395
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mHandler:Landroid/os/Handler;

    .line 397
    new-instance v0, Lus/zoom/androidlib/widget/QuickSearchListAdapter$1;

    invoke-direct {v0, p0}, Lus/zoom/androidlib/widget/QuickSearchListAdapter$1;-><init>(Lus/zoom/androidlib/widget/QuickSearchListAdapter;)V

    iput-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mRebuildItemsRunnable:Ljava/lang/Runnable;

    .line 404
    new-instance v0, Lus/zoom/androidlib/widget/QuickSearchListAdapter$2;

    invoke-direct {v0, p0}, Lus/zoom/androidlib/widget/QuickSearchListAdapter$2;-><init>(Lus/zoom/androidlib/widget/QuickSearchListAdapter;)V

    iput-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mDataAdapterObserver:Landroid/database/DataSetObserver;

    .line 424
    iput-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mContext:Landroid/content/Context;

    .line 425
    iput-object p2, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mListView:Lus/zoom/androidlib/widget/QuickSearchListView;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/androidlib/widget/QuickSearchListAdapter;)V
    .locals 0

    .line 384
    invoke-direct {p0}, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->rebuildItems()V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/androidlib/widget/QuickSearchListAdapter;)Ljava/lang/Runnable;
    .locals 0

    .line 384
    iget-object p0, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mRebuildItemsRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/androidlib/widget/QuickSearchListAdapter;)Landroid/os/Handler;
    .locals 0

    .line 384
    iget-object p0, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private getGroupChar(Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItem;Ljava/text/Collator;)C
    .locals 3

    .line 503
    iget-object p2, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mDataAdapter:Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;

    iget-object p1, p1, Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItem;->data:Ljava/lang/Object;

    invoke-virtual {p2, p1}, Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;->getItemSortKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 504
    invoke-static {p1}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result p2

    const/16 v0, 0x23

    if-eqz p2, :cond_0

    return v0

    :cond_0
    const/4 p2, 0x0

    .line 507
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-ne v2, v1, :cond_1

    return v2

    :cond_1
    const/16 v2, 0x21

    if-ne v2, v1, :cond_2

    return v2

    :cond_2
    const/16 v2, 0x7fff

    if-ne v2, v1, :cond_3

    return v2

    :cond_3
    const/16 v2, 0x61

    if-lt v1, v2, :cond_4

    const/16 v2, 0x7a

    if-gt v1, v2, :cond_4

    add-int/lit8 v1, v1, -0x20

    int-to-char p1, v1

    return p1

    :cond_4
    const/16 v2, 0x41

    if-lt v1, v2, :cond_5

    const/16 v2, 0x5a

    if-gt v1, v2, :cond_5

    return v1

    .line 537
    :cond_5
    iget-object v1, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mListView:Lus/zoom/androidlib/widget/QuickSearchListView;

    invoke-virtual {v1}, Lus/zoom/androidlib/widget/QuickSearchListView;->getQuickSearchSideBar()Lus/zoom/androidlib/widget/QuickSearchSideBar;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 538
    invoke-virtual {v1}, Lus/zoom/androidlib/widget/QuickSearchSideBar;->getCategoryChars()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_6

    .line 539
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1

    :cond_6
    return v0
.end method

.method private newGroupHeaderView(ILus/zoom/androidlib/widget/QuickSearchListAdapter$GroupHeaderItem;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    const-string v0, "us.zoom.androidlib.widget.QuickSearchListView.header"

    .line 664
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 667
    :cond_0
    iget-object p3, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    .line 668
    sget v0, Lus/zoom/androidlib/R$layout;->zm_quick_search_list_items_header:I

    invoke-virtual {p3, v0, p4, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const-string p4, "us.zoom.androidlib.widget.QuickSearchListView.header"

    .line 669
    invoke-virtual {p3, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 671
    :goto_0
    sget p4, Lus/zoom/androidlib/R$id;->starredIcon:I

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    .line 672
    sget v0, Lus/zoom/androidlib/R$id;->txtHeader:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 674
    iget-object v1, p2, Lus/zoom/androidlib/widget/QuickSearchListAdapter$GroupHeaderItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 677
    :cond_1
    iget-char p2, p2, Lus/zoom/androidlib/widget/QuickSearchListAdapter$GroupHeaderItem;->key:C

    const/16 v0, 0x21

    if-ne p2, v0, :cond_2

    .line 678
    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    .line 680
    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-object p3
.end method

.method private rebuildItems()V
    .locals 8

    .line 458
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mDataAdapter:Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;

    if-nez v0, :cond_0

    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 463
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 465
    :goto_0
    iget-object v3, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mDataAdapter:Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;

    invoke-virtual {v3}, Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 466
    new-instance v3, Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItem;

    iget-object v4, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mDataAdapter:Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;

    invoke-virtual {v4, v2}, Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItem;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 468
    :cond_1
    invoke-static {}, Lus/zoom/androidlib/util/CompatUtils;->getLocalDefault()Ljava/util/Locale;

    move-result-object v2

    .line 469
    iget-boolean v3, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mbQuickSearchEnabled:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mDataAdapter:Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;

    invoke-virtual {v3}, Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;->isDataSorted()Z

    move-result v3

    if-nez v3, :cond_2

    .line 470
    new-instance v3, Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItemComparator;

    iget-object v4, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mDataAdapter:Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;

    invoke-direct {v3, v2, v4}, Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItemComparator;-><init>(Ljava/util/Locale;Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;)V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 473
    :cond_2
    invoke-static {v2}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v2

    .line 474
    invoke-virtual {v2, v1}, Ljava/text/Collator;->setStrength(I)V

    const/4 v3, 0x0

    move-object v4, v3

    .line 478
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_6

    .line 479
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItem;

    .line 481
    iget-boolean v6, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mbQuickSearchEnabled:Z

    if-eqz v6, :cond_5

    .line 482
    invoke-direct {p0, v5, v2}, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->getGroupChar(Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItem;Ljava/text/Collator;)C

    move-result v6

    if-eqz v4, :cond_3

    .line 484
    iget-char v7, v4, Lus/zoom/androidlib/widget/QuickSearchListAdapter$GroupHeaderItem;->key:C

    if-eq v6, v7, :cond_5

    .line 485
    :cond_3
    iget-object v7, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mListView:Lus/zoom/androidlib/widget/QuickSearchListView;

    if-eqz v7, :cond_4

    invoke-virtual {v7, v6}, Lus/zoom/androidlib/widget/QuickSearchListView;->getCategoryTitle(C)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_4
    move-object v7, v3

    :goto_2
    if-eqz v7, :cond_5

    .line 488
    new-instance v4, Lus/zoom/androidlib/widget/QuickSearchListAdapter$GroupHeaderItem;

    invoke-direct {v4, v6, v7}, Lus/zoom/androidlib/widget/QuickSearchListAdapter$GroupHeaderItem;-><init>(CLjava/lang/String;)V

    .line 489
    iget-object v6, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    :cond_5
    iget-object v6, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 497
    :cond_6
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mListView:Lus/zoom/androidlib/widget/QuickSearchListView;

    if-eqz v0, :cond_7

    .line 498
    invoke-virtual {v0}, Lus/zoom/androidlib/widget/QuickSearchListView;->onDataChanged()V

    :cond_7
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 547
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDataAdapter()Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;
    .locals 1

    .line 443
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mDataAdapter:Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;

    return-object v0
.end method

.method public getFirstItemPosFromChar(C)I
    .locals 4

    .line 447
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lus/zoom/androidlib/widget/QuickSearchListAdapter$QuickSearchListItemComparator;

    invoke-static {}, Lus/zoom/androidlib/util/CompatUtils;->getLocalDefault()Ljava/util/Locale;

    move-result-object v2

    iget-object v3, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mDataAdapter:Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;

    invoke-direct {v1, v2, v3}, Lus/zoom/androidlib/widget/QuickSearchListAdapter$QuickSearchListItemComparator;-><init>(Ljava/util/Locale;Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;)V

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p1

    if-gez p1, :cond_0

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-ltz p1, :cond_1

    .line 552
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 555
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    const/4 v0, -0x1

    if-ltz p1, :cond_3

    .line 565
    iget-object v1, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 568
    :cond_0
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 570
    instance-of v1, p1, Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItem;

    if-eqz v1, :cond_1

    .line 571
    check-cast p1, Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItem;

    .line 572
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mDataAdapter:Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;

    iget p1, p1, Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItem;->index:I

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;->getItemViewType(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1

    .line 573
    :cond_1
    instance-of p1, p1, Lus/zoom/androidlib/widget/QuickSearchListAdapter$GroupHeaderItem;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-ltz p1, :cond_7

    .line 620
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto/16 :goto_1

    .line 623
    :cond_0
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 625
    instance-of v1, v0, Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItem;

    if-eqz v1, :cond_5

    .line 626
    check-cast v0, Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItem;

    .line 627
    iget-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mDataAdapter:Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;

    iget v0, v0, Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItem;->index:I

    invoke-virtual {p1, v0, p2, p3}, Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    .line 629
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 631
    :cond_1
    sget p2, Lus/zoom/androidlib/R$id;->zm_quick_search_list_item_reset_padding_flag:I

    .line 632
    iget-object p3, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mListView:Lus/zoom/androidlib/widget/QuickSearchListView;

    invoke-virtual {p3}, Lus/zoom/androidlib/widget/QuickSearchListView;->isQuickSearchEnabled()Z

    move-result p3

    const/high16 v0, 0x41c80000    # 25.0f

    if-eqz p3, :cond_3

    iget-object p3, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mDataAdapter:Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;

    invoke-virtual {p3}, Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;->getCount()I

    move-result p3

    const/4 v1, 0x5

    if-le p3, v1, :cond_3

    .line 633
    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    if-eqz p3, :cond_2

    .line 634
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_4

    .line 635
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    .line 636
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 637
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    add-int/2addr v2, v0

    .line 638
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .line 639
    invoke-virtual {p1, p3, v1, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 640
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 643
    :cond_3
    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    if-eqz p3, :cond_4

    .line 644
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 645
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    .line 646
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 647
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    sub-int/2addr v2, v0

    .line 648
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .line 649
    invoke-virtual {p1, p3, v1, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 650
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_4
    :goto_0
    return-object p1

    .line 654
    :cond_5
    instance-of v1, v0, Lus/zoom/androidlib/widget/QuickSearchListAdapter$GroupHeaderItem;

    if-eqz v1, :cond_6

    .line 655
    check-cast v0, Lus/zoom/androidlib/widget/QuickSearchListAdapter$GroupHeaderItem;

    invoke-direct {p0, p1, v0, p2, p3}, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->newGroupHeaderView(ILus/zoom/androidlib/widget/QuickSearchListAdapter$GroupHeaderItem;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 657
    :cond_6
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 621
    :cond_7
    :goto_1
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 612
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mDataAdapter:Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    return v0

    .line 615
    :cond_0
    invoke-virtual {v0}, Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2

    .line 603
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lus/zoom/androidlib/util/UIUtil;->isTV(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 604
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->getItemViewType(I)I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    return v1
.end method

.method public setDataAdapter(Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;)V
    .locals 1

    .line 437
    iput-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mDataAdapter:Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;

    .line 438
    iget-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mDataAdapter:Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;

    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mDataAdapterObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 439
    invoke-direct {p0}, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->rebuildItems()V

    return-void
.end method

.method public setQuickSearchEnabled(Z)V
    .locals 1

    .line 429
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mbQuickSearchEnabled:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 432
    :cond_0
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->mbQuickSearchEnabled:Z

    .line 433
    invoke-direct {p0}, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->rebuildItems()V

    return-void
.end method
