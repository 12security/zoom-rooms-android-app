.class public Lus/zoom/androidlib/widget/ZMViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "ZMViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/widget/ZMViewPager$Page;
    }
.end annotation


# instance fields
.field private mDisableScroll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/ZMViewPager;->mDisableScroll:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/ZMViewPager;->mDisableScroll:Z

    return-void
.end method


# virtual methods
.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/ZMViewPager;->mDisableScroll:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 29
    :cond_0
    instance-of v0, p1, Lus/zoom/androidlib/widget/ZMViewPager$Page;

    if-nez v0, :cond_1

    .line 30
    invoke-super/range {p0 .. p5}, Landroidx/viewpager/widget/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result p1

    return p1

    .line 32
    :cond_1
    check-cast p1, Lus/zoom/androidlib/widget/ZMViewPager$Page;

    .line 33
    invoke-interface {p1, p3, p4, p5}, Lus/zoom/androidlib/widget/ZMViewPager$Page;->canScrollHorizontal(III)Z

    move-result p1

    return p1
.end method

.method public isDisableScroll()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/ZMViewPager;->mDisableScroll:Z

    return v0
.end method

.method public setDisableScroll(Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/ZMViewPager;->mDisableScroll:Z

    return-void
.end method
