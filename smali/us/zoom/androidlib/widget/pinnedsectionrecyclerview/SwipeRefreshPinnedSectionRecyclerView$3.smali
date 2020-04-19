.class Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView$3;
.super Ljava/lang/Object;
.source "SwipeRefreshPinnedSectionRecyclerView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

    .line 59
    iput-object p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView$3;->this$0:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView$3;->this$0:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView$3;->this$0:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 67
    :goto_0
    iget-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView$3;->this$0:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;

    iget-object v0, v0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;->mListener:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView$OnLoadListener;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView$3;->this$0:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;

    iget-object v0, v0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView;->mListener:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView$OnLoadListener;

    invoke-interface {v0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/SwipeRefreshPinnedSectionRecyclerView$OnLoadListener;->refresh()V

    :cond_1
    return-void
.end method
