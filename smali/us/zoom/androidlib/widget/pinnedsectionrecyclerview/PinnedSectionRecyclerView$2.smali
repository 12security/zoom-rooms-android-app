.class Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PinnedSectionRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->initViews()V
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

    .line 87
    iput-object p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$2;->this$0:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 100
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 101
    iget-object p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$2;->this$0:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;

    invoke-static {p1}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->access$100(Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;)Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$OnPinnedSectionClick;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$2;->this$0:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;

    invoke-static {p1}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->access$200(Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 102
    iget-object p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$2;->this$0:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;

    invoke-static {p1}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->access$100(Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;)Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$OnPinnedSectionClick;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$2;->this$0:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;

    invoke-static {v0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->access$200(Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;)I

    move-result v0

    invoke-interface {p1, v0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$OnPinnedSectionClick;->onPinnedSectionLongClick(I)V

    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 91
    iget-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$2;->this$0:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;

    invoke-static {v0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->access$100(Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;)Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$OnPinnedSectionClick;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$2;->this$0:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;

    invoke-static {v0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->access$200(Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 92
    iget-object p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$2;->this$0:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;

    invoke-static {p1}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->access$100(Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;)Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$OnPinnedSectionClick;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$2;->this$0:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;

    invoke-static {v0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->access$200(Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;)I

    move-result v0

    invoke-interface {p1, v0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$OnPinnedSectionClick;->onPinnedSectionClick(I)V

    const/4 p1, 0x1

    return p1

    .line 95
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
