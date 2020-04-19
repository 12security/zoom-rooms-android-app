.class public Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "ZRCChangeContentPhoneViewPager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected getChildDrawingOrder(II)I
    .locals 1

    .line 20
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;->getCurrentItem()I

    move-result v0

    if-ne p2, v0, :cond_0

    add-int/lit8 p2, p1, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_1

    .line 23
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;->getCurrentItem()I

    move-result p2

    .line 25
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->getChildDrawingOrder(II)I

    move-result p1

    return p1
.end method
