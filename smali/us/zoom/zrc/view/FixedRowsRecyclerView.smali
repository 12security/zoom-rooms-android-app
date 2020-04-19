.class public Lus/zoom/zrc/view/FixedRowsRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "FixedRowsRecyclerView.java"


# instance fields
.field private dividerColor:I

.field private dividerHeight:F

.field private maxHeight:I

.field private maxRows:I

.field private measuredRowHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lus/zoom/zrc/view/FixedRowsRecyclerView;->maxRows:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 28
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lus/zoom/zrc/view/FixedRowsRecyclerView;->maxRows:I

    .line 29
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/view/FixedRowsRecyclerView;->getAttribute(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 17
    iput p3, p0, Lus/zoom/zrc/view/FixedRowsRecyclerView;->maxRows:I

    .line 34
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/view/FixedRowsRecyclerView;->getAttribute(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getAttribute(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 38
    sget-object v0, Lus/zoom/zrcbox/R$styleable;->FixedRowsRecyclerView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 39
    sget p2, Lus/zoom/zrcbox/R$styleable;->FixedRowsRecyclerView_maxRows:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lus/zoom/zrc/view/FixedRowsRecyclerView;->maxRows:I

    .line 40
    sget p2, Lus/zoom/zrcbox/R$styleable;->FixedRowsRecyclerView_dividerHeight:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lus/zoom/zrc/view/FixedRowsRecyclerView;->dividerHeight:F

    .line 41
    sget p2, Lus/zoom/zrcbox/R$styleable;->FixedRowsRecyclerView_dividerColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lus/zoom/zrc/view/FixedRowsRecyclerView;->dividerColor:I

    .line 42
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private safeMeasureItemHeight(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 73
    invoke-virtual {p0}, Lus/zoom/zrc/view/FixedRowsRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    :cond_0
    if-nez p2, :cond_1

    .line 74
    invoke-virtual {p0}, Lus/zoom/zrc/view/FixedRowsRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 75
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    if-gtz p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 77
    invoke-virtual {p1, p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 78
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v0, v1, p2}, Landroid/view/View;->measure(II)V

    .line 79
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lus/zoom/zrc/view/FixedRowsRecyclerView;->measuredRowHeight:I

    return-void

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public getDividerColor()I
    .locals 1

    .line 50
    iget v0, p0, Lus/zoom/zrc/view/FixedRowsRecyclerView;->dividerColor:I

    return v0
.end method

.method public getDividerHeight()I
    .locals 1

    .line 46
    iget v0, p0, Lus/zoom/zrc/view/FixedRowsRecyclerView;->dividerHeight:F

    float-to-int v0, v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 84
    iget v0, p0, Lus/zoom/zrc/view/FixedRowsRecyclerView;->measuredRowHeight:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lus/zoom/zrc/view/FixedRowsRecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/FixedRowsRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 86
    invoke-virtual {p0, v0, p1, p2}, Lus/zoom/zrc/view/FixedRowsRecyclerView;->measureChild(Landroid/view/View;II)V

    .line 87
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lus/zoom/zrc/view/FixedRowsRecyclerView;->measuredRowHeight:I

    .line 90
    :cond_0
    iget v0, p0, Lus/zoom/zrc/view/FixedRowsRecyclerView;->measuredRowHeight:I

    if-lez v0, :cond_1

    iget v1, p0, Lus/zoom/zrc/view/FixedRowsRecyclerView;->maxRows:I

    if-lez v1, :cond_1

    mul-int v0, v0, v1

    .line 91
    iget v2, p0, Lus/zoom/zrc/view/FixedRowsRecyclerView;->dividerHeight:F

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float v2, v2, v1

    float-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lus/zoom/zrc/view/FixedRowsRecyclerView;->maxHeight:I

    .line 93
    :cond_1
    iget v0, p0, Lus/zoom/zrc/view/FixedRowsRecyclerView;->maxHeight:I

    if-lez v0, :cond_2

    const/high16 p2, -0x80000000

    .line 94
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 96
    :cond_2
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onMeasure(II)V

    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 62
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/view/FixedRowsRecyclerView;->safeMeasureItemHeight(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 68
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, v0, p1}, Lus/zoom/zrc/view/FixedRowsRecyclerView;->safeMeasureItemHeight(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public setMaxRows(I)V
    .locals 1

    .line 54
    iget v0, p0, Lus/zoom/zrc/view/FixedRowsRecyclerView;->maxRows:I

    if-eq p1, v0, :cond_0

    .line 55
    iput p1, p0, Lus/zoom/zrc/view/FixedRowsRecyclerView;->maxRows:I

    .line 56
    invoke-virtual {p0}, Lus/zoom/zrc/view/FixedRowsRecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method
