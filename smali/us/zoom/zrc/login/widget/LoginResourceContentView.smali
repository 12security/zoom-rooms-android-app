.class public Lus/zoom/zrc/login/widget/LoginResourceContentView;
.super Landroid/view/ViewGroup;
.source "LoginResourceContentView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 81
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 76
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/LoginResourceContentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 71
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 54
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/LoginResourceContentView;->getPaddingLeft()I

    move-result p1

    .line 55
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/LoginResourceContentView;->getPaddingTop()I

    move-result p2

    const/4 p3, 0x0

    .line 56
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/LoginResourceContentView;->getChildCount()I

    move-result p4

    if-ge p3, p4, :cond_1

    .line 57
    invoke-virtual {p0, p3}, Lus/zoom/zrc/login/widget/LoginResourceContentView;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 58
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p5

    const/16 v0, 0x8

    if-ne p5, v0, :cond_0

    goto :goto_1

    .line 61
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 62
    iget v0, p5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p2, v0

    .line 63
    iget p5, p5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 64
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p4, p1, p2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 65
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p4, p5

    add-int/2addr p2, p4

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 28
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 30
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/LoginResourceContentView;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/LoginResourceContentView;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/LoginResourceContentView;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    .line 31
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/LoginResourceContentView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_3

    .line 32
    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/widget/LoginResourceContentView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 33
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    const/4 v2, 0x1

    goto :goto_2

    .line 37
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 38
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v4

    sub-int/2addr p2, v5

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v2, :cond_1

    .line 40
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, p1, v5}, Landroid/view/View;->measure(II)V

    goto :goto_1

    :cond_1
    const/high16 v5, -0x80000000

    .line 42
    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, p1, v5}, Landroid/view/View;->measure(II)V

    .line 44
    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-le v5, p2, :cond_2

    .line 45
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Landroid/view/View;->measure(II)V

    goto :goto_2

    .line 47
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr p2, v3

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method
