.class public Lus/zoom/zrc/settings/SettingBaseFragment;
.super Lus/zoom/zrc/base/app/ZRCFragment;
.source "SettingBaseFragment.java"


# instance fields
.field private isTablet:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCFragment;-><init>()V

    return-void
.end method

.method private hideView(ILandroid/view/View;)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    if-nez p2, :cond_0

    return-void

    .line 173
    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private isInSipCall()Z
    .locals 2

    .line 90
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 92
    instance-of v1, v0, Lus/zoom/zrc/phonecall/SipCallFragment;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 95
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isPstnCall()Z
    .locals 2

    .line 101
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 103
    instance-of v1, v0, Lus/zoom/zrc/phonecall/PhoneCallFragment;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 106
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static setBackContentDescription(Landroid/view/View;Ljava/lang/String;)V
    .locals 4

    .line 42
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    .line 43
    sget v1, Lus/zoom/zrcbox/R$string;->back_to:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static setBackToSettingsContentDescription(Landroid/view/View;)V
    .locals 2

    .line 36
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    .line 37
    sget v1, Lus/zoom/zrcbox/R$string;->settings:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {p0, v0}, Lus/zoom/zrc/settings/SettingBaseFragment;->setBackContentDescription(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected batchHideView(Ljava/util/List;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 148
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 151
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 152
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 153
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lus/zoom/zrc/settings/SettingBaseFragment;->hideView(ILandroid/view/View;)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method protected batchShowView(Ljava/util/List;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 159
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 162
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 163
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 164
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lus/zoom/zrc/settings/SettingBaseFragment;->showView(ILandroid/view/View;)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public controlViewVisible()V
    .locals 0

    return-void
.end method

.method public isInMeeting()Z
    .locals 1

    .line 82
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lus/zoom/zrc/MeetingActivity;

    return v0
.end method

.method isInPhoneCall()Z
    .locals 1

    .line 86
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;->isInSipCall()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;->isPstnCall()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isTablet()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lus/zoom/zrc/settings/SettingBaseFragment;->isTablet:Z

    return v0
.end method

.method isZRCMode()Z
    .locals 2

    .line 116
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getWorkMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isZRPMode()Z
    .locals 2

    .line 112
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getWorkMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method onBack()V
    .locals 3

    .line 120
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const-string v1, "parentFragment"

    .line 121
    invoke-static {v1, v0}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 122
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v1

    sget-object v2, Lus/zoom/zrc/settings/SettingEvent;->OP_BACK:Lus/zoom/zrc/settings/SettingEvent;

    invoke-virtual {v1, v2, v0}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    const-string v0, "onBack"

    const/4 v1, 0x0

    .line 123
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 52
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/androidlib/util/UIUtil;->isTabletOrTV(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lus/zoom/zrc/settings/SettingBaseFragment;->isTablet:Z

    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 60
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;->isZRPMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$style;->ZRPTheme_Settings:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    .line 62
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;->isInMeeting()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;->isInPhoneCall()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 65
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$style;->ZRCTheme_Settings_PreMeeting:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    .line 63
    :cond_2
    :goto_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$style;->ZRCTheme_Settings_InMeeting:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 67
    :goto_1
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCFragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 68
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    return-object p1
.end method

.method public onStart()V
    .locals 0

    .line 73
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->onStart()V

    .line 74
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;->controlViewVisible()V

    return-void
.end method

.method public sendFirstItemAccessibility(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_4

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 133
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;->isInMeeting()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lus/zoom/zrc/settings/SettingBaseFragment;->isTablet:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;->isZRPMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;->isInPhoneCall()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 134
    :cond_2
    new-instance v0, Lus/zoom/zrc/settings/SettingBaseFragment$1;

    invoke-direct {v0, p0, p1}, Lus/zoom/zrc/settings/SettingBaseFragment$1;-><init>(Lus/zoom/zrc/settings/SettingBaseFragment;Landroid/view/View;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method showView(ILandroid/view/View;)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    if-nez p2, :cond_0

    return-void

    .line 180
    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
