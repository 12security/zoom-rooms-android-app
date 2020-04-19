.class public Lus/zoom/androidlib/util/ZMRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "ZMRecyclerView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 16
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 20
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public scrollToBottom(Z)V
    .locals 3

    .line 28
    invoke-virtual {p0}, Lus/zoom/androidlib/util/ZMRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 29
    invoke-virtual {p0}, Lus/zoom/androidlib/util/ZMRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_4

    if-nez v0, :cond_0

    goto :goto_1

    .line 33
    :cond_0
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 35
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    if-eqz p1, :cond_1

    .line 38
    new-instance p1, Lus/zoom/androidlib/util/ZMRecyclerView$1;

    invoke-direct {p1, p0, v1}, Lus/zoom/androidlib/util/ZMRecyclerView$1;-><init>(Lus/zoom/androidlib/util/ZMRecyclerView;I)V

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/util/ZMRecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    sub-int p1, v1, v2

    const/4 v2, 0x5

    if-ge p1, v2, :cond_3

    .line 46
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt p1, v2, :cond_2

    .line 47
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p0, v1}, Lus/zoom/androidlib/util/ZMRecyclerView;->scrollToPosition(I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method
