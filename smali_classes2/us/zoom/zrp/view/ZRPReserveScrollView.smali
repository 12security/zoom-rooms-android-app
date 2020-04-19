.class public Lus/zoom/zrp/view/ZRPReserveScrollView;
.super Landroid/widget/ScrollView;
.source "ZRPReserveScrollView.java"


# instance fields
.field private remainderDy:I

.field private scroller:Landroid/widget/Scroller;

.field private scrollerCurrY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0}, Lus/zoom/zrp/view/ZRPReserveScrollView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0}, Lus/zoom/zrp/view/ZRPReserveScrollView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0}, Lus/zoom/zrp/view/ZRPReserveScrollView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    invoke-direct {p0}, Lus/zoom/zrp/view/ZRPReserveScrollView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 44
    invoke-virtual {p0}, Lus/zoom/zrp/view/ZRPReserveScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 45
    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lus/zoom/zrp/view/ZRPReserveScrollView;->scroller:Landroid/widget/Scroller;

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 3

    .line 62
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPReserveScrollView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPReserveScrollView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 64
    iget v1, p0, Lus/zoom/zrp/view/ZRPReserveScrollView;->scrollerCurrY:I

    sub-int v1, v0, v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 66
    invoke-virtual {p0, v2, v1}, Lus/zoom/zrp/view/ZRPReserveScrollView;->scrollBy(II)V

    .line 67
    iput v0, p0, Lus/zoom/zrp/view/ZRPReserveScrollView;->scrollerCurrY:I

    .line 68
    iget v0, p0, Lus/zoom/zrp/view/ZRPReserveScrollView;->remainderDy:I

    sub-int/2addr v0, v1

    iput v0, p0, Lus/zoom/zrp/view/ZRPReserveScrollView;->remainderDy:I

    .line 70
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrp/view/ZRPReserveScrollView;->invalidate()V

    .line 73
    :cond_1
    invoke-super {p0}, Landroid/widget/ScrollView;->computeScroll()V

    return-void
.end method

.method public customSmoothScrollBy(II)V
    .locals 8

    .line 49
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPReserveScrollView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPReserveScrollView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    goto :goto_0

    .line 52
    :cond_0
    iput v1, p0, Lus/zoom/zrp/view/ZRPReserveScrollView;->remainderDy:I

    .line 54
    :goto_0
    iget v0, p0, Lus/zoom/zrp/view/ZRPReserveScrollView;->remainderDy:I

    add-int/2addr v0, p1

    iput v0, p0, Lus/zoom/zrp/view/ZRPReserveScrollView;->remainderDy:I

    .line 55
    iget-object v2, p0, Lus/zoom/zrp/view/ZRPReserveScrollView;->scroller:Landroid/widget/Scroller;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lus/zoom/zrp/view/ZRPReserveScrollView;->remainderDy:I

    const/16 p1, 0x32

    if-lt p2, p1, :cond_1

    move v7, p2

    goto :goto_1

    :cond_1
    const/16 p2, 0x96

    const/16 v7, 0x96

    :goto_1
    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 56
    iput v1, p0, Lus/zoom/zrp/view/ZRPReserveScrollView;->scrollerCurrY:I

    .line 57
    invoke-virtual {p0}, Lus/zoom/zrp/view/ZRPReserveScrollView;->invalidate()V

    return-void
.end method

.method public performClick()Z
    .locals 1

    .line 78
    invoke-super {p0}, Landroid/widget/ScrollView;->performClick()Z

    move-result v0

    return v0
.end method
