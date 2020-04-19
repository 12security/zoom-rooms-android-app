.class public Lus/zoom/androidlib/widget/TouchImageView;
.super Landroid/view/View;
.source "TouchImageView.java"

# interfaces
.implements Lus/zoom/androidlib/widget/ZMViewPager$Page;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/widget/TouchImageView$OnViewPortChangedListener;,
        Lus/zoom/androidlib/widget/TouchImageView$Size;,
        Lus/zoom/androidlib/widget/TouchImageView$OnSingleTapConfirmedListener;
    }
.end annotation


# static fields
.field private static final MAX_SCALE_LEVEL_COUNT:I = 0x3

.field private static final MAX_VELOCITY_IN_DIP:I = 0x5dc

.field private static final MEM_BITMAP_THRESHOLD:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "TouchImageView"


# instance fields
.field private mContentSize:Lus/zoom/androidlib/widget/TouchImageView$Size;

.field private mContentX:F

.field private mContentY:F

.field private mDestRect:Landroid/graphics/Rect;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mFlingHandler:Landroid/os/Handler;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mHasInitData:Z

.field private mHasLayout:Z

.field private mIsFitScreen:Z

.field private mIsMultiTouchZooming:Z

.field private mLastX1:F

.field private mLastX2:F

.field private mLastY1:F

.field private mLastY2:F

.field private mMemBitmap:Landroid/graphics/Bitmap;

.field private mMemCanvas:Landroid/graphics/Canvas;

.field private mOnSingleTapConfirmedListener:Lus/zoom/androidlib/widget/TouchImageView$OnSingleTapConfirmedListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mOnViewPortChangedListener:Lus/zoom/androidlib/widget/TouchImageView$OnViewPortChangedListener;

.field private mRectContent:Landroid/graphics/Rect;

.field private mRunnableNotifyViewPortChange:Ljava/lang/Runnable;

.field private mScaleHeight:F

.field private mScaleWidth:F

.field private mScroller:Landroid/widget/Scroller;

.field private mSrcRect:Landroid/graphics/Rect;

.field private mStopFling:Z

.field private mZoomVal:D


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 91
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    .line 45
    iput-wide v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mZoomVal:D

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentX:F

    .line 47
    iput v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentY:F

    .line 48
    iput v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mScaleWidth:F

    .line 49
    iput v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mScaleHeight:F

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mFlingHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mStopFling:Z

    const/4 v1, 0x1

    .line 53
    iput-boolean v1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mIsFitScreen:Z

    .line 55
    new-instance v1, Lus/zoom/androidlib/widget/TouchImageView$Size;

    invoke-direct {v1}, Lus/zoom/androidlib/widget/TouchImageView$Size;-><init>()V

    iput-object v1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentSize:Lus/zoom/androidlib/widget/TouchImageView$Size;

    .line 56
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    .line 58
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mHasInitData:Z

    .line 59
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mHasLayout:Z

    const/4 v1, 0x0

    .line 61
    iput-object v1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 62
    iput-object v1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mMemBitmap:Landroid/graphics/Bitmap;

    .line 63
    iput-object v1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mMemCanvas:Landroid/graphics/Canvas;

    .line 70
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mHandler:Landroid/os/Handler;

    .line 72
    new-instance v1, Lus/zoom/androidlib/widget/TouchImageView$1;

    invoke-direct {v1, p0}, Lus/zoom/androidlib/widget/TouchImageView$1;-><init>(Lus/zoom/androidlib/widget/TouchImageView;)V

    iput-object v1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRunnableNotifyViewPortChange:Ljava/lang/Runnable;

    .line 310
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mSrcRect:Landroid/graphics/Rect;

    .line 311
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mDestRect:Landroid/graphics/Rect;

    .line 449
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mIsMultiTouchZooming:Z

    .line 92
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/TouchImageView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, 0x0

    .line 45
    iput-wide v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mZoomVal:D

    const/4 p2, 0x0

    .line 46
    iput p2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentX:F

    .line 47
    iput p2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentY:F

    .line 48
    iput p2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mScaleWidth:F

    .line 49
    iput p2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mScaleHeight:F

    .line 51
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mFlingHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    .line 52
    iput-boolean p2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mStopFling:Z

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mIsFitScreen:Z

    .line 55
    new-instance v0, Lus/zoom/androidlib/widget/TouchImageView$Size;

    invoke-direct {v0}, Lus/zoom/androidlib/widget/TouchImageView$Size;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentSize:Lus/zoom/androidlib/widget/TouchImageView$Size;

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    .line 58
    iput-boolean p2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mHasInitData:Z

    .line 59
    iput-boolean p2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mHasLayout:Z

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 62
    iput-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mMemBitmap:Landroid/graphics/Bitmap;

    .line 63
    iput-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mMemCanvas:Landroid/graphics/Canvas;

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mHandler:Landroid/os/Handler;

    .line 72
    new-instance v0, Lus/zoom/androidlib/widget/TouchImageView$1;

    invoke-direct {v0, p0}, Lus/zoom/androidlib/widget/TouchImageView$1;-><init>(Lus/zoom/androidlib/widget/TouchImageView;)V

    iput-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRunnableNotifyViewPortChange:Ljava/lang/Runnable;

    .line 310
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mSrcRect:Landroid/graphics/Rect;

    .line 311
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mDestRect:Landroid/graphics/Rect;

    .line 449
    iput-boolean p2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mIsMultiTouchZooming:Z

    .line 87
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/TouchImageView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p2, 0x0

    .line 45
    iput-wide p2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mZoomVal:D

    const/4 p2, 0x0

    .line 46
    iput p2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentX:F

    .line 47
    iput p2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentY:F

    .line 48
    iput p2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mScaleWidth:F

    .line 49
    iput p2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mScaleHeight:F

    .line 51
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mFlingHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    .line 52
    iput-boolean p2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mStopFling:Z

    const/4 p3, 0x1

    .line 53
    iput-boolean p3, p0, Lus/zoom/androidlib/widget/TouchImageView;->mIsFitScreen:Z

    .line 55
    new-instance p3, Lus/zoom/androidlib/widget/TouchImageView$Size;

    invoke-direct {p3}, Lus/zoom/androidlib/widget/TouchImageView$Size;-><init>()V

    iput-object p3, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentSize:Lus/zoom/androidlib/widget/TouchImageView$Size;

    .line 56
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    .line 58
    iput-boolean p2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mHasInitData:Z

    .line 59
    iput-boolean p2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mHasLayout:Z

    const/4 p3, 0x0

    .line 61
    iput-object p3, p0, Lus/zoom/androidlib/widget/TouchImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 62
    iput-object p3, p0, Lus/zoom/androidlib/widget/TouchImageView;->mMemBitmap:Landroid/graphics/Bitmap;

    .line 63
    iput-object p3, p0, Lus/zoom/androidlib/widget/TouchImageView;->mMemCanvas:Landroid/graphics/Canvas;

    .line 70
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    iput-object p3, p0, Lus/zoom/androidlib/widget/TouchImageView;->mHandler:Landroid/os/Handler;

    .line 72
    new-instance p3, Lus/zoom/androidlib/widget/TouchImageView$1;

    invoke-direct {p3, p0}, Lus/zoom/androidlib/widget/TouchImageView$1;-><init>(Lus/zoom/androidlib/widget/TouchImageView;)V

    iput-object p3, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRunnableNotifyViewPortChange:Ljava/lang/Runnable;

    .line 310
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lus/zoom/androidlib/widget/TouchImageView;->mSrcRect:Landroid/graphics/Rect;

    .line 311
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lus/zoom/androidlib/widget/TouchImageView;->mDestRect:Landroid/graphics/Rect;

    .line 449
    iput-boolean p2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mIsMultiTouchZooming:Z

    .line 82
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/TouchImageView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/androidlib/widget/TouchImageView;)Lus/zoom/androidlib/widget/TouchImageView$OnViewPortChangedListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mOnViewPortChangedListener:Lus/zoom/androidlib/widget/TouchImageView$OnViewPortChangedListener;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/androidlib/widget/TouchImageView;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mStopFling:Z

    return p0
