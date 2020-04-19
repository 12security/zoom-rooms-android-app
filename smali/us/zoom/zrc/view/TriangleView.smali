.class public Lus/zoom/zrc/view/TriangleView;
.super Landroid/view/View;
.source "TriangleView.java"


# static fields
.field public static final DEFAULT_COLOR:I

.field public static final DIRECTION_DOWN:I = 0x3

.field public static final DIRECTION_LETF:I = 0x0

.field public static final DIRECTION_RIGHT:I = 0x2

.field public static final DIRECTION_UP:I = 0x1


# instance fields
.field private borderColor:I

.field private borderWidth:I

.field private color:I

.field private direction:I

.field private mBorder:Landroid/graphics/Paint;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mRect:Landroid/graphics/RectF;

.field private ratio:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#ffffff"

    .line 25
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lus/zoom/zrc/view/TriangleView;->DEFAULT_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/view/TriangleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lus/zoom/zrc/view/TriangleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 35
    iput v0, p0, Lus/zoom/zrc/view/TriangleView;->ratio:F

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/TriangleView;->setWillNotDraw(Z)V

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrc/view/TriangleView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p4, 0x7f7fffff    # Float.MAX_VALUE

    .line 35
    iput p4, p0, Lus/zoom/zrc/view/TriangleView;->ratio:F

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrc/view/TriangleView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 61
    sget-object v0, Lus/zoom/zrcbox/R$styleable;->TriangleView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 62
    sget p2, Lus/zoom/zrcbox/R$styleable;->TriangleView_TriangleViewColor:I

    sget p3, Lus/zoom/zrc/view/TriangleView;->DEFAULT_COLOR:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lus/zoom/zrc/view/TriangleView;->color:I

    .line 63
    sget p2, Lus/zoom/zrcbox/R$styleable;->TriangleView_TriangleViewBorderColor:I

    sget p3, Lus/zoom/zrc/view/TriangleView;->DEFAULT_COLOR:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lus/zoom/zrc/view/TriangleView;->borderColor:I

    .line 64
    sget p2, Lus/zoom/zrcbox/R$styleable;->TriangleView_TriangleViewBorderWidth:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lus/zoom/zrc/view/TriangleView;->borderWidth:I

    .line 65
    sget p2, Lus/zoom/zrcbox/R$styleable;->TriangleView_TriangleViewRatio:I

    const p3, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lus/zoom/zrc/view/TriangleView;->ratio:F

    .line 66
    sget p2, Lus/zoom/zrcbox/R$styleable;->TriangleView_TriangleViewDirection:I

    const/4 p3, 0x3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lus/zoom/zrc/view/TriangleView;->direction:I

    .line 67
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lus/zoom/zrc/view/TriangleView;->mPaint:Landroid/graphics/Paint;

    .line 69
    iget-object p1, p0, Lus/zoom/zrc/view/TriangleView;->mPaint:Landroid/graphics/Paint;

    iget p3, p0, Lus/zoom/zrc/view/TriangleView;->color:I

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    iget-object p1, p0, Lus/zoom/zrc/view/TriangleView;->mPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/view/TriangleView;->mPath:Landroid/graphics/Path;

    .line 72
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lus/zoom/zrc/view/TriangleView;->mBorder:Landroid/graphics/Paint;

    .line 73
    iget-object p1, p0, Lus/zoom/zrc/view/TriangleView;->mBorder:Landroid/graphics/Paint;

    iget p2, p0, Lus/zoom/zrc/view/TriangleView;->borderColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    iget-object p1, p0, Lus/zoom/zrc/view/TriangleView;->mBorder:Landroid/graphics/Paint;

    iget p2, p0, Lus/zoom/zrc/view/TriangleView;->borderWidth:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 75
    iget-object p1, p0, Lus/zoom/zrc/view/TriangleView;->mBorder:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 95
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 96
    iget-object v0, p0, Lus/zoom/zrc/view/TriangleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 97
    iget v0, p0, Lus/zoom/zrc/view/TriangleView;->direction:I

    const/high16 v1, 0x40000000    # 2.0f

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 99
    :pswitch_0
    iget-object v0, p0, Lus/zoom/zrc/view/TriangleView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lus/zoom/zrc/view/TriangleView;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lus/zoom/zrc/view/TriangleView;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 100
    iget-object v0, p0, Lus/zoom/zrc/view/TriangleView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lus/zoom/zrc/view/TriangleView;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lus/zoom/zrc/view/TriangleView;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 101
    iget-object v0, p0, Lus/zoom/zrc/view/TriangleView;->mRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lus/zoom/zrc/view/TriangleView;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v2

    div-float/2addr v0, v1

    .line 102
    iget-object v1, p0, Lus/zoom/zrc/view/TriangleView;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 103
    iget-object v2, p0, Lus/zoom/zrc/view/TriangleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 104
    iget-object v0, p0, Lus/zoom/zrc/view/TriangleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto/16 :goto_0

    .line 115
    :pswitch_1
    iget-object v0, p0, Lus/zoom/zrc/view/TriangleView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lus/zoom/zrc/view/TriangleView;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lus/zoom/zrc/view/TriangleView;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 116
    iget-object v0, p0, Lus/zoom/zrc/view/TriangleView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lus/zoom/zrc/view/TriangleView;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lus/zoom/zrc/view/TriangleView;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 117
    iget-object v0, p0, Lus/zoom/zrc/view/TriangleView;->mRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 118
    iget-object v2, p0, Lus/zoom/zrc/view/TriangleView;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lus/zoom/zrc/view/TriangleView;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v3

    div-float/2addr v2, v1

    .line 119
    iget-object v1, p0, Lus/zoom/zrc/view/TriangleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 120
    iget-object v0, p0, Lus/zoom/zrc/view/TriangleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto :goto_0

    .line 123
    :pswitch_2
    iget-object v0, p0, Lus/zoom/zrc/view/TriangleView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lus/zoom/zrc/view/TriangleView;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lus/zoom/zrc/view/TriangleView;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 124
    iget-object v0, p0, Lus/zoom/zrc/view/TriangleView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lus/zoom/zrc/view/TriangleView;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lus/zoom/zrc/view/TriangleView;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 125
    iget-object v0, p0, Lus/zoom/zrc/view/TriangleView;->mRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lus/zoom/zrc/view/TriangleView;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v2

    div-float/2addr v0, v1

    .line 126
    iget-object v1, p0, Lus/zoom/zrc/view/TriangleView;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 127
    iget-object v2, p0, Lus/zoom/zrc/view/TriangleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 128
    iget-object v0, p0, Lus/zoom/zrc/view/TriangleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto :goto_0

    .line 107
    :pswitch_3
    iget-object v0, p0, Lus/zoom/zrc/view/TriangleView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lus/zoom/zrc/view/TriangleView;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lus/zoom/zrc/view/TriangleView;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 108
    iget-object v0, p0, Lus/zoom/zrc/view/TriangleView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lus/zoom/zrc/view/TriangleView;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lus/zoom/zrc/view/TriangleView;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 109
    iget-object v0, p0, Lus/zoom/zrc/view/TriangleView;->mRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 110
    iget-object v2, p0, Lus/zoom/zrc/view/TriangleView;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lus/zoom/zrc/view/TriangleView;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v3

    div-float/2addr v2, v1

    .line 111
    iget-object v1, p0, Lus/zoom/zrc/view/TriangleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 112
    iget-object v0, p0, Lus/zoom/zrc/view/TriangleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 131
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/view/TriangleView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lus/zoom/zrc/view/TriangleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 132
    iget-object v0, p0, Lus/zoom/zrc/view/TriangleView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lus/zoom/zrc/view/TriangleView;->mBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 81
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 82
    invoke-virtual {p0}, Lus/zoom/zrc/view/TriangleView;->getPaddingLeft()I

    move-result p4

    iput p4, p3, Landroid/graphics/Rect;->left:I

    .line 83
    invoke-virtual {p0}, Lus/zoom/zrc/view/TriangleView;->getPaddingTop()I

    move-result p4

    iput p4, p3, Landroid/graphics/Rect;->top:I

    .line 85
    iget p4, p0, Lus/zoom/zrc/view/TriangleView;->ratio:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, p4, v0

    if-eqz v0, :cond_0

    int-to-float p1, p2

    mul-float p1, p1, p4

    float-to-int p1, p1

    .line 88
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/TriangleView;->getPaddingRight()I

    move-result p4

    sub-int/2addr p1, p4

    iput p1, p3, Landroid/graphics/Rect;->right:I

    .line 89
    invoke-virtual {p0}, Lus/zoom/zrc/view/TriangleView;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p2, p1

    iput p2, p3, Landroid/graphics/Rect;->bottom:I

    .line 90
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lus/zoom/zrc/view/TriangleView;->mRect:Landroid/graphics/RectF;

    return-void
.end method
