.class public Lus/zoom/zrc/view/SwitchCameraFixedRowsRecyclerView;
.super Lus/zoom/zrc/view/FixedRowsRecyclerView;
.source "SwitchCameraFixedRowsRecyclerView.java"


# instance fields
.field private bounds:Landroid/graphics/Rect;

.field private paint:Landroid/graphics/Paint;

.field private textScale:F

.field private textSize:F

.field private textView:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/FixedRowsRecyclerView;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/view/SwitchCameraFixedRowsRecyclerView;->bounds:Landroid/graphics/Rect;

    .line 19
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/view/SwitchCameraFixedRowsRecyclerView;->paint:Landroid/graphics/Paint;

    .line 20
    new-instance p1, Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lus/zoom/zrc/view/SwitchCameraFixedRowsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lus/zoom/zrc/view/SwitchCameraFixedRowsRecyclerView;->textView:Landroid/widget/RadioButton;

    .line 21
    iget-object p1, p0, Lus/zoom/zrc/view/SwitchCameraFixedRowsRecyclerView;->textView:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getTextSize()F

    move-result p1

    iput p1, p0, Lus/zoom/zrc/view/SwitchCameraFixedRowsRecyclerView;->textSize:F

    .line 22
    iget-object p1, p0, Lus/zoom/zrc/view/SwitchCameraFixedRowsRecyclerView;->textView:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getTextScaleX()F

    move-result p1

    iput p1, p0, Lus/zoom/zrc/view/SwitchCameraFixedRowsRecyclerView;->textScale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 29
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/view/FixedRowsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/view/SwitchCameraFixedRowsRecyclerView;->bounds:Landroid/graphics/Rect;

    .line 19
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/view/SwitchCameraFixedRowsRecyclerView;->paint:Landroid/graphics/Paint;

    .line 20
    new-instance p1, Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lus/zoom/zrc/view/SwitchCameraFixedRowsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lus/zoom/zrc/view/SwitchCameraFixedRowsRecyclerView;->textView:Landroid/widget/RadioButton;

    .line 21
    iget-object p1, p0, Lus/zoom/zrc/view/SwitchCameraFixedRowsRecyclerView;->textView:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getTextSize()F

    move-result p1

    iput p1, p0, Lus/zoom/zrc/view/SwitchCameraFixedRowsRecyclerView;->textSize:F

    .line 22
    iget-object p1, p0, Lus/zoom/zrc/view/SwitchCameraFixedRowsRecyclerView;->textView:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getTextScaleX()F

    move-result p1

    iput p1, p0, Lus/zoom/zrc/view/SwitchCameraFixedRowsRecyclerView;->textScale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrc/view/FixedRowsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/view/SwitchCameraFixedRowsRecyclerView;->bounds:Landroid/graphics/Rect;

    .line 19
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/view/SwitchCameraFixedRowsRecyclerView;->paint:Landroid/graphics/Paint;

    .line 20
    new-instance p1, Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lus/zoom/zrc/view/SwitchCameraFixedRowsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lus/zoom/zrc/view/SwitchCameraFixedRowsRecyclerView;->textView:Landroid/widget/RadioButton;

    .line 21
    iget-object p1, p0, Lus/zoom/zrc/view/SwitchCameraFixedRowsRecyclerView;->textView:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getTextSize()F

    move-result p1

    iput p1, p0, Lus/zoom/zrc/view/SwitchCameraFixedRowsRecyclerView;->textSize:F

    .line 22
    iget-object p1, p0, Lus/zoom/zrc/view/SwitchCameraFixedRowsRecyclerView;->textView:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getTextScaleX()F

    move-result p1

    iput p1, p0, Lus/zoom/zrc/view/SwitchCameraFixedRowsRecyclerView;->textScale:F

    return-void
.end method

.method private getItemMaxWidth()I
    .locals 9

    .line 51
    invoke-virtual {p0}, Lus/zoom/zrc/view/SwitchCameraFixedRowsRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lus/zoom/zrc/view/SwitchCameraFixedRowsRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lus/zoom/zrc/view/adapter/IStringAdapter;

    if-nez v0, :cond_0

    goto :goto_1

    .line 54
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/SwitchCameraFixedRowsRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/adapter/IStringAdapter;

    invoke-interface {v0}, Lus/zoom/zrc/view/adapter/IStringAdapter;->getStringList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 58
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 60
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 61
    iget-object v6, p0, Lus/zoom/zrc/view/SwitchCameraFixedRowsRecyclerView;->paint:Landroid/graphics/Paint;

    iget v7, p0, Lus/zoom/zrc/view/SwitchCameraFixedRowsRecyclerView;->textSize:F

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 62
    iget-object v6, p0, Lus/zoom/zrc/view/SwitchCameraFixedRowsRecyclerView;->paint:Landroid/graphics/Paint;

    iget v7, p0, Lus/zoom/zrc/view/SwitchCameraFixedRowsRecyclerView;->textScale:F

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 63
    iget-object v6, p0, Lus/zoom/zrc/view/SwitchCameraFixedRowsRecyclerView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v8, p0, Lus/zoom/zrc/view/SwitchCameraFixedRowsRecyclerView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, v1, v5, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 64
    iget-object v5, p0, Lus/zoom/zrc/view/SwitchCameraFixedRowsRecyclerView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/lit8 v5, v5, 0x30

    if-ge v4, v5, :cond_2

    .line 65
    iget-object v4, p0, Lus/zoom/zrc/view/SwitchCameraFixedRowsRecyclerView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/lit8 v4, v4, 0x30

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    :cond_3
    invoke-virtual {p0}, Lus/zoom/zrc/view/SwitchCameraFixedRowsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/UIUtil;->getDisplayWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v1, v4

    int-to-float v0, v0

    const v2, 0x3f28f5c3    # 0.66f

    mul-float v0, v0, v2

    cmpl-float v1, v1, v0

    if-lez v1, :cond_4

    .line 70
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    :cond_4
    return v4

    :cond_5
    :goto_1
    return v1
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 3

    const/high16 p2, -0x80000000

    const v0, 0x1fffffff

    .line 38
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 40
    invoke-direct {p0}, Lus/zoom/zrc/view/SwitchCameraFixedRowsRecyclerView;->getItemMaxWidth()I

    move-result v1

    .line 41
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-eqz v1, :cond_0

    if-ne v2, p2, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    .line 43
    invoke-static {v1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 45
    :cond_0
    invoke-super {p0, p1, v0}, Lus/zoom/zrc/view/FixedRowsRecyclerView;->onMeasure(II)V

    return-void
.end method
