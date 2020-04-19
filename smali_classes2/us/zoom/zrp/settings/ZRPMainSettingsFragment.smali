.class public Lus/zoom/zrp/settings/ZRPMainSettingsFragment;
.super Lus/zoom/zrc/settings/SettingBaseFragment;
.source "ZRPMainSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrp/settings/ZRPMainSettingsFragment$Listener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ZRPMainSettingsFragment"


# instance fields
.field private listener:Lus/zoom/zrp/settings/ZRPMainSettingsFragment$Listener;

.field private lockView:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

.field private roomNameView:Landroid/widget/TextView;

.field private title:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrp/settings/ZRPMainSettingsFragment;Z)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lus/zoom/zrp/settings/ZRPMainSettingsFragment;->onCheckedChangedForLockSettingsSwitch(Z)V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrp/settings/ZRPMainSettingsFragment;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lus/zoom/zrp/settings/ZRPMainSettingsFragment;->onUnlockForLockSettingsSwitch()V

    return-void
.end method

.method static synthetic access$200(Lus/zoom/zrp/settings/ZRPMainSettingsFragment;)Lus/zoom/zrp/settings/ZRPMainSettingsFragment$Listener;
    .locals 0

    .line 31
    iget-object p0, p0, Lus/zoom/zrp/settings/ZRPMainSettingsFragment;->listener:Lus/zoom/zrp/settings/ZRPMainSettingsFragment$Listener;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/zrp/settings/ZRPMainSettingsFragment;)Lus/zoom/zrc/base/widget/ZRCSwitchButton;
    .locals 0

    .line 31
    iget-object p0, p0, Lus/zoom/zrp/settings/ZRPMainSettingsFragment;->lockView:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    return-object p0
.end method

.method private onCheckedChangedForLockSettingsSwitch(Z)V
    .locals 1

    .line 125
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isSettingsLocked()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 126
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/AppModel;->setSettingsLocked(Z)V

    if-eqz p1, :cond_0

    .line 128
    invoke-static {}, Lus/zoom/zrp/util/ZRPUsageTrace;->lockSettings()V

    goto :goto_0

    .line 130
    :cond_0
    invoke-static {}, Lus/zoom/zrp/util/ZRPUsageTrace;->unlockSettings()V

    :cond_1
    :goto_0
    return-void
.end method

