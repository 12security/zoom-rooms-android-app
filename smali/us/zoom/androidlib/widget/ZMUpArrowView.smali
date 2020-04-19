.class public Lus/zoom/androidlib/widget/ZMUpArrowView;
.super Landroid/view/View;
.source "ZMUpArrowView.java"


# instance fields
.field private mArrowWidth:I

.field private mDividerHeight:I

.field private mLeftDelta:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/widget/ZMUpArrowView;->mPath:Landroid/graphics/Path;

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/widget/ZMUpArrowView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lus/zoom/androidlib/widget/ZMUpArrowView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/widget/ZMUpArrowView;->mPath:Landroid/graphics/Path;

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/widget/ZMUpArrowView;->mPaint:Landroid/graphics/Paint;

    .line 32
    invoke-direct {p0, p1, p2}, Lus/zoom/androidlib/widget/ZMUpArrowView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lus/zoom/androidlib/widget/ZMUpArrowView;->mPath:Landroid/graphics/Path;

    .line 21
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lus/zoom/androidlib/widget/ZMUpArrowView;->mPaint:Landroid/graphics/Paint;

    .line 37
    invoke-direct {p0, p1, p2}, Lus/zoom/androidlib/widget/ZMUpArrowView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 40
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMUpArrowView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/androidlib/R$color;->zm_listview_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 41
    invoke-static {p1, v1}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lus/zoom/androidlib/widget/ZMUpArrowView;->mDividerHeight:I

    const/high16 v1, 0x41400000    # 12.0f

    .line 42
    invoke-static {p1, v1}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lus/zoom/androidlib/widget/ZMUpArrowView;->mArrowWidth:I

    const/high16 v1, 0x41c00000    # 24.0f

    .line 43
    invoke-static {p1, v1}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lus/zoom/androidlib/widget/ZMUpArrowView;->mLeftDelta:I

    if-eqz p2, :cond_0

    .line 45
    sget-object v1, Lus/zoom/androidlib/R$styleable;->ZMUpArrowView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 46
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMUpArrowView_zm_up_arrow_divider_color:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 47
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMUpArrowView_zm_up_arrow_divider_height:I

    iget v1, p0, Lus/zoom/androidlib/widget/ZMUpArrowView;->mDividerHeight:I

    int-to-float v1, v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lus/zoom/androidlib/widget/ZMUpArrowView;->mDividerHeight:I

    .line 48
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMUpArrowView_zm_up_arrow_width:I

    iget v1, p0, Lus/zoom/androidlib/widget/ZMUpArrowView;->mArrowWidth:I

    int-to-float v1, v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lus/zoom/androidlib/widget/ZMUpArrowView;->mArrowWidth:I

    .line 49
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMUpArrowView_zm_up_arrow_left_delta:I

    iget v1, p0, Lus/zoom/androidlib/widget/ZMUpArrowView;->mLeftDelta:I

    int-to-float v1, v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lus/zoom/androidlib/widget/ZMUpArrowView;->mLeftDelta:I

    .line 50
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    :cond_0
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMUpArrowView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMUpArrowView;->mPaint:Landroid/graphics/Paint;

    iget p2, p0, Lus/zoom/androidlib/widget/ZMUpArrowView;->mDividerHeight:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMUpArrowView;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 60
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 61
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMUpArrowView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 62
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMUpArrowView;->getWidth()I

    move-result v0

    .line 63
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMUpArrowView;->getHeight()I

    move-result v1

    iget v2, p0, Lus/zoom/androidlib/widget/ZMUpArrowView;->mDividerHeight:I

    sub-int/2addr v1, v2

    .line 64
    iget-object v2, p0, Lus/zoom/androidlib/widget/ZMUpArrowView;->mPath:Landroid/graphics/Path;

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 65
    iget-object v2, p0, Lus/zoom/androidlib/widget/ZMUpArrowView;->mPath:Landroid/graphics/Path;

    iget v4, p0, Lus/zoom/androidlib/widget/ZMUpArrowView;->mLeftDelta:I

    iget v5, p0, Lus/zoom/androidlib/widget/ZMUpArrowView;->mArrowWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 66
    iget-object v2, p0, Lus/zoom/androidlib/widget/ZMUpArrowView;->mPath:Landroid/graphics/Path;

    iget v4, p0, Lus/zoom/androidlib/widget/ZMUpArrowView;->mLeftDelta:I

    int-to-float v4, v4

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 67
    iget-object v2, p0, Lus/zoom/androidlib/widget/ZMUpArrowView;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lus/zoom/androidlib/widget/ZMUpArrowView;->mLeftDelta:I

    iget v4, p0, Lus/zoom/androidlib/widget/ZMUpArrowView;->mArrowWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 68
    iget-object v2, p0, Lus/zoom/androidlib/widget/ZMUpArrowView;->mPath:Landroid/graphics/Path;

    int-to-float v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 69
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMUpArrowView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lus/zoom/androidlib/widget/ZMUpArrowView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setmLeftDelta(I)V
    .locals 0

    .line 72
    iput p1, p0, Lus/zoom/androidlib/widget/ZMUpArrowView;->mLeftDelta:I

    .line 73
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMUpArrowView;->postInvalidate()V

    return-void
.end method
