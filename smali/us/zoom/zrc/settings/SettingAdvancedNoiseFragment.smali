.class public Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;
.super Lus/zoom/zrc/settings/SettingBaseFragment;
.source "SettingAdvancedNoiseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "SettingAdvancedNoiseFragment"


# instance fields
.field private adapter:Lus/zoom/zrc/view/adapter/CheckedStringAdapter;

.field private backBtn:Landroid/widget/ImageView;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->requestAdvancedNoiseSuppressionMode(I)V

    return-void
.end method

.method private onUpdateDeviceInfoView()V
    .locals 2

    .line 125
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getAdvancedNoiseSuppressionMode()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 133
    :cond_1
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->adapter:Lus/zoom/zrc/view/adapter/CheckedStringAdapter;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lus/zoom/zrc/view/adapter/CheckedStringAdapter;->setSelectedMode(I)V

    .line 134
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->adapter:Lus/zoom/zrc/view/adapter/CheckedStringAdapter;

    invoke-virtual {v0}, Lus/zoom/zrc/view/adapter/CheckedStringAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private onUpdateLockedState()V
    .locals 2

    .line 121
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->adapter:Lus/zoom/zrc/view/adapter/CheckedStringAdapter;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->isSettingsLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/adapter/CheckedStringAdapter;->setLockedState(Z)V

    return-void
.end method

.method private requestAdvancedNoiseSuppressionMode(I)V
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request advanced noise suppression mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/PTApp;->setAdvancedNoiseSuppressionMode(I)Z

    return-void
.end method


# virtual methods
.method onBack()V
    .locals 4

    const-string v0, "click back"

    const/4 v1, 0x0

    .line 144
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const-string v1, "parentFragment"

    const-string v2, "fragmentClass"

    .line 146
    const-class v3, Lus/zoom/zrc/settings/SettingMicrophoneFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 147
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v1

    sget-object v2, Lus/zoom/zrc/settings/SettingEvent;->OP_SUB_CONTENT_BACK:Lus/zoom/zrc/settings/SettingEvent;

    invoke-virtual {v1, v2, v0}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->backBtn:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->onBack()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 57
    invoke-super {p0, p1}, Lus/zoom/zrc/settings/SettingBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
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

    .line 64
    sget p3, Lus/zoom/zrcbox/R$layout;->setting_advanced_noise:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 65
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->isInMeeting()Z

    move-result p2

    const/16 p3, 0x8

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->isInPhoneCall()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 66
    sget p2, Lus/zoom/zrcbox/R$id;->panelTitleBar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 67
    sget p2, Lus/zoom/zrcbox/R$id;->title_bottom_line:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 68
    sget p2, Lus/zoom/zrcbox/R$id;->back_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 69
    sget p2, Lus/zoom/zrcbox/R$id;->back_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->backBtn:Landroid/widget/ImageView;

    .line 70
    sget p2, Lus/zoom/zrcbox/R$id;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->title:Landroid/widget/TextView;

    .line 71
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->backBtn:Landroid/widget/ImageView;

    iget-object p3, p0, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->title:Landroid/widget/TextView;

    invoke-static {p2, p3}, Lus/zoom/zrc/utils/ZRCUIUtils;->matchImageViewToTextSize(Landroid/widget/ImageView;Landroid/widget/TextView;)V

    goto :goto_0

    .line 73
    :cond_0
    sget p2, Lus/zoom/zrcbox/R$id;->panelTitleBar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 74
    sget p2, Lus/zoom/zrcbox/R$id;->title_bottom_line:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 75
    sget p2, Lus/zoom/zrcbox/R$id;->back_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 76
    sget p2, Lus/zoom/zrcbox/R$id;->back_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->backBtn:Landroid/widget/ImageView;

    .line 77
    sget p2, Lus/zoom/zrcbox/R$id;->txtTitle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->title:Landroid/widget/TextView;

    .line 78
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->backBtn:Landroid/widget/ImageView;

    sget p3, Lus/zoom/zrcbox/R$string;->microphone:I

    invoke-virtual {p0, p3}, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->setBackContentDescription(Landroid/view/View;Ljava/lang/String;)V

    .line 80
    :goto_0
    sget p2, Lus/zoom/zrcbox/R$id;->source_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 81
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 82
    sget v1, Lus/zoom/zrcbox/R$string;->moderate:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    sget v1, Lus/zoom/zrcbox/R$string;->aggressive:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    sget v1, Lus/zoom/zrcbox/R$string;->disable:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v1, Lus/zoom/zrc/view/adapter/CheckedStringAdapter;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->isInMeeting()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->isInPhoneCall()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-direct {v1, v2, p3, v3}, Lus/zoom/zrc/view/adapter/CheckedStringAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v1, p0, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->adapter:Lus/zoom/zrc/view/adapter/CheckedStringAdapter;

    .line 86
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->adapter:Lus/zoom/zrc/view/adapter/CheckedStringAdapter;

    new-instance v1, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment$1;

    invoke-direct {v1, p0}, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment$1;-><init>(Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;)V

    invoke-virtual {p3, v1}, Lus/zoom/zrc/view/adapter/CheckedStringAdapter;->setOnItemClickListener(Lus/zoom/zrc/view/adapter/CheckedStringAdapter$OnItemClickListener;)V

    .line 101
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->adapter:Lus/zoom/zrc/view/adapter/CheckedStringAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 102
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->isInMeeting()Z

    move-result p3

    if-nez p3, :cond_3

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->isInPhoneCall()Z

    move-result p3

    if-eqz p3, :cond_4

    :cond_3
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->isTablet()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 103
    new-instance p3, Lus/zoom/zrc/view/RecyclerViewDivider;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$drawable;->zrc_setting_center_divider_light:I

    invoke-direct {p3, v1, v0, v2}, Lus/zoom/zrc/view/RecyclerViewDivider;-><init>(Landroid/content/Context;II)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto :goto_2

    .line 105
    :cond_4
    new-instance p3, Lus/zoom/zrc/view/RecyclerViewDivider;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$drawable;->zrc_setting_center_divider:I

    invoke-direct {p3, v1, v0, v2}, Lus/zoom/zrc/view/RecyclerViewDivider;-><init>(Landroid/content/Context;II)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 107
    :goto_2
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 108
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->backBtn:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 47
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/settings/SettingBaseFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 48
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->settingsDeviceInfo:I

    if-ne p1, p2, :cond_0

    .line 49
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->onUpdateDeviceInfoView()V

    goto :goto_0

    .line 50
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->settingsLocked:I

    if-ne p1, p2, :cond_1

    .line 51
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->onUpdateLockedState()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 114
    invoke-super {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;->onStart()V

    .line 115
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->title:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->sendFirstItemAccessibility(Landroid/view/View;)V

    .line 116
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->onUpdateDeviceInfoView()V

    .line 117
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingAdvancedNoiseFragment;->onUpdateLockedState()V

    return-void
.end method
