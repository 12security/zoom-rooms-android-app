.class public Lus/zoom/zrc/control_system/ControlSystemRow;
.super Landroid/view/ViewGroup;
.source "ControlSystemRow.java"


# instance fields
.field private leftGap:I

.field private leftViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private newRowHeight:I

.field private paraLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private rightGap:I

.field private rightViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private rowHeight:I

.field private rowPaddingHor:I

.field private rowWidth:I

.field private sizeChange:I

.field private textParamMinWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0, p1}, Lus/zoom/zrc/control_system/ControlSystemRow;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0, p1}, Lus/zoom/zrc/control_system/ControlSystemRow;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0, p1}, Lus/zoom/zrc/control_system/ControlSystemRow;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->leftViews:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->rightViews:Ljava/util/List;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$dimen;->zrcs_param_size_change:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->sizeChange:I

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->paraLines:Ljava/util/List;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$dimen;->zrcs_text_param_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->textParamMinWidth:I

    .line 52
    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemRow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$dimen;->zrcs_row_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->rowHeight:I

    .line 53
    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemRow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$dimen;->zrcs_row_padding_hor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->rowPaddingHor:I

    .line 54
    iget v0, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->rowHeight:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    iput v0, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->newRowHeight:I

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$dimen;->zrcs_gap:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->leftGap:I

    .line 56
    iget p1, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->leftGap:I

    iget v0, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->sizeChange:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iput p1, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->rightGap:I

    return-void
.end method

.method private measureChild(Landroid/view/View;I)V
    .locals 5

    .line 148
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    .line 150
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 153
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v3, 0x40000000    # 2.0f

    if-lez v2, :cond_0

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    .line 154
    :goto_0
    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v4, :cond_1

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 156
    :cond_1
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V

    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 159
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 160
    iget v2, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->textParamMinWidth:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 161
    :cond_2
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 162
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p1, p2, v1}, Landroid/view/View;->measure(II)V

    return-void
.end method


# virtual methods
.method public addLeft(Landroid/view/View;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->leftViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-virtual {p0, p1}, Lus/zoom/zrc/control_system/ControlSystemRow;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addRight(Landroid/view/View;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->rightViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {p0, p1}, Lus/zoom/zrc/control_system/ControlSystemRow;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 71
    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemRow;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->rowWidth:I

    .line 73
    iget p1, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->rowPaddingHor:I

    .line 74
    iget p2, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->rowHeight:I

    div-int/lit8 p2, p2, 0x2

    .line 76
    iget-object p3, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->leftViews:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    .line 78
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    div-int/lit8 p5, p5, 0x2

    sub-int p5, p2, p5

    .line 79
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p1

    .line 80
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    .line 77
    invoke-virtual {p4, p1, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 81
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    iget p5, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->leftGap:I

    add-int/2addr p4, p5

    add-int/2addr p1, p4

    goto :goto_0

    .line 84
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->rightViews:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 85
    iget-object p1, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->rightViews:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    .line 86
    iget-object p2, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->paraLines:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_2

    .line 87
    iget p3, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->rowWidth:I

    iget p4, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->rowPaddingHor:I

    sub-int/2addr p3, p4

    iget p4, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->sizeChange:I

    add-int/2addr p3, p4

    .line 88
    iget p4, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->rowHeight:I

    div-int/lit8 p4, p4, 0x2

    iget p5, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->newRowHeight:I

    mul-int p5, p5, p2

    add-int/2addr p4, p5

    const/4 p5, 0x0

    .line 89
    :goto_2
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->paraLines:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge p5, v0, :cond_1

    .line 90
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 91
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, p3, v1

    .line 92
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p4, v2

    .line 94
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p4

    .line 91
    invoke-virtual {v0, v1, v2, p3, v3}, Landroid/view/View;->layout(IIII)V

    .line 95
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p3, v0

    iget v0, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->rightGap:I

    sub-int/2addr p3, v0

    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 98
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->rightViews:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 103
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->rowWidth:I

    .line 105
    iget v0, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->rowWidth:I

    iget v1, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->rowPaddingHor:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-double v0, v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 108
    iget-object v1, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->leftViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 109
    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 110
    move-object v5, v4

    check-cast v5, Landroid/widget/TextView;

    iget v6, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->rowWidth:I

    iget v7, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->rowPaddingHor:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-double v6, v6

    const-wide v8, 0x3fe999999999999aL    # 0.8

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    double-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 111
    :cond_0
    iget v5, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->rowWidth:I

    invoke-direct {p0, v4, v5}, Lus/zoom/zrc/control_system/ControlSystemRow;->measureChild(Landroid/view/View;I)V

    .line 112
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 114
    :cond_1
    iget-object v1, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->leftViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v4, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->leftGap:I

    mul-int v1, v1, v4

    add-int/2addr v3, v1

    .line 116
    iget v1, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->rowWidth:I

    iget v4, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->rowPaddingHor:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    sub-int/2addr v1, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 118
    iget-object v3, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->paraLines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move v4, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 120
    :goto_1
    iget-object v5, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->rightViews:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 121
    iget-object v5, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->rightViews:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 122
    instance-of v6, v5, Landroid/widget/TextView;

    if-eqz v6, :cond_2

    .line 123
    move-object v6, v5

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 124
    :cond_2
    invoke-direct {p0, v5, v0}, Lus/zoom/zrc/control_system/ControlSystemRow;->measureChild(Landroid/view/View;I)V

    .line 125
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-lt v4, v5, :cond_4

    const/4 v6, 0x4

    if-lt v3, v6, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v4, v5

    .line 135
    iget v5, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->rightGap:I

    sub-int/2addr v4, v5

    goto :goto_1

    .line 128
    :cond_4
    :goto_2
    iget-object v4, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->paraLines:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v0

    const/4 v3, 0x0

    goto :goto_1

    .line 138
    :cond_5
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->paraLines:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->paraLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 141
    iget v0, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->rowWidth:I

    invoke-static {v0, p1}, Lus/zoom/zrc/control_system/ControlSystemRow;->resolveSize(II)I

    move-result p1

    iget v0, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->rowHeight:I

    iget-object v1, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->paraLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->newRowHeight:I

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    invoke-static {v0, p2}, Lus/zoom/zrc/control_system/ControlSystemRow;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/control_system/ControlSystemRow;->setMeasuredDimension(II)V

    goto :goto_3

    .line 143
    :cond_6
    iget v0, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->rowWidth:I

    invoke-static {v0, p1}, Lus/zoom/zrc/control_system/ControlSystemRow;->resolveSize(II)I

    move-result p1

    iget v0, p0, Lus/zoom/zrc/control_system/ControlSystemRow;->rowHeight:I

    invoke-static {v0, p2}, Lus/zoom/zrc/control_system/ControlSystemRow;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/control_system/ControlSystemRow;->setMeasuredDimension(II)V

    :goto_3
    return-void
.end method
