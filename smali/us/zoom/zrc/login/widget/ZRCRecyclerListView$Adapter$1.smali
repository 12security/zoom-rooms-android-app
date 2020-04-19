.class Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter$1;
.super Ljava/lang/Object;
.source "ZRCRecyclerListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;

.field final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic val$item:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter$1;->this$0:Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;

    iput-object p2, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter$1;->val$item:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 477
    iget-object p1, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter$1;->this$0:Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;

    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->isItemSelectable(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 480
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter$1;->this$0:Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;

    invoke-static {p1}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->access$100(Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter$1;->this$0:Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;

    invoke-static {p1}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->access$200(Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter$1;->val$item:Ljava/lang/Object;

    if-ne p1, v0, :cond_1

    return-void

    .line 483
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter$1;->this$0:Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;

    invoke-static {p1}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->access$300(Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 484
    iget-object p1, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter$1;->this$0:Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;

    invoke-static {p1}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->access$300(Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->onItemViewSelected(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 487
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter$1;->this$0:Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;

    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-static {p1, v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->access$302(Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 488
    iget-object p1, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter$1;->this$0:Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;

    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter$1;->val$item:Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->access$202(Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    iget-object p1, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter$1;->this$0:Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;

    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->onItemViewSelected(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 490
    iget-object p1, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter$1;->this$0:Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;

    invoke-static {p1}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->access$400(Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;)Lus/zoom/zrc/login/widget/ZRCRecyclerListView$IRecyclerItemSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 491
    iget-object p1, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter$1;->this$0:Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;

    invoke-static {p1}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->access$400(Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;)Lus/zoom/zrc/login/widget/ZRCRecyclerListView$IRecyclerItemSelectedListener;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$IRecyclerItemSelectedListener;->onItemSelected(I)V

    :cond_3
    return-void
.end method
