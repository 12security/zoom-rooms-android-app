.class public Lus/zoom/androidlib/material/ZMViewPagerBottomSheetListener;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "ZMViewPagerBottomSheetListener.java"


# instance fields
.field private final behavior:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroidx/viewpager/widget/ViewPager;Landroid/view/View;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    .line 13
    iput-object p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetListener;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 14
    invoke-static {p2}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->from(Landroid/view/View;)Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetListener;->behavior:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/androidlib/material/ZMViewPagerBottomSheetListener;)Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;
    .locals 0

    .line 7
    iget-object p0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetListener;->behavior:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    return-object p0
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    .line 19
    iget-object p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetListener;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetListener$1;

    invoke-direct {v0, p0}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetListener$1;-><init>(Lus/zoom/androidlib/material/ZMViewPagerBottomSheetListener;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
