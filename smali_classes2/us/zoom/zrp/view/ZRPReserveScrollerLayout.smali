.class public Lus/zoom/zrp/view/ZRPReserveScrollerLayout;
.super Landroid/widget/FrameLayout;
.source "ZRPReserveScrollerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;,
        Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;
    }
.end annotation


# instance fields
.field private controllerView:Lus/zoom/zrp/reserve/ZRPReserveControllerView;

.field private converter:Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;

.field private remainderDy:I

.field private reserveView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private reserveViewBottomPadding:I

.field private reserveViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private reserveViewTopPadding:I

.field private scrollType:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;

.field private scrollView:Lus/zoom/zrp/view/ZRPReserveScrollView;

.field private scrollViewScrollType:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

.field private scroller:Landroid/widget/Scroller;

.field private scrollerCurrY:I

.field private triggerScrollMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    sget-object v0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;->NO_SKIP_SCROLL:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    iput-object v0, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->scrollViewScrollType:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    .line 38
    invoke-direct {p0, p1}, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->init(Landroid/content/Context;)V

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

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    sget-object p2, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;->NO_SKIP_SCROLL:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    iput-object p2, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->scrollViewScrollType:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    .line 43
    invoke-direct {p0, p1}, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->init(Landroid/content/Context;)V

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

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    sget-object p2, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;->NO_SKIP_SCROLL:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    iput-object p2, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->scrollViewScrollType:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    .line 48
    invoke-direct {p0, p1}, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 52
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->scroller:Landroid/widget/Scroller;

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 6

    .line 133
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 134
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 135
    iget v1, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->scrollerCurrY:I

    sub-int v1, v0, v1

    if-eqz v1, :cond_8

    .line 137
    iget-object v2, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->scrollType:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;

    sget-object v3, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;->LOCATION:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_3

    .line 138
    iget-object v2, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->reserveViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 139
    iget-object v2, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->reserveView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v3, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->reserveViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object v2, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->scrollViewScrollType:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    sget-object v3, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;->NO_SKIP_SCROLL:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->scrollViewScrollType:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    sget-object v3, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;->INNER_SKIP_SCROLL:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    if-ne v2, v3, :cond_7

    .line 142
    :cond_0
    iget-object v2, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->reserveViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->scrollView:Lus/zoom/zrp/view/ZRPReserveScrollView;

    invoke-virtual {v3}, Lus/zoom/zrp/view/ZRPReserveScrollView;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->reserveViewTopPadding:I

    add-int/2addr v2, v3

    .line 143
    iget-object v3, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->scrollView:Lus/zoom/zrp/view/ZRPReserveScrollView;

    invoke-virtual {v3}, Lus/zoom/zrp/view/ZRPReserveScrollView;->getScrollY()I

    move-result v3

    iget-object v5, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->controllerView:Lus/zoom/zrp/reserve/ZRPReserveControllerView;

    invoke-virtual {v5}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->getHeight()I

    move-result v5

    add-int/2addr v3, v5

    iget-object v5, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->reserveViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v5, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v3, v5

    iget-object v5, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->reserveViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v5, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v3, v5

    iget v5, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->reserveViewBottomPadding:I

    add-int/2addr v3, v5

    if-lez v1, :cond_1

    .line 145
    iget v5, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->triggerScrollMargin:I

    if-lt v3, v5, :cond_2

    :cond_1
    if-gez v1, :cond_7

    iget v3, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->triggerScrollMargin:I

    if-ge v2, v3, :cond_7

    .line 146
    :cond_2
    iget-object v2, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->scrollView:Lus/zoom/zrp/view/ZRPReserveScrollView;

    invoke-virtual {v2, v4, v1}, Lus/zoom/zrp/view/ZRPReserveScrollView;->scrollBy(II)V

    goto/16 :goto_0

    .line 149
    :cond_3
    iget-object v2, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->scrollType:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;

    sget-object v3, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;->START:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;

    if-ne v2, v3, :cond_5

    .line 150
    iget-object v2, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->reserveViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 151
    iget-object v2, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->reserveViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 152
    iget-object v2, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->reserveView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v3, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->reserveViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    iget-object v2, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->reserveViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->scrollView:Lus/zoom/zrp/view/ZRPReserveScrollView;

    invoke-virtual {v3}, Lus/zoom/zrp/view/ZRPReserveScrollView;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->reserveViewTopPadding:I

    add-int/2addr v2, v3

    .line 155
    iget-object v3, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->scrollView:Lus/zoom/zrp/view/ZRPReserveScrollView;

    invoke-virtual {v3}, Lus/zoom/zrp/view/ZRPReserveScrollView;->getScrollY()I

    move-result v3

    iget-object v5, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->controllerView:Lus/zoom/zrp/reserve/ZRPReserveControllerView;

    invoke-virtual {v5}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->getHeight()I

    move-result v5

    add-int/2addr v3, v5

    iget-object v5, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->reserveViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v5, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v3, v5

    iget-object v5, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->reserveViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v5, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v3, v5

    iget v5, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->reserveViewBottomPadding:I

    add-int/2addr v3, v5

    if-gez v1, :cond_4

    .line 157
    iget v5, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->triggerScrollMargin:I

    if-ge v2, v5, :cond_4

    .line 158
    iget-object v2, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->scrollView:Lus/zoom/zrp/view/ZRPReserveScrollView;

    invoke-virtual {v2, v4, v1}, Lus/zoom/zrp/view/ZRPReserveScrollView;->scrollBy(II)V

    goto :goto_0

    :cond_4
    if-lez v1, :cond_7

    .line 159
    iget v2, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->triggerScrollMargin:I

    if-ge v3, v2, :cond_7

    .line 160
    iget-object v2, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->scrollView:Lus/zoom/zrp/view/ZRPReserveScrollView;

    invoke-virtual {v2, v4, v1}, Lus/zoom/zrp/view/ZRPReserveScrollView;->scrollBy(II)V

    goto :goto_0

    .line 162
    :cond_5
    iget-object v2, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->scrollType:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;

    sget-object v3, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;->END:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;

    if-ne v2, v3, :cond_7

    .line 163
    iget-object v2, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->reserveViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 164
    iget-object v2, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->reserveView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v3, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->reserveViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    iget-object v2, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->reserveViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->scrollView:Lus/zoom/zrp/view/ZRPReserveScrollView;

    invoke-virtual {v3}, Lus/zoom/zrp/view/ZRPReserveScrollView;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->reserveViewTopPadding:I

    add-int/2addr v2, v3

    .line 167
    iget-object v3, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->scrollView:Lus/zoom/zrp/view/ZRPReserveScrollView;

    invoke-virtual {v3}, Lus/zoom/zrp/view/ZRPReserveScrollView;->getScrollY()I

    move-result v3

    iget-object v5, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->controllerView:Lus/zoom/zrp/reserve/ZRPReserveControllerView;

    invoke-virtual {v5}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->getHeight()I

    move-result v5

    add-int/2addr v3, v5

    iget-object v5, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->reserveViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v5, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v3, v5

    iget-object v5, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->reserveViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v5, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v3, v5

    iget v5, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->reserveViewBottomPadding:I

    add-int/2addr v3, v5

    if-lez v1, :cond_6

    .line 169
    iget v5, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->triggerScrollMargin:I

    if-ge v3, v5, :cond_6

    .line 170
    iget-object v2, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->scrollView:Lus/zoom/zrp/view/ZRPReserveScrollView;

    invoke-virtual {v2, v4, v1}, Lus/zoom/zrp/view/ZRPReserveScrollView;->scrollBy(II)V

    goto :goto_0

    :cond_6
    if-gez v1, :cond_7

    .line 171
    iget v3, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->triggerScrollMargin:I

    if-ge v2, v3, :cond_7

    .line 172
    iget-object v2, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->scrollView:Lus/zoom/zrp/view/ZRPReserveScrollView;

    invoke-virtual {v2, v4, v1}, Lus/zoom/zrp/view/ZRPReserveScrollView;->scrollBy(II)V

    .line 175
    :cond_7
    :goto_0
    iput v0, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->scrollerCurrY:I

    .line 176
    iget v0, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->remainderDy:I

    sub-int/2addr v0, v1

    iput v0, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->remainderDy:I

    .line 178
    :cond_8
    invoke-virtual {p0}, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->invalidate()V

    .line 180
    :cond_9
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    return-void
.end method

