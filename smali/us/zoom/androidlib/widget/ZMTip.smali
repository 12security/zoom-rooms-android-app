.class public Lus/zoom/androidlib/widget/ZMTip;
.super Landroid/widget/LinearLayout;
.source "ZMTip.java"


# static fields
.field public static final ARROW_DIRECTION_DOWN:I = 0x3

.field public static final ARROW_DIRECTION_LEFT:I = 0x0

.field public static final ARROW_DIRECTION_NONE:I = -0x1

.field public static final ARROW_DIRECTION_RIGHT:I = 0x2

.field public static final ARROW_DIRECTION_UP:I = 0x1

.field public static final LAYOUT_GRAVITY_BOTTOM:I = 0x3

.field public static final LAYOUT_GRAVITY_LEFT:I = 0x0

.field public static final LAYOUT_GRAVITY_NONE:I = -0x1

.field public static final LAYOUT_GRAVITY_RIGHT:I = 0x1

.field public static final LAYOUT_GRAVITY_TOP:I = 0x2

.field public static final LAYOUT_OVERLYING_FROM_BOTTOM:I = 0x1

.field public static final LAYOUT_OVERLYING_FROM_CENTER:I = 0x0

.field public static final LAYOUT_OVERLYING_FROM_TOP:I = 0x2


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mArcSize:I

.field private mArrowDir:I

.field private mArrowHeight:I

.field private mArrowWidth:I

.field private mBorderMarginBottom:I

.field private mBorderMarginLeft:I

.field private mBorderMarginRight:I

.field private mBorderMarginTop:I

.field private mClrBackground:I

.field private mClrBorder:I

.field private mClrShadow:I

.field private mDistanceToAnchor:I

.field private mDrawableBackground:Landroid/graphics/drawable/Drawable;

.field private mGravity:I

.field private mGravityPadding:I

.field private mOverlyingType:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPreferredX:I

.field private mPreferredY:I

.field private mShadowDx:I

.field private mShadowDy:I

.field private mShadowRadius:F

.field private mStrokeWidth:F

.field private mbPreferredPosSetted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 73
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mShadowRadius:F

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginLeft:I

    .line 45
    iput v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginTop:I

    .line 46
    iput v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginRight:I

    .line 47
    iput v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginBottom:I

    .line 48
    iput v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mArrowWidth:I

    .line 49
    iput v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mArrowHeight:I

    .line 63
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mbPreferredPosSetted:Z

    const/4 v1, -0x1

    .line 64
    iput v1, p0, Lus/zoom/androidlib/widget/ZMTip;->mGravity:I

    .line 65
    iput v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mOverlyingType:I

    .line 66
    iput v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mGravityPadding:I

    .line 68
    iput v1, p0, Lus/zoom/androidlib/widget/ZMTip;->mArrowDir:I

    .line 70
    iput v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mDistanceToAnchor:I

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, v0}, Lus/zoom/androidlib/widget/ZMTip;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mShadowRadius:F

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginLeft:I

    .line 45
    iput v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginTop:I

    .line 46
    iput v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginRight:I

    .line 47
    iput v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginBottom:I

    .line 48
    iput v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mArrowWidth:I

    .line 49
    iput v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mArrowHeight:I

    .line 63
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mbPreferredPosSetted:Z

    const/4 v1, -0x1

    .line 64
    iput v1, p0, Lus/zoom/androidlib/widget/ZMTip;->mGravity:I

    .line 65
    iput v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mOverlyingType:I

    .line 66
    iput v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mGravityPadding:I

    .line 68
    iput v1, p0, Lus/zoom/androidlib/widget/ZMTip;->mArrowDir:I

    .line 70
    iput v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mDistanceToAnchor:I

    .line 79
    invoke-direct {p0, p1, p2}, Lus/zoom/androidlib/widget/ZMTip;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private _zmIsHardwareAccelerated()Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 512
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->isHardwareAccelerated()Z

    move-result v0

    return v0
.end method

