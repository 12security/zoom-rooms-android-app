.class public Lus/zoom/zrc/settings/SettingDeviceProfileFragment;
.super Lus/zoom/zrc/settings/SettingBaseFragment;
.source "SettingDeviceProfileFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private adapter:Lus/zoom/zrc/view/adapter/SettingDeviceProfileAdapter;

.field private backBtn:Landroid/view/View;

.field private title:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/settings/SettingDeviceProfileFragment;Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;)Z
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingDeviceProfileFragment;->roomProfilesContains(Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/settings/SettingDeviceProfileFragment;Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingDeviceProfileFragment;->selectDeviceProfile(Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;)V

    return-void
.end method

.method private onUpdateLockedState()V
    .locals 2

    .line 101
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingDeviceProfileFragment;->adapter:Lus/zoom/zrc/view/adapter/SettingDeviceProfileAdapter;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->isSettingsLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingDeviceProfileFragment;->isInMeeting()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/adapter/SettingDeviceProfileAdapter;->setLockedState(Z)V

    return-void
.end method

.method private onUpdateRoomProfiles()V
    .locals 2

    .line 92
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getRoomProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingDeviceProfileFragment;->onBack()V

    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingDeviceProfileFragment;->adapter:Lus/zoom/zrc/view/adapter/SettingDeviceProfileAdapter;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getRoomProfiles()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/adapter/SettingDeviceProfileAdapter;->setRoomProfileList(Ljava/util/List;)V

    .line 97
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingDeviceProfileFragment;->adapter:Lus/zoom/zrc/view/adapter/SettingDeviceProfileAdapter;

    invoke-virtual {v0}, Lus/zoom/zrc/view/adapter/SettingDeviceProfileAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private roomProfilesContains(Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;)Z
    .locals 2

    .line 134
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getRoomProfiles()Ljava/util/List;

    move-result-object v0

    .line 135
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;

    if-nez v1, :cond_1

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {v1, p1}, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;->isSame(Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private selectDeviceProfile(Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectDeviceProfile roomProfile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrcsdk/PTApp;->selectRoomProfile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public controlViewVisible()V
    .locals 6

    .line 75
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingDeviceProfileFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingDeviceProfileFragment;->isInMeeting()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingDeviceProfileFragment;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    new-array v0, v3, [Ljava/lang/Integer;

    sget v3, Lus/zoom/zrcbox/R$id;->panelTitleBar:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    sget v2, Lus/zoom/zrcbox/R$id;->title_bottom_line:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 85
    :cond_1
    new-array v0, v3, [Ljava/lang/Integer;

    sget v3, Lus/zoom/zrcbox/R$id;->panelTitleBar:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    sget v2, Lus/zoom/zrcbox/R$id;->title_bottom_line:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v5, v4

    move-object v4, v0

    move-object v0, v5

    .line 87
    :goto_0
    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/SettingDeviceProfileFragment;->batchHideView(Ljava/util/List;)V

    .line 88
    invoke-virtual {p0, v4}, Lus/zoom/zrc/settings/SettingDeviceProfileFragment;->batchShowView(Ljava/util/List;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingDeviceProfileFragment;->backBtn:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingDeviceProfileFragment;->onBack()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 46
    invoke-super {p0, p1}, Lus/zoom/zrc/settings/SettingBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingDeviceProfileFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
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

    .line 53
    sget p3, Lus/zoom/zrcbox/R$layout;->setting_device_profile:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 54
    sget p2, Lus/zoom/zrcbox/R$id;->txtTitle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingDeviceProfileFragment;->title:Landroid/view/View;

    .line 55
    sget p2, Lus/zoom/zrcbox/R$id;->back_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingDeviceProfileFragment;->backBtn:Landroid/view/View;

    .line 56
    sget p2, Lus/zoom/zrcbox/R$id;->source_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    .line 57
    new-instance p3, Lus/zoom/zrc/view/adapter/SettingDeviceProfileAdapter;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingDeviceProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lus/zoom/zrc/view/adapter/SettingDeviceProfileAdapter;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lus/zoom/zrc/settings/SettingDeviceProfileFragment;->adapter:Lus/zoom/zrc/view/adapter/SettingDeviceProfileAdapter;

    .line 58
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingDeviceProfileFragment;->adapter:Lus/zoom/zrc/view/adapter/SettingDeviceProfileAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 59
    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 60
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingDeviceProfileFragment;->backBtn:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingDeviceProfileFragment;->backBtn:Landroid/view/View;

    invoke-static {p2}, Lus/zoom/zrc/settings/SettingDeviceProfileFragment;->setBackToSettingsContentDescription(Landroid/view/View;)V

    return-object p1
.end method

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

    .line 106
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingDeviceProfileFragment;->adapter:Lus/zoom/zrc/view/adapter/SettingDeviceProfileAdapter;

    invoke-virtual {p1, p3}, Lus/zoom/zrc/view/adapter/SettingDeviceProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;

    .line 107
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "item click to select device profile ="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    .line 108
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;->isSelected()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/Model;->isSettingsLocked()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingDeviceProfileFragment;->isInMeeting()Z

    move-result p2

    if-nez p2, :cond_1

    .line 112
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingDeviceProfileFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p2

    sget p3, Lus/zoom/zrcbox/R$string;->unlock_settings_message:I

    invoke-virtual {p0, p3}, Lus/zoom/zrc/settings/SettingDeviceProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Lus/zoom/zrc/settings/SettingDeviceProfileFragment$1;

    invoke-direct {p4, p0, p1}, Lus/zoom/zrc/settings/SettingDeviceProfileFragment$1;-><init>(Lus/zoom/zrc/settings/SettingDeviceProfileFragment;Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;)V

    invoke-static {p2, p3, p4}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/CharSequence;Lus/zoom/androidlib/util/EventAction;)V

    return-void

    .line 122
    :cond_1
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingDeviceProfileFragment;->selectDeviceProfile(Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 36
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/settings/SettingBaseFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 37
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->roomProfiles:I

    if-ne p1, p2, :cond_0

    .line 38
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingDeviceProfileFragment;->onUpdateRoomProfiles()V

    goto :goto_0

    .line 39
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->settingsLocked:I

    if-ne p1, p2, :cond_1

    .line 40
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingDeviceProfileFragment;->onUpdateLockedState()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 67
    invoke-super {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;->onStart()V

    .line 68
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingDeviceProfileFragment;->title:Landroid/view/View;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/SettingDeviceProfileFragment;->sendFirstItemAccessibility(Landroid/view/View;)V

    .line 69
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingDeviceProfileFragment;->onUpdateRoomProfiles()V

    .line 70
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingDeviceProfileFragment;->onUpdateLockedState()V

    return-void
.end method