.method private onUnlockForLockSettingsSwitch()V
    .locals 3

    .line 116
    invoke-virtual {p0}, Lus/zoom/zrp/settings/ZRPMainSettingsFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->unlock_settings_message:I

    invoke-virtual {p0, v1}, Lus/zoom/zrp/settings/ZRPMainSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lus/zoom/zrp/settings/ZRPMainSettingsFragment$6;

    invoke-direct {v2, p0}, Lus/zoom/zrp/settings/ZRPMainSettingsFragment$6;-><init>(Lus/zoom/zrp/settings/ZRPMainSettingsFragment;)V

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/CharSequence;Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 53
    invoke-super {p0, p1}, Lus/zoom/zrc/settings/SettingBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lus/zoom/zrp/settings/ZRPMainSettingsFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

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
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 60
    sget p3, Lus/zoom/zrcbox/R$layout;->zrp_settings_main_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 145
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/settings/SettingBaseFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 146
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->roomInfo:I

    if-eq p1, p2, :cond_1

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->userProfile:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->settingsLocked:I

    if-ne p1, p2, :cond_2

    .line 150
    iget-object p1, p0, Lus/zoom/zrp/settings/ZRPMainSettingsFragment;->lockView:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/Model;->isSettingsLocked()Z

    move-result p2

    invoke-virtual {p1, p2}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setCheckedOnlyForUI(Z)V

    goto :goto_1

    .line 148
    :cond_1
    :goto_0
    iget-object p1, p0, Lus/zoom/zrp/settings/ZRPMainSettingsFragment;->roomNameView:Landroid/widget/TextView;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/Model;->getDisplayRoomName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 138
    invoke-super {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;->onStart()V

    .line 139
    iget-object v0, p0, Lus/zoom/zrp/settings/ZRPMainSettingsFragment;->roomNameView:Landroid/widget/TextView;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getDisplayRoomName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lus/zoom/zrp/settings/ZRPMainSettingsFragment;->title:Landroid/view/View;

    invoke-virtual {p0, v0}, Lus/zoom/zrp/settings/ZRPMainSettingsFragment;->sendFirstItemAccessibility(Landroid/view/View;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 65
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/settings/SettingBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 66
    sget p2, Lus/zoom/zrcbox/R$id;->room_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrp/settings/ZRPMainSettingsFragment;->roomNameView:Landroid/widget/TextView;

    .line 67
    iget-object p2, p0, Lus/zoom/zrp/settings/ZRPMainSettingsFragment;->roomNameView:Landroid/widget/TextView;

    invoke-static {p2}, Lus/zoom/zrc/utils/ZRCUIUtils;->setRightArrowFor(Landroid/widget/TextView;)V

    .line 68
    sget p2, Lus/zoom/zrcbox/R$id;->txtTitle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrp/settings/ZRPMainSettingsFragment;->title:Landroid/view/View;

    .line 69
    sget p2, Lus/zoom/zrcbox/R$id;->lock_settings:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    iput-object p2, p0, Lus/zoom/zrp/settings/ZRPMainSettingsFragment;->lockView:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    .line 70
    sget p2, Lus/zoom/zrcbox/R$id;->done:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 71
    iget-object v0, p0, Lus/zoom/zrp/settings/ZRPMainSettingsFragment;->lockView:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->isSettingsLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setCheckedOnlyForUI(Z)V

    .line 72
    iget-object v0, p0, Lus/zoom/zrp/settings/ZRPMainSettingsFragment;->lockView:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    new-instance v1, Lus/zoom/zrp/settings/ZRPMainSettingsFragment$1;

    invoke-direct {v1, p0}, Lus/zoom/zrp/settings/ZRPMainSettingsFragment$1;-><init>(Lus/zoom/zrp/settings/ZRPMainSettingsFragment;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setOnSwitchChangedListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 78
    iget-object v0, p0, Lus/zoom/zrp/settings/ZRPMainSettingsFragment;->lockView:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    new-instance v1, Lus/zoom/zrp/settings/ZRPMainSettingsFragment$2;

    invoke-direct {v1, p0}, Lus/zoom/zrp/settings/ZRPMainSettingsFragment$2;-><init>(Lus/zoom/zrp/settings/ZRPMainSettingsFragment;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setBlockedCheckedChangeAction(Lus/zoom/zrc/base/widget/ZRCSwitchButton$OnBlockedCheckedChange;)V

    .line 90
    new-instance v0, Lus/zoom/zrp/settings/ZRPMainSettingsFragment$3;

    invoke-direct {v0, p0}, Lus/zoom/zrp/settings/ZRPMainSettingsFragment$3;-><init>(Lus/zoom/zrp/settings/ZRPMainSettingsFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    sget p2, Lus/zoom/zrcbox/R$id;->room_settings:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 98
    new-instance v0, Lus/zoom/zrp/settings/ZRPMainSettingsFragment$4;

    invoke-direct {v0, p0}, Lus/zoom/zrp/settings/ZRPMainSettingsFragment$4;-><init>(Lus/zoom/zrp/settings/ZRPMainSettingsFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    sget p2, Lus/zoom/zrcbox/R$id;->about_settings:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 106
    invoke-virtual {p0}, Lus/zoom/zrp/settings/ZRPMainSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lus/zoom/zrcbox/R$color;->zrc_gray2:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-static {p1, p2}, Lus/zoom/zrc/utils/ZRCUIUtils;->setRightArrowFor(Landroid/widget/TextView;I)V

    .line 107
    new-instance p2, Lus/zoom/zrp/settings/ZRPMainSettingsFragment$5;

    invoke-direct {p2, p0}, Lus/zoom/zrp/settings/ZRPMainSettingsFragment$5;-><init>(Lus/zoom/zrp/settings/ZRPMainSettingsFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setListener(Lus/zoom/zrp/settings/ZRPMainSettingsFragment$Listener;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lus/zoom/zrp/settings/ZRPMainSettingsFragment;->listener:Lus/zoom/zrp/settings/ZRPMainSettingsFragment$Listener;

    return-void
.end method
