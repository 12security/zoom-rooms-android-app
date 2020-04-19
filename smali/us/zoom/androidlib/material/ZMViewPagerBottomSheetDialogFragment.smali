.class public Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialogFragment;
.super Landroidx/appcompat/app/AppCompatDialogFragment;
.source "ZMViewPagerBottomSheetDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;-><init>()V

    return-void
.end method

.method private findBottomSheetParent(Landroid/view/View;)Landroid/view/View;
    .locals 3

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 31
    instance-of v2, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 32
    invoke-virtual {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    instance-of v1, v1, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    if-eqz v1, :cond_0

    return-object p1

    .line 35
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 36
    instance-of v1, p1, Landroid/view/View;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_2
    :goto_1
    move-object p1, v0

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 17
    new-instance p1, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;

    invoke-virtual {p0}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialogFragment;->getTheme()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method

.method public setupViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2

    .line 21
    invoke-direct {p0, p1}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialogFragment;->findBottomSheetParent(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23
    new-instance v1, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetListener;

    invoke-direct {v1, p1, v0}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetListener;-><init>(Landroidx/viewpager/widget/ViewPager;Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :cond_0
    return-void
.end method
