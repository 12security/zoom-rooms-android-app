.class Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SwipeRefreshPinnedSectionRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;
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

    .line 24
    iput-object p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView$1;->this$0:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 28
    iget-object p2, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView$1;->this$0:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;

    invoke-static {p2, p1}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;->access$000(Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
