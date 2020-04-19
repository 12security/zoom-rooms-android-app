.class public Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "VirtualAudioDeviceDialogFragment.java"


# instance fields
.field private adapter:Lus/zoom/zrc/settings/NetworkDeviceAdapter;

.field private devicesView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

.field private isTablet:Z

.field private keyboardDetector:Lus/zoom/zrc/settings/SettingKeyboardDetector;

.field private mediaDeviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

.field private searchBox:Lus/zoom/zrc/login/widget/ZRCListSearchBox;

.field private selectableDevicesNumberDes:Landroid/widget/TextView;

.field private uiListener:Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListenerAdapter;

.field private virtualAudioDeviceName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    .line 66
    new-instance v0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$1;-><init>(Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->uiListener:Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListenerAdapter;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;)Lus/zoom/zrc/login/widget/ZRCRecyclerListView;
    .locals 0

    .line 54
    iget-object p0, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->devicesView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;)Lus/zoom/zrc/login/widget/ZRCListSearchBox;
    .locals 0

    .line 54
    iget-object p0, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->searchBox:Lus/zoom/zrc/login/widget/ZRCListSearchBox;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->updateNetworkDeviceInfo()V

    return-void
.end method

.method static synthetic access$300(Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;)Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;
    .locals 0

    .line 54
    iget-object p0, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->mediaDeviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    return-object p0
.end method