.method public prepare(Lus/zoom/zrp/reserve/ZRPReserveControllerView;Lus/zoom/zrp/view/ZRPReserveScrollView;Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;II)V
    .locals 1

    .line 58
    iput-object p3, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->converter:Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;

    const/16 v0, 0x3c

    .line 59
    invoke-virtual {p3, v0}, Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;->duration2height(I)I

    move-result v0

    iput v0, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->triggerScrollMargin:I

    .line 61
    iput-object p1, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->controllerView:Lus/zoom/zrp/reserve/ZRPReserveControllerView;

    .line 62
    iput-object p2, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->scrollView:Lus/zoom/zrp/view/ZRPReserveScrollView;

    .line 63
    sget p1, Lus/zoom/zrcbox/R$id;->reserve_view:I

    invoke-virtual {p0, p1}, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->reserveView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 64
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->reserveView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object p1, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->reserveViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 66
    sget p1, Lus/zoom/zrcbox/R$id;->iv_start_handle:I

    invoke-virtual {p0, p1}, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 67
    sget p2, Lus/zoom/zrcbox/R$id;->iv_end_handle:I

    invoke-virtual {p0, p2}, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 68
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->reserveViewTopPadding:I

    .line 69
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->reserveViewBottomPadding:I

    .line 71
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->reserveViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget p2, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->reserveViewTopPadding:I

    sub-int/2addr p1, p2

    iget p2, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->reserveViewBottomPadding:I

    sub-int/2addr p1, p2

    .line 73
    invoke-virtual {p3, p4}, Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;->mins2coordinate(I)I

    move-result p2

    iget-object p4, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->reserveViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget p4, p4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr p2, p4

    iget p4, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->reserveViewTopPadding:I

    sub-int/2addr p2, p4

    .line 74
    invoke-virtual {p3, p5}, Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;->duration2height(I)I

    move-result p3

    sub-int/2addr p3, p1

    .line 75
    invoke-virtual {p0, p2, p3}, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->setReserveViewAll(II)V

    return-void
