.class public Lus/zoom/androidlib/widget/ZMMenuListView;
.super Landroid/widget/ListView;
.source "ZMMenuListView.java"


# instance fields
.field private mAutoComputeWidth:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/ZMMenuListView;->mAutoComputeWidth:Z

    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, p1, v1, v0}, Lus/zoom/androidlib/widget/ZMMenuListView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/ZMMenuListView;->mAutoComputeWidth:Z

    .line 21
    invoke-direct {p0, p1, p2, v0}, Lus/zoom/androidlib/widget/ZMMenuListView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/ZMMenuListView;->mAutoComputeWidth:Z

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/androidlib/widget/ZMMenuListView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getMaxWidthOfChildren()I
    .locals 6

    .line 54
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 56
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5, v2, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 57
    invoke-virtual {v4, v1, v1}, Landroid/view/View;->measure(II)V

    .line 58
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-le v5, v3, :cond_0

    .line 59
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    sget-object p3, Lus/zoom/androidlib/R$styleable;->ZMMenuListView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 45
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMMenuListView_zm_auto_compute_width:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lus/zoom/androidlib/widget/ZMMenuListView;->mAutoComputeWidth:Z

    .line 46
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 31
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/ZMMenuListView;->mAutoComputeWidth:Z

    if-nez v0, :cond_0

    .line 32
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    goto :goto_0

    .line 34
    :cond_0
    invoke-direct {p0}, Lus/zoom/androidlib/widget/ZMMenuListView;->getMaxWidthOfChildren()I

    move-result p1

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMMenuListView;->getPaddingLeft()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMMenuListView;->getPaddingRight()I

    move-result v0

    add-int/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    .line 35
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    :goto_0
    return-void
.end method
