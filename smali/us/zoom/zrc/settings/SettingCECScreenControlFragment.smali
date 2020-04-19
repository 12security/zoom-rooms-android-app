.class public Lus/zoom/zrc/settings/SettingCECScreenControlFragment;
.super Lus/zoom/zrc/settings/SettingBaseFragment;
.source "SettingCECScreenControlFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "SettingCECScreenControlFragment"


# instance fields
.field private backBtn:Landroid/view/View;

.field private handler:Landroid/os/Handler;

.field private powerBtnTips:Landroid/view/View;

.field private powerOffBtn:Landroid/widget/Button;

.field private powerOnBtn:Landroid/widget/Button;

.field private title:Landroid/view/View;

.field private warning:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/settings/SettingCECScreenControlFragment;Z)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->setLocked(Z)V

    return-void
.end method

.method private onUpdateLockedState()V
    .locals 1

    .line 114
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isSettingsLocked()Z

    move-result v0

    .line 115
    invoke-direct {p0, v0}, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->setLocked(Z)V

    return-void
.end method

.method private onUpdateRoomScreenInfoView()V
    .locals 7

    .line 98
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getRoomScreenInfo()Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;->getQuantityOfScreens()I

    move-result v1

    .line 100
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;->getQuantityOfCecAdapterAttachedScreens()I

    move-result v0

    if-gt v1, v0, :cond_0

    .line 102
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->warning:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 104
    :cond_0
    iget-object v2, p0, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->warning:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v2, p0, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->warning:Landroid/widget/TextView;

    .line 106
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lus/zoom/zrcbox/R$string;->cec_control_warning:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    sub-int v0, v1, v0

    .line 108
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    const/4 v0, 0x1

    .line 109
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    .line 106
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private powerOnCecScreens(Z)V
    .locals 3

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "powerOnCecScreens "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/PTApp;->turnScreensOn(Z)I

    move-result p1

    if-nez p1, :cond_0

    .line 143
    sget p1, Lus/zoom/zrcbox/R$string;->cec_control_in_progress:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->showWaitingDialog(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p1, 0x1

    .line 145
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->setLocked(Z)V

    .line 146
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->handler:Landroid/os/Handler;

    if-nez p1, :cond_1

    .line 147
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->handler:Landroid/os/Handler;

    .line 149
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->handler:Landroid/os/Handler;

    new-instance v0, Lus/zoom/zrc/settings/SettingCECScreenControlFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/settings/SettingCECScreenControlFragment$1;-><init>(Lus/zoom/zrc/settings/SettingCECScreenControlFragment;)V

    const-wide/16 v1, 0x1770

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setLocked(Z)V
    .locals 2

    .line 119
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->powerOnBtn:Landroid/widget/Button;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 120
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->powerOffBtn:Landroid/widget/Button;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 121
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->powerBtnTips:Landroid/view/View;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public controlViewVisible()V
    .locals 6

    .line 78
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->isInMeeting()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
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

    .line 88
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

    .line 90
    :goto_0
    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->batchHideView(Ljava/util/List;)V

    .line 91
    invoke-virtual {p0, v4}, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->batchShowView(Ljava/util/List;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 128
    sget v1, Lus/zoom/zrcbox/R$id;->btn_power_on:I

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    .line 129
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->powerOnCecScreens(Z)V

    goto :goto_0

    .line 131
    :cond_0
    sget v1, Lus/zoom/zrcbox/R$id;->btn_power_off:I

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    .line 132
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->powerOnCecScreens(Z)V

    goto :goto_0

    .line 133
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->backBtn:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 134
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->onBack()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 47
    invoke-super {p0, p1}, Lus/zoom/zrc/settings/SettingBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

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

    .line 54
    sget p3, Lus/zoom/zrcbox/R$layout;->setting_cec_screens_control_constraint:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 55
    sget p2, Lus/zoom/zrcbox/R$id;->btn_power_on:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->powerOnBtn:Landroid/widget/Button;

    .line 56
    sget p2, Lus/zoom/zrcbox/R$id;->btn_power_off:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->powerOffBtn:Landroid/widget/Button;

    .line 57
    sget p2, Lus/zoom/zrcbox/R$id;->tv_cec_control_warning:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->warning:Landroid/widget/TextView;

    .line 58
    sget p2, Lus/zoom/zrcbox/R$id;->back_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->backBtn:Landroid/view/View;

    .line 59
    sget p2, Lus/zoom/zrcbox/R$id;->power_btn_tips:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->powerBtnTips:Landroid/view/View;

    .line 60
    sget p2, Lus/zoom/zrcbox/R$id;->txtTitle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->title:Landroid/view/View;

    .line 61
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->powerOnBtn:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->powerOffBtn:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->backBtn:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->backBtn:Landroid/view/View;

    invoke-static {p2}, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->setBackToSettingsContentDescription(Landroid/view/View;)V

    return-object p1
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 37
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/settings/SettingBaseFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 38
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->roomScreenInfo:I

    if-ne p1, p2, :cond_0

    .line 39
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->onUpdateRoomScreenInfoView()V

    goto :goto_0

    .line 40
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->settingsLocked:I

    if-ne p1, p2, :cond_1

    .line 41
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->onUpdateLockedState()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 70
    invoke-super {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;->onStart()V

    .line 71
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->title:Landroid/view/View;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->sendFirstItemAccessibility(Landroid/view/View;)V

    .line 72
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->onUpdateRoomScreenInfoView()V

    .line 73
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingCECScreenControlFragment;->onUpdateLockedState()V

    return-void
.end method
