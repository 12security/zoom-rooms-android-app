.class public Lus/zoom/zrp/view/ZRPRoomNameView;
.super Landroid/widget/TextView;
.source "ZRPRoomNameView.java"


# static fields
.field private static final REMAINDER_WIDTH:I = 0xa


# instance fields
.field private maxTextSize:I

.field private minTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lus/zoom/zrp/view/ZRPRoomNameView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0, p1, p2}, Lus/zoom/zrp/view/ZRPRoomNameView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-direct {p0, p1, p2}, Lus/zoom/zrp/view/ZRPRoomNameView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    invoke-direct {p0, p1, p2}, Lus/zoom/zrp/view/ZRPRoomNameView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 48
    invoke-virtual {p0}, Lus/zoom/zrp/view/ZRPRoomNameView;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    if-eqz p2, :cond_0

    .line 50
    sget-object v1, Lus/zoom/zrcbox/R$styleable;->ZRPRoomNameView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 51
    sget p2, Lus/zoom/zrcbox/R$styleable;->ZRPRoomNameView_maxTextSize:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lus/zoom/zrp/view/ZRPRoomNameView;->maxTextSize:I

    .line 52
    sget p2, Lus/zoom/zrcbox/R$styleable;->ZRPRoomNameView_minTextSize:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lus/zoom/zrp/view/ZRPRoomNameView;->minTextSize:I

    .line 53
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 55
    :cond_0
    iput v0, p0, Lus/zoom/zrp/view/ZRPRoomNameView;->minTextSize:I

    .line 56
    iput v0, p0, Lus/zoom/zrp/view/ZRPRoomNameView;->maxTextSize:I

    :goto_0
    return-void
.end method


# virtual methods
.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 11

    .line 62
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Lus/zoom/zrp/view/ZRPRoomNameView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lus/zoom/zrp/view/ZRPRoomNameView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lus/zoom/zrp/view/ZRPRoomNameView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0xa

    .line 64
    iget v2, p0, Lus/zoom/zrp/view/ZRPRoomNameView;->maxTextSize:I

    .line 66
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 67
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    :cond_0
    int-to-float v5, v2

    .line 70
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v5, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 72
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-le v5, v1, :cond_1

    int-to-double v7, v2

    const-wide v9, 0x3fee666666666666L    # 0.95

    .line 73
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v9

    double-to-int v2, v7

    iget v5, p0, Lus/zoom/zrp/view/ZRPRoomNameView;->minTextSize:I

    if-gt v2, v5, :cond_0

    .line 75
    :cond_1
    iget v0, p0, Lus/zoom/zrp/view/ZRPRoomNameView;->minTextSize:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v6, v0}, Lus/zoom/zrp/view/ZRPRoomNameView;->setTextSize(IF)V

    .line 77
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method