.method private networkDeviceFilter(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 270
    :cond_0
    new-instance v0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$7;

    invoke-direct {v0, p0}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$7;-><init>(Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;)V

    invoke-static {p1, v0}, Lus/zoom/androidlib/util/CollectionsUtil;->filter(Ljava/util/List;Lus/zoom/androidlib/util/CollectionsUtil$Filter;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private onUpdateSettingsDeviceInfo()V
    .locals 4

    .line 295
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 296
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getMicrophoneList()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getMicrophoneList()Ljava/util/ArrayList;

    move-result-object v0

    .line 301
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    .line 302
    iget-object v2, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->mediaDeviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 303
    iput-object v1, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->mediaDeviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    .line 304
    invoke-direct {p0}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->updateVirtualAudioDeviceInfo()V

    return-void

    .line 308
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->dismiss()V

    return-void

    .line 297
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->dismiss()V

    return-void
.end method

.method public static show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V
    .locals 2
    .param p0    # Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 233
    const-class v0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->dismissDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    .line 236
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->executePendingTransactions()V

    .line 238
    :cond_0
    new-instance v0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;

    invoke-direct {v0}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;-><init>()V

    .line 239
    invoke-virtual {v0, p1}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->setDeviceInfo(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    .line 240
    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method

.method private updateNetworkDeviceInfo()V
    .locals 3

    .line 261
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getVirtualAudioDeviceList()Ljava/util/HashMap;

    move-result-object v0

    .line 262
    iget-object v1, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->mediaDeviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->networkDeviceFilter(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->adapter:Lus/zoom/zrc/settings/NetworkDeviceAdapter;

    iget-object v2, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->devicesView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    invoke-virtual {v2}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->isSearchMode()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->updateDevices(Ljava/util/List;Z)V

    return-void
.end method

.method private updateVirtualAudioDeviceInfo()V
    .locals 6

    .line 282
    iget-object v0, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->mediaDeviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    if-nez v0, :cond_0

    .line 283
    invoke-virtual {p0}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->dismiss()V

    return-void

    .line 286
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isVirtualAudioDevice()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->selectableDevicesNumberDes:Landroid/widget/TextView;

    sget v3, Lus/zoom/zrcbox/R$string;->select_devices_for_room:I

    invoke-virtual {p0, v3}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->mediaDeviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    invoke-virtual {v5}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getVirtualAudioDeviceDesc()Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;

    move-result-object v5

    invoke-virtual {v5}, Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;->getMaxSelectedCounts()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 289
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->selectableDevicesNumberDes:Landroid/widget/TextView;

    sget v3, Lus/zoom/zrcbox/R$string;->select_devices_for_room:I

    invoke-virtual {p0, v3}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "0"

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->virtualAudioDeviceName:Landroid/widget/TextView;

    iget-object v1, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->mediaDeviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getDisplayDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 94
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 96
    invoke-virtual {p0, v0, p1}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->setStyle(II)V

    .line 97
    invoke-virtual {p0, p1}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->setCancelable(Z)V

    .line 98
    invoke-virtual {p0}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->isTablet:Z

    .line 99
    new-instance p1, Lus/zoom/zrc/settings/SettingKeyboardDetector;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lus/zoom/zrc/settings/SettingKeyboardDetector;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->keyboardDetector:Lus/zoom/zrc/settings/SettingKeyboardDetector;

    .line 100
    iget-object p1, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->keyboardDetector:Lus/zoom/zrc/settings/SettingKeyboardDetector;

    new-instance v0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$2;

    invoke-direct {v0, p0}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$2;-><init>(Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;)V

    invoke-virtual {p1, v0}, Lus/zoom/zrc/settings/SettingKeyboardDetector;->setIKeyboardListener(Lus/zoom/zrc/settings/SettingKeyboardDetector$IKeyboardListener;)V

    .line 118
    invoke-static {}, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->getInstance()Lus/zoom/zrc/base/app/ZRCUIElementsManager;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->uiListener:Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListenerAdapter;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->addListener(Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListener;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 124
    new-instance p1, Lus/zoom/zrc/base/app/ZRCDialog;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lus/zoom/zrc/base/app/ZRCDialog;-><init>(Landroid/content/Context;)V

    .line 125
    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x106000d

    .line 127
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const/16 v1, 0x10

    .line 128
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    const/4 v0, 0x1

    .line 130
    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCDialog;->setDisableWindowStateChangedAccessibilityEvent(Z)V

    return-object p1
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

    .line 160
    sget p3, Lus/zoom/zrcbox/R$layout;->virtual_audio_device_layout:I

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 161
    sget p2, Lus/zoom/zrcbox/R$id;->close_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 162
    new-instance p3, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$3;

    invoke-direct {p3, p0}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$3;-><init>(Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    sget p2, Lus/zoom/zrcbox/R$id;->virtual_audio_device_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->virtualAudioDeviceName:Landroid/widget/TextView;

    .line 172
    sget p2, Lus/zoom/zrcbox/R$id;->selectable_devices_number_des:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->selectableDevicesNumberDes:Landroid/widget/TextView;

    .line 173
    sget p2, Lus/zoom/zrcbox/R$id;->search_box:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/login/widget/ZRCListSearchBox;

    iput-object p2, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->searchBox:Lus/zoom/zrc/login/widget/ZRCListSearchBox;

    .line 174
    sget p2, Lus/zoom/zrcbox/R$id;->devicesList:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    iput-object p2, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->devicesView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    .line 175
    sget p2, Lus/zoom/zrcbox/R$id;->show_all_devices:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    .line 176
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p3

    invoke-virtual {p3}, Lus/zoom/zrc/model/Model;->isShownAllVirtualAudioDevices()Z

    move-result p3

    invoke-virtual {p2, p3}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setCheckedOnlyForUI(Z)V

    .line 177
    new-instance p3, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$4;

    invoke-direct {p3, p0}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$4;-><init>(Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;)V

    invoke-virtual {p2, p3}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setOnSwitchChangedListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 185
    iget-object p2, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->mediaDeviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isVirtualAudioDevice()Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 189
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/Model;->getVirtualAudioDeviceList()Ljava/util/HashMap;

    move-result-object p2

    .line 190
    iget-object p3, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->mediaDeviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    invoke-virtual {p3}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-eqz p3, :cond_1

    .line 192
    invoke-static {p3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 194
    :cond_1
    iget-object p3, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->mediaDeviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    invoke-virtual {p3}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-direct {p0, p2}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->networkDeviceFilter(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 196
    new-instance p3, Lus/zoom/zrc/settings/NetworkDeviceAdapter;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->mediaDeviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getVirtualAudioDeviceDesc()Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;->getMaxSelectedCounts()I

    move-result v1

    invoke-direct {p3, v0, p2, v1}, Lus/zoom/zrc/settings/NetworkDeviceAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object p3, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->adapter:Lus/zoom/zrc/settings/NetworkDeviceAdapter;

    .line 198
    iget-object p2, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->adapter:Lus/zoom/zrc/settings/NetworkDeviceAdapter;

    new-instance p3, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$5;

    invoke-direct {p3, p0}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$5;-><init>(Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;)V

    invoke-virtual {p2, p3}, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->setOnItemClickListener(Lus/zoom/zrc/settings/NetworkDeviceAdapter$OnItemClickListener;)V

    .line 213
    iget-object p2, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->adapter:Lus/zoom/zrc/settings/NetworkDeviceAdapter;

    new-instance p3, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$6;

    invoke-direct {p3, p0}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment$6;-><init>(Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;)V

    invoke-virtual {p2, p3}, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->setOnIdentityClickListener(Lus/zoom/zrc/settings/NetworkDeviceAdapter$OnIdentityClickListener;)V

    .line 221
    iget-object p2, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->devicesView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    new-instance p3, Lus/zoom/zrc/base/widget/GapDividerItemDecoration;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p3, v0, v1}, Lus/zoom/zrc/base/widget/GapDividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, p3}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 222
    iget-object p2, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->devicesView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    iget-object p3, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->adapter:Lus/zoom/zrc/settings/NetworkDeviceAdapter;

    invoke-virtual {p2, p3}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 223
    iget-object p2, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->devicesView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    iget-object p3, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->searchBox:Lus/zoom/zrc/login/widget/ZRCListSearchBox;

    invoke-virtual {p2, p3}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->setSearchBox(Lus/zoom/zrc/login/widget/ZRCListSearchBox;)V

    .line 224
    iget-object p2, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->devicesView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    invoke-virtual {p2}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->disableShadowCorner()V

    .line 225
    iget-object p2, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->devicesView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    invoke-virtual {p2}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->setDisableShadow()V

    .line 226
    new-instance p2, Lus/zoom/zrc/view/RecyclerViewDivider;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v0, 0x0

    sget v1, Lus/zoom/zrcbox/R$drawable;->network_device_item_divider:I

    invoke-direct {p2, p3, v0, v1}, Lus/zoom/zrc/view/RecyclerViewDivider;-><init>(Landroid/content/Context;II)V

    .line 228
    iget-object p3, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->devicesView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    invoke-virtual {p3, p2}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-object p1

    .line 186
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->dismiss()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 251
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onDestroy()V

    .line 252
    iget-object v0, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->keyboardDetector:Lus/zoom/zrc/settings/SettingKeyboardDetector;

    invoke-virtual {v0}, Lus/zoom/zrc/settings/SettingKeyboardDetector;->releaseDetector()V

    .line 253
    invoke-static {}, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->getInstance()Lus/zoom/zrc/base/app/ZRCUIElementsManager;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->uiListener:Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListenerAdapter;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->removeListener(Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListener;)V

    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 85
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->settingsDeviceInfo:I

    if-ne p1, p2, :cond_0

    .line 86
    invoke-direct {p0}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->onUpdateSettingsDeviceInfo()V

    goto :goto_0

    .line 87
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->virtualAudioDeviceList:I

    if-ne p1, p2, :cond_1

    .line 88
    invoke-direct {p0}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->updateNetworkDeviceInfo()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 5

    .line 136
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onStart()V

    .line 137
    iget-object v0, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->devicesView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->onStart()V

    .line 138
    iget-object v0, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->virtualAudioDeviceName:Landroid/widget/TextView;

    invoke-static {v0}, Lus/zoom/zrc/utils/ZRCAccessibilityUtils;->sendFirstItemAccessibility(Landroid/view/View;)V

    .line 139
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->mediaDeviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getVirtualAudioDeviceDesc()Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->mediaDeviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lus/zoom/zrcsdk/PTApp;->requestAvailableNetworkDevice(Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 140
    invoke-direct {p0}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->updateVirtualAudioDeviceInfo()V

    .line 141
    invoke-virtual {p0}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 142
    invoke-virtual {p0}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    .line 145
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-le v1, v2, :cond_1

    const/high16 v1, 0x4000000

    .line 146
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_1
    const/16 v1, 0x400

    .line 148
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 149
    iget-boolean v1, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->isTablet:Z

    if-eqz v1, :cond_2

    .line 150
    invoke-virtual {p0}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$dimen;->settings_dialog_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lus/zoom/zrc/utils/Util;->getHeight(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f59999a    # 0.85f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    .line 152
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 245
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onStop()V

    .line 246
    iget-object v0, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->devicesView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->onStop()V

    return-void
.end method

.method public setDeviceInfo(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lus/zoom/zrc/settings/VirtualAudioDeviceDialogFragment;->mediaDeviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    return-void
.end method
