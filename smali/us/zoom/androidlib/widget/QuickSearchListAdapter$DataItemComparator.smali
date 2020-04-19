.class Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItemComparator;
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
    name = "DataItemComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mCollator:Ljava/text/Collator;

.field private mDataAdapter:Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;


# direct methods
.method public constructor <init>(Ljava/util/Locale;Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;)V
    .locals 1

    .line 710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 711
    invoke-static {p1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItemComparator;->mCollator:Ljava/text/Collator;

    .line 712
    iget-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItemComparator;->mCollator:Ljava/text/Collator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/text/Collator;->setStrength(I)V

    .line 713
    iput-object p2, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItemComparator;->mDataAdapter:Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 706
    check-cast p1, Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItem;

    check-cast p2, Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItem;

    invoke-virtual {p0, p1, p2}, Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItemComparator;->compare(Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItem;Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItem;)I

    move-result p1

    return p1
.end method

.method public compare(Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItem;Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItem;)I
    .locals 4

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    .line 721
    :cond_0
    iget-object v1, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItemComparator;->mDataAdapter:Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;

    iget-object p1, p1, Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItem;->data:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;->getItemSortKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 722
    iget-object v1, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItemComparator;->mDataAdapter:Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;

    iget-object p2, p2, Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItem;->data:Ljava/lang/Object;

    invoke-virtual {v1, p2}, Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;->getItemSortKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    if-nez p2, :cond_2

    const-string p2, ""

    .line 730
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x7fff

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_3

    return v3

    .line 733
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_4

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_4

    const/4 p1, -0x1

    return p1

    .line 736
    :cond_4
    invoke-static {p1, p2}, Lus/zoom/androidlib/util/SortUtil;->fastCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