.end method

.method public scrollReserveView(Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;II)Z
    .locals 8

    .line 89
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->scrollType:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 92
    :cond_0
    iput-object p1, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->scrollType:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;

    .line 94
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_1

    .line 95
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    goto :goto_0

    .line 97
    :cond_1
    iput v1, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->remainderDy:I

    .line 99
    :goto_0
    iget p1, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->remainderDy:I

    add-int/2addr p1, p2

    iput p1, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->remainderDy:I

    .line 100
    iput v1, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->scrollerCurrY:I

    .line 101
    iget-object v2, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->scroller:Landroid/widget/Scroller;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->remainderDy:I

    const/16 p1, 0x32

    if-lt p3, p1, :cond_2

    move v7, p3

    goto :goto_1

    :cond_2
    const/16 p3, 0x96

    const/16 v7, 0x96

    :goto_1
    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 102
    invoke-virtual {p0}, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->invalidate()V

    const/4 p1, 0x1

    return p1
.end method

.method public scrollReserveViewAll(Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;IIII)Z
    .locals 1

    .line 109
    sget-object v0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;->LOCATION:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;

    invoke-virtual {p0, v0, p3, p5}, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->scrollReserveView(Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;II)Z

    move-result p5

    if-eqz p5, :cond_1

    .line 110
    iput-object p1, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->scrollViewScrollType:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    .line 111
    sget-object p5, Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;->OTHER_SKIP_SCROLL:Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;

    if-ne p1, p5, :cond_0

    .line 112
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->scrollView:Lus/zoom/zrp/view/ZRPReserveScrollView;

    sub-int/2addr p3, p2

    const/16 p2, 0x96

    invoke-virtual {p1, p3, p2}, Lus/zoom/zrp/view/ZRPReserveScrollView;->customSmoothScrollBy(II)V

    .line 114
    :cond_0
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->reserveViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr p2, p4

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 115
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->reserveView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object p2, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->reserveViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public scrollReserveViewAllInMins(Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;IIII)Z
    .locals 7

    .line 127
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->converter:Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;

    invoke-virtual {v0, p3}, Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;->duration2height(I)I

    move-result v4

    iget-object p3, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->converter:Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;

    .line 128
    invoke-virtual {p3, p4}, Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;->duration2height(I)I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v6, p5

    .line 127
    invoke-virtual/range {v1 .. v6}, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->scrollReserveViewAll(Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollViewScrollType;IIII)Z

    move-result p1

    return p1
.end method

.method public scrollReserveViewInMins(Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;II)Z
    .locals 1

    .line 122
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->converter:Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;

    invoke-virtual {v0, p2}, Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;->duration2height(I)I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->scrollReserveView(Lus/zoom/zrp/view/ZRPReserveScrollerLayout$ScrollType;II)Z

    move-result p1

    return p1
.end method

.method public setReserveViewAll(II)V
    .locals 2

    .line 79
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->reserveViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 80
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->reserveViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v0, p2

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 81
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->reserveView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object p2, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->reserveViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setReserveViewAllInMins(II)V
    .locals 1

    .line 85
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->converter:Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;

    invoke-virtual {v0, p1}, Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;->duration2height(I)I

    move-result p1

    iget-object v0, p0, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->converter:Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;

    invoke-virtual {v0, p2}, Lus/zoom/zrp/reserve/ZRPTimeCoordinateConverter;->duration2height(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrp/view/ZRPReserveScrollerLayout;->setReserveViewAll(II)V

    return-void
.end method
