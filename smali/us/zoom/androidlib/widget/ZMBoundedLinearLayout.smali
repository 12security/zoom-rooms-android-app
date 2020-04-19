.class public Lus/zoom/androidlib/widget/ZMBoundedLinearLayout;
.super Landroid/widget/LinearLayout;
.source "ZMBoundedLinearLayout.java"


# instance fields
.field private mBoundedHeight:I

.field private mBoundedWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lus/zoom/androidlib/widget/ZMBoundedLinearLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0, p1, p2}, Lus/zoom/androidlib/widget/ZMBoundedLinearLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-direct {p0, p1, p2}, Lus/zoom/androidlib/widget/ZMBoundedLinearLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 19
    invoke-direct {p0, p1, p2}, Lus/zoom/androidlib/widget/ZMBoundedLinearLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lus/zoom/androidlib/widget/ZMBoundedLinearLayout;->mBoundedHeight:I

    .line 41
    iput v0, p0, Lus/zoom/androidlib/widget/ZMBoundedLinearLayout;->mBoundedWidth:I

    if-nez p2, :cond_0

    return-void

    .line 46
    :cond_0
    sget-object v1, Lus/zoom/androidlib/R$styleable;->ZMBoundedLinearLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 47
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMBoundedLinearLayout_zm_bounded_width:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lus/zoom/androidlib/widget/ZMBoundedLinearLayout;->mBoundedWidth:I

    .line 48
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMBoundedLinearLayout_zm_bounded_height:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lus/zoom/androidlib/widget/ZMBoundedLinearLayout;->mBoundedHeight:I

    .line 49
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .line 55
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 56
    iget v1, p0, Lus/zoom/androidlib/widget/ZMBoundedLinearLayout;->mBoundedWidth:I

    if-lez v1, :cond_0

    if-ge v1, v0, :cond_0

    .line 57
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 58
    iget v0, p0, Lus/zoom/androidlib/widget/ZMBoundedLinearLayout;->mBoundedWidth:I

    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 61
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 62
    iget v1, p0, Lus/zoom/androidlib/widget/ZMBoundedLinearLayout;->mBoundedHeight:I

    if-lez v1, :cond_1

    if-ge v1, v0, :cond_1

    .line 63
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 64
    iget v0, p0, Lus/zoom/androidlib/widget/ZMBoundedLinearLayout;->mBoundedHeight:I

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 66
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
