.class public Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;
.super Landroid/widget/FrameLayout;
.source "ZMSegmentTabLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$PointEvaluator;,
        Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;
    }
.end annotation


# static fields
.field private static final TEXT_BOLD_BOTH:I = 0x2

.field private static final TEXT_BOLD_NONE:I = 0x0

.field private static final TEXT_BOLD_WHEN_SELECT:I = 0x1


# instance fields
.field private mBarColor:I

.field private mBarStrokeColor:I

.field private mBarStrokeWidth:F

.field private mContext:Landroid/content/Context;

.field private mCurrentP:Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;

.field private mCurrentTab:I

.field private mDividerColor:I

.field private mDividerPadding:F

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mDividerWidth:F

.field private mFragmentChangeManager:Lus/zoom/androidlib/widget/segement/FragmentChangeManager;

.field private mIndicatorColor:I

.field private mIndicatorCornerRadius:F

.field private mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mIndicatorHeight:F

.field private mIndicatorMarginBottom:F

.field private mIndicatorMarginLeft:F

.field private mIndicatorMarginRight:F

.field private mIndicatorMarginTop:F

.field private mIndicatorRect:Landroid/graphics/Rect;

.field private mInitSetMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mInterpolator:Landroid/view/animation/OvershootInterpolator;

.field private mIsFirstDraw:Z

.field private mLastP:Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;

.field private mLastTab:I

.field private mListener:Lus/zoom/androidlib/widget/segement/OnTabSelectListener;

