.class public Lus/zoom/zrc/settings/SettingVirtualBackgroundFragment;
.super Lus/zoom/zrc/settings/SettingBaseFragment;
.source "SettingVirtualBackgroundFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "SettingVirtualBackgroundFragment"


# instance fields
.field private adapter:Lus/zoom/zrc/settings/VirtualBackgroundAdapter;

.field private backBtn:Landroid/view/View;

.field private redetectBtn:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;-><init>()V

    return-void
.end method

.method private onRedetectBackgroundClicked()V
    .locals 5

    .line 119
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSelectedVirtualBackground()Ljava/lang/String;

    move-result-object v0

    const-string v1, "user request redetect background, img_id=%s"

    const/4 v2, 0x1

    .line 120
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lus/zoom/zrcsdk/ConfApp;->requestUpdateVirtualBackground(ZLjava/lang/String;)Z

    return-void
.end method

.method private onRedetectBackgroundUpdate()V
    .locals 3

    .line 110
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSelectedVirtualBackground()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {}, Lus/zoom/zrc/model/VirtualBackgroundHelper;->getDefault()Lus/zoom/zrc/model/VirtualBackgroundHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lus/zoom/zrc/model/VirtualBackgroundHelper;->getUrlById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 114
    iget-object v2, p0, Lus/zoom/zrc/settings/SettingVirtualBackgroundFragment;->redetectBtn:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v2, v1}, Lus/zoom/zrc/utils/ZRCUIUtils;->setViewDim(Landroid/view/View;Z)V

    .line 115
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingVirtualBackgroundFragment;->redetectBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private requestEnableShowingPreview()V
    .locals 2

    const-string v0, "user request enable showing preview"

    const/4 v1, 0x0

    .line 125
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ConfApp;->requestEnableShowingPreview(Z)Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingVirtualBackgroundFragment;->backBtn:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingVirtualBackgroundFragment;->onBack()V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingVirtualBackgroundFragment;->redetectBtn:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 88
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingVirtualBackgroundFragment;->onRedetectBackgroundClicked()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 40
    sget p3, Lus/zoom/zrcbox/R$layout;->virtual_background_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 41
    sget p2, Lus/zoom/zrcbox/R$id;->back_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingVirtualBackgroundFragment;->backBtn:Landroid/view/View;

    .line 42
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingVirtualBackgroundFragment;->backBtn:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingVirtualBackgroundFragment;->backBtn:Landroid/view/View;

    invoke-static {p2}, Lus/zoom/zrc/settings/SettingVirtualBackgroundFragment;->setBackToSettingsContentDescription(Landroid/view/View;)V

    .line 45
    sget p2, Lus/zoom/zrcbox/R$id;->virtual_background_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 46
    new-instance p3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingVirtualBackgroundFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p3, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 47
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 48
    new-instance p3, Lus/zoom/zrc/settings/VirtualBackgroundAdapter;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingVirtualBackgroundFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lus/zoom/zrc/settings/VirtualBackgroundAdapter;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lus/zoom/zrc/settings/SettingVirtualBackgroundFragment;->adapter:Lus/zoom/zrc/settings/VirtualBackgroundAdapter;

    .line 49
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingVirtualBackgroundFragment;->adapter:Lus/zoom/zrc/settings/VirtualBackgroundAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 51
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingVirtualBackgroundFragment;->adapter:Lus/zoom/zrc/settings/VirtualBackgroundAdapter;

    new-instance p3, Lus/zoom/zrc/settings/SettingVirtualBackgroundFragment$1;

    invoke-direct {p3, p0}, Lus/zoom/zrc/settings/SettingVirtualBackgroundFragment$1;-><init>(Lus/zoom/zrc/settings/SettingVirtualBackgroundFragment;)V

    invoke-virtual {p2, p3}, Lus/zoom/zrc/settings/VirtualBackgroundAdapter;->setOnItemClickListener(Lus/zoom/zrc/settings/VirtualBackgroundAdapter$OnItemClickListener;)V

    .line 68
    sget p2, Lus/zoom/zrcbox/R$id;->redetect_background_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingVirtualBackgroundFragment;->redetectBtn:Landroid/widget/TextView;

    .line 69
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingVirtualBackgroundFragment;->redetectBtn:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingVirtualBackgroundFragment;->onRedetectBackgroundUpdate()V

    .line 72
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingVirtualBackgroundFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 73
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingVirtualBackgroundFragment;->redetectBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingVirtualBackgroundFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lus/zoom/zrcbox/R$color;->recalibrate_text_color:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingVirtualBackgroundFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p2

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p3

    invoke-virtual {p2, p3}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    .line 78
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingVirtualBackgroundFragment;->requestEnableShowingPreview()V

    return-object p1
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 94
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/settings/SettingBaseFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 96
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingVirtualBackgroundFragment;->adapter:Lus/zoom/zrc/settings/VirtualBackgroundAdapter;

    if-nez p1, :cond_0

    return-void

    .line 100
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->virtualBackgrounds:I

    if-ne p1, p2, :cond_1

    .line 101
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingVirtualBackgroundFragment;->adapter:Lus/zoom/zrc/settings/VirtualBackgroundAdapter;

    invoke-virtual {p1}, Lus/zoom/zrc/settings/VirtualBackgroundAdapter;->updateVirtualBackgrounds()V

    .line 102
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingVirtualBackgroundFragment;->adapter:Lus/zoom/zrc/settings/VirtualBackgroundAdapter;

    invoke-virtual {p1}, Lus/zoom/zrc/settings/VirtualBackgroundAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 103
    :cond_1
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->selectedVirtualBackground:I

    if-ne p1, p2, :cond_2

    .line 104
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingVirtualBackgroundFragment;->adapter:Lus/zoom/zrc/settings/VirtualBackgroundAdapter;

    invoke-virtual {p1}, Lus/zoom/zrc/settings/VirtualBackgroundAdapter;->notifyDataSetChanged()V

    .line 105
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingVirtualBackgroundFragment;->onRedetectBackgroundUpdate()V

    :cond_2
    :goto_0
    return-void
.end method
