.class public Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;
.super Landroid/widget/PopupWindow;
.source "ZRPSelectLocationPopupWindow.java"

# interfaces
.implements Lus/zoom/zrp/view/ZRPSelectLocationAdapter$OnLocationItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow$OnLocationSelectListener;
    }
.end annotation


# instance fields
.field private adapter:Lus/zoom/zrp/view/ZRPSelectLocationAdapter;

.field private context:Landroid/content/Context;

.field private ivUpperLocation:Landroid/view/View;

.field private llTitleBar:Landroid/widget/LinearLayout;

.field private onLocationSelectListener:Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow$OnLocationSelectListener;

.field private rvLocationList:Landroidx/recyclerview/widget/RecyclerView;

.field private tvShowingLocationName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object p1, p0, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->context:Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->init()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->onLocationBackClick()V

    return-void
.end method

.method private init()V
    .locals 4

    .line 47
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$layout;->popup_reserve_select_location:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 48
    sget v1, Lus/zoom/zrcbox/R$id;->ll_reserve_select_location_title_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->llTitleBar:Landroid/widget/LinearLayout;

    .line 49
    iget-object v1, p0, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->llTitleBar:Landroid/widget/LinearLayout;

    new-instance v2, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow$1;

    invoke-direct {v2, p0}, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow$1;-><init>(Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    sget v1, Lus/zoom/zrcbox/R$id;->iv_reserve_select_location_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->ivUpperLocation:Landroid/view/View;

    .line 57
    sget v1, Lus/zoom/zrcbox/R$id;->tv_reserve_select_location_level:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->tvShowingLocationName:Landroid/widget/TextView;

    .line 58
    sget v1, Lus/zoom/zrcbox/R$id;->rv_reserve_select_location_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->rvLocationList:Landroidx/recyclerview/widget/RecyclerView;

    .line 59
    iget-object v1, p0, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->rvLocationList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 60
    new-instance v1, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;

    iget-object v2, p0, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->adapter:Lus/zoom/zrp/view/ZRPSelectLocationAdapter;

    .line 61
    iget-object v1, p0, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->adapter:Lus/zoom/zrp/view/ZRPSelectLocationAdapter;

    invoke-virtual {v1, p0}, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->setOnLocationItemClickListener(Lus/zoom/zrp/view/ZRPSelectLocationAdapter$OnLocationItemClickListener;)V

    .line 62
    iget-object v1, p0, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->rvLocationList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->adapter:Lus/zoom/zrp/view/ZRPSelectLocationAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 63
    iget-object v1, p0, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->rvLocationList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollbarFadingEnabled(Z)V

    .line 65
    invoke-virtual {p0, v0}, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 66
    invoke-virtual {p0, v0}, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->setOutsideTouchable(Z)V

    .line 67
    invoke-virtual {p0, v0}, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->setFocusable(Z)V

    .line 68
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v1}, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object v1, p0, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->context:Landroid/content/Context;

    invoke-static {v1}, Lus/zoom/androidlib/util/UIUtil;->getDisplayWidth(Landroid/content/Context;)I

    move-result v1

    .line 70
    iget-object v2, p0, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->context:Landroid/content/Context;

    invoke-static {v2}, Lus/zoom/zrc/utils/ZRCUIUtils;->getScreenOrientation(Landroid/content/Context;)I

    move-result v2

    if-ne v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x7

    goto :goto_0

    :cond_0
    div-int/lit8 v1, v1, 0x3

    :goto_0
    invoke-virtual {p0, v1}, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->setWidth(I)V

    const/4 v0, -0x2

    .line 71
    invoke-virtual {p0, v0}, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->setHeight(I)V

    return-void
.end method

.method private onLocationBackClick()V
    .locals 3

    .line 75
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->adapter:Lus/zoom/zrp/view/ZRPSelectLocationAdapter;

    invoke-virtual {v0}, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->getShowingLocationTree()Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getParent()Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getType()I

    move-result v1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getReserveOtherRoomInLocation()I

    move-result v2

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    invoke-direct {p0, v0}, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->updateShowingLocationTree(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private updateShowingLocationTree(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V
    .locals 2

    .line 104
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->adapter:Lus/zoom/zrp/view/ZRPSelectLocationAdapter;

    invoke-virtual {v0, p1}, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->updateShowingLocationTree(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V

    .line 105
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->adapter:Lus/zoom/zrp/view/ZRPSelectLocationAdapter;

    invoke-virtual {v0}, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->notifyDataSetChanged()V

    .line 106
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->adapter:Lus/zoom/zrp/view/ZRPSelectLocationAdapter;

    invoke-virtual {v0}, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->getSelectedLocationTreeIndex()I

    move-result v0

    if-ltz v0, :cond_0

    .line 108
    iget-object v1, p0, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->rvLocationList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 111
    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->tvShowingLocationName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getType()I

    move-result p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getReserveOtherRoomInLocation()I

    move-result v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_1

    .line 113
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->llTitleBar:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 114
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->tvShowingLocationName:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 115
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->ivUpperLocation:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 117
    :cond_1
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->llTitleBar:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 118
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->tvShowingLocationName:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 119
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->ivUpperLocation:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onLocationItemClick(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V
    .locals 2

    .line 85
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-direct {p0, p1}, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->updateShowingLocationTree(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->dismiss()V

    .line 91
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getType()I

    move-result v0

    const/16 v1, -0xa

    if-ne v0, v1, :cond_1

    .line 92
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getParent()Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object p1

    .line 97
    :cond_1
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->onLocationSelectListener:Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow$OnLocationSelectListener;

    if-eqz v0, :cond_2

    .line 98
    invoke-interface {v0, p1}, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow$OnLocationSelectListener;->onLocationSelect(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 2

    .line 136
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->adapter:Lus/zoom/zrp/view/ZRPSelectLocationAdapter;

    invoke-virtual {v0}, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->rvLocationList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 137
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public setOnLocationSelectListener(Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow$OnLocationSelectListener;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->onLocationSelectListener:Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow$OnLocationSelectListener;

    return-void
.end method

.method public updateLocationTrees(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V
    .locals 1
    .param p1    # Lus/zoom/zrcsdk/model/ZRCLocationTree;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 124
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->adapter:Lus/zoom/zrp/view/ZRPSelectLocationAdapter;

    invoke-virtual {v0, p1}, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->updateSelectedLocationTree(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V

    .line 127
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getParent()Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object p1

    .line 132
    :goto_0
    invoke-direct {p0, p1}, Lus/zoom/zrp/view/ZRPSelectLocationPopupWindow;->updateShowingLocationTree(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V

    return-void
.end method
