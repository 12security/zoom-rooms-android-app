.class public Lus/zoom/zrc/view/ParticipantItemRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "ParticipantItemRelativeLayout.java"


# instance fields
.field private adaptionTextViewId:I

.field private reMeasureTimes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lus/zoom/zrc/view/ParticipantItemRelativeLayout;->reMeasureTimes:I

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lus/zoom/zrc/view/ParticipantItemRelativeLayout;->adaptionTextViewId:I

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/view/ParticipantItemRelativeLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lus/zoom/zrc/view/ParticipantItemRelativeLayout;->reMeasureTimes:I

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lus/zoom/zrc/view/ParticipantItemRelativeLayout;->adaptionTextViewId:I

    .line 27
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/view/ParticipantItemRelativeLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 17
    iput p3, p0, Lus/zoom/zrc/view/ParticipantItemRelativeLayout;->reMeasureTimes:I

    const/4 p3, -0x1

    .line 18
    iput p3, p0, Lus/zoom/zrc/view/ParticipantItemRelativeLayout;->adaptionTextViewId:I

    .line 32
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/view/ParticipantItemRelativeLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private clearReMeasureTimes()V
    .locals 1

    const/4 v0, 0x0

    .line 92
    iput v0, p0, Lus/zoom/zrc/view/ParticipantItemRelativeLayout;->reMeasureTimes:I

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 37
    sget-object v0, Lus/zoom/zrcbox/R$styleable;->ParticipantItemRelativeLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 38
    sget p2, Lus/zoom/zrcbox/R$styleable;->ParticipantItemRelativeLayout_adaptionTextViewId:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lus/zoom/zrc/view/ParticipantItemRelativeLayout;->adaptionTextViewId:I

    .line 39
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private reMeasure(II)V
    .locals 2

    .line 96
    iget v0, p0, Lus/zoom/zrc/view/ParticipantItemRelativeLayout;->reMeasureTimes:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 97
    iput v0, p0, Lus/zoom/zrc/view/ParticipantItemRelativeLayout;->reMeasureTimes:I

    .line 98
    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/view/ParticipantItemRelativeLayout;->measure(II)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 100
    iput p1, p0, Lus/zoom/zrc/view/ParticipantItemRelativeLayout;->reMeasureTimes:I

    :goto_0
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 8
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .line 47
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 49
    iget v0, p0, Lus/zoom/zrc/view/ParticipantItemRelativeLayout;->adaptionTextViewId:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/ParticipantItemRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 51
    invoke-direct {p0}, Lus/zoom/zrc/view/ParticipantItemRelativeLayout;->clearReMeasureTimes()V

    return-void

    .line 55
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantItemRelativeLayout;->getMeasuredWidth()I

    move-result v1

    .line 58
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantItemRelativeLayout;->getPaddingLeft()I

    move-result v2

    const/4 v3, 0x0

    add-int/2addr v2, v3

    .line 59
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantItemRelativeLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v2, v4

    .line 61
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantItemRelativeLayout;->getChildCount()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_2

    .line 63
    invoke-virtual {p0, v3}, Lus/zoom/zrc/view/ParticipantItemRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 65
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_1

    .line 66
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 67
    iget v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v7

    .line 68
    iget v6, v6, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v6

    if-eq v5, v0, :cond_1

    .line 71
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v2, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    sub-int/2addr v1, v2

    .line 77
    invoke-virtual {v0}, Landroid/widget/TextView;->getMinWidth()I

    move-result v2

    .line 78
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 80
    invoke-virtual {v0}, Landroid/widget/TextView;->getMaxWidth()I

    move-result v2

    sub-int v2, v1, v2

    .line 82
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantItemRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v3, v4}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    if-gt v2, v3, :cond_3

    .line 83
    invoke-direct {p0}, Lus/zoom/zrc/view/ParticipantItemRelativeLayout;->clearReMeasureTimes()V

    return-void

    .line 87
    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 88
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/view/ParticipantItemRelativeLayout;->reMeasure(II)V

    return-void
.end method
