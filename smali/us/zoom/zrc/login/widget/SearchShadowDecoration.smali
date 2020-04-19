.class public Lus/zoom/zrc/login/widget/SearchShadowDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SearchShadowDecoration.java"


# instance fields
.field private mCornerRadius:F

.field private mDisableCornerBottom:Z

.field private mListView:Landroidx/recyclerview/widget/RecyclerView;

.field private mShadowPaint:Landroid/graphics/Paint;

.field private mShadowRect:Landroid/graphics/RectF;

.field private mShowShadow:Z


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 29
    iput-object p1, p0, Lus/zoom/zrc/login/widget/SearchShadowDecoration;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 34
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/login/widget/SearchShadowDecoration;->mShadowRect:Landroid/graphics/RectF;

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/login/widget/SearchShadowDecoration;->mShadowPaint:Landroid/graphics/Paint;

    .line 36
    iget-object v0, p0, Lus/zoom/zrc/login/widget/SearchShadowDecoration;->mShadowPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 37
    iget-object v0, p0, Lus/zoom/zrc/login/widget/SearchShadowDecoration;->mShadowPaint:Landroid/graphics/Paint;

    sget v1, Lus/zoom/zrcbox/R$color;->zrc_search_shadow:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    sget v0, Lus/zoom/zrcbox/R$dimen;->zrc_rounded_corner_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lus/zoom/zrc/login/widget/SearchShadowDecoration;->mCornerRadius:F

    return-void
.end method


# virtual methods
.method public disableClipBottomCorner()V
    .locals 3

    .line 53
    iget-boolean v0, p0, Lus/zoom/zrc/login/widget/SearchShadowDecoration;->mDisableCornerBottom:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lus/zoom/zrc/login/widget/SearchShadowDecoration;->mDisableCornerBottom:Z

    .line 55
    iget-object v0, p0, Lus/zoom/zrc/login/widget/SearchShadowDecoration;->mShadowRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    const/high16 v2, 0x447a0000    # 1000.0f

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 56
    iget-object v0, p0, Lus/zoom/zrc/login/widget/SearchShadowDecoration;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    :cond_0
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 62
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 63
    iget-boolean p2, p0, Lus/zoom/zrc/login/widget/SearchShadowDecoration;->mShowShadow:Z

    if-eqz p2, :cond_0

    .line 64
    iget-object p2, p0, Lus/zoom/zrc/login/widget/SearchShadowDecoration;->mShadowRect:Landroid/graphics/RectF;

    iget p3, p0, Lus/zoom/zrc/login/widget/SearchShadowDecoration;->mCornerRadius:F

    iget-object v0, p0, Lus/zoom/zrc/login/widget/SearchShadowDecoration;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setShadowSize(IIF)V
    .locals 2

    .line 43
    iget-boolean v0, p0, Lus/zoom/zrc/login/widget/SearchShadowDecoration;->mDisableCornerBottom:Z

    if-eqz v0, :cond_0

    add-int/lit16 p2, p2, 0x3e8

    .line 46
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/login/widget/SearchShadowDecoration;->mShadowRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    int-to-float p1, p1

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    iget-object v0, p0, Lus/zoom/zrc/login/widget/SearchShadowDecoration;->mShadowRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    int-to-float v1, p2

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 47
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/login/widget/SearchShadowDecoration;->mShadowRect:Landroid/graphics/RectF;

    int-to-float p2, p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 49
    :cond_2
    iput p3, p0, Lus/zoom/zrc/login/widget/SearchShadowDecoration;->mCornerRadius:F

    return-void
.end method

.method public showShadow(Z)V
    .locals 1

    .line 69
    iget-boolean v0, p0, Lus/zoom/zrc/login/widget/SearchShadowDecoration;->mShowShadow:Z

    if-eq v0, p1, :cond_0

    .line 70
    iput-boolean p1, p0, Lus/zoom/zrc/login/widget/SearchShadowDecoration;->mShowShadow:Z

    .line 72
    iget-object p1, p0, Lus/zoom/zrc/login/widget/SearchShadowDecoration;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    :cond_0
    return-void
.end method
