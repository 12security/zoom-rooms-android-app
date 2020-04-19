.class Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "ZMBaseRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;

.field final synthetic val$gridManager:Landroidx/recyclerview/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 0

    .line 558
    iput-object p1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$1;->this$0:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;

    iput-object p2, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$1;->val$gridManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 3

    .line 561
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$1;->this$0:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x111

    if-ne v0, v2, :cond_0

    .line 562
    iget-object v2, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$1;->this$0:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;

    invoke-virtual {v2}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->isHeaderViewAsFlow()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    const/16 v2, 0x333

    if-ne v0, v2, :cond_1

    .line 565
    iget-object v2, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$1;->this$0:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;

    invoke-virtual {v2}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->isFooterViewAsFlow()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 568
    :cond_1
    iget-object v2, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$1;->this$0:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;

    invoke-static {v2}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->access$000(Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$SpanSizeLookup;

    move-result-object v2

    if-nez v2, :cond_3

    .line 569
    iget-object p1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$1;->this$0:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;

    invoke-virtual {p1, v0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->isFixedViewType(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$1;->val$gridManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    :cond_2
    return v1

    .line 571
    :cond_3
    iget-object v1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$1;->this$0:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;

    invoke-virtual {v1, v0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->isFixedViewType(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$1;->val$gridManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$1;->this$0:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;

    invoke-static {v0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->access$000(Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$SpanSizeLookup;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$1;->val$gridManager:Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v2, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$1;->this$0:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;

    .line 572
    invoke-virtual {v2}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getHeaderLayoutCount()I

    move-result v2

    sub-int/2addr p1, v2

    .line 571
    invoke-interface {v0, v1, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$SpanSizeLookup;->getSpanSize(Landroidx/recyclerview/widget/GridLayoutManager;I)I

    move-result p1

    :goto_0
    return p1
.end method
