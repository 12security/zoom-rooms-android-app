.class public Lus/zoom/zrc/camera_control/view/widgets/ActionView;
.super Landroid/view/View;
.source "ActionView.java"


# static fields
.field private static final DEF_CIRCLE_RADIUS:F = 10.0f

.field private static final DEF_HEIGHT:I = 0x14

.field private static final DEF_SHAPE:Lus/zoom/zrc/camera_control/view/widgets/Shape;

.field private static final DEF_WIDTH:I = 0x14


# instance fields
.field private final MODE:Landroid/graphics/PorterDuffXfermode;

.field private backgroundBitmap:Landroid/graphics/Bitmap;

.field private backgroundPaint:Landroid/graphics/Paint;

.field private backgroundRectF:Landroid/graphics/RectF;

.field private backgroundShader:Landroid/graphics/Shader;

.field private eventMap:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Lus/zoom/zrc/camera_control/model/Executable;",
            ">;"
        }
    .end annotation
.end field

.field private height:I

.field private iconBitmap:Landroid/graphics/Bitmap;

.field private iconPaint:Landroid/graphics/Paint;

.field private iconRect:Landroid/graphics/Rect;

.field private iconShader:Landroid/graphics/Shader;

.field private mRadius:F

.field private mRoundRectRadius:F

.field private mShape:Lus/zoom/zrc/camera_control/view/widgets/Shape;

.field private scaleMatrix:Landroid/graphics/Matrix;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    sget-object v0, Lus/zoom/zrc/camera_control/view/widgets/Shape;->CIRCLE:Lus/zoom/zrc/camera_control/view/widgets/Shape;

    sput-object v0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->DEF_SHAPE:Lus/zoom/zrc/camera_control/view/widgets/Shape;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/camera_control/view/widgets/ActionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, v0}, Lus/zoom/zrc/camera_control/view/widgets/ActionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->width:I

    .line 44
    iput v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->height:I

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->mRadius:F

    iput v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->mRoundRectRadius:F

    .line 67
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->MODE:Landroid/graphics/PorterDuffXfermode;

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/camera_control/view/widgets/ActionView;)Landroid/graphics/RectF;
    .locals 0

    .line 36
    iget-object p0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->backgroundRectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method private adjustRoundRectRadius(I)V
    .locals 3

    .line 213
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->mShape:Lus/zoom/zrc/camera_control/view/widgets/Shape;

    sget-object v1, Lus/zoom/zrc/camera_control/view/widgets/Shape;->CIRCLE:Lus/zoom/zrc/camera_control/view/widgets/Shape;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->mShape:Lus/zoom/zrc/camera_control/view/widgets/Shape;

    sget-object v1, Lus/zoom/zrc/camera_control/view/widgets/Shape;->ROUND_RECT:Lus/zoom/zrc/camera_control/view/widgets/Shape;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 217
    :cond_0
    iput v2, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->mRoundRectRadius:F

    goto :goto_1

    .line 214
    :cond_1
    :goto_0
    iget v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->mRoundRectRadius:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    int-to-float p1, p1

    .line 215
    iput p1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->mRoundRectRadius:F

    :cond_2
    :goto_1
    return-void
.end method

.method private calculateRadius(FF)V
    .locals 0

    .line 238
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->mRadius:F

    return-void
.end method

