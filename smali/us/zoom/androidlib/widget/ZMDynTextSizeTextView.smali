.class public Lus/zoom/androidlib/widget/ZMDynTextSizeTextView;
.super Landroid/widget/TextView;
.source "ZMDynTextSizeTextView.java"


# instance fields
.field private mMaxReduce:I

.field private mMaxTextSize:F

.field private mSetTextSizeCalledFromOnMeasure:Z

.field private mTextSizeUnit:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lus/zoom/androidlib/widget/ZMDynTextSizeTextView;->mMaxTextSize:F

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lus/zoom/androidlib/widget/ZMDynTextSizeTextView;->mTextSizeUnit:I

    .line 12
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/ZMDynTextSizeTextView;->mSetTextSizeCalledFromOnMeasure:Z

    const/16 v0, 0xc

    .line 13
    iput v0, p0, Lus/zoom/androidlib/widget/ZMDynTextSizeTextView;->mMaxReduce:I

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lus/zoom/androidlib/widget/ZMDynTextSizeTextView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lus/zoom/androidlib/widget/ZMDynTextSizeTextView;->mMaxTextSize:F

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lus/zoom/androidlib/widget/ZMDynTextSizeTextView;->mTextSizeUnit:I

    .line 12
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/ZMDynTextSizeTextView;->mSetTextSizeCalledFromOnMeasure:Z

    const/16 v0, 0xc

    .line 13
    iput v0, p0, Lus/zoom/androidlib/widget/ZMDynTextSizeTextView;->mMaxReduce:I

    .line 22
    invoke-direct {p0, p1, p2}, Lus/zoom/androidlib/widget/ZMDynTextSizeTextView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 10
    iput p3, p0, Lus/zoom/androidlib/widget/ZMDynTextSizeTextView;->mMaxTextSize:F

    const/4 p3, 0x0

    .line 11
    iput p3, p0, Lus/zoom/androidlib/widget/ZMDynTextSizeTextView;->mTextSizeUnit:I

    .line 12
    iput-boolean p3, p0, Lus/zoom/androidlib/widget/ZMDynTextSizeTextView;->mSetTextSizeCalledFromOnMeasure:Z

    const/16 p3, 0xc

    .line 13
    iput p3, p0, Lus/zoom/androidlib/widget/ZMDynTextSizeTextView;->mMaxReduce:I

    .line 17
    invoke-direct {p0, p1, p2}, Lus/zoom/androidlib/widget/ZMDynTextSizeTextView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 31
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMDynTextSizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lus/zoom/androidlib/widget/ZMDynTextSizeTextView;->mMaxTextSize:F

    if-eqz p2, :cond_0

    .line 34
    sget-object v0, Lus/zoom/androidlib/R$styleable;->ZMDynTextSizeTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 37
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMDynTextSizeTextView_zm_maxReduce:I

    iget v0, p0, Lus/zoom/androidlib/widget/ZMDynTextSizeTextView;->mMaxReduce:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lus/zoom/androidlib/widget/ZMDynTextSizeTextView;->mMaxReduce:I

    .line 38
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6

    .line 55
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, -0x80000000

    const v2, 0x186a0

    .line 56
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/16 v3, 0xa

    .line 57
    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 59
    iget v3, p0, Lus/zoom/androidlib/widget/ZMDynTextSizeTextView;->mMaxTextSize:F

    :goto_0
    const/4 v4, 0x1

    .line 62
    iput-boolean v4, p0, Lus/zoom/androidlib/widget/ZMDynTextSizeTextView;->mSetTextSizeCalledFromOnMeasure:Z

    .line 63
    iget v4, p0, Lus/zoom/androidlib/widget/ZMDynTextSizeTextView;->mTextSizeUnit:I

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v5, v3, v5

    invoke-virtual {p0, v4, v3}, Lus/zoom/androidlib/widget/ZMDynTextSizeTextView;->setTextSize(IF)V

    const/4 v3, 0x0

    .line 64
    iput-boolean v3, p0, Lus/zoom/androidlib/widget/ZMDynTextSizeTextView;->mSetTextSizeCalledFromOnMeasure:Z

    .line 65
    invoke-super {p0, v2, v1}, Landroid/widget/TextView;->onMeasure(II)V

    .line 66
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMDynTextSizeTextView;->getMeasuredWidth()I

    move-result v3

    if-le v3, v0, :cond_1

    .line 67
    iget v3, p0, Lus/zoom/androidlib/widget/ZMDynTextSizeTextView;->mMaxTextSize:F

    sub-float/2addr v3, v5

    iget v4, p0, Lus/zoom/androidlib/widget/ZMDynTextSizeTextView;->mMaxReduce:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    goto :goto_1

    :cond_0
    move v3, v5

    goto :goto_0

    .line 69
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    .line 45
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 47
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/ZMDynTextSizeTextView;->mSetTextSizeCalledFromOnMeasure:Z

    if-nez v0, :cond_0

    .line 48
    iput p1, p0, Lus/zoom/androidlib/widget/ZMDynTextSizeTextView;->mTextSizeUnit:I

    .line 49
    iput p2, p0, Lus/zoom/androidlib/widget/ZMDynTextSizeTextView;->mMaxTextSize:F

    :cond_0
    return-void
.end method
