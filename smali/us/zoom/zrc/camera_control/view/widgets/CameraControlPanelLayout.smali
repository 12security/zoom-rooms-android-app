.class public Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;
.super Landroid/widget/FrameLayout;
.source "CameraControlPanelLayout.java"


# static fields
.field private static final DEFAULT_SHADOW_ANGLE:F = 45.0f

.field private static final DEFAULT_SHADOW_COLOR:I = -0xbbbbbc

.field private static final DEFAULT_SHADOW_DISTANCE:F = 5.0f

.field private static final DEFAULT_SHADOW_RADIUS:F = 10.0f

.field private static final MAX_ALPHA:I = 0xff

.field private static final MAX_ANGLE:F = 360.0f

.field private static final MIN_ANGLE:F = 0.0f

.field private static final MIN_RADIUS:F = 0.1f

.field private static final SHARING_OUTER_THICKNESS:F = 5.0f


# instance fields
.field private availableArea:[I

.field private isSharing:Z

.field private mAttachedKeyboard:Landroid/view/ViewGroup;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mBounds:Landroid/graphics/Rect;

.field private final mCanvas:Landroid/graphics/Canvas;

.field private mInvalidateShadow:Z

.field private mIsShadowed:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mShadowAlpha:I

.field private mShadowAngle:F

.field private mShadowColor:I

.field private mShadowDistance:F

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F

.field private final outlinePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, p2, v0}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    new-instance p2, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout$1;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout$1;-><init>(Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;I)V

    iput-object p2, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mPaint:Landroid/graphics/Paint;

    .line 54
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->outlinePaint:Landroid/graphics/Paint;

    .line 58
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2}, Landroid/graphics/Canvas;-><init>()V

    iput-object p2, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mCanvas:Landroid/graphics/Canvas;

    .line 61
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mBounds:Landroid/graphics/Rect;

    .line 64
    iput-boolean p3, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mInvalidateShadow:Z

    const/4 p2, 0x0

    .line 70
    iput-boolean p2, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->isSharing:Z

    const/4 v0, 0x2

    .line 83
    new-array v1, v0, [I

    iput-object v1, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->availableArea:[I

    .line 96
    invoke-virtual {p0, p2}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->setWillNotDraw(Z)V

    .line 97
    iget-object p2, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, p2}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object p2, Lus/zoom/zrcbox/R$styleable;->ShadowLayoutAttrs:[I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 102
    :try_start_0
    sget p2, Lus/zoom/zrcbox/R$styleable;->ShadowLayoutAttrs_shadowed:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->setIsShadowed(Z)V

    .line 103
    sget p2, Lus/zoom/zrcbox/R$styleable;->ShadowLayoutAttrs_shadow_radius:I

    const/high16 p3, 0x41200000    # 10.0f

    .line 104
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    .line 103
    invoke-virtual {p0, p2}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->setShadowRadius(F)V

    .line 108
    sget p2, Lus/zoom/zrcbox/R$styleable;->ShadowLayoutAttrs_distance:I

    const/high16 p3, 0x40a00000    # 5.0f

    .line 109
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    .line 108
    invoke-virtual {p0, p2}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->setShadowDistance(F)V

    .line 113
    sget p2, Lus/zoom/zrcbox/R$styleable;->ShadowLayoutAttrs_angle:I

    const/16 p3, 0x2d

    .line 114
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    int-to-float p2, p2

    .line 113
    invoke-virtual {p0, p2}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->setShadowAngle(F)V

    .line 118
    sget p2, Lus/zoom/zrcbox/R$styleable;->ShadowLayoutAttrs_color:I

    const p3, -0xbbbbbc

    .line 119
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 118
    invoke-virtual {p0, p2}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->setShadowColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 125
    throw p2
.end method

.method private adjustKeyboardBounds(II)V
    .locals 1

    .line 372
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mAttachedKeyboard:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 374
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 375
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 376
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mAttachedKeyboard:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private adjustShadowAlpha(Z)I
    .locals 3

    if-eqz p1, :cond_0

    const/16 p1, 0xff

    goto :goto_0

    .line 212
    :cond_0
    iget p1, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mShadowAlpha:I

    :goto_0
    iget v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mShadowColor:I

    .line 214
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iget v1, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mShadowColor:I

    .line 215
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    iget v2, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mShadowColor:I

    .line 216
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 212
    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method private resetShadow()V
    .locals 8

    .line 202
    iget v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mShadowDistance:F

    float-to-double v0, v0

    iget v2, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mShadowAngle:F

    const/high16 v3, 0x43340000    # 180.0f

    div-float/2addr v2, v3

    float-to-double v4, v2

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v4

    double-to-float v0, v0

    iput v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mShadowDx:F

    .line 203
    iget v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mShadowDistance:F

    float-to-double v0, v0

    iget v2, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mShadowAngle:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    iput v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mShadowDy:F

    .line 206
    iget v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mShadowDistance:F

    iget v1, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mShadowRadius:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 207
    invoke-virtual {p0, v0, v0, v0, v0}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->setPadding(IIII)V

    .line 208
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->requestLayout()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 254
    iget-boolean v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mIsShadowed:Z

    if-eqz v0, :cond_4

    .line 256
    iget-boolean v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mInvalidateShadow:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 258
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v2, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mBitmap:Landroid/graphics/Bitmap;

    .line 263
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 266
    iput-boolean v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mInvalidateShadow:Z

    .line 272
    iget-object v2, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mCanvas:Landroid/graphics/Canvas;

    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 275
    iget-object v2, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 279
    iget-object v3, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mCanvas:Landroid/graphics/Canvas;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 282
    iget-boolean v3, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->isSharing:Z

    if-eqz v3, :cond_0

    .line 283
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mAttachedKeyboard:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 284
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40a00000    # 5.0f

    sub-float/2addr v0, v3

    .line 285
    iget-object v4, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mAttachedKeyboard:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getRight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v3

    .line 286
    iget-object v5, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mAttachedKeyboard:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v3

    .line 287
    iget-object v6, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mAttachedKeyboard:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getBottom()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v3

    sub-float v3, v6, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v3, v7

    .line 289
    iget-object v7, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->outlinePaint:Landroid/graphics/Paint;

    const-string v8, "#458CFF"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 290
    iget-object v7, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mCanvas:Landroid/graphics/Canvas;

    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v0, v5, v4, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v3, v3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 296
    :cond_0
    iget-object v3, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->adjustShadowAlpha(Z)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 297
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mCanvas:Landroid/graphics/Canvas;

    iget v3, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mShadowDx:F

    iget v4, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mShadowDy:F

    iget-object v5, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 301
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 304
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mBitmap:Landroid/graphics/Bitmap;

    .line 309
    :cond_3
    :goto_1
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v1}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->adjustShadowAlpha(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 312
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 313
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 318
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getShadowAngle()F
    .locals 1

    .line 158
    iget v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mShadowAngle:F

    return v0
.end method

.method public getShadowColor()I
    .locals 1

    .line 181
    iget v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mShadowColor:I

    return v0
.end method

.method public getShadowDistance()F
    .locals 1

    .line 149
    iget v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mShadowDistance:F

    return v0
.end method

.method public getShadowDx()F
    .locals 1

    .line 192
    iget v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mShadowDx:F

    return v0
.end method

.method public getShadowDy()F
    .locals 1

    .line 196
    iget v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mShadowDy:F

    return v0
.end method

.method public getShadowRadius()F
    .locals 1

    .line 167
    iget v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mShadowRadius:F

    return v0
.end method

.method public grabScreenSize([I)V
    .locals 3

    if-eqz p1, :cond_1

    .line 381
    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 384
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 386
    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 387
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 389
    iget v0, v1, Landroid/graphics/Point;->x:I

    aput v0, p1, v2

    const/4 v0, 0x1

    .line 390
    iget v1, v1, Landroid/graphics/Point;->y:I

    aput v1, p1, v0

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public isShadowed()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mIsShadowed:Z

    return v0
.end method

.method public loadKeyboard()V
    .locals 2

    .line 341
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 342
    invoke-virtual {p0, v0}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 344
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 345
    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mAttachedKeyboard:Landroid/view/ViewGroup;

    :cond_0
    return-void
.end method

.method public loadKeyboard(Landroid/view/ViewGroup;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 330
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 331
    invoke-virtual {p0, p1, v0}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->addView(Landroid/view/View;I)V

    .line 333
    iput-object p1, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mAttachedKeyboard:Landroid/view/ViewGroup;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 130
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 133
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 222
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 223
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 224
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 227
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 232
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 233
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    .line 234
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 235
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    .line 236
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 239
    :goto_0
    iget-object v3, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->availableArea:[I

    iget v4, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mShadowDx:F

    float-to-int v4, v4

    sub-int/2addr p1, v4

    sub-int/2addr p1, v2

    aput p1, v3, v1

    const/4 p1, 0x1

    .line 240
    iget v1, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mShadowDy:F

    float-to-int v1, v1

    sub-int/2addr p2, v1

    sub-int/2addr p2, v0

    aput p2, v3, p1

    return-void
.end method

.method public removeKeyBoard()V
    .locals 1

    .line 353
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mAttachedKeyboard:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 356
    :cond_0
    invoke-virtual {p0, v0}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    const/4 v0, 0x1

    .line 246
    iput-boolean v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mInvalidateShadow:Z

    .line 247
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setBackgroundToKeyboard(Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable;)V
    .locals 2

    .line 360
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mAttachedKeyboard:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->availableArea:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable;->setKeyboardWidth(I)V

    .line 364
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->availableArea:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable;->setKeyboardHeight(I)V

    .line 365
    move-object v0, p1

    check-cast v0, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable;

    invoke-virtual {v0}, Lus/zoom/zrc/camera_control/view/widgets/RectRoundShapeDrawable;->adjustBeforeDrawing()V

    .line 367
    invoke-virtual {p1}, Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable;->getRecommendWidth()I

    move-result v0

    invoke-virtual {p1}, Lus/zoom/zrc/camera_control/view/widgets/KeyboardShapeDrawable;->getRecommendHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->adjustKeyboardBounds(II)V

    .line 368
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mAttachedKeyboard:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIsShadowed(Z)V
    .locals 0

    .line 144
    iput-boolean p1, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mIsShadowed:Z

    .line 145
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->postInvalidate()V

    return-void
.end method

.method public setShadowAngle(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 360.0
        .end annotation
    .end param

    const/high16 v0, 0x43b40000    # 360.0f

    .line 162
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mShadowAngle:F

    .line 163
    invoke-direct {p0}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->resetShadow()V

    return-void
.end method

.method public setShadowColor(I)V
    .locals 0

    .line 185
    iput p1, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mShadowColor:I

    .line 186
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    iput p1, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mShadowAlpha:I

    .line 188
    invoke-direct {p0}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->resetShadow()V

    return-void
.end method

.method public setShadowDistance(F)V
    .locals 0

    .line 153
    iput p1, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mShadowDistance:F

    .line 154
    invoke-direct {p0}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->resetShadow()V

    return-void
.end method

.method public setShadowRadius(F)V
    .locals 3

    const v0, 0x3dcccccd    # 0.1f

    .line 171
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mShadowRadius:F

    .line 173
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 176
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/BlurMaskFilter;

    iget v1, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->mShadowRadius:F

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 177
    invoke-direct {p0}, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->resetShadow()V

    return-void
.end method

.method public setSharing(Z)V
    .locals 0

    .line 394
    iput-boolean p1, p0, Lus/zoom/zrc/camera_control/view/widgets/CameraControlPanelLayout;->isSharing:Z

    return-void
.end method