.method static convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 400
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 401
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 404
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 405
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 404
    :goto_0
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 406
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 407
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 408
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method static dp2px(Landroid/content/Context;F)I
    .locals 0

    .line 395
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lus/zoom/zrc/camera_control/view/widgets/Shape;Landroid/graphics/RectF;)V
    .locals 1

    .line 242
    sget-object v0, Lus/zoom/zrc/camera_control/view/widgets/ActionView$2;->$SwitchMap$us$zoom$zrc$camera_control$view$widgets$Shape:[I

    invoke-virtual {p3}, Lus/zoom/zrc/camera_control/view/widgets/Shape;->ordinal()I

    move-result p3

    aget p3, v0, p3

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 258
    :pswitch_0
    iget p3, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->mRoundRectRadius:F

    invoke-virtual {p1, p4, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 253
    :pswitch_1
    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result p3

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-direct {p0, p3, v0}, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->calculateRadius(FF)V

    .line 254
    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result p3

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result p4

    iget v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->mRadius:F

    invoke-virtual {p1, p3, p4, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 248
    :pswitch_2
    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result p3

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result p4

    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 249
    new-instance p4, Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-direct {p4, v0, v0, p3, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 244
    :pswitch_3
    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDefaultBackground()Landroid/graphics/Bitmap;
    .locals 3

    .line 267
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 268
    new-instance v1, Lus/zoom/zrc/camera_control/view/widgets/ActionView$1;

    invoke-direct {v1, p0}, Lus/zoom/zrc/camera_control/view/widgets/ActionView$1;-><init>(Lus/zoom/zrc/camera_control/view/widgets/ActionView;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 274
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->dp2px(Landroid/content/Context;F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 275
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->dp2px(Landroid/content/Context;F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 276
    invoke-static {v0}, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getShape(I)Lus/zoom/zrc/camera_control/view/widgets/Shape;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 233
    sget-object p1, Lus/zoom/zrc/camera_control/view/widgets/Shape;->RECT:Lus/zoom/zrc/camera_control/view/widgets/Shape;

    return-object p1

    .line 231
    :pswitch_0
    sget-object p1, Lus/zoom/zrc/camera_control/view/widgets/Shape;->ROUND_RECT:Lus/zoom/zrc/camera_control/view/widgets/Shape;

    return-object p1

    .line 229
    :pswitch_1
    sget-object p1, Lus/zoom/zrc/camera_control/view/widgets/Shape;->CIRCLE:Lus/zoom/zrc/camera_control/view/widgets/Shape;

    return-object p1

    .line 227
    :pswitch_2
    sget-object p1, Lus/zoom/zrc/camera_control/view/widgets/Shape;->SQUARE:Lus/zoom/zrc/camera_control/view/widgets/Shape;

    return-object p1

    .line 225
    :pswitch_3
    sget-object p1, Lus/zoom/zrc/camera_control/view/widgets/Shape;->RECT:Lus/zoom/zrc/camera_control/view/widgets/Shape;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lus/zoom/zrcbox/R$styleable;->ActionButtonAttrs:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 84
    sget p2, Lus/zoom/zrcbox/R$styleable;->ActionButtonAttrs_shape:I

    sget-object p3, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->DEF_SHAPE:Lus/zoom/zrc/camera_control/view/widgets/Shape;

    invoke-virtual {p3}, Lus/zoom/zrc/camera_control/view/widgets/Shape;->getShapeInt()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    invoke-direct {p0, p2}, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->getShape(I)Lus/zoom/zrc/camera_control/view/widgets/Shape;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->mShape:Lus/zoom/zrc/camera_control/view/widgets/Shape;

    .line 85
    sget p2, Lus/zoom/zrcbox/R$styleable;->ActionButtonAttrs_round_rec_radius:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->mRoundRectRadius:F

    .line 86
    sget p2, Lus/zoom/zrcbox/R$styleable;->ActionButtonAttrs_icon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 87
    sget p3, Lus/zoom/zrcbox/R$styleable;->ActionButtonAttrs_background:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 89
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->backgroundPaint:Landroid/graphics/Paint;

    .line 92
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 93
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 95
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->iconPaint:Landroid/graphics/Paint;

    .line 96
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->iconPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 97
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->iconPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    if-eqz p2, :cond_0

    .line 100
    invoke-static {p2}, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->iconBitmap:Landroid/graphics/Bitmap;

    .line 101
    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object p2, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->iconBitmap:Landroid/graphics/Bitmap;

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, p2, v0, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->iconShader:Landroid/graphics/Shader;

    :cond_0
    if-eqz p3, :cond_1

    .line 105
    invoke-static {p3}, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 106
    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object p2, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->backgroundBitmap:Landroid/graphics/Bitmap;

    sget-object p3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, p2, p3, v0}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->backgroundShader:Landroid/graphics/Shader;

    .line 114
    :cond_1
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->backgroundRectF:Landroid/graphics/RectF;

    .line 115
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->iconRect:Landroid/graphics/Rect;

    .line 116
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->scaleMatrix:Landroid/graphics/Matrix;

    .line 119
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->eventMap:Landroidx/collection/ArrayMap;

    return-void
.end method

.method static px2dp(Landroid/content/Context;F)I
    .locals 0

    .line 390
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method


# virtual methods
.method public final attachEventWithTag(Ljava/lang/String;Lus/zoom/zrc/camera_control/model/Executable;)V
    .locals 1

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 346
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->eventMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->eventMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p2}, Landroidx/collection/ArrayMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 349
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->eventMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public final findEventWithTag(Ljava/lang/String;)Lus/zoom/zrc/camera_control/model/Executable;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 362
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->eventMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/camera_control/model/Executable;

    return-object p1
.end method

.method public getBackgroundBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 333
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->backgroundBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getEvents()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lus/zoom/zrc/camera_control/model/Executable;",
            ">;"
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->eventMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    .line 309
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->iconBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRadius()F
    .locals 1

    .line 292
    iget v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->mRadius:F

    return v0
.end method

.method public getShape()Lus/zoom/zrc/camera_control/view/widgets/Shape;
    .locals 1

    .line 284
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->mShape:Lus/zoom/zrc/camera_control/view/widgets/Shape;

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 376
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 378
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->backgroundBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 380
    iput-object v1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 383
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->iconBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 384
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 385
    iput-object v1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->iconBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 167
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 169
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->backgroundBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->backgroundRectF:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->backgroundRectF:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->backgroundRectF:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->backgroundRectF:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 173
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->backgroundRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 175
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 176
    iget-object v1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 179
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->width:I

    iget v4, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->height:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-le v2, v3, :cond_1

    .line 181
    iget v2, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->width:I

    iget v3, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->height:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float v0, v2, v0

    goto :goto_0

    .line 182
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->width:I

    iget v5, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->height:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 184
    iget v2, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->width:I

    iget v3, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->height:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    div-float v0, v2, v0

    goto :goto_0

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 187
    :goto_0
    iget-object v1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->scaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 188
    iget-object v1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->scaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 189
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->backgroundShader:Landroid/graphics/Shader;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->scaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 190
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->backgroundShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 191
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->mShape:Lus/zoom/zrc/camera_control/view/widgets/Shape;

    iget-object v2, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->backgroundRectF:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v0, v1, v2}, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lus/zoom/zrc/camera_control/view/widgets/Shape;Landroid/graphics/RectF;)V

    .line 194
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->iconBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 195
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 196
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-le v0, v1, :cond_3

    .line 198
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->scaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 199
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v4

    iget-object v1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 200
    iget-object v1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->scaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 201
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->iconShader:Landroid/graphics/Shader;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->scaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 205
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->iconPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->iconShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 206
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->iconPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->MODE:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 208
    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->iconBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->iconRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->iconPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 209
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 124
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 125
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 126
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 127
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    const/16 v4, 0x14

    if-ne p1, v3, :cond_0

    .line 130
    iput v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->width:I

    goto :goto_1

    :cond_0
    if-ne p1, v2, :cond_3

    .line 132
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->backgroundBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_1

    const/16 v0, 0x14

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    if-lt p1, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    :goto_0
    iput v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->width:I

    goto :goto_1

    .line 134
    :cond_3
    iput v4, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->width:I

    :goto_1
    if-ne p2, v3, :cond_4

    .line 138
    iput v1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->height:I

    goto :goto_3

    :cond_4
    if-ne p2, v2, :cond_7

    .line 140
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->backgroundBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_5

    const/16 v1, 0x14

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-lt p1, v1, :cond_6

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    :goto_2
    iput v1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->height:I

    goto :goto_3

    .line 142
    :cond_7
    iput v4, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->height:I

    .line 146
    :goto_3
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->backgroundRectF:Landroid/graphics/RectF;

    iget p2, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->width:I

    int-to-float p2, p2

    iget v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->height:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 148
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->iconBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_8

    .line 149
    iget-object p1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->iconRect:Landroid/graphics/Rect;

    iget-object p2, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->backgroundRectF:Landroid/graphics/RectF;

    .line 150
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    float-to-int p2, p2

    iget-object v0, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->backgroundRectF:Landroid/graphics/RectF;

    .line 151
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget-object v1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->backgroundRectF:Landroid/graphics/RectF;

    .line 152
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->backgroundRectF:Landroid/graphics/RectF;

    .line 153
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 149
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 156
    :cond_8
    iget p1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->width:I

    iget p2, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->height:I

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 161
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 162
    iget-object p3, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->backgroundRectF:Landroid/graphics/RectF;

    new-instance p4, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v0, 0x0

    invoke-direct {p4, v0, v0, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p3, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setBackground(I)V
    .locals 1

    .line 329
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackground(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 324
    iput-object p1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 325
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->postInvalidate()V

    return-void

    .line 322
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Background can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 316
    invoke-static {p1}, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 317
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->postInvalidate()V

    return-void

    .line 314
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Background can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIcon(I)V
    .locals 1

    .line 305
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 300
    :cond_0
    invoke-static {p1}, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->iconBitmap:Landroid/graphics/Bitmap;

    .line 301
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->postInvalidate()V

    return-void
.end method

.method public setRadius(F)V
    .locals 1

    .line 288
    invoke-virtual {p0}, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->mRadius:F

    return-void
.end method

.method public setShape(Lus/zoom/zrc/camera_control/view/widgets/Shape;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lus/zoom/zrc/camera_control/view/widgets/ActionView;->mShape:Lus/zoom/zrc/camera_control/view/widgets/Shape;

    return-void
.end method
