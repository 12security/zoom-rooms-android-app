.class Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView$2;
.super Ljava/lang/Object;
.source "SwipeRefreshPinnedSectionRecyclerView.java"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView$2;->this$0:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 1

    .line 51
    iget-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView$2;->this$0:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;

    iget-object v0, v0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;->mListener:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView$OnLoadListener;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView$2;->this$0:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;

    iget-object v0, v0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;->mListener:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView$OnLoadListener;

    invoke-interface {v0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView$OnLoadListener;->refresh()V

    :cond_0
    return-void
.end method
