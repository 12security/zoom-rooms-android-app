.class public Lus/zoom/zrc/utils/RoundDrawable;
.super Landroid/graphics/drawable/InsetDrawable;
.source "RoundDrawable.java"


# static fields
.field private static final BG_COLORS_IDS:[I


# instance fields
.field private bgColorSeed:Z

.field private bgColorStr:Ljava/lang/String;

.field private bgPaint:Landroid/graphics/Paint;

.field private bitmapPaint:Landroid/graphics/Paint;

.field private borderPaint:Landroid/graphics/Paint;

.field private canvasPaint:Landroid/graphics/Paint;

.field private mBorderColor:I

.field private mBorderSize:I

.field private mCanvas:Landroid/graphics/Canvas;

.field private mClientHeight:I

.field private mClientWidth:I

.field private mCornerRatio:F

.field private mTmpPath:Landroid/graphics/Path;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRectF:Landroid/graphics/RectF;

.field private mbCircle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    .line 88
    new-array v0, v0, [I

    sget v1, Lus/zoom/zrcbox/R$color;->zm_abbr_avatar_bg_1:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lus/zoom/zrcbox/R$color;->zm_abbr_avatar_bg_2:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lus/zoom/zrcbox/R$color;->zm_abbr_avatar_bg_3:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lus/zoom/zrcbox/R$color;->zm_abbr_avatar_bg_4:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lus/zoom/zrcbox/R$color;->zm_abbr_avatar_bg_5:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sget v1, Lus/zoom/zrcbox/R$color;->zm_abbr_avatar_bg_6:I

    const/4 v2, 0x5

    aput v1, v0, v2

    sget v1, Lus/zoom/zrcbox/R$color;->zm_abbr_avatar_bg_7:I

    const/4 v2, 0x6

    aput v1, v0, v2

    sget v1, Lus/zoom/zrcbox/R$color;->zm_abbr_avatar_bg_8:I

    const/4 v2, 0x7

    aput v1, v0, v2

    sput-object v0, Lus/zoom/zrc/utils/RoundDrawable;->BG_COLORS_IDS:[I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;FI)V
    .locals 10

    .line 44
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v9

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v2 .. v9}, Lus/zoom/zrc/utils/RoundDrawable;-><init>(Landroid/graphics/drawable/Drawable;FIZIII)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;FIZIII)V
    .locals 10

    const-string v9, ""

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    .line 48
    invoke-direct/range {v0 .. v9}, Lus/zoom/zrc/utils/RoundDrawable;-><init>(Landroid/graphics/drawable/Drawable;FIZIIIZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;FIZIIIZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 53
    iput p2, p0, Lus/zoom/zrc/utils/RoundDrawable;->mCornerRatio:F

    .line 54
    iput p3, p0, Lus/zoom/zrc/utils/RoundDrawable;->mBorderColor:I

    .line 55
    iput-boolean p4, p0, Lus/zoom/zrc/utils/RoundDrawable;->mbCircle:Z

    .line 56
    iput p5, p0, Lus/zoom/zrc/utils/RoundDrawable;->mClientWidth:I

    .line 57
    iput p6, p0, Lus/zoom/zrc/utils/RoundDrawable;->mClientHeight:I

    .line 58
    iput p7, p0, Lus/zoom/zrc/utils/RoundDrawable;->mBorderSize:I

    .line 59
    iput-boolean p8, p0, Lus/zoom/zrc/utils/RoundDrawable;->bgColorSeed:Z

    .line 60
    iput-object p9, p0, Lus/zoom/zrc/utils/RoundDrawable;->bgColorStr:Ljava/lang/String;

    .line 61
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/utils/RoundDrawable;->mCanvas:Landroid/graphics/Canvas;

    .line 63
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/utils/RoundDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 64
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/utils/RoundDrawable;->mTmpRectF:Landroid/graphics/RectF;

    .line 65
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/utils/RoundDrawable;->mTmpPath:Landroid/graphics/Path;

    .line 68
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lus/zoom/zrc/utils/RoundDrawable;->bitmapPaint:Landroid/graphics/Paint;

    .line 69
    iget-object p1, p0, Lus/zoom/zrc/utils/RoundDrawable;->bitmapPaint:Landroid/graphics/Paint;

    const-string p3, "#FFFFFFFF"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lus/zoom/zrc/utils/RoundDrawable;->canvasPaint:Landroid/graphics/Paint;

    .line 72
    iget-object p1, p0, Lus/zoom/zrc/utils/RoundDrawable;->canvasPaint:Landroid/graphics/Paint;

    const-string p3, "#FFFFFFFF"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object p1, p0, Lus/zoom/zrc/utils/RoundDrawable;->canvasPaint:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/PorterDuffXfermode;

    sget-object p4, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 75
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/utils/RoundDrawable;->borderPaint:Landroid/graphics/Paint;

    .line 76
    iget-object p1, p0, Lus/zoom/zrc/utils/RoundDrawable;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77
    iget-object p1, p0, Lus/zoom/zrc/utils/RoundDrawable;->borderPaint:Landroid/graphics/Paint;

    iget p3, p0, Lus/zoom/zrc/utils/RoundDrawable;->mBorderColor:I

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    iget-object p1, p0, Lus/zoom/zrc/utils/RoundDrawable;->borderPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    iget-object p1, p0, Lus/zoom/zrc/utils/RoundDrawable;->borderPaint:Landroid/graphics/Paint;

    iget p3, p0, Lus/zoom/zrc/utils/RoundDrawable;->mBorderSize:I

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 81
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/utils/RoundDrawable;->bgPaint:Landroid/graphics/Paint;

    .line 82
    iget-object p1, p0, Lus/zoom/zrc/utils/RoundDrawable;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    iget-object p1, p0, Lus/zoom/zrc/utils/RoundDrawable;->bgPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 84
    iget-object p1, p0, Lus/zoom/zrc/utils/RoundDrawable;->bgPaint:Landroid/graphics/Paint;

    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object p2

    invoke-direct {p0, p2, p9}, Lus/zoom/zrc/utils/RoundDrawable;->getBackgroundColorBySeedString(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object p1, p0, Lus/zoom/zrc/utils/RoundDrawable;->bgPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private getBackgroundColorBySeedString(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    .line 130
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 131
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v1, v2

    .line 132
    rem-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 136
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget-object p2, Lus/zoom/zrc/utils/RoundDrawable;->BG_COLORS_IDS:[I

    aget p2, p2, v0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 155
    invoke-virtual {p0}, Lus/zoom/zrc/utils/RoundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lus/zoom/zrc/utils/RoundDrawable;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 160
    iget-object v1, p0, Lus/zoom/zrc/utils/RoundDrawable;->mTmpRect:Landroid/graphics/Rect;

    iget v2, p0, Lus/zoom/zrc/utils/RoundDrawable;->mBorderSize:I

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 162
    iget-object v1, p0, Lus/zoom/zrc/utils/RoundDrawable;->mTmpRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lus/zoom/zrc/utils/RoundDrawable;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 164
    iget-boolean v1, p0, Lus/zoom/zrc/utils/RoundDrawable;->mbCircle:Z

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lus/zoom/zrc/utils/RoundDrawable;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lus/zoom/zrc/utils/RoundDrawable;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 166
    iget-object v2, p0, Lus/zoom/zrc/utils/RoundDrawable;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v5, p0, Lus/zoom/zrc/utils/RoundDrawable;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float/2addr v5, v1

    div-float/2addr v5, v4

    invoke-virtual {v2, v3, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 169
    :cond_0
    iget v1, p0, Lus/zoom/zrc/utils/RoundDrawable;->mCornerRatio:F

    iget-object v2, p0, Lus/zoom/zrc/utils/RoundDrawable;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v1, v1, v2

    .line 170
    iget v2, p0, Lus/zoom/zrc/utils/RoundDrawable;->mCornerRatio:F

    iget-object v3, p0, Lus/zoom/zrc/utils/RoundDrawable;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float v2, v2, v3

    .line 171
    iget-object v3, p0, Lus/zoom/zrc/utils/RoundDrawable;->mTmpPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 172
    iget-object v3, p0, Lus/zoom/zrc/utils/RoundDrawable;->mTmpPath:Landroid/graphics/Path;

    iget-object v4, p0, Lus/zoom/zrc/utils/RoundDrawable;->mTmpRectF:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v1, v2, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 174
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 176
    invoke-super {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 178
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 179
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 180
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lus/zoom/zrc/utils/RoundDrawable;->mCanvas:Landroid/graphics/Canvas;

    .line 182
    iget-boolean v2, p0, Lus/zoom/zrc/utils/RoundDrawable;->bgColorSeed:Z

    if-eqz v2, :cond_1

    .line 183
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 184
    iget-object v3, p0, Lus/zoom/zrc/utils/RoundDrawable;->mTmpPath:Landroid/graphics/Path;

    iget-object v4, p0, Lus/zoom/zrc/utils/RoundDrawable;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 185
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 188
    :cond_1
    iget-object v2, p0, Lus/zoom/zrc/utils/RoundDrawable;->mCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lus/zoom/zrc/utils/RoundDrawable;->mTmpPath:Landroid/graphics/Path;

    iget-object v4, p0, Lus/zoom/zrc/utils/RoundDrawable;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 190
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v3, p0, Lus/zoom/zrc/utils/RoundDrawable;->canvasPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 193
    iget-object v0, p0, Lus/zoom/zrc/utils/RoundDrawable;->mTmpPath:Landroid/graphics/Path;

    iget-object v1, p0, Lus/zoom/zrc/utils/RoundDrawable;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 3

    .line 142
    iget v0, p0, Lus/zoom/zrc/utils/RoundDrawable;->mClientWidth:I

    if-lez v0, :cond_2

    iget v1, p0, Lus/zoom/zrc/utils/RoundDrawable;->mClientHeight:I

    if-gtz v1, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 146
    invoke-super {p0}, Landroid/graphics/drawable/InsetDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-super {p0}, Landroid/graphics/drawable/InsetDrawable;->getIntrinsicHeight()I

    move-result v2

    if-lt v1, v2, :cond_1

    return v0

    .line 149
    :cond_1
    invoke-super {p0}, Landroid/graphics/drawable/InsetDrawable;->getIntrinsicHeight()I

    move-result v1

    mul-int v1, v1, v0

    invoke-super {p0}, Landroid/graphics/drawable/InsetDrawable;->getIntrinsicWidth()I

    move-result v0

    div-int/2addr v1, v0

    return v1

    .line 143
    :cond_2
    :goto_0
    invoke-super {p0}, Landroid/graphics/drawable/InsetDrawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 3

    .line 116
    iget v0, p0, Lus/zoom/zrc/utils/RoundDrawable;->mClientWidth:I

    if-lez v0, :cond_2

    iget v1, p0, Lus/zoom/zrc/utils/RoundDrawable;->mClientHeight:I

    if-gtz v1, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 120
    invoke-super {p0}, Landroid/graphics/drawable/InsetDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-super {p0}, Landroid/graphics/drawable/InsetDrawable;->getIntrinsicHeight()I

    move-result v2

    if-gt v1, v2, :cond_1

    return v0

    .line 123
    :cond_1
    invoke-super {p0}, Landroid/graphics/drawable/InsetDrawable;->getIntrinsicWidth()I

    move-result v1

    mul-int v1, v1, v0

    invoke-super {p0}, Landroid/graphics/drawable/InsetDrawable;->getIntrinsicHeight()I

    move-result v0

    div-int/2addr v1, v0

    return v1

    .line 117
    :cond_2
    :goto_0
    invoke-super {p0}, Landroid/graphics/drawable/InsetDrawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public setBorderColor(I)V
    .locals 0

    .line 198
    iput p1, p0, Lus/zoom/zrc/utils/RoundDrawable;->mBorderColor:I

    return-void
.end method

.method public setBorderSize(I)V
    .locals 0

    .line 95
    iput p1, p0, Lus/zoom/zrc/utils/RoundDrawable;->mBorderSize:I

    return-void
.end method

.method public setClientSize(II)Z
    .locals 2

    .line 101
    iget v0, p0, Lus/zoom/zrc/utils/RoundDrawable;->mClientWidth:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    .line 102
    iput p1, p0, Lus/zoom/zrc/utils/RoundDrawable;->mClientWidth:I

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 106
    :goto_0
    iget v0, p0, Lus/zoom/zrc/utils/RoundDrawable;->mClientHeight:I

    if-eq v0, p2, :cond_1

    .line 107
    iput p2, p0, Lus/zoom/zrc/utils/RoundDrawable;->mClientHeight:I

    const/4 p1, 0x1

    :cond_1
    return p1
.end method
