.class public Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/GridDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "GridDecoration.java"


# instance fields
.field private mSpaceEdge:I

.field private mSpaceMiddle:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 18
    iput p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/GridDecoration;->mSpaceEdge:I

    .line 19
    iput p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/GridDecoration;->mSpaceMiddle:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 23
    iput p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/GridDecoration;->mSpaceEdge:I

    .line 24
    iput p2, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/GridDecoration;->mSpaceMiddle:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 31
    invoke-virtual {p2}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result p4

    .line 33
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p3

    .line 34
    invoke-virtual {p2}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v0

    if-ne v0, p3, :cond_0

    return-void

    .line 38
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    if-nez p4, :cond_1

    .line 40
    iget p3, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/GridDecoration;->mSpaceEdge:I

    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 41
    iget p3, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/GridDecoration;->mSpaceMiddle:I

    div-int/lit8 p3, p3, 0x2

    iput p3, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    sub-int/2addr p3, v1

    if-ne p4, p3, :cond_2

    .line 43
    iget p3, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/GridDecoration;->mSpaceMiddle:I

    div-int/lit8 p3, p3, 0x2

    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 44
    iget p3, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/GridDecoration;->mSpaceEdge:I

    iput p3, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 46
    :cond_2
    iget p3, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/GridDecoration;->mSpaceMiddle:I

    div-int/lit8 p4, p3, 0x2

    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 47
    div-int/lit8 p3, p3, 0x2

    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 50
    :goto_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    .line 51
    iget p2, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/GridDecoration;->mSpaceEdge:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_3
    return-void
.end method