.method private getArcOval(II)Landroid/graphics/RectF;
    .locals 3

    .line 516
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    int-to-float v1, p1

    .line 517
    iput v1, v0, Landroid/graphics/RectF;->left:F

    int-to-float v1, p2

    .line 518
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 519
    iget v1, p0, Lus/zoom/androidlib/widget/ZMTip;->mArcSize:I

    mul-int/lit8 v2, v1, 0x2

    add-int/2addr p1, v2

    int-to-float p1, p1

    iput p1, v0, Landroid/graphics/RectF;->right:F

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    int-to-float p1, p2

    .line 520
    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mPaint:Landroid/graphics/Paint;

    .line 84
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x20000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/ZMTip;->setWillNotDraw(Z)V

    .line 87
    invoke-virtual {p0, v1}, Lus/zoom/androidlib/widget/ZMTip;->setWillNotCacheDrawing(Z)V

    const/high16 v2, 0x41800000    # 16.0f

    .line 89
    invoke-static {p1, v2}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, p0, Lus/zoom/androidlib/widget/ZMTip;->mArrowWidth:I

    .line 90
    iget v2, p0, Lus/zoom/androidlib/widget/ZMTip;->mArrowWidth:I

    const/4 v3, 0x2

    div-int/2addr v2, v3

    iput v2, p0, Lus/zoom/androidlib/widget/ZMTip;->mArrowHeight:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 91
    invoke-static {p1, v2}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lus/zoom/androidlib/widget/ZMTip;->mStrokeWidth:F

    const/high16 v2, 0x40c00000    # 6.0f

    .line 92
    invoke-static {p1, v2}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, p0, Lus/zoom/androidlib/widget/ZMTip;->mArcSize:I

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    .line 95
    sget-object v2, Lus/zoom/androidlib/R$styleable;->ZMTip:[I

    sget v4, Lus/zoom/androidlib/R$attr;->zm_tipAppearance:I

    invoke-virtual {p1, p2, v2, v4, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 98
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 99
    sget v2, Lus/zoom/androidlib/R$styleable;->ZMTip_zm_background:I

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 100
    iget v2, p2, Landroid/util/TypedValue;->type:I

    const v4, -0x1f282829

    if-eq v2, v1, :cond_1

    iget p2, p2, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMTip_zm_background:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lus/zoom/androidlib/widget/ZMTip;->mClrBackground:I

    goto :goto_1

    .line 102
    :cond_1
    :goto_0
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMTip_zm_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/androidlib/widget/ZMTip;->mDrawableBackground:Landroid/graphics/drawable/Drawable;

    .line 103
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMTip_zm_backgroundColorIfHardwareAccelerated:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lus/zoom/androidlib/widget/ZMTip;->mClrBackground:I

    .line 107
    :goto_1
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMTip_zm_borderColor:I

    const v1, -0x1f000001

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lus/zoom/androidlib/widget/ZMTip;->mClrBorder:I

    const/high16 p2, 0x40800000    # 4.0f

    .line 109
    sget v1, Lus/zoom/androidlib/R$styleable;->ZMTip_zm_shadowColor:I

    const v2, -0xcfac70

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, p2, v0, v3, v1}, Lus/zoom/androidlib/widget/ZMTip;->setShadow(FIII)V

    .line 111
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 114
    new-instance p1, Lus/zoom/androidlib/widget/ZMTip$1;

    invoke-direct {p1, p0}, Lus/zoom/androidlib/widget/ZMTip$1;-><init>(Lus/zoom/androidlib/widget/ZMTip;)V

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/ZMTip;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private updatePaddings()V
    .locals 6

    .line 250
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lus/zoom/androidlib/widget/ZMTipLayer;

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 254
    :cond_0
    iget v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mShadowRadius:F

    iget v1, p0, Lus/zoom/androidlib/widget/ZMTip;->mShadowDx:I

    int-to-float v2, v1

    sub-float v2, v0, v2

    float-to-int v2, v2

    iput v2, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginLeft:I

    .line 255
    iget v2, p0, Lus/zoom/androidlib/widget/ZMTip;->mShadowDy:I

    int-to-float v3, v2

    sub-float v3, v0, v3

    float-to-int v3, v3

    iput v3, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginTop:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v1, v1

    .line 256
    iput v1, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginRight:I

    int-to-float v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 257
    iput v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginBottom:I

    .line 259
    iget v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mStrokeWidth:F

    float-to-int v1, v0

    iget v2, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginLeft:I

    add-int/2addr v1, v2

    float-to-int v2, v0

    .line 260
    iget v3, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginTop:I

    add-int/2addr v2, v3

    float-to-int v3, v0

    .line 261
    iget v4, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginRight:I

    add-int/2addr v3, v4

    float-to-int v0, v0

    .line 262
    iget v4, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginBottom:I

    add-int/2addr v0, v4

    .line 264
    iget v4, p0, Lus/zoom/androidlib/widget/ZMTip;->mArrowDir:I

    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 290
    :pswitch_0
    iget v4, p0, Lus/zoom/androidlib/widget/ZMTip;->mArrowHeight:I

    if-lt v4, v0, :cond_1

    .line 292
    iput v5, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginBottom:I

    move v0, v4

    goto :goto_0

    :cond_1
    add-int/2addr v0, v4

    goto :goto_0

    .line 282
    :pswitch_1
    iget v4, p0, Lus/zoom/androidlib/widget/ZMTip;->mArrowHeight:I

    if-lt v4, v3, :cond_2

    .line 284
    iput v5, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginRight:I

    move v3, v4

    goto :goto_0

    :cond_2
    add-int/2addr v3, v4

    goto :goto_0

    .line 274
    :pswitch_2
    iget v4, p0, Lus/zoom/androidlib/widget/ZMTip;->mArrowHeight:I

    if-lt v4, v2, :cond_3

    .line 276
    iput v5, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginTop:I

    move v2, v4

    goto :goto_0

    :cond_3
    add-int/2addr v2, v4

    goto :goto_0

    .line 266
    :pswitch_3
    iget v4, p0, Lus/zoom/androidlib/widget/ZMTip;->mArrowHeight:I

    if-lt v4, v1, :cond_4

    .line 268
    iput v5, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginLeft:I

    move v1, v4

    goto :goto_0

    :cond_4
    add-int/2addr v1, v4

    .line 299
    :goto_0
    invoke-virtual {p0, v1, v2, v3, v0}, Lus/zoom/androidlib/widget/ZMTip;->setPadding(IIII)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 348
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lus/zoom/androidlib/widget/ZMTipLayer;

    if-nez v0, :cond_0

    return-void

    .line 352
    :cond_0
    invoke-virtual {v0, p0}, Lus/zoom/androidlib/widget/ZMTipLayer;->removeView(Landroid/view/View;)V

    .line 353
    invoke-virtual {v0}, Lus/zoom/androidlib/widget/ZMTipLayer;->requestLayout()V

    return-void
.end method

.method public getAnchor()Landroid/view/View;
    .locals 1

    .line 303
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mAnchor:Landroid/view/View;

    return-object v0
.end method

.method public getArrowDirection()I
    .locals 1

    .line 307
    iget v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mArrowDir:I

    return v0
.end method

.method public getArrowHeight()I
    .locals 1

    .line 225
    iget v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mArrowHeight:I

    return v0
.end method

.method public getArrowWidth()I
    .locals 1

    .line 221
    iget v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mArrowWidth:I

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 133
    iget v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mClrBackground:I

    return v0
.end method

.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 166
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mDrawableBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBorderColor()I
    .locals 1

    .line 177
    iget v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mClrBorder:I

    return v0
.end method

.method public getCornerArcSize()I
    .locals 1

    .line 211
    iget v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mArcSize:I

    return v0
.end method

.method public getDistanceToAnchor()I
    .locals 1

    .line 246
    iget v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mDistanceToAnchor:I

    return v0
.end method

.method public getLayoutGravity()I
    .locals 1

    .line 137
    iget v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mGravity:I

    return v0
.end method

.method public getLayoutGravityPadding()I
    .locals 1

    .line 141
    iget v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mGravityPadding:I

    return v0
.end method

.method public getOverlyingType()I
    .locals 1

    .line 150
    iget v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mOverlyingType:I

    return v0
.end method

.method public getPreferredX()I
    .locals 1

    .line 323
    iget v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mPreferredX:I

    return v0
.end method

.method public getPreferredY()I
    .locals 1

    .line 327
    iget v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mPreferredY:I

    return v0
.end method

.method public getShadowColor()I
    .locals 1

    .line 199
    iget v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mClrShadow:I

    return v0
.end method

.method public isPreferredPositionSetted()Z
    .locals 1

    .line 331
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mbPreferredPosSetted:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 363
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->getArrowDirection()I

    move-result v0

    .line 367
    iget-object v1, p0, Lus/zoom/androidlib/widget/ZMTip;->mAnchor:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 368
    invoke-static {v1}, Lus/zoom/androidlib/util/UIUtil;->getAbsoluteRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 370
    :goto_0
    invoke-static {p0}, Lus/zoom/androidlib/util/UIUtil;->getAbsoluteRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v1, :cond_1

    .line 373
    iget v3, v2, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 375
    :cond_1
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 380
    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    div-int/2addr v6, v5

    .line 381
    iget v7, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginLeft:I

    iget v8, p0, Lus/zoom/androidlib/widget/ZMTip;->mArrowHeight:I

    add-int/2addr v7, v8

    int-to-float v8, v7

    .line 382
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->getHeight()I

    move-result v9

    iget v10, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginBottom:I

    sub-int/2addr v9, v10

    iget v10, p0, Lus/zoom/androidlib/widget/ZMTip;->mArcSize:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 383
    iget v9, p0, Lus/zoom/androidlib/widget/ZMTip;->mArrowWidth:I

    div-int/2addr v9, v5

    add-int/2addr v9, v6

    int-to-float v9, v9

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 384
    iget v9, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginLeft:I

    int-to-float v9, v9

    int-to-float v10, v6

    invoke-virtual {v2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 385
    iget v9, p0, Lus/zoom/androidlib/widget/ZMTip;->mArrowWidth:I

    div-int/2addr v9, v5

    sub-int/2addr v6, v9

    int-to-float v6, v6

    invoke-virtual {v2, v8, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 386
    iget v6, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginTop:I

    iget v9, p0, Lus/zoom/androidlib/widget/ZMTip;->mArcSize:I

    add-int/2addr v6, v9

    int-to-float v6, v6

    invoke-virtual {v2, v8, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 388
    iget v6, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginTop:I

    goto :goto_2

    .line 390
    :cond_2
    iget v7, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginLeft:I

    if-ne v0, v4, :cond_3

    int-to-float v6, v7

    .line 392
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->getHeight()I

    move-result v8

    iget v9, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginBottom:I

    sub-int/2addr v8, v9

    iget v9, p0, Lus/zoom/androidlib/widget/ZMTip;->mArrowHeight:I

    sub-int/2addr v8, v9

    iget v9, p0, Lus/zoom/androidlib/widget/ZMTip;->mArcSize:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v2, v6, v8}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_1

    :cond_3
    int-to-float v6, v7

    .line 394
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->getHeight()I

    move-result v8

    iget v9, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginBottom:I

    sub-int/2addr v8, v9

    iget v9, p0, Lus/zoom/androidlib/widget/ZMTip;->mArcSize:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v2, v6, v8}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_1
    if-ne v0, v3, :cond_4

    int-to-float v6, v7

    .line 397
    iget v8, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginTop:I

    iget v9, p0, Lus/zoom/androidlib/widget/ZMTip;->mArrowHeight:I

    add-int/2addr v8, v9

    iget v9, p0, Lus/zoom/androidlib/widget/ZMTip;->mArcSize:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v2, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 398
    iget v6, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginTop:I

    iget v8, p0, Lus/zoom/androidlib/widget/ZMTip;->mArrowHeight:I

    add-int/2addr v6, v8

    goto :goto_2

    :cond_4
    int-to-float v6, v7

    .line 400
    iget v8, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginTop:I

    iget v9, p0, Lus/zoom/androidlib/widget/ZMTip;->mArcSize:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v2, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 401
    iget v6, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginTop:I

    .line 406
    :goto_2
    invoke-direct {p0, v7, v6}, Lus/zoom/androidlib/widget/ZMTip;->getArcOval(II)Landroid/graphics/RectF;

    move-result-object v6

    const/high16 v7, 0x43340000    # 180.0f

    const/high16 v8, 0x42b40000    # 90.0f

    .line 407
    invoke-virtual {v2, v6, v7, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    if-eqz v1, :cond_5

    if-ne v0, v3, :cond_5

    .line 411
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v6

    div-int/2addr v3, v5

    .line 412
    iget v6, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginTop:I

    iget v7, p0, Lus/zoom/androidlib/widget/ZMTip;->mArrowHeight:I

    add-int/2addr v6, v7

    .line 413
    iget v7, p0, Lus/zoom/androidlib/widget/ZMTip;->mArrowWidth:I

    div-int/2addr v7, v5

    sub-int v7, v3, v7

    int-to-float v7, v7

    int-to-float v9, v6

    invoke-virtual {v2, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v7, v3

    .line 414
    iget v10, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginTop:I

    int-to-float v10, v10

    invoke-virtual {v2, v7, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 415
    iget v7, p0, Lus/zoom/androidlib/widget/ZMTip;->mArrowWidth:I

    div-int/2addr v7, v5

    add-int/2addr v3, v7

    int-to-float v3, v3

    invoke-virtual {v2, v3, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 416
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->getWidth()I

    move-result v3

    iget v7, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginRight:I

    sub-int/2addr v3, v7

    iget v7, p0, Lus/zoom/androidlib/widget/ZMTip;->mArcSize:I

    sub-int/2addr v3, v7

    int-to-float v3, v3

    invoke-virtual {v2, v3, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 417
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->getWidth()I

    move-result v3

    iget v7, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginRight:I

    sub-int/2addr v3, v7

    iget v7, p0, Lus/zoom/androidlib/widget/ZMTip;->mArcSize:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v3, v7

    goto :goto_3

    .line 420
    :cond_5
    iget v6, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginTop:I

    if-ne v0, v5, :cond_6

    .line 422
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->getWidth()I

    move-result v3

    iget v7, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginRight:I

    sub-int/2addr v3, v7

    iget v7, p0, Lus/zoom/androidlib/widget/ZMTip;->mArrowHeight:I

    sub-int/2addr v3, v7

    iget v7, p0, Lus/zoom/androidlib/widget/ZMTip;->mArcSize:I

    sub-int/2addr v3, v7

    int-to-float v3, v3

    int-to-float v7, v6

    invoke-virtual {v2, v3, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 423
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->getWidth()I

    move-result v3

    iget v7, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginRight:I

    sub-int/2addr v3, v7

    iget v7, p0, Lus/zoom/androidlib/widget/ZMTip;->mArrowHeight:I

    sub-int/2addr v3, v7

    iget v7, p0, Lus/zoom/androidlib/widget/ZMTip;->mArcSize:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v3, v7

    goto :goto_3

    .line 425
    :cond_6
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->getWidth()I

    move-result v3

    iget v7, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginRight:I

    sub-int/2addr v3, v7

    iget v7, p0, Lus/zoom/androidlib/widget/ZMTip;->mArcSize:I

    sub-int/2addr v3, v7

    int-to-float v3, v3

    int-to-float v7, v6

    invoke-virtual {v2, v3, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 426
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->getWidth()I

    move-result v3

    iget v7, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginRight:I

    sub-int/2addr v3, v7

    iget v7, p0, Lus/zoom/androidlib/widget/ZMTip;->mArcSize:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v3, v7

    .line 431
    :goto_3
    invoke-direct {p0, v3, v6}, Lus/zoom/androidlib/widget/ZMTip;->getArcOval(II)Landroid/graphics/RectF;

    move-result-object v3

    const/high16 v6, 0x43870000    # 270.0f

    .line 432
    invoke-virtual {v2, v3, v6, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    if-eqz v1, :cond_7

    if-ne v0, v5, :cond_7

    .line 436
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v6

    div-int/2addr v3, v5

    .line 437
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->getWidth()I

    move-result v6

    iget v7, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginRight:I

    sub-int/2addr v6, v7

    iget v7, p0, Lus/zoom/androidlib/widget/ZMTip;->mArrowHeight:I

    sub-int/2addr v6, v7

    int-to-float v7, v6

    .line 438
    iget v9, p0, Lus/zoom/androidlib/widget/ZMTip;->mArrowWidth:I

    div-int/2addr v9, v5

    sub-int v9, v3, v9

    int-to-float v9, v9

    invoke-virtual {v2, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 439
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->getWidth()I

    move-result v9

    iget v10, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginRight:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    int-to-float v10, v3

    invoke-virtual {v2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 440
    iget v9, p0, Lus/zoom/androidlib/widget/ZMTip;->mArrowWidth:I

    div-int/2addr v9, v5

    add-int/2addr v3, v9

    int-to-float v3, v3

    invoke-virtual {v2, v7, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 441
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->getHeight()I

    move-result v3

    iget v9, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginBottom:I

    sub-int/2addr v3, v9

    iget v9, p0, Lus/zoom/androidlib/widget/ZMTip;->mArcSize:I

    sub-int/2addr v3, v9

    int-to-float v3, v3

    invoke-virtual {v2, v7, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 442
    iget v3, p0, Lus/zoom/androidlib/widget/ZMTip;->mArcSize:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v6, v3

    .line 443
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->getHeight()I

    move-result v3

    iget v7, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginBottom:I

    sub-int/2addr v3, v7

    iget v7, p0, Lus/zoom/androidlib/widget/ZMTip;->mArcSize:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v3, v7

    move v11, v6

    move v6, v3

    move v3, v11

    goto :goto_5

    .line 445
    :cond_7
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->getWidth()I

    move-result v3

    iget v6, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginRight:I

    sub-int/2addr v3, v6

    if-ne v0, v4, :cond_8

    int-to-float v6, v3

    .line 447
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->getHeight()I

    move-result v7

    iget v9, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginBottom:I

    sub-int/2addr v7, v9

    iget v9, p0, Lus/zoom/androidlib/widget/ZMTip;->mArrowHeight:I

    sub-int/2addr v7, v9

    iget v9, p0, Lus/zoom/androidlib/widget/ZMTip;->mArcSize:I

    sub-int/2addr v7, v9

    int-to-float v7, v7

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 448
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->getHeight()I

    move-result v6

    iget v7, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginBottom:I

    sub-int/2addr v6, v7

    iget v7, p0, Lus/zoom/androidlib/widget/ZMTip;->mArrowHeight:I

    sub-int/2addr v6, v7

    iget v7, p0, Lus/zoom/androidlib/widget/ZMTip;->mArcSize:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    goto :goto_4

    :cond_8
    int-to-float v6, v3

    .line 450
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->getHeight()I

    move-result v7

    iget v9, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginBottom:I

    sub-int/2addr v7, v9

    iget v9, p0, Lus/zoom/androidlib/widget/ZMTip;->mArcSize:I

    sub-int/2addr v7, v9

    int-to-float v7, v7

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 451
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->getHeight()I

    move-result v6

    iget v7, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginBottom:I

    sub-int/2addr v6, v7

    iget v7, p0, Lus/zoom/androidlib/widget/ZMTip;->mArcSize:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    .line 453
    :goto_4
    iget v7, p0, Lus/zoom/androidlib/widget/ZMTip;->mArcSize:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v3, v7

    .line 456
    :goto_5
    invoke-direct {p0, v3, v6}, Lus/zoom/androidlib/widget/ZMTip;->getArcOval(II)Landroid/graphics/RectF;

    move-result-object v3

    const/4 v6, 0x0

    .line 457
    invoke-virtual {v2, v3, v6, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    if-eqz v1, :cond_9

    if-ne v0, v4, :cond_9

    .line 461
    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    div-int/2addr v0, v5

    .line 462
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->getHeight()I

    move-result v1

    iget v3, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginBottom:I

    sub-int/2addr v1, v3

    iget v3, p0, Lus/zoom/androidlib/widget/ZMTip;->mArrowHeight:I

    sub-int/2addr v1, v3

    .line 463
    iget v3, p0, Lus/zoom/androidlib/widget/ZMTip;->mArrowWidth:I

    div-int/2addr v3, v5

    add-int/2addr v3, v0

    int-to-float v3, v3

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v3, v0

    .line 464
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->getHeight()I

    move-result v7

    iget v9, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginBottom:I

    sub-int/2addr v7, v9

    int-to-float v7, v7

    invoke-virtual {v2, v3, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 465
    iget v3, p0, Lus/zoom/androidlib/widget/ZMTip;->mArrowWidth:I

    div-int/2addr v3, v5

    sub-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {v2, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 466
    iget v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginLeft:I

    iget v3, p0, Lus/zoom/androidlib/widget/ZMTip;->mArcSize:I

    add-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {v2, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 467
    iget v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginLeft:I

    .line 468
    iget v3, p0, Lus/zoom/androidlib/widget/ZMTip;->mArcSize:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    goto :goto_7

    .line 470
    :cond_9
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->getHeight()I

    move-result v1

    iget v3, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginBottom:I

    sub-int/2addr v1, v3

    if-nez v0, :cond_a

    .line 472
    iget v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginLeft:I

    iget v3, p0, Lus/zoom/androidlib/widget/ZMTip;->mArrowHeight:I

    add-int/2addr v0, v3

    iget v3, p0, Lus/zoom/androidlib/widget/ZMTip;->mArcSize:I

    add-int/2addr v0, v3

    int-to-float v0, v0

    int-to-float v3, v1

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 473
    iget v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginLeft:I

    iget v3, p0, Lus/zoom/androidlib/widget/ZMTip;->mArrowHeight:I

    add-int/2addr v0, v3

    goto :goto_6

    .line 475
    :cond_a
    iget v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginLeft:I

    iget v3, p0, Lus/zoom/androidlib/widget/ZMTip;->mArcSize:I

    add-int/2addr v0, v3

    int-to-float v0, v0

    int-to-float v3, v1

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 476
    iget v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mBorderMarginLeft:I

    .line 478
    :goto_6
    iget v3, p0, Lus/zoom/androidlib/widget/ZMTip;->mArcSize:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    .line 481
    :goto_7
    invoke-direct {p0, v0, v1}, Lus/zoom/androidlib/widget/ZMTip;->getArcOval(II)Landroid/graphics/RectF;

    move-result-object v0

    .line 482
    invoke-virtual {v2, v0, v8, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 484
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 485
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lus/zoom/androidlib/widget/ZMTip;->mShadowRadius:F

    iget v3, p0, Lus/zoom/androidlib/widget/ZMTip;->mShadowDx:I

    int-to-float v3, v3

    iget v4, p0, Lus/zoom/androidlib/widget/ZMTip;->mShadowDy:I

    int-to-float v4, v4

    iget v5, p0, Lus/zoom/androidlib/widget/ZMTip;->mClrShadow:I

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 486
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lus/zoom/androidlib/widget/ZMTip;->mStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 487
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lus/zoom/androidlib/widget/ZMTip;->mClrBorder:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 488
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 490
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mDrawableBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lus/zoom/androidlib/widget/ZMTip;->_zmIsHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_8

    .line 497
    :cond_b
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mDrawableBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 498
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 499
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mDrawableBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_9

    .line 491
    :cond_c
    :goto_8
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 492
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6, v6, v6, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 493
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 494
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lus/zoom/androidlib/widget/ZMTip;->mClrBackground:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 495
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 503
    :goto_9
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 504
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6, v6, v6, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 505
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lus/zoom/androidlib/widget/ZMTip;->mStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 506
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lus/zoom/androidlib/widget/ZMTip;->mClrBorder:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 507
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public resetPreferredPosition()V
    .locals 1

    const/4 v0, 0x0

    .line 317
    iput v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mPreferredX:I

    .line 318
    iput v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mPreferredY:I

    .line 319
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mbPreferredPosSetted:Z

    return-void
.end method

.method public setAnchor(Landroid/view/View;I)V
    .locals 1

    .line 229
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMTip;->mAnchor:Landroid/view/View;

    if-ne v0, p1, :cond_0

    return-void

    .line 232
    :cond_0
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMTip;->mAnchor:Landroid/view/View;

    .line 233
    iput p2, p0, Lus/zoom/androidlib/widget/ZMTip;->mArrowDir:I

    .line 235
    invoke-direct {p0}, Lus/zoom/androidlib/widget/ZMTip;->updatePaddings()V

    return-void
.end method

.method public setArrowSize(II)V
    .locals 0

    .line 215
    iput p1, p0, Lus/zoom/androidlib/widget/ZMTip;->mArrowWidth:I

    .line 216
    iput p2, p0, Lus/zoom/androidlib/widget/ZMTip;->mArrowHeight:I

    .line 217
    invoke-direct {p0}, Lus/zoom/androidlib/widget/ZMTip;->updatePaddings()V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 125
    iput p1, p0, Lus/zoom/androidlib/widget/ZMTip;->mClrBackground:I

    const/4 p1, 0x0

    .line 126
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMTip;->mDrawableBackground:Landroid/graphics/drawable/Drawable;

    .line 127
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 128
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMTip;->mDrawableBackground:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 159
    iput p1, p0, Lus/zoom/androidlib/widget/ZMTip;->mClrBackground:I

    .line 160
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 161
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 0

    .line 170
    iput p1, p0, Lus/zoom/androidlib/widget/ZMTip;->mClrBorder:I

    .line 171
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 172
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCornerArcSize(I)V
    .locals 0

    .line 203
    iput p1, p0, Lus/zoom/androidlib/widget/ZMTip;->mArcSize:I

    .line 204
    invoke-direct {p0}, Lus/zoom/androidlib/widget/ZMTip;->updatePaddings()V

    .line 205
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 206
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->invalidate()V

    :cond_0
    return-void
.end method

.method public setDistanceToAnchor(I)V
    .locals 0

    .line 239
    iput p1, p0, Lus/zoom/androidlib/widget/ZMTip;->mDistanceToAnchor:I

    .line 240
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lus/zoom/androidlib/widget/ZMTipLayer;

    if-eqz p1, :cond_0

    .line 241
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setLayoutGravity(II)V
    .locals 0

    .line 145
    iput p1, p0, Lus/zoom/androidlib/widget/ZMTip;->mGravity:I

    .line 146
    iput p2, p0, Lus/zoom/androidlib/widget/ZMTip;->mGravityPadding:I

    return-void
.end method

.method public setOverlyingType(I)V
    .locals 0

    .line 154
    iput p1, p0, Lus/zoom/androidlib/widget/ZMTip;->mOverlyingType:I

    return-void
.end method

.method public setPreferredPosition(II)V
    .locals 0

    .line 311
    iput p1, p0, Lus/zoom/androidlib/widget/ZMTip;->mPreferredX:I

    .line 312
    iput p2, p0, Lus/zoom/androidlib/widget/ZMTip;->mPreferredY:I

    const/4 p1, 0x1

    .line 313
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/ZMTip;->mbPreferredPosSetted:Z

    return-void
.end method

.method public setShadow(FIII)V
    .locals 0

    .line 181
    iput p1, p0, Lus/zoom/androidlib/widget/ZMTip;->mShadowRadius:F

    .line 182
    iput p4, p0, Lus/zoom/androidlib/widget/ZMTip;->mClrShadow:I

    .line 183
    iput p2, p0, Lus/zoom/androidlib/widget/ZMTip;->mShadowDx:I

    .line 184
    iput p3, p0, Lus/zoom/androidlib/widget/ZMTip;->mShadowDy:I

    .line 185
    invoke-direct {p0}, Lus/zoom/androidlib/widget/ZMTip;->updatePaddings()V

    .line 186
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 187
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->invalidate()V

    :cond_0
    return-void
.end method

.method public setShadowColor(I)V
    .locals 0

    .line 192
    iput p1, p0, Lus/zoom/androidlib/widget/ZMTip;->mClrShadow:I

    .line 193
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 194
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->invalidate()V

    :cond_0
    return-void
.end method

.method public show(Lus/zoom/androidlib/widget/ZMTipLayer;)V
    .locals 1

    .line 335
    invoke-virtual {p1, p0}, Lus/zoom/androidlib/widget/ZMTipLayer;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_0

    .line 336
    invoke-virtual {p1, p0}, Lus/zoom/androidlib/widget/ZMTipLayer;->addView(Landroid/view/View;)V

    .line 339
    :cond_0
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMTipLayer;->requestLayout()V

    .line 341
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 342
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTip;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lus/zoom/androidlib/R$anim;->zm_tip_fadein:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 343
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/ZMTip;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method