.field private mRadiusArr:[F

.field private mRectDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mTabCount:I

.field private mTabPadding:F

.field private mTabWidth:F

.field private mTabsContainer:Landroid/widget/LinearLayout;

.field private mTextBold:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSelectColor:I

.field private mTextUnselectColor:I

.field private mTextsize:F

.field private mTitles:[Ljava/lang/String;

.field private mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0, p1, v0, v1}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1, p2, v0}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    .line 46
    new-instance p3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p3, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 47
    new-instance p3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p3, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mRectDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 49
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mDividerPaint:Landroid/graphics/Paint;

    .line 91
    new-instance p3, Landroid/view/animation/OvershootInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {p3, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object p3, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mInterpolator:Landroid/view/animation/OvershootInterpolator;

    const/16 p3, 0x8

    .line 94
    new-array p3, p3, [F

    iput-object p3, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mRadiusArr:[F

    .line 330
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIsFirstDraw:Z

    .line 470
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTextPaint:Landroid/graphics/Paint;

    .line 471
    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    iput-object p3, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mInitSetMap:Landroid/util/SparseArray;

    .line 526
    new-instance p3, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;

    invoke-direct {p3, p0}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;-><init>(Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;)V

    iput-object p3, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mCurrentP:Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;

    .line 527
    new-instance p3, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;

    invoke-direct {p3, p0}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;-><init>(Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;)V

    iput-object p3, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mLastP:Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;

    const/4 p3, 0x0

    .line 106
    invoke-virtual {p0, p3}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->setWillNotDraw(Z)V

    .line 107
    invoke-virtual {p0, p3}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->setClipChildren(Z)V

    .line 108
    invoke-virtual {p0, p3}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->setClipToPadding(Z)V

    .line 110
    iput-object p1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mContext:Landroid/content/Context;

    .line 111
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    .line 112
    iget-object v1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->addView(Landroid/view/View;)V

    .line 114
    invoke-direct {p0, p1, p2}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->obtainAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v2, "layout_height"

    .line 117
    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-1"

    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "-2"

    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 123
    :cond_1
    new-array v1, v0, [I

    const v2, 0x10100f5

    aput v2, v1, p3

    .line 124
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 125
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 128
    :goto_0
    new-instance p1, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$PointEvaluator;

    invoke-direct {p1, p0}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$PointEvaluator;-><init>(Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;)V

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mLastP:Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;

    aput-object v1, p2, p3

    iget-object p3, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mCurrentP:Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;

    aput-object p3, p2, v0

    invoke-static {p1, p2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 129
    iget-object p1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;)I
    .locals 0

    .line 35
    iget p0, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mCurrentTab:I

    return p0
.end method

.method static synthetic access$100(Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;)Lus/zoom/androidlib/widget/segement/OnTabSelectListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mListener:Lus/zoom/androidlib/widget/segement/OnTabSelectListener;

    return-object p0
.end method

.method private addTab(ILandroid/view/View;)V
    .locals 4

    .line 211
    sget v0, Lus/zoom/androidlib/R$id;->tv_tab_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 212
    iget-object v1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTitles:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    new-instance v0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$1;

    invoke-direct {v0, p0}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$1;-><init>(Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 232
    iget v2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTabWidth:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 233
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v2, v2

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 235
    :cond_0
    iget-object v1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p2, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private calcIndicatorRect()V
    .locals 11

    .line 282
    iget-object v0, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    iget v1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mCurrentTab:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    .line 284
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    .line 286
    iget-object v2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    float-to-int v1, v1

    iput v1, v2, Landroid/graphics/Rect;->left:I

    float-to-int v0, v0

    .line 287
    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 289
    iget v0, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mCurrentTab:I

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mRadiusArr:[F

    iget v10, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorCornerRadius:F

    aput v10, v0, v7

    .line 292
    aput v10, v0, v8

    .line 293
    aput v9, v0, v6

    .line 294
    aput v9, v0, v5

    .line 295
    aput v9, v0, v4

    .line 296
    aput v9, v0, v3

    .line 297
    aput v10, v0, v2

    .line 298
    aput v10, v0, v1

    goto :goto_0

    .line 299
    :cond_0
    iget v10, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTabCount:I

    sub-int/2addr v10, v8

    if-ne v0, v10, :cond_1

    .line 301
    iget-object v0, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mRadiusArr:[F

    aput v9, v0, v7

    .line 302
    aput v9, v0, v8

    .line 303
    iget v7, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorCornerRadius:F

    aput v7, v0, v6

    .line 304
    aput v7, v0, v5

    .line 305
    aput v7, v0, v4

    .line 306
    aput v7, v0, v3

    .line 307
    aput v9, v0, v2

    .line 308
    aput v9, v0, v1

    goto :goto_0

    .line 311
    :cond_1
    iget-object v0, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mRadiusArr:[F

    aput v9, v0, v7

    .line 312
    aput v9, v0, v8

    .line 313
    aput v9, v0, v6

    .line 314
    aput v9, v0, v5

    .line 315
    aput v9, v0, v4

    .line 316
    aput v9, v0, v3

    .line 317
    aput v9, v0, v2

    .line 318
    aput v9, v0, v1

    :goto_0
    return-void
.end method

.method private calcOffset()V
    .locals 3

    .line 266
    iget-object v0, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    iget v1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mCurrentTab:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mCurrentP:Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;->left:F

    .line 268
    iget-object v1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mCurrentP:Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    iput v0, v1, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;->right:F

    .line 270
    iget-object v0, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    iget v1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mLastTab:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 271
    iget-object v1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mLastP:Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;->left:F

    .line 272
    iget-object v1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mLastP:Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    iput v0, v1, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;->right:F

    .line 276
    iget-object v0, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mLastP:Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;

    iget v0, v0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;->left:F

    iget-object v1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mCurrentP:Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;

    iget v1, v1, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;->left:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mLastP:Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;

    iget v0, v0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;->right:F

    iget-object v1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mCurrentP:Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;

    iget v1, v1, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;->right:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 277
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method private obtainAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 133
    sget-object v0, Lus/zoom/androidlib/R$styleable;->ZMSegmentTabLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 135
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMSegmentTabLayout_zm_indicator_color:I

    const-string v0, "#222831"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorColor:I

    .line 136
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMSegmentTabLayout_zm_indicator_height:I

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorHeight:F

    .line 137
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMSegmentTabLayout_zm_indicator_corner_radius:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorCornerRadius:F

    .line 138
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMSegmentTabLayout_zm_indicator_margin_left:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorMarginLeft:F

    .line 139
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMSegmentTabLayout_zm_indicator_margin_top:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorMarginTop:F

    .line 140
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMSegmentTabLayout_zm_indicator_margin_right:I

    invoke-virtual {p0, v1}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorMarginRight:F

    .line 141
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMSegmentTabLayout_zm_indicator_margin_bottom:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorMarginBottom:F

    .line 142
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMSegmentTabLayout_zm_divider_color:I

    iget v2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorColor:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mDividerColor:I

    .line 143
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMSegmentTabLayout_zm_divider_width:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->dp2px(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mDividerWidth:F

    .line 144
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMSegmentTabLayout_zm_divider_padding:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mDividerPadding:F

    .line 146
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMSegmentTabLayout_zm_textsize:I

    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {p0, v3}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->sp2px(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTextsize:F

    .line 147
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMSegmentTabLayout_zm_textSelectColor:I

    const-string v3, "#ffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTextSelectColor:I

    .line 148
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMSegmentTabLayout_zm_textUnselectColor:I

    iget v3, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorColor:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTextUnselectColor:I

    .line 149
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMSegmentTabLayout_zm_textBold:I

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTextBold:I

    .line 150
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMSegmentTabLayout_zm_tab_width:I

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTabWidth:F

    .line 151
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMSegmentTabLayout_zm_tab_padding:I

    iget v0, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTabWidth:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->dp2px(F)I

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->dp2px(F)I

    move-result v0

    :goto_0
    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTabPadding:F

    .line 153
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMSegmentTabLayout_zm_bar_color:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mBarColor:I

    .line 154
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMSegmentTabLayout_zm_bar_stroke_color:I

    iget v0, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mBarStrokeColor:I

    .line 155
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMSegmentTabLayout_zm_bar_stroke_width:I

    invoke-virtual {p0, v2}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mBarStrokeWidth:F

    .line 157
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private updateTabSelection(I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 254
    :goto_0
    iget v2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTabCount:I

    if-ge v1, v2, :cond_3

    .line 255
    iget-object v2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v1, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 257
    :goto_1
    sget v5, Lus/zoom/androidlib/R$id;->tv_tab_title:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 258
    iget v5, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTextSelectColor:I

    goto :goto_2

    :cond_1
    iget v5, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTextUnselectColor:I

    :goto_2
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 259
    iget v5, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTextBold:I

    if-ne v5, v3, :cond_2

    .line 260
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private updateTabStyles()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 239
    :goto_0
    iget v2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTabCount:I

    if-ge v1, v2, :cond_3

    .line 240
    iget-object v2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 241
    iget v3, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTabPadding:F

    float-to-int v4, v3

    float-to-int v3, v3

    invoke-virtual {v2, v4, v0, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 242
    sget v3, Lus/zoom/androidlib/R$id;->tv_tab_title:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 243
    iget v3, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mCurrentTab:I

    if-ne v1, v3, :cond_0

    iget v3, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTextSelectColor:I

    goto :goto_1

    :cond_0
    iget v3, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTextUnselectColor:I

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 244
    iget v3, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTextsize:F

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 245
    iget v3, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTextBold:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 246
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_2

    :cond_1
    if-nez v3, :cond_2

    .line 248
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method protected dp2px(F)I
    .locals 1

    .line 542
    iget-object v0, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public getTitleView(I)Landroid/widget/TextView;
    .locals 1

    .line 463
    iget-object v0, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 464
    sget v0, Lus/zoom/androidlib/R$id;->tv_tab_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    return-object p1
.end method

.method public notifyDataSetChanged()V
    .locals 4

    .line 198
    iget-object v0, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 199
    iget-object v0, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTitles:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTabCount:I

    const/4 v0, 0x0

    .line 201
    :goto_0
    iget v1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTabCount:I

    if-ge v0, v1, :cond_0

    .line 202
    iget-object v1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mContext:Landroid/content/Context;

    sget v2, Lus/zoom/androidlib/R$layout;->zm_tab_segment:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 203
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 204
    invoke-direct {p0, v0, v1}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->addTab(ILandroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_0
    invoke-direct {p0}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->updateTabStyles()V

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 324
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;

    .line 325
    iget-object v0, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget v1, p1, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;->left:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 326
    iget-object v0, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget p1, p1, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout$IndicatorPoint;->right:F

    float-to-int p1, p1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 327
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 334
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 336
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTabCount:I

    if-gtz v0, :cond_0

    goto/16 :goto_1

    .line 340
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->getHeight()I

    move-result v0

    .line 341
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->getPaddingLeft()I

    move-result v1

    .line 343
    iget v2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorHeight:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    int-to-float v2, v0

    .line 344
    iget v4, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorMarginTop:F

    sub-float/2addr v2, v4

    iget v4, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorMarginBottom:F

    sub-float/2addr v2, v4

    iput v2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorHeight:F

    .line 347
    :cond_1
    iget v2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorCornerRadius:F

    const/high16 v4, 0x40000000    # 2.0f

    cmpg-float v5, v2, v3

    if-ltz v5, :cond_2

    iget v5, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorHeight:F

    div-float/2addr v5, v4

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3

    .line 348
    :cond_2
    iget v2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorHeight:F

    div-float/2addr v2, v4

    iput v2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorCornerRadius:F

    .line 352
    :cond_3
    iget-object v2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mRectDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v4, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mBarColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 353
    iget-object v2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mRectDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v4, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mBarStrokeWidth:F

    float-to-int v4, v4

    iget v5, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mBarStrokeColor:I

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 354
    iget-object v2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mRectDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v4, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorCornerRadius:F

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 355
    iget-object v2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mRectDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 356
    iget-object v2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mRectDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 359
    iget v2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mDividerWidth:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_4

    .line 360
    iget-object v3, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 361
    iget-object v2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mDividerPaint:Landroid/graphics/Paint;

    iget v3, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mDividerColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    .line 362
    :goto_0
    iget v3, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTabCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_4

    .line 363
    iget-object v3, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 364
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v6, v4

    iget v7, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mDividerPadding:F

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v3, v1

    int-to-float v8, v3

    int-to-float v3, v0

    iget v4, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mDividerPadding:F

    sub-float v9, v3, v4

    iget-object v10, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mDividerPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 370
    :cond_4
    invoke-direct {p0}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->calcIndicatorRect()V

    .line 372
    iget-object v0, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 373
    iget-object v0, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorMarginLeft:F

    float-to-int v2, v2

    add-int/2addr v2, v1

    iget-object v3, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget v3, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorMarginTop:F

    float-to-int v3, v3

    iget-object v4, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    iget v4, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorMarginRight:F

    sub-float/2addr v1, v4

    float-to-int v1, v1

    iget v4, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorMarginTop:F

    iget v5, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorHeight:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 376
    iget-object v0, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mRadiusArr:[F

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 377
    iget-object v0, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 510
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 511
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "mCurrentTab"

    .line 512
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mCurrentTab:I

    const-string v0, "instanceState"

    .line 513
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 514
    iget v0, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mCurrentTab:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 515
    iget v0, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mCurrentTab:I

    invoke-direct {p0, v0}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->updateTabSelection(I)V

    .line 518
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 502
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "instanceState"

    .line 503
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "mCurrentTab"

    .line 504
    iget v2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mCurrentTab:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public setCurrentTab(I)V
    .locals 1

    .line 383
    iget v0, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mCurrentTab:I

    iput v0, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mLastTab:I

    .line 384
    iput p1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mCurrentTab:I

    .line 385
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->updateTabSelection(I)V

    .line 386
    iget-object v0, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mFragmentChangeManager:Lus/zoom/androidlib/widget/segement/FragmentChangeManager;

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/segement/FragmentChangeManager;->setFragments(I)V

    .line 389
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->invalidate()V

    return-void
.end method

.method public setDividerColor(I)V
    .locals 0

    .line 427
    iput p1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mDividerColor:I

    .line 428
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->invalidate()V

    return-void
.end method

.method public setDividerPadding(F)V
    .locals 0

    .line 437
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mDividerPadding:F

    .line 438
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->invalidate()V

    return-void
.end method

.method public setDividerWidth(F)V
    .locals 0

    .line 432
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mDividerWidth:F

    .line 433
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->invalidate()V

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0

    .line 403
    iput p1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorColor:I

    .line 404
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->invalidate()V

    return-void
.end method

.method public setIndicatorCornerRadius(F)V
    .locals 0

    .line 413
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorCornerRadius:F

    .line 414
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->invalidate()V

    return-void
.end method

.method public setIndicatorHeight(F)V
    .locals 0

    .line 408
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorHeight:F

    .line 409
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->invalidate()V

    return-void
.end method

.method public setIndicatorMargin(FFFF)V
    .locals 0

    .line 419
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorMarginLeft:F

    .line 420
    invoke-virtual {p0, p2}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorMarginTop:F

    .line 421
    invoke-virtual {p0, p3}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorMarginRight:F

    .line 422
    invoke-virtual {p0, p4}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mIndicatorMarginBottom:F

    .line 423
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->invalidate()V

    return-void
.end method

.method public setMsgMargin(IFF)V
    .locals 0

    .line 476
    iget p2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTabCount:I

    if-lt p1, p2, :cond_0

    add-int/lit8 p1, p2, -0x1

    .line 479
    :cond_0
    iget-object p2, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    return-void
.end method

.method public setOnTabSelectListener(Lus/zoom/androidlib/widget/segement/OnTabSelectListener;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mListener:Lus/zoom/androidlib/widget/segement/OnTabSelectListener;

    return-void
.end method

.method public setTabData([Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 161
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 165
    iput-object p1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTitles:[Ljava/lang/String;

    .line 167
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->notifyDataSetChanged()V

    return-void

    .line 162
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Titles can not be NULL or EMPTY !"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTabData([Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/FragmentActivity;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 171
    new-instance v0, Lus/zoom/androidlib/widget/segement/FragmentChangeManager;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-direct {v0, p2, p3, p4}, Lus/zoom/androidlib/widget/segement/FragmentChangeManager;-><init>(Landroidx/fragment/app/FragmentManager;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mFragmentChangeManager:Lus/zoom/androidlib/widget/segement/FragmentChangeManager;

    .line 172
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->setTabData([Ljava/lang/String;)V

    return-void
.end method

.method public setTabPadding(F)V
    .locals 0

    .line 393
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTabPadding:F

    .line 394
    invoke-direct {p0}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->updateTabStyles()V

    return-void
.end method

.method public setTabWidth(F)V
    .locals 0

    .line 398
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTabWidth:F

    .line 399
    invoke-direct {p0}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->updateTabStyles()V

    return-void
.end method

.method public setTextBold(I)V
    .locals 0

    .line 457
    iput p1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTextBold:I

    .line 458
    invoke-direct {p0}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->updateTabStyles()V

    return-void
.end method

.method public setTextSelectColor(I)V
    .locals 0

    .line 447
    iput p1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTextSelectColor:I

    .line 448
    invoke-direct {p0}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->updateTabStyles()V

    return-void
.end method

.method public setTextUnselectColor(I)V
    .locals 0

    .line 452
    iput p1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTextUnselectColor:I

    .line 453
    invoke-direct {p0}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->updateTabStyles()V

    return-void
.end method

.method public setTextsize(F)V
    .locals 0

    .line 442
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->sp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTextsize:F

    .line 443
    invoke-direct {p0}, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->updateTabStyles()V

    return-void
.end method

.method protected sp2px(F)I
    .locals 1

    .line 547
    iget-object v0, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public updateTabData([Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 176
    array-length v0, p1

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 181
    :goto_0
    iget v1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTabCount:I

    if-ge v0, v1, :cond_1

    .line 182
    iget-object v1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 184
    sget v2, Lus/zoom/androidlib/R$id;->tv_tab_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 186
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_1
    iput-object p1, p0, Lus/zoom/androidlib/widget/segement/ZMSegmentTabLayout;->mTitles:[Ljava/lang/String;

    return-void

    .line 177
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Titles can not be NULL or EMPTY !"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    return-void
.end method
