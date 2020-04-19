.class Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder$1;
.super Ljava/lang/Object;
.source "ZMBaseRecyclerViewItemHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->addOnClickListener(I)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder$1;->this$0:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 366
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder$1;->this$0:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;

    invoke-static {v0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->access$000(Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getOnItemChildClickListener()Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$OnItemChildClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder$1;->this$0:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;

    invoke-static {v0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->access$000(Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getOnItemChildClickListener()Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$OnItemChildClickListener;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder$1;->this$0:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;

    invoke-static {v1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->access$000(Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder$1;->this$0:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;

    invoke-static {v2}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->access$100(Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;)I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$OnItemChildClickListener;->onItemChildClick(Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;Landroid/view/View;I)V

    :cond_0
    return-void
.end method
