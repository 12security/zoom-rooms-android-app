.class Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$3;
.super Ljava/lang/Object;
.source "ZMBaseRecyclerViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->bindViewClickListener(Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;

.field final synthetic val$ZMBaseRecyclerViewItemHolder:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;)V
    .locals 0

    .line 663
    iput-object p1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$3;->this$0:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;

    iput-object p2, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$3;->val$ZMBaseRecyclerViewItemHolder:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 666
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$3;->this$0:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;

    iget-object v1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$3;->val$ZMBaseRecyclerViewItemHolder:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;

    invoke-virtual {v1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->getLayoutPosition()I

    move-result v1

    iget-object v2, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$3;->this$0:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;

    invoke-virtual {v2}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getHeaderLayoutCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->setOnItemLongClick(Landroid/view/View;I)Z

    move-result p1

    return p1
.end method
