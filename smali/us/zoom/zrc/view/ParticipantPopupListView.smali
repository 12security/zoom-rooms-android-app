.class public Lus/zoom/zrc/view/ParticipantPopupListView;
.super Landroid/widget/ListView;
.source "ParticipantPopupListView.java"


# instance fields
.field private bounds:Landroid/graphics/Rect;

.field private paint:Landroid/graphics/Paint;

.field private textScale:F

.field private textSize:F

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupListView;->bounds:Landroid/graphics/Rect;

    .line 17
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupListView;->paint:Landroid/graphics/Paint;

    .line 18
    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantPopupListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupListView;->textView:Landroid/widget/TextView;

    .line 19
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupListView;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iput p1, p0, Lus/zoom/zrc/view/ParticipantPopupListView;->textSize:F

    .line 20
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupListView;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextScaleX()F

    move-result p1

    iput p1, p0, Lus/zoom/zrc/view/ParticipantPopupListView;->textScale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupListView;->bounds:Landroid/graphics/Rect;

    .line 17
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupListView;->paint:Landroid/graphics/Paint;

    .line 18
    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantPopupListView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupListView;->textView:Landroid/widget/TextView;

    .line 19
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupListView;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iput p1, p0, Lus/zoom/zrc/view/ParticipantPopupListView;->textSize:F

    .line 20
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupListView;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextScaleX()F

    move-result p1

    iput p1, p0, Lus/zoom/zrc/view/ParticipantPopupListView;->textScale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupListView;->bounds:Landroid/graphics/Rect;

    .line 17
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupListView;->paint:Landroid/graphics/Paint;

    .line 18
    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantPopupListView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupListView;->textView:Landroid/widget/TextView;

    .line 19
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupListView;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iput p1, p0, Lus/zoom/zrc/view/ParticipantPopupListView;->textSize:F

    .line 20
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupListView;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextScaleX()F

    move-result p1

    iput p1, p0, Lus/zoom/zrc/view/ParticipantPopupListView;->textScale:F

    return-void
.end method

.method private getItemMaxWidth()I
    .locals 9

    .line 49
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantPopupListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantPopupListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lus/zoom/zrc/view/adapter/IStringAdapter;

    if-nez v0, :cond_0

    goto :goto_1

    .line 52
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantPopupListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/adapter/IStringAdapter;

    invoke-interface {v0}, Lus/zoom/zrc/view/adapter/IStringAdapter;->getStringList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 56
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 58
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 59
    iget-object v6, p0, Lus/zoom/zrc/view/ParticipantPopupListView;->paint:Landroid/graphics/Paint;

    iget v7, p0, Lus/zoom/zrc/view/ParticipantPopupListView;->textSize:F

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 60
    iget-object v6, p0, Lus/zoom/zrc/view/ParticipantPopupListView;->paint:Landroid/graphics/Paint;

    iget v7, p0, Lus/zoom/zrc/view/ParticipantPopupListView;->textScale:F

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 61
    iget-object v6, p0, Lus/zoom/zrc/view/ParticipantPopupListView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v8, p0, Lus/zoom/zrc/view/ParticipantPopupListView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, v1, v5, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 62
    iget-object v5, p0, Lus/zoom/zrc/view/ParticipantPopupListView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 63
    iget-object v4, p0, Lus/zoom/zrc/view/ParticipantPopupListView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v4

    :cond_4
    :goto_1
    return v1
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 3

    const/high16 p2, -0x80000000

    const v0, 0x1fffffff

    .line 36
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 38
    invoke-direct {p0}, Lus/zoom/zrc/view/ParticipantPopupListView;->getItemMaxWidth()I

    move-result v1

    .line 39
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-eqz v1, :cond_0

    if-ne v2, p2, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    .line 41
    invoke-static {v1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 43
    :cond_0
    invoke-super {p0, p1, v0}, Landroid/widget/ListView;->onMeasure(II)V

    return-void
.end method
