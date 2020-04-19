.class Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "PinnedSectionRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$1;->this$0:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;

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

    .line 57
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 62
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 64
    iget-object p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$1;->this$0:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;

    invoke-static {p1}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->access$000(Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;)V

    return-void
.end method
