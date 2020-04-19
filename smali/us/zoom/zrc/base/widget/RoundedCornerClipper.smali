.class public Lus/zoom/zrc/base/widget/RoundedCornerClipper;
.super Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;
.source "RoundedCornerClipper.java"


# instance fields
.field private mDisableCornerBottom:Z

.field private mPath:Landroid/graphics/Path;

.field private mRect:Landroid/graphics/RectF;

.field private mSaveCount:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;-><init>(Landroid/view/View;)V

    .line 27
    invoke-direct {p0, p1}, Lus/zoom/zrc/base/widget/RoundedCornerClipper;->init(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Landroid/view/View;F)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;-><init>(Landroid/view/View;F)V

    .line 32
    invoke-direct {p0, p1}, Lus/zoom/zrc/base/widget/RoundedCornerClipper;->init(Landroid/view/View;)V

    return-void
.end method

.method private init(Landroid/view/View;)V
    .locals 2

    .line 36
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/base/widget/RoundedCornerClipper;->mPath:Landroid/graphics/Path;

    .line 37
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/base/widget/RoundedCornerClipper;->mRect:Landroid/graphics/RectF;

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clipCorner(Landroid/graphics/Canvas;)V
    .locals 1

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iput v0, p0, Lus/zoom/zrc/base/widget/RoundedCornerClipper;->mSaveCount:I

    .line 81
    iget-object v0, p0, Lus/zoom/zrc/base/widget/RoundedCornerClipper;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    return-void
.end method

.method public disableClipBottomCorner()V
    .locals 5

    .line 69
    iget-boolean v0, p0, Lus/zoom/zrc/base/widget/RoundedCornerClipper;->mDisableCornerBottom:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lus/zoom/zrc/base/widget/RoundedCornerClipper;->mDisableCornerBottom:Z

    .line 73
    iget-object v0, p0, Lus/zoom/zrc/base/widget/RoundedCornerClipper;->mRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    const/high16 v2, 0x447a0000    # 1000.0f

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 74
    iget-object v0, p0, Lus/zoom/zrc/base/widget/RoundedCornerClipper;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 75
    iget-object v0, p0, Lus/zoom/zrc/base/widget/RoundedCornerClipper;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lus/zoom/zrc/base/widget/RoundedCornerClipper;->mRect:Landroid/graphics/RectF;

    iget v2, p0, Lus/zoom/zrc/base/widget/RoundedCornerClipper;->mCornerRadius:F

    iget v3, p0, Lus/zoom/zrc/base/widget/RoundedCornerClipper;->mCornerRadius:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public enableClipBottomCorner()V
    .locals 5

    .line 59
    iget-boolean v0, p0, Lus/zoom/zrc/base/widget/RoundedCornerClipper;->mDisableCornerBottom:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lus/zoom/zrc/base/widget/RoundedCornerClipper;->mDisableCornerBottom:Z

    .line 63
    iget-object v0, p0, Lus/zoom/zrc/base/widget/RoundedCornerClipper;->mRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    const/high16 v2, 0x447a0000    # 1000.0f

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 64
    iget-object v0, p0, Lus/zoom/zrc/base/widget/RoundedCornerClipper;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 65
    iget-object v0, p0, Lus/zoom/zrc/base/widget/RoundedCornerClipper;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lus/zoom/zrc/base/widget/RoundedCornerClipper;->mRect:Landroid/graphics/RectF;

    iget v2, p0, Lus/zoom/zrc/base/widget/RoundedCornerClipper;->mCornerRadius:F

    iget v3, p0, Lus/zoom/zrc/base/widget/RoundedCornerClipper;->mCornerRadius:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public onSizeChanged(II)V
    .locals 3

    .line 48
    iget-boolean v0, p0, Lus/zoom/zrc/base/widget/RoundedCornerClipper;->mDisableCornerBottom:Z

    if-eqz v0, :cond_0

    add-int/lit16 p2, p2, 0x3e8

    .line 51
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/base/widget/RoundedCornerClipper;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    int-to-float p1, p1

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    iget-object v0, p0, Lus/zoom/zrc/base/widget/RoundedCornerClipper;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    int-to-float v1, p2

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 52
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/base/widget/RoundedCornerClipper;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 53
    iget-object v0, p0, Lus/zoom/zrc/base/widget/RoundedCornerClipper;->mRect:Landroid/graphics/RectF;

    int-to-float p2, p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 54
    iget-object p1, p0, Lus/zoom/zrc/base/widget/RoundedCornerClipper;->mPath:Landroid/graphics/Path;

    iget-object p2, p0, Lus/zoom/zrc/base/widget/RoundedCornerClipper;->mRect:Landroid/graphics/RectF;

    iget v0, p0, Lus/zoom/zrc/base/widget/RoundedCornerClipper;->mCornerRadius:F

    iget v1, p0, Lus/zoom/zrc/base/widget/RoundedCornerClipper;->mCornerRadius:F

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    :cond_2
    return-void
.end method

.method public restore(Landroid/graphics/Canvas;)V
    .locals 1

    .line 86
    iget v0, p0, Lus/zoom/zrc/base/widget/RoundedCornerClipper;->mSaveCount:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method
