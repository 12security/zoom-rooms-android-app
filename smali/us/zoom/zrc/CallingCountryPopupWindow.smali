.class public Lus/zoom/zrc/CallingCountryPopupWindow;
.super Landroid/widget/PopupWindow;
.source "CallingCountryPopupWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lus/zoom/zrc/view/CallingCountryFragment$CallinCountryListItemListener;

.field private triangleView:Lus/zoom/zrc/view/TriangleView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$layout;->calling_country_pop:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$dimen;->zrc_meeting_country_popup_window_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 42
    sget v2, Lus/zoom/zrcbox/R$id;->icon:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lus/zoom/zrc/view/TriangleView;

    iput-object v2, p0, Lus/zoom/zrc/CallingCountryPopupWindow;->triangleView:Lus/zoom/zrc/view/TriangleView;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$drawable;->_ae:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 44
    iget-object v3, p0, Lus/zoom/zrc/CallingCountryPopupWindow;->triangleView:Lus/zoom/zrc/view/TriangleView;

    int-to-float v4, v1

    const v5, 0x3e99999a    # 0.3f

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v4, v2

    int-to-float v2, v4

    invoke-virtual {v3, v2}, Lus/zoom/zrc/view/TriangleView;->setX(F)V

    .line 45
    sget v2, Lus/zoom/zrcbox/R$id;->list:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 46
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lus/zoom/zrc/CallingCountryPopupWindow;->list:Ljava/util/List;

    .line 47
    invoke-direct {p0, p3}, Lus/zoom/zrc/CallingCountryPopupWindow;->buildList(Ljava/util/List;)V

    .line 48
    new-instance p3, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter;

    iget-object v3, p0, Lus/zoom/zrc/CallingCountryPopupWindow;->list:Ljava/util/List;

    invoke-direct {p3, p1, v3}, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 49
    invoke-virtual {p3, p2}, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter;->getDefaultPosition(Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;)I

    move-result p1

    .line 50
    invoke-virtual {p3, p1}, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter;->setDefaultPosition(I)V

    .line 51
    invoke-virtual {v2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 52
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 p2, -0x1

    if-le p1, p2, :cond_0

    .line 54
    invoke-virtual {v2, p1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_0
    const/4 p1, -0x2

    .line 56
    invoke-virtual {p0, p1}, Lus/zoom/zrc/CallingCountryPopupWindow;->setHeight(I)V

    .line 57
    invoke-virtual {p0, v1}, Lus/zoom/zrc/CallingCountryPopupWindow;->setWidth(I)V

    const/4 p1, 0x1

    .line 58
    invoke-virtual {p0, p1}, Lus/zoom/zrc/CallingCountryPopupWindow;->setFocusable(Z)V

    .line 59
    invoke-virtual {p0, p1}, Lus/zoom/zrc/CallingCountryPopupWindow;->setOutsideTouchable(Z)V

    .line 60
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Lus/zoom/zrc/CallingCountryPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    invoke-virtual {p0, v0}, Lus/zoom/zrc/CallingCountryPopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private buildList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;",
            ">;)V"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 66
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 67
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/CallingCountryPopupWindow;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 72
    iget-object p1, p0, Lus/zoom/zrc/CallingCountryPopupWindow;->list:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Lus/zoom/zrc/CallingCountryPopupWindow;->dismiss()V

    .line 78
    iget-object p2, p0, Lus/zoom/zrc/CallingCountryPopupWindow;->listener:Lus/zoom/zrc/view/CallingCountryFragment$CallinCountryListItemListener;

    if-eqz p2, :cond_0

    .line 79
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    .line 80
    iget-object p2, p0, Lus/zoom/zrc/CallingCountryPopupWindow;->listener:Lus/zoom/zrc/view/CallingCountryFragment$CallinCountryListItemListener;

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;

    invoke-interface {p2, p1}, Lus/zoom/zrc/view/CallingCountryFragment$CallinCountryListItemListener;->onItemClick(Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;)V

    :cond_0
    return-void
.end method

.method public positionTriangleTo(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 85
    iget-object v0, p0, Lus/zoom/zrc/CallingCountryPopupWindow;->triangleView:Lus/zoom/zrc/view/TriangleView;

    if-eqz v0, :cond_0

    .line 86
    invoke-static {p1, v0}, Lus/zoom/zrc/login/util/ZRCPopupWindowUtils;->updateArrowToCenterHorizontal(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setListener(Lus/zoom/zrc/view/CallingCountryFragment$CallinCountryListItemListener;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lus/zoom/zrc/CallingCountryPopupWindow;->listener:Lus/zoom/zrc/view/CallingCountryFragment$CallinCountryListItemListener;

    return-void
.end method
