.class public abstract Lus/zoom/androidlib/widget/recyclerview/ZMBaseMultiItemRecyclerViewAdapter;
.super Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;
.source "ZMBaseMultiItemRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lus/zoom/androidlib/widget/recyclerview/ZMMultiItemEntity;",
        "K:",
        "Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;",
        ">",
        "Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter<",
        "TT;TK;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_VIEW_TYPE:I = -0xff

.field public static final TYPE_NOT_FOUND:I = -0x194


# instance fields
.field private layouts:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private getLayoutId(I)I
    .locals 2

    .line 53
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseMultiItemRecyclerViewAdapter;->layouts:Landroid/util/SparseIntArray;

    const/16 v1, -0x194

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    return p1
.end method


# virtual methods
.method protected addItemType(II)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 57
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseMultiItemRecyclerViewAdapter;->layouts:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseMultiItemRecyclerViewAdapter;->layouts:Landroid/util/SparseIntArray;

    .line 60
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseMultiItemRecyclerViewAdapter;->layouts:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method protected getDefItemViewType(I)I
    .locals 1

    .line 36
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseMultiItemRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/androidlib/widget/recyclerview/ZMMultiItemEntity;

    if-eqz p1, :cond_0

    .line 38
    invoke-interface {p1}, Lus/zoom/androidlib/widget/recyclerview/ZMMultiItemEntity;->getItemType()I

    move-result p1

    return p1

    :cond_0
    const/16 p1, -0xff

    return p1
.end method

.method protected onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TK;"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p2}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseMultiItemRecyclerViewAdapter;->getLayoutId(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseMultiItemRecyclerViewAdapter;->createBaseViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 66
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseMultiItemRecyclerViewAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseMultiItemRecyclerViewAdapter;->mData:Ljava/util/List;

    .line 68
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseMultiItemRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/androidlib/widget/recyclerview/ZMMultiItemEntity;

    .line 71
    invoke-super {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->remove(I)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method protected setDefaultViewTypeLayout(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    const/16 v0, -0xff

    .line 44
    invoke-virtual {p0, v0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseMultiItemRecyclerViewAdapter;->addItemType(II)V

    return-void
.end method
