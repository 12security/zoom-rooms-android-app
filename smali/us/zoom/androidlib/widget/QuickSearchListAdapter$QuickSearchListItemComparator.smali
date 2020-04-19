.class Lus/zoom/androidlib/widget/QuickSearchListAdapter$QuickSearchListItemComparator;
.super Ljava/lang/Object;
.source "QuickSearchListView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/widget/QuickSearchListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QuickSearchListItemComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private mCollator:Ljava/text/Collator;

.field private mDataAdapter:Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;


# direct methods
.method public constructor <init>(Ljava/util/Locale;Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;)V
    .locals 1

    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 745
    invoke-static {p1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter$QuickSearchListItemComparator;->mCollator:Ljava/text/Collator;

    .line 746
    iget-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter$QuickSearchListItemComparator;->mCollator:Ljava/text/Collator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/text/Collator;->setStrength(I)V

    .line 747
    iput-object p2, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter$QuickSearchListItemComparator;->mDataAdapter:Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 757
    :cond_0
    instance-of v0, p1, Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItem;

    if-eqz v0, :cond_1

    .line 758
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter$QuickSearchListItemComparator;->mDataAdapter:Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;

    check-cast p1, Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItem;

    iget-object p1, p1, Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItem;->data:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;->getItemSortKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 759
    :cond_1
    instance-of v0, p1, Lus/zoom/androidlib/widget/QuickSearchListAdapter$GroupHeaderItem;

    if-eqz v0, :cond_2

    .line 760
    check-cast p1, Lus/zoom/androidlib/widget/QuickSearchListAdapter$GroupHeaderItem;

    iget-char p1, p1, Lus/zoom/androidlib/widget/QuickSearchListAdapter$GroupHeaderItem;->key:C

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 762
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 764
    :goto_0
    instance-of v0, p2, Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItem;

    if-eqz v0, :cond_3

    .line 765
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter$QuickSearchListItemComparator;->mDataAdapter:Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;

    check-cast p2, Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItem;

    iget-object p2, p2, Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItem;->data:Ljava/lang/Object;

    invoke-virtual {v0, p2}, Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;->getItemSortKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 766
    :cond_3
    instance-of v0, p2, Lus/zoom/androidlib/widget/QuickSearchListAdapter$GroupHeaderItem;

    if-eqz v0, :cond_4

    .line 767
    check-cast p2, Lus/zoom/androidlib/widget/QuickSearchListAdapter$GroupHeaderItem;

    iget-char p2, p2, Lus/zoom/androidlib/widget/QuickSearchListAdapter$GroupHeaderItem;->key:C

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 769
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 771
    :goto_1
    invoke-static {p1, p2}, Lus/zoom/androidlib/util/SortUtil;->fastCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
