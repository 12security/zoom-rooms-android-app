.class Lus/zoom/androidlib/material/ZMContextMenuListAdapter$1;
.super Ljava/lang/Object;
.source "ZMContextMenuListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/material/ZMContextMenuListAdapter;->bind(Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter$BaseViewHolder;Lus/zoom/androidlib/widget/IZMMenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/material/ZMContextMenuListAdapter;

.field final synthetic val$holder:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter$BaseViewHolder;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/material/ZMContextMenuListAdapter;Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter$BaseViewHolder;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lus/zoom/androidlib/material/ZMContextMenuListAdapter$1;->this$0:Lus/zoom/androidlib/material/ZMContextMenuListAdapter;

    iput-object p2, p0, Lus/zoom/androidlib/material/ZMContextMenuListAdapter$1;->val$holder:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter$BaseViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lus/zoom/androidlib/material/ZMContextMenuListAdapter$1;->this$0:Lus/zoom/androidlib/material/ZMContextMenuListAdapter;

    invoke-static {v0}, Lus/zoom/androidlib/material/ZMContextMenuListAdapter;->access$000(Lus/zoom/androidlib/material/ZMContextMenuListAdapter;)Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter$OnRecyclerViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lus/zoom/androidlib/material/ZMContextMenuListAdapter$1;->this$0:Lus/zoom/androidlib/material/ZMContextMenuListAdapter;

    invoke-static {v0}, Lus/zoom/androidlib/material/ZMContextMenuListAdapter;->access$100(Lus/zoom/androidlib/material/ZMContextMenuListAdapter;)Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter$OnRecyclerViewListener;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/androidlib/material/ZMContextMenuListAdapter$1;->val$holder:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter$BaseViewHolder;

    invoke-virtual {v1}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter$BaseViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter$OnRecyclerViewListener;->onItemClick(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
