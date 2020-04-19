.class public Lus/zoom/zrp/view/ZRPReserveTimeLineView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "ZRPReserveTimeLineView.java"


# instance fields
.field private line:Landroid/view/View;

.field private time:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-direct {p0, p1}, Lus/zoom/zrp/view/ZRPReserveTimeLineView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-direct {p0, p1}, Lus/zoom/zrp/view/ZRPReserveTimeLineView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0, p1}, Lus/zoom/zrp/view/ZRPReserveTimeLineView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 33
    sget v0, Lus/zoom/zrcbox/R$layout;->zrp_reserve_time_line:I

    invoke-static {p1, v0, p0}, Lus/zoom/zrp/view/ZRPReserveTimeLineView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 35
    sget p1, Lus/zoom/zrcbox/R$id;->tv_time:I

    invoke-virtual {p0, p1}, Lus/zoom/zrp/view/ZRPReserveTimeLineView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrp/view/ZRPReserveTimeLineView;->time:Landroid/widget/TextView;

    .line 36
    sget p1, Lus/zoom/zrcbox/R$id;->time_line:I

    invoke-virtual {p0, p1}, Lus/zoom/zrp/view/ZRPReserveTimeLineView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrp/view/ZRPReserveTimeLineView;->line:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public setLineColor(I)V
    .locals 1

    .line 49
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPReserveTimeLineView;->line:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setTimeColor(I)V
    .locals 1

    .line 45
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPReserveTimeLineView;->time:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTimeFontBold(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 64
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPReserveTimeLineView;->time:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 66
    :cond_0
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPReserveTimeLineView;->time:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :goto_0
    return-void
.end method

.method public setTimeLineColor(I)V
    .locals 1

    .line 40
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPReserveTimeLineView;->time:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPReserveTimeLineView;->line:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setTimeLineHeight(I)V
    .locals 1

    .line 53
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPReserveTimeLineView;->line:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 54
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 55
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPReserveTimeLineView;->line:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTimeText(Ljava/lang/String;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPReserveTimeLineView;->time:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