.end method

.method static synthetic access$200(Lus/zoom/androidlib/widget/TouchImageView;)Z
    .locals 0

    .line 27
    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->updateContentPosOnFling()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lus/zoom/androidlib/widget/TouchImageView;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->handleFling()V

    return-void
.end method

.method private checkFitScreen()Z
    .locals 9

    .line 570
    iget-wide v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mZoomVal:D

    const/4 v2, 0x1

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v5, v0, v3

    if-gez v5, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 573
    invoke-direct {p0, v0}, Lus/zoom/androidlib/widget/TouchImageView;->scaleLevelToZoomValue(I)D

    move-result-wide v5

    .line 574
    iget-wide v7, p0, Lus/zoom/androidlib/widget/TouchImageView;->mZoomVal:D

    sub-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v1, v5, v3

    if-gez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private createRectContent(Lus/zoom/androidlib/widget/TouchImageView$Size;)Landroid/graphics/Rect;
    .locals 9

    .line 993
    iget v0, p1, Lus/zoom/androidlib/widget/TouchImageView$Size;->width:I

    .line 994
    iget p1, p1, Lus/zoom/androidlib/widget/TouchImageView$Size;->height:I

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 1000
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/TouchImageView;->getWidth()I

    move-result v1

    .line 1001
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/TouchImageView;->getHeight()I

    move-result v2

    .line 1003
    iget-boolean v3, p0, Lus/zoom/androidlib/widget/TouchImageView;->mIsFitScreen:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-wide v5, p0, Lus/zoom/androidlib/widget/TouchImageView;->mZoomVal:D

    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->getMinLevelZoomValue()D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v3, v5, v7

    if-gez v3, :cond_2

    mul-int v3, v1, p1

    mul-int v5, v2, v0

    if-le v3, v5, :cond_1

    .line 1007
    div-int p1, v5, p1

    sub-int/2addr v1, p1

    .line 1008
    div-int/lit8 v0, v1, 0x2

    move v1, v0

    move v0, p1

    move p1, v2

    goto :goto_1

    .line 1012
    :cond_1
    div-int p1, v3, v0

    sub-int/2addr v2, p1

    .line 1013
    div-int/lit8 v0, v2, 0x2

    move v4, v0

    move v0, v1

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    int-to-double v5, v0

    .line 1016
    iget-wide v7, p0, Lus/zoom/androidlib/widget/TouchImageView;->mZoomVal:D

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    double-to-float v0, v5

    int-to-double v5, p1

    .line 1017
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    double-to-float p1, v5

    .line 1019
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/TouchImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_3

    .line 1021
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/TouchImageView;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    float-to-int v0, v0

    sub-int/2addr v1, v0

    .line 1024
    div-int/lit8 v1, v1, 0x2

    .line 1027
    :goto_0
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/TouchImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_4

    .line 1029
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/TouchImageView;->getHeight()I

    move-result v2

    move p1, v2

    goto :goto_1

    :cond_4
    float-to-int p1, p1

    sub-int/2addr v2, p1

    .line 1032
    div-int/lit8 v4, v2, 0x2

    .line 1036
    :goto_1
    new-instance v2, Landroid/graphics/Rect;

    add-int/2addr v0, v1

    add-int/2addr p1, v4

    invoke-direct {v2, v1, v4, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2

    :cond_5
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getCenterPixelPosOnContent()Landroid/graphics/PointF;
    .locals 4

    .line 707
    iget-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 709
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-wide v2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mZoomVal:D

    invoke-direct {p0, v0, v1, v2, v3}, Lus/zoom/androidlib/widget/TouchImageView;->unitPosToPixelPosOnContent(FFD)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentScaleLevel()I
    .locals 8

    .line 655
    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->getScaleLevelsCount()I

    move-result v0

    .line 656
    new-array v1, v0, [D

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 658
    invoke-direct {p0, v3}, Lus/zoom/androidlib/widget/TouchImageView;->scaleLevelToZoomValue(I)D

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_2

    .line 662
    iget-wide v3, p0, Lus/zoom/androidlib/widget/TouchImageView;->mZoomVal:D

    aget-wide v5, v1, v2

    cmpl-double v7, v3, v5

    if-ltz v7, :cond_1

    add-int/lit8 v5, v2, 0x1

    aget-wide v5, v1, v5

    cmpg-double v7, v3, v5

    if-gez v7, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return v3
.end method

.method private getFitLevelZoomValue(Z)D
    .locals 4

    .line 606
    iget-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentSize:Lus/zoom/androidlib/widget/TouchImageView$Size;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 609
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/TouchImageView;->getWidth()I

    move-result v0

    .line 610
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/TouchImageView;->getHeight()I

    move-result v1

    .line 614
    iget-object v2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentSize:Lus/zoom/androidlib/widget/TouchImageView$Size;

    iget v2, v2, Lus/zoom/androidlib/widget/TouchImageView$Size;->height:I

    mul-int v2, v2, v0

    iget-object v3, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentSize:Lus/zoom/androidlib/widget/TouchImageView$Size;

    iget v3, v3, Lus/zoom/androidlib/widget/TouchImageView$Size;->width:I

    mul-int v3, v3, v1

    if-le v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    if-nez p1, :cond_3

    :cond_2
    if-nez v2, :cond_4

    if-nez p1, :cond_4

    :cond_3
    int-to-double v0, v1

    .line 617
    iget-object p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentSize:Lus/zoom/androidlib/widget/TouchImageView$Size;

    iget p1, p1, Lus/zoom/androidlib/widget/TouchImageView$Size;->width:I

    int-to-double v2, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    iget-object p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentSize:Lus/zoom/androidlib/widget/TouchImageView$Size;

    iget p1, p1, Lus/zoom/androidlib/widget/TouchImageView$Size;->height:I

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    goto :goto_1

    :cond_4
    int-to-double v0, v0

    .line 622
    :goto_1
    iget-object p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentSize:Lus/zoom/androidlib/widget/TouchImageView$Size;

    iget p1, p1, Lus/zoom/androidlib/widget/TouchImageView$Size;->width:I

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private getMaxLevelZoomValue()D
    .locals 4

    .line 578
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/TouchImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    .line 582
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 586
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/TouchImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lus/zoom/androidlib/util/UiModeUtil;->isInDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 587
    invoke-direct {p0, v0}, Lus/zoom/androidlib/widget/TouchImageView;->getFitLevelZoomValue(Z)D

    move-result-wide v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->getMinLevelZoomValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_0

    :cond_1
    const/high16 v1, 0x43200000    # 160.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x42f00000    # 120.0f

    div-float/2addr v0, v1

    :goto_0
    float-to-double v0, v0

    return-wide v0
.end method

.method private getMemBitmap(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 2

    .line 368
    iget-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mMemBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 369
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/TouchImageView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mMemBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/TouchImageView;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 370
    iget-object p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mMemBitmap:Landroid/graphics/Bitmap;

    return-object p1

    .line 373
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mMemBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 374
    iput-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mMemBitmap:Landroid/graphics/Bitmap;

    .line 375
    iput-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mMemCanvas:Landroid/graphics/Canvas;

    .line 379
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/TouchImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/TouchImageView;->getHeight()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mMemBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :catch_0
    iget-object p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mMemBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    .line 386
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mMemCanvas:Landroid/graphics/Canvas;

    .line 389
    :cond_2
    iget-object p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mMemBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private getMinLevelZoomValue()D
    .locals 2

    const/4 v0, 0x1

    .line 596
    invoke-direct {p0, v0}, Lus/zoom/androidlib/widget/TouchImageView;->getFitLevelZoomValue(Z)D

    move-result-wide v0

    return-wide v0
.end method

.method private getScaleLevelsCount()I
    .locals 6

    .line 627
    iget-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentSize:Lus/zoom/androidlib/widget/TouchImageView$Size;

    const/4 v1, 0x3

    if-eqz v0, :cond_3

    iget v0, v0, Lus/zoom/androidlib/widget/TouchImageView$Size;->width:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentSize:Lus/zoom/androidlib/widget/TouchImageView$Size;

    iget v0, v0, Lus/zoom/androidlib/widget/TouchImageView$Size;->height:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 630
    :cond_0
    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->getMaxLevelZoomValue()D

    move-result-wide v2

    .line 632
    iget-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentSize:Lus/zoom/androidlib/widget/TouchImageView$Size;

    iget v0, v0, Lus/zoom/androidlib/widget/TouchImageView$Size;->width:I

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v2

    double-to-float v0, v4

    .line 633
    iget-object v4, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentSize:Lus/zoom/androidlib/widget/TouchImageView$Size;

    iget v4, v4, Lus/zoom/androidlib/widget/TouchImageView$Size;->height:I

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v2

    double-to-float v4, v4

    .line 635
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/TouchImageView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/TouchImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v4, v0

    if-gez v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 640
    :cond_1
    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->getMinLevelZoomValue()D

    move-result-wide v4

    add-double/2addr v4, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v4, v4, v2

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    div-double/2addr v4, v2

    .line 643
    iget-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentSize:Lus/zoom/androidlib/widget/TouchImageView$Size;

    iget v0, v0, Lus/zoom/androidlib/widget/TouchImageView$Size;->width:I

    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-float v0, v2

    .line 644
    iget-object v2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentSize:Lus/zoom/androidlib/widget/TouchImageView$Size;

    iget v2, v2, Lus/zoom/androidlib/widget/TouchImageView$Size;->height:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v2

    double-to-float v2, v4

    .line 646
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/TouchImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/TouchImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v1
.end method

.method private handleFling()V
    .locals 4

    .line 933
    iget-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mFlingHandler:Landroid/os/Handler;

    new-instance v1, Lus/zoom/androidlib/widget/TouchImageView$2;

    invoke-direct {v1, p0}, Lus/zoom/androidlib/widget/TouchImageView$2;-><init>(Lus/zoom/androidlib/widget/TouchImageView;)V

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private handleScroll(FF)V
    .locals 1

    const/4 v0, 0x1

    .line 829
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mStopFling:Z

    .line 831
    iget v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentX:F

    sub-float/2addr v0, p1

    iput v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentX:F

    .line 832
    iget p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentY:F

    sub-float/2addr p1, p2

    iput p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentY:F

    .line 834
    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->trimContentPos()V

    .line 836
    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->repaint()V

    const/16 p1, 0x1f4

    .line 838
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/TouchImageView;->notifyViewPortChange(I)V

    return-void
.end method

.method private initData()V
    .locals 3

    .line 295
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mHasLayout:Z

    if-nez v0, :cond_0

    return-void

    .line 298
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 300
    iget-object v1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentSize:Lus/zoom/androidlib/widget/TouchImageView$Size;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, v1, Lus/zoom/androidlib/widget/TouchImageView$Size;->width:I

    .line 301
    iget-object v1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentSize:Lus/zoom/androidlib/widget/TouchImageView$Size;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, v1, Lus/zoom/androidlib/widget/TouchImageView$Size;->height:I

    .line 302
    iget-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentSize:Lus/zoom/androidlib/widget/TouchImageView$Size;

    invoke-direct {p0, v0}, Lus/zoom/androidlib/widget/TouchImageView;->createRectContent(Lus/zoom/androidlib/widget/TouchImageView$Size;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    :cond_1
    const/4 v0, 0x1

    .line 305
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mHasInitData:Z

    .line 307
    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->zoomToFitUnit()V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 2

    .line 96
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 97
    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mScroller:Landroid/widget/Scroller;

    .line 98
    instance-of v0, p1, Lus/zoom/androidlib/app/ZMActivity;

    if-eqz v0, :cond_0

    .line 99
    move-object v0, p1

    check-cast v0, Lus/zoom/androidlib/app/ZMActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/app/ZMActivity;->disableFinishActivityByGesture(Z)V

    .line 102
    :cond_0
    invoke-super {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 104
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/TouchImageView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 106
    iget-object p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 107
    iget-object p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    :cond_1
    return-void
.end method

.method private notifyViewPortChange(I)V
    .locals 4

    .line 497
    iget-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 502
    :cond_0
    iget-object v1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRunnableNotifyViewPortChange:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 503
    iget-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRunnableNotifyViewPortChange:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private onMultiTouchZoom(FFFFFFFF)V
    .locals 2

    const/4 v0, 0x1

    .line 509
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mIsMultiTouchZooming:Z

    sub-float/2addr p3, p1

    sub-float/2addr p4, p2

    sub-float/2addr p7, p5

    sub-float/2addr p8, p6

    mul-float p3, p3, p3

    mul-float p4, p4, p4

    add-float/2addr p3, p4

    float-to-double p3, p3

    .line 516
    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    mul-float p7, p7, p7

    mul-float p8, p8, p8

    add-float/2addr p7, p8

    float-to-double p7, p7

    .line 517
    invoke-static {p7, p8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p7

    .line 519
    iget-wide v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mZoomVal:D

    div-double/2addr p3, p7

    mul-double v0, v0, p3

    .line 521
    invoke-direct {p0, p5}, Lus/zoom/androidlib/widget/TouchImageView;->viewXToShareUnitX(F)F

    move-result p3

    .line 522
    invoke-direct {p0, p6}, Lus/zoom/androidlib/widget/TouchImageView;->viewYToShareUnitY(F)F

    move-result p4

    .line 524
    iget-wide p5, p0, Lus/zoom/androidlib/widget/TouchImageView;->mZoomVal:D

    invoke-direct {p0, p3, p4, p5, p6}, Lus/zoom/androidlib/widget/TouchImageView;->unitPosToPixelPosOnContent(FFD)Landroid/graphics/PointF;

    move-result-object p3

    .line 526
    iget p4, p3, Landroid/graphics/PointF;->x:F

    float-to-double p4, p4

    invoke-static {p4, p5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p4, p4, v0

    double-to-float p4, p4

    .line 527
    iget p3, p3, Landroid/graphics/PointF;->y:F

    float-to-double p5, p3

    invoke-static {p5, p6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p5, p5, v0

    double-to-float p3, p5

    .line 529
    iput-wide v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mZoomVal:D

    .line 530
    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->checkFitScreen()Z

    move-result p5

    iput-boolean p5, p0, Lus/zoom/androidlib/widget/TouchImageView;->mIsFitScreen:Z

    .line 532
    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->updateRectContentWithoutResetDestArea()V

    .line 536
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/TouchImageView;->viewXToShareUnitX(F)F

    move-result p1

    .line 537
    invoke-direct {p0, p2}, Lus/zoom/androidlib/widget/TouchImageView;->viewYToShareUnitY(F)F

    move-result p2

    .line 539
    iget-object p5, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentSize:Lus/zoom/androidlib/widget/TouchImageView$Size;

    if-eqz p5, :cond_1

    iget p5, p5, Lus/zoom/androidlib/widget/TouchImageView$Size;->width:I

    if-nez p5, :cond_0

    goto :goto_0

    .line 542
    :cond_0
    iget-object p5, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentSize:Lus/zoom/androidlib/widget/TouchImageView$Size;

    iget p5, p5, Lus/zoom/androidlib/widget/TouchImageView$Size;->width:I

    int-to-double p5, p5

    invoke-static {p5, p6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p5, p5, v0

    double-to-float p5, p5

    iput p5, p0, Lus/zoom/androidlib/widget/TouchImageView;->mScaleWidth:F

    .line 543
    iget-object p5, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentSize:Lus/zoom/androidlib/widget/TouchImageView$Size;

    iget p5, p5, Lus/zoom/androidlib/widget/TouchImageView$Size;->height:I

    int-to-double p5, p5

    invoke-static {p5, p6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p5, p5, v0

    double-to-float p5, p5

    iput p5, p0, Lus/zoom/androidlib/widget/TouchImageView;->mScaleHeight:F

    sub-float/2addr p1, p4

    .line 545
    iput p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentX:F

    sub-float/2addr p2, p3

    .line 546
    iput p2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentY:F

    .line 548
    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->trimContentPos()V

    .line 550
    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->repaint()V

    const/4 p1, 0x0

    .line 552
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/TouchImageView;->notifyViewPortChange(I)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private onMultiTouchZoomEnd()V
    .locals 6

    const/4 v0, 0x0

    .line 557
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mIsMultiTouchZooming:Z

    .line 559
    iget-wide v1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mZoomVal:D

    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->getMinLevelZoomValue()D

    move-result-wide v3

    cmpg-double v5, v1, v3

    if-gez v5, :cond_0

    .line 560
    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->zoomToFitUnit()V

    goto :goto_0

    .line 561
    :cond_0
    iget-wide v1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mZoomVal:D

    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->getMaxLevelZoomValue()D

    move-result-wide v3

    cmpl-double v5, v1, v3

    if-lez v5, :cond_1

    .line 562
    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->getScaleLevelsCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    .line 563
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    .line 564
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 562
    invoke-direct {p0, v1, v2, v3}, Lus/zoom/androidlib/widget/TouchImageView;->switchToLevel(IFF)V

    .line 567
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lus/zoom/androidlib/widget/TouchImageView;->notifyViewPortChange(I)V

    return-void
.end method

.method private repaint()V
    .locals 0

    .line 735
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/TouchImageView;->invalidate()V

    return-void
.end method

.method private resetDestAreaCenter(FF)V
    .locals 5

    .line 713
    iget-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    return-void

    .line 716
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    float-to-double v1, p1

    iget-wide v3, p0, Lus/zoom/androidlib/widget/TouchImageView;->mZoomVal:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-float p1, v1

    sub-float/2addr v0, p1

    iput v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentX:F

    .line 717
    iget-object p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    float-to-double v0, p2

    iget-wide v2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mZoomVal:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float p2, v0

    sub-float/2addr p1, p2

    iput p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentY:F

    .line 719
    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->trimContentPos()V

    .line 721
    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->repaint()V

    return-void
.end method

.method private scaleLevelToZoomValue(I)D
    .locals 8

    .line 773
    iget-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentSize:Lus/zoom/androidlib/widget/TouchImageView$Size;

    if-eqz v0, :cond_5

    iget v0, v0, Lus/zoom/androidlib/widget/TouchImageView$Size;->width:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 776
    :cond_0
    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->getMinLevelZoomValue()D

    move-result-wide v0

    .line 777
    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->getMaxLevelZoomValue()D

    move-result-wide v2

    add-double v4, v0, v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double v4, v4, v6

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    div-double/2addr v4, v6

    .line 780
    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->getScaleLevelsCount()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 783
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0

    :cond_1
    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    if-eqz p1, :cond_2

    return-wide v2

    :cond_2
    return-wide v0

    :cond_3
    const/4 v7, 0x3

    if-lt v6, v7, :cond_4

    packed-switch p1, :pswitch_data_0

    return-wide v2

    :pswitch_0
    return-wide v4

    :pswitch_1
    return-wide v0

    :cond_4
    const-wide/16 v0, 0x0

    return-wide v0

    :cond_5
    :goto_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private switchToLevel(IFF)V
    .locals 2

    .line 677
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/TouchImageView;->scaleLevelToZoomValue(I)D

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Lus/zoom/androidlib/widget/TouchImageView;->switchToZoom(DFF)V

    return-void
.end method

.method private switchToZoom(DFF)V
    .locals 2

    .line 681
    iget-wide v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mZoomVal:D

    .line 682
    iput-wide p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mZoomVal:D

    .line 683
    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->checkFitScreen()Z

    move-result p1

    iput-boolean p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mIsFitScreen:Z

    .line 685
    invoke-direct {p0, p3}, Lus/zoom/androidlib/widget/TouchImageView;->viewXToShareUnitX(F)F

    move-result p1

    .line 686
    invoke-direct {p0, p4}, Lus/zoom/androidlib/widget/TouchImageView;->viewYToShareUnitY(F)F

    move-result p2

    .line 688
    invoke-direct {p0, p1, p2, v0, v1}, Lus/zoom/androidlib/widget/TouchImageView;->unitPosToPixelPosOnContent(FFD)Landroid/graphics/PointF;

    move-result-object p1

    .line 690
    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->updateRectContentWithoutResetDestArea()V

    .line 692
    iget-object p2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentSize:Lus/zoom/androidlib/widget/TouchImageView$Size;

    if-eqz p2, :cond_1

    iget p2, p2, Lus/zoom/androidlib/widget/TouchImageView$Size;->width:I

    if-nez p2, :cond_0

    goto :goto_0

    .line 695
    :cond_0
    iget p2, p1, Landroid/graphics/PointF;->x:F

    .line 696
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 698
    iget-object p3, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentSize:Lus/zoom/androidlib/widget/TouchImageView$Size;

    iget p3, p3, Lus/zoom/androidlib/widget/TouchImageView$Size;->width:I

    int-to-double p3, p3

    iget-wide v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mZoomVal:D

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p3, p3, v0

    double-to-float p3, p3

    iput p3, p0, Lus/zoom/androidlib/widget/TouchImageView;->mScaleWidth:F

    .line 699
    iget-object p3, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentSize:Lus/zoom/androidlib/widget/TouchImageView$Size;

    iget p3, p3, Lus/zoom/androidlib/widget/TouchImageView$Size;->height:I

    int-to-double p3, p3

    iget-wide v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mZoomVal:D

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p3, p3, v0

    double-to-float p3, p3

    iput p3, p0, Lus/zoom/androidlib/widget/TouchImageView;->mScaleHeight:F

    .line 701
    invoke-direct {p0, p2, p1}, Lus/zoom/androidlib/widget/TouchImageView;->resetDestAreaCenter(FF)V

    const/16 p1, 0x1f4

    .line 703
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/TouchImageView;->notifyViewPortChange(I)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private trimContentPos()V
    .locals 5

    .line 842
    iget-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentSize:Lus/zoom/androidlib/widget/TouchImageView$Size;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 845
    :cond_0
    iget-wide v1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mZoomVal:D

    iget v0, v0, Lus/zoom/androidlib/widget/TouchImageView$Size;->width:I

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-float v0, v1

    .line 846
    iget-wide v1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mZoomVal:D

    iget-object v3, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentSize:Lus/zoom/androidlib/widget/TouchImageView$Size;

    iget v3, v3, Lus/zoom/androidlib/widget/TouchImageView$Size;->height:I

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-float v1, v1

    .line 848
    iget v2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentX:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 849
    iget-object v2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_1

    .line 850
    iput v3, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentX:F

    goto :goto_0

    .line 851
    :cond_1
    iget v2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentX:F

    add-float/2addr v2, v0

    iget-object v4, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_4

    .line 852
    iget-object v2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    iput v2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentX:F

    goto :goto_0

    .line 854
    :cond_2
    iget-object v2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_3

    iget v2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentX:F

    add-float/2addr v2, v0

    iget-object v4, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    .line 855
    iget-object v2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    iput v2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentX:F

    goto :goto_0

    .line 856
    :cond_3
    iget-object v2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_4

    .line 857
    iput v3, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentX:F

    .line 860
    :cond_4
    :goto_0
    iget v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentY:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_6

    .line 861
    iget-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_5

    .line 862
    iput v3, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentY:F

    goto :goto_1

    .line 863
    :cond_5
    iget v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentY:F

    add-float/2addr v0, v1

    iget-object v2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_8

    .line 864
    iget-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v1

    iput v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentY:F

    goto :goto_1

    .line 866
    :cond_6
    iget-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_7

    iget v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentY:F

    add-float/2addr v0, v1

    iget-object v2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_7

    .line 867
    iget-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v1

    iput v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentY:F

    goto :goto_1

    .line 868
    :cond_7
    iget-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_8

    .line 869
    iput v3, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentY:F

    :cond_8
    :goto_1
    return-void

    :cond_9
    :goto_2
    return-void
.end method

.method private unitPosToPixelPosOnContent(FFD)Landroid/graphics/PointF;
    .locals 2

    .line 725
    iget v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentX:F

    sub-float/2addr p1, v0

    .line 726
    iget v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentY:F

    sub-float/2addr p2, v0

    float-to-double v0, p1

    .line 728
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, p3

    double-to-float p1, v0

    float-to-double v0, p2

    .line 729
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, p3

    double-to-float p2, v0

    .line 731
    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p3
.end method

.method private updateContentPosOnFling()Z
    .locals 8

    .line 946
    iget-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentSize:Lus/zoom/androidlib/widget/TouchImageView$Size;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 949
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 952
    :cond_1
    iget-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentX:F

    .line 954
    iget v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentX:F

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 955
    iput v2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentX:F

    const/4 v0, 0x1

    goto :goto_0

    .line 958
    :cond_2
    iget-wide v4, p0, Lus/zoom/androidlib/widget/TouchImageView;->mZoomVal:D

    iget-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentSize:Lus/zoom/androidlib/widget/TouchImageView$Size;

    iget v0, v0, Lus/zoom/androidlib/widget/TouchImageView$Size;->width:I

    int-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-float v0, v4

    .line 959
    iget v4, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentX:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    .line 960
    iget-object v4, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v0

    iput v4, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentX:F

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 965
    :goto_0
    iget-object v4, p0, Lus/zoom/androidlib/widget/TouchImageView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentY:F

    .line 967
    iget v4, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentY:F

    cmpl-float v4, v4, v2

    if-lez v4, :cond_4

    .line 968
    iput v2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentY:F

    const/4 v2, 0x1

    goto :goto_1

    .line 971
    :cond_4
    iget-wide v4, p0, Lus/zoom/androidlib/widget/TouchImageView;->mZoomVal:D

    iget-object v2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentSize:Lus/zoom/androidlib/widget/TouchImageView$Size;

    iget v2, v2, Lus/zoom/androidlib/widget/TouchImageView$Size;->height:I

    int-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-float v2, v4

    .line 972
    iget v4, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentY:F

    add-float/2addr v4, v2

    iget-object v5, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    .line 973
    iget-object v4, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    iput v4, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentY:F

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    .line 978
    :goto_1
    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->repaint()V

    if-nez v0, :cond_7

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_8

    .line 981
    invoke-direct {p0, v1}, Lus/zoom/androidlib/widget/TouchImageView;->notifyViewPortChange(I)V

    :cond_8
    xor-int/2addr v0, v3

    return v0

    :cond_9
    :goto_4
    return v1
.end method

.method private updateRectContentWithoutResetDestArea()V
    .locals 1

    .line 989
    iget-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentSize:Lus/zoom/androidlib/widget/TouchImageView$Size;

    invoke-direct {p0, v0}, Lus/zoom/androidlib/widget/TouchImageView;->createRectContent(Lus/zoom/androidlib/widget/TouchImageView$Size;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    return-void
.end method

.method private viewXToShareUnitX(F)F
    .locals 1

    .line 761
    iget-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    return p1

    .line 763
    :cond_0
    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    return p1
.end method

.method private viewYToShareUnitY(F)F
    .locals 1

    .line 767
    iget-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    return p1

    .line 769
    :cond_0
    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    return p1
.end method

.method private zoomToFitUnit()V
    .locals 3

    const/4 v0, 0x0

    .line 741
    invoke-direct {p0, v0}, Lus/zoom/androidlib/widget/TouchImageView;->scaleLevelToZoomValue(I)D

    move-result-wide v1

    iput-wide v1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mZoomVal:D

    .line 742
    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->checkFitScreen()Z

    move-result v1

    iput-boolean v1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mIsFitScreen:Z

    const/4 v1, 0x0

    .line 744
    iput v1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentX:F

    .line 745
    iput v1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentY:F

    .line 747
    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->updateRectContentWithoutResetDestArea()V

    .line 749
    iget-object v1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    return-void

    .line 752
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mScaleWidth:F

    .line 753
    iget-object v1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mScaleHeight:F

    .line 755
    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->repaint()V

    .line 757
    invoke-direct {p0, v0}, Lus/zoom/androidlib/widget/TouchImageView;->notifyViewPortChange(I)V

    return-void
.end method


# virtual methods
.method public canScrollHorizontal(I)Z
    .locals 6

    .line 216
    iget-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentSize:Lus/zoom/androidlib/widget/TouchImageView$Size;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 219
    :cond_0
    iget-boolean v2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mIsFitScreen:Z

    if-eqz v2, :cond_1

    return v1

    .line 222
    :cond_1
    iget-wide v2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mZoomVal:D

    iget v0, v0, Lus/zoom/androidlib/widget/TouchImageView$Size;->width:I

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-float v0, v2

    .line 224
    iget v2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentX:F

    int-to-float p1, p1

    add-float/2addr v2, p1

    const/4 p1, 0x0

    cmpl-float v3, v2, p1

    if-lez v3, :cond_3

    .line 227
    iget-object v3, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    add-float p1, v2, v0

    .line 229
    iget-object v3, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    cmpl-float p1, p1, v3

    if-lez p1, :cond_5

    .line 230
    iget-object p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    sub-float v2, p1, v0

    goto :goto_0

    .line 232
    :cond_3
    iget-object v3, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_4

    add-float v3, v2, v0

    iget-object v4, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    .line 233
    iget-object p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    sub-float v2, p1, v0

    goto :goto_0

    .line 234
    :cond_4
    iget-object v3, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_5

    const/4 v2, 0x0

    :cond_5
    :goto_0
    const/high16 p1, 0x42c80000    # 100.0f

    mul-float v2, v2, p1

    float-to-int v0, v2

    .line 238
    iget v2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentX:F

    mul-float v2, v2, p1

    float-to-int p1, v2

    if-eq v0, p1, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1

    :cond_7
    :goto_1
    return v1
.end method

.method public canScrollHorizontal(III)Z
    .locals 0

    .line 212
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/TouchImageView;->canScrollHorizontal(I)Z

    move-result p1

    return p1
.end method

.method public canScrollVertical(I)Z
    .locals 6

    .line 242
    iget-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentSize:Lus/zoom/androidlib/widget/TouchImageView$Size;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 246
    :cond_0
    iget-boolean v2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mIsFitScreen:Z

    if-eqz v2, :cond_1

    return v1

    .line 250
    :cond_1
    iget-wide v2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mZoomVal:D

    iget v0, v0, Lus/zoom/androidlib/widget/TouchImageView$Size;->height:I

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-float v0, v2

    .line 251
    iget v2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentY:F

    int-to-float p1, p1

    add-float/2addr v2, p1

    const/4 p1, 0x0

    cmpl-float v3, v2, p1

    if-lez v3, :cond_3

    .line 253
    iget-object v3, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    add-float p1, v2, v0

    .line 255
    iget-object v3, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    cmpl-float p1, p1, v3

    if-lez p1, :cond_5

    .line 256
    iget-object p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    sub-float v2, p1, v0

    goto :goto_0

    .line 259
    :cond_3
    iget-object v3, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_4

    add-float v3, v2, v0

    iget-object v4, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    .line 260
    iget-object p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    sub-float v2, p1, v0

    goto :goto_0

    .line 261
    :cond_4
    iget-object v3, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_5

    const/4 v2, 0x0

    :cond_5
    :goto_0
    const/high16 p1, 0x42c80000    # 100.0f

    mul-float v2, v2, p1

    float-to-int v0, v2

    .line 266
    iget v2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentY:F

    mul-float v2, v2, p1

    float-to-int p1, v2

    if-eq v0, p1, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1

    :cond_7
    :goto_1
    return v1
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 203
    iget-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public hasImage()Z
    .locals 1

    .line 207
    iget-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 193
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 195
    iget-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mMemBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mMemBitmap:Landroid/graphics/Bitmap;

    .line 198
    iput-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mMemCanvas:Landroid/graphics/Canvas;

    :cond_0
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x1

    .line 423
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mStopFling:Z

    .line 425
    iget-object v1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentSize:Lus/zoom/androidlib/widget/TouchImageView$Size;

    if-eqz v1, :cond_3

    iget v1, v1, Lus/zoom/androidlib/widget/TouchImageView$Size;->width:I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentSize:Lus/zoom/androidlib/widget/TouchImageView$Size;

    iget v1, v1, Lus/zoom/androidlib/widget/TouchImageView$Size;->height:I

    if-nez v1, :cond_0

    goto :goto_1

    .line 428
    :cond_0
    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->getScaleLevelsCount()I

    move-result v1

    .line 430
    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->getCurrentScaleLevel()I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    .line 431
    rem-int/2addr v3, v1

    if-ne v3, v2, :cond_1

    return v0

    :cond_1
    if-nez v3, :cond_2

    .line 436
    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->zoomToFitUnit()V

    goto :goto_0

    .line 438
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v3, v1, p1}, Lus/zoom/androidlib/widget/TouchImageView;->switchToLevel(IFF)V

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    .line 394
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mStopFling:Z

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 315
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 317
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 322
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 325
    :try_start_0
    iget-object v1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 327
    iget-object v1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentX:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 328
    iget-object v2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentY:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v3, v1

    .line 329
    iget v4, p0, Lus/zoom/androidlib/widget/TouchImageView;->mScaleWidth:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v4, v2

    .line 330
    iget v5, p0, Lus/zoom/androidlib/widget/TouchImageView;->mScaleHeight:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 337
    instance-of v5, v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 338
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    const/16 v7, 0x1000

    if-gt v5, v7, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    if-le v5, v7, :cond_2

    .line 339
    :cond_1
    move-object v5, v0

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 341
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    invoke-direct {p0, v7}, Lus/zoom/androidlib/widget/TouchImageView;->getMemBitmap(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 342
    iget-object v8, p0, Lus/zoom/androidlib/widget/TouchImageView;->mMemCanvas:Landroid/graphics/Canvas;

    if-eqz v8, :cond_2

    .line 343
    iget-object v8, p0, Lus/zoom/androidlib/widget/TouchImageView;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v8, v6, v6, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 344
    iget-object v6, p0, Lus/zoom/androidlib/widget/TouchImageView;->mDestRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 346
    iget-object v6, p0, Lus/zoom/androidlib/widget/TouchImageView;->mMemCanvas:Landroid/graphics/Canvas;

    const/high16 v8, -0x1000000

    invoke-virtual {v6, v8}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 347
    iget-object v6, p0, Lus/zoom/androidlib/widget/TouchImageView;->mMemCanvas:Landroid/graphics/Canvas;

    iget-object v8, p0, Lus/zoom/androidlib/widget/TouchImageView;->mSrcRect:Landroid/graphics/Rect;

    iget-object v9, p0, Lus/zoom/androidlib/widget/TouchImageView;->mDestRect:Landroid/graphics/Rect;

    const/4 v10, 0x0

    invoke-virtual {v6, v5, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 v5, 0x0

    .line 349
    invoke-virtual {p1, v7, v5, v5, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v6, 0x1

    :cond_2
    if-nez v6, :cond_3

    .line 357
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 358
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 361
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 364
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10

    .line 876
    iget-object p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    const/4 p2, 0x1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentSize:Lus/zoom/androidlib/widget/TouchImageView$Size;

    if-nez p1, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    cmpl-float v2, p3, v1

    if-lez v2, :cond_1

    .line 880
    iget-object p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->setFinalX(I)V

    goto :goto_0

    .line 882
    :cond_1
    iget-wide v2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mZoomVal:D

    iget p1, p1, Lus/zoom/androidlib/widget/TouchImageView$Size;->width:I

    int-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-float p1, v2

    .line 883
    iget-object v2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mScroller:Landroid/widget/Scroller;

    iget-object v3, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, p1

    float-to-int p1, v3

    invoke-virtual {v2, p1}, Landroid/widget/Scroller;->setFinalX(I)V

    :goto_0
    cmpl-float p1, p4, v1

    if-lez p1, :cond_2

    .line 887
    iget-object p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->setFinalY(I)V

    goto :goto_1

    .line 889
    :cond_2
    iget-wide v2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mZoomVal:D

    iget-object p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentSize:Lus/zoom/androidlib/widget/TouchImageView$Size;

    iget p1, p1, Lus/zoom/androidlib/widget/TouchImageView$Size;->height:I

    int-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-float p1, v2

    .line 890
    iget-object v2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mScroller:Landroid/widget/Scroller;

    iget-object v3, p0, Lus/zoom/androidlib/widget/TouchImageView;->mRectContent:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, p1

    float-to-int p1, v3

    invoke-virtual {v2, p1}, Landroid/widget/Scroller;->setFinalY(I)V

    .line 894
    :goto_1
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/TouchImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v2, 0x44bb8000    # 1500.0f

    invoke-static {p1, v2}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    .line 896
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3dcccccd    # 0.1f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    cmpl-float v1, p3, v1

    if-nez v1, :cond_3

    const p3, 0x3dcccccd    # 0.1f

    :cond_3
    div-float/2addr p4, p3

    int-to-float v1, p1

    cmpl-float v2, p3, v1

    if-lez v2, :cond_4

    move p1, v1

    goto :goto_2

    :cond_4
    neg-int p1, p1

    int-to-float p1, p1

    cmpg-float v1, p3, p1

    if-gez v1, :cond_5

    goto :goto_2

    :cond_5
    move p1, p3

    :goto_2
    mul-float p4, p4, p1

    goto :goto_4

    :cond_6
    cmpl-float v1, p4, v1

    if-nez v1, :cond_7

    const p4, 0x3dcccccd    # 0.1f

    :cond_7
    div-float/2addr p3, p4

    int-to-float v1, p1

    cmpl-float v2, p4, v1

    if-lez v2, :cond_8

    move p4, v1

    goto :goto_3

    :cond_8
    neg-int p1, p1

    int-to-float p1, p1

    cmpg-float v1, p4, p1

    if-gez v1, :cond_9

    move p4, p1

    :cond_9
    :goto_3
    mul-float p1, p4, p3

    .line 924
    :goto_4
    iget-object v1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mScroller:Landroid/widget/Scroller;

    iget p3, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentX:F

    float-to-int v2, p3

    iget p3, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentY:F

    float-to-int v3, p3

    float-to-int v4, p1

    float-to-int v5, p4

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 926
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mStopFling:Z

    .line 927
    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->handleFling()V

    return p2

    :cond_a
    :goto_5
    return p2
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/16 v0, 0x9

    .line 128
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    const/4 v0, 0x0

    neg-float p1, p1

    .line 129
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/TouchImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    mul-float p1, p1, v1

    invoke-direct {p0, v0, p1}, Lus/zoom/androidlib/widget/TouchImageView;->handleScroll(FF)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 272
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    const/4 p1, 0x1

    .line 274
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mHasLayout:Z

    .line 276
    iget-boolean p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mHasInitData:Z

    if-nez p1, :cond_0

    .line 277
    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->initData()V

    goto :goto_0

    .line 279
    :cond_0
    iget-boolean p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mIsFitScreen:Z

    if-eqz p1, :cond_1

    .line 280
    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->zoomToFitUnit()V

    goto :goto_0

    .line 282
    :cond_1
    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->getCenterPixelPosOnContent()Landroid/graphics/PointF;

    move-result-object p1

    .line 284
    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->updateRectContentWithoutResetDestArea()V

    if-nez p1, :cond_2

    return-void

    .line 289
    :cond_2
    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, p2, p1}, Lus/zoom/androidlib/widget/TouchImageView;->resetDestAreaCenter(FF)V

    :goto_0
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x1

    .line 814
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mStopFling:Z

    .line 816
    iget p2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentX:F

    sub-float/2addr p2, p3

    iput p2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentX:F

    .line 817
    iget p2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentY:F

    sub-float/2addr p2, p4

    iput p2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mContentY:F

    .line 819
    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->trimContentPos()V

    .line 821
    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->repaint()V

    const/16 p2, 0x1f4

    .line 823
    invoke-direct {p0, p2}, Lus/zoom/androidlib/widget/TouchImageView;->notifyViewPortChange(I)V

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 415
    iget-object p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mOnSingleTapConfirmedListener:Lus/zoom/androidlib/widget/TouchImageView$OnSingleTapConfirmedListener;

    if-eqz p1, :cond_0

    .line 416
    invoke-interface {p1}, Lus/zoom/androidlib/widget/TouchImageView$OnSingleTapConfirmedListener;->onSingleTapConfirmed()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12

    .line 454
    iget-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 455
    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    .line 461
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v0, 0x2

    const/4 v2, 0x0

    if-ne p1, v0, :cond_3

    .line 462
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v1, :cond_1

    iget-boolean p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mIsMultiTouchZooming:Z

    if-eqz p1, :cond_1

    .line 463
    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->onMultiTouchZoomEnd()V

    return v1

    .line 467
    :cond_1
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 468
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 469
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 470
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    .line 472
    iget-boolean v3, p0, Lus/zoom/androidlib/widget/TouchImageView;->mIsMultiTouchZooming:Z

    if-eqz v3, :cond_2

    .line 473
    iget v8, p0, Lus/zoom/androidlib/widget/TouchImageView;->mLastX1:F

    iget v9, p0, Lus/zoom/androidlib/widget/TouchImageView;->mLastY1:F

    iget v10, p0, Lus/zoom/androidlib/widget/TouchImageView;->mLastX2:F

    iget v11, p0, Lus/zoom/androidlib/widget/TouchImageView;->mLastY2:F

    move-object v3, p0

    move v4, p1

    move v5, v0

    move v6, v2

    move v7, p2

    invoke-direct/range {v3 .. v11}, Lus/zoom/androidlib/widget/TouchImageView;->onMultiTouchZoom(FFFFFFFF)V

    .line 476
    :cond_2
    iput-boolean v1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mIsMultiTouchZooming:Z

    .line 478
    iput p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mLastX1:F

    .line 479
    iput v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mLastY1:F

    .line 480
    iput v2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mLastX2:F

    .line 481
    iput p2, p0, Lus/zoom/androidlib/widget/TouchImageView;->mLastY2:F

    return v1

    .line 484
    :cond_3
    iget-boolean p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mIsMultiTouchZooming:Z

    if-eqz p1, :cond_4

    .line 485
    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->onMultiTouchZoomEnd()V

    return v1

    .line 489
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v1, :cond_5

    .line 490
    invoke-direct {p0, v2}, Lus/zoom/androidlib/widget/TouchImageView;->notifyViewPortChange(I)V

    .line 493
    :cond_5
    iget-object p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 173
    iput-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 174
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/TouchImageView;->invalidate()V

    return-void

    .line 178
    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/TouchImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 180
    iget-object p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mMemBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    .line 181
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 182
    iput-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mMemBitmap:Landroid/graphics/Bitmap;

    .line 183
    iput-object v0, p0, Lus/zoom/androidlib/widget/TouchImageView;->mMemCanvas:Landroid/graphics/Canvas;

    .line 186
    :cond_1
    iget-object p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 187
    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->initData()V

    :cond_2
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 158
    iget-object p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mMemBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 159
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p1, 0x0

    .line 160
    iput-object p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mMemBitmap:Landroid/graphics/Bitmap;

    .line 161
    iput-object p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mMemCanvas:Landroid/graphics/Canvas;

    .line 164
    :cond_0
    iget-object p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 165
    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->initData()V

    .line 168
    :cond_1
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/TouchImageView;->invalidate()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 136
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/TouchImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 141
    iput-object p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 142
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/TouchImageView;->invalidate()V

    return-void

    .line 146
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 148
    iget-object p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 149
    invoke-direct {p0}, Lus/zoom/androidlib/widget/TouchImageView;->initData()V

    .line 152
    :cond_2
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/TouchImageView;->invalidate()V

    return-void
.end method

.method public setOnSingleTapConfirmedListener(Lus/zoom/androidlib/widget/TouchImageView$OnSingleTapConfirmedListener;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mOnSingleTapConfirmedListener:Lus/zoom/androidlib/widget/TouchImageView$OnSingleTapConfirmedListener;

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setOnViewPortChangedListener(Lus/zoom/androidlib/widget/TouchImageView$OnViewPortChangedListener;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lus/zoom/androidlib/widget/TouchImageView;->mOnViewPortChangedListener:Lus/zoom/androidlib/widget/TouchImageView$OnViewPortChangedListener;

    return-void
.end method
