.class public Lus/zoom/zrc/view/ZRCCenterScrollView;
.super Landroid/widget/ScrollView;
.source "ZRCCenterScrollView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1

    sub-int/2addr p4, p2

    .line 20
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCCenterScrollView;->getPaddingLeft()I

    move-result p1

    sub-int/2addr p4, p1

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCCenterScrollView;->getPaddingRight()I

    move-result p1

    sub-int/2addr p4, p1

    sub-int/2addr p5, p3

    .line 21
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCCenterScrollView;->getPaddingTop()I

    move-result p1

    sub-int/2addr p5, p1

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCCenterScrollView;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p5, p1

    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ZRCCenterScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 26
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCCenterScrollView;->getPaddingTop()I

    move-result p2

    .line 27
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCCenterScrollView;->getPaddingBottom()I

    move-result p3

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-ge v0, p4, :cond_1

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p4, v0

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p2, p4

    .line 31
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    if-ge p4, p5, :cond_2

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    sub-int/2addr p5, p4

    div-int/lit8 p5, p5, 0x2

    add-int/2addr p3, p5

    .line 34
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p5, p3

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method
