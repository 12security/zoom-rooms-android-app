.class public Lus/zoom/zrc/settings/SettingsFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "SettingsFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SettingsFragment"


# instance fields
.field private isTablet:Z

.field private mAutoDismissTimerManager:Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/settings/SettingsFragment;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingsFragment;->close()V

    return-void
.end method

.method private back()V
    .locals 2

    .line 246
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingsFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 247
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingsFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->popBackStack()V

    goto :goto_0

    .line 249
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingsFragment;->close()V

    :goto_0
    return-void
.end method

.method private close()V
    .locals 0

    .line 254
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingsFragment;->dismissWaitingDialog()V

    .line 255
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingsFragment;->dismiss()V

    return-void
.end method

.method private controlViewVisible()V
    .locals 5

    .line 164
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 167
    :cond_0
    iget-boolean v0, p0, Lus/zoom/zrc/settings/SettingsFragment;->isTablet:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingsFragment;->isInMeeting()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingsFragment;->isInPhoneCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v2, Lus/zoom/zrcbox/R$id;->left_content:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 169
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42340000    # 45.0f

    const/4 v4, 0x0

    invoke-direct {v2, v4, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$color;->zrc_settings_menu:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 171
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$id;->right_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 173
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v2, Lus/zoom/zrcbox/R$id;->left_content:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$id;->right_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private getFragmentInstance(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 3

    const/4 v0, 0x0

    .line 221
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 223
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move-object p1, v0

    :goto_0
    if-nez p1, :cond_0

    return-object v0

    .line 228
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingsFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 231
    :try_start_1
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 239
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p1

    .line 237
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception p1

    .line 235
    invoke-virtual {p1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception p1

    .line 233
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_1
    :goto_1
    move-object p1, v0

    :goto_2
    return-object p1
.end method

.method private isInMeeting()Z
    .locals 1

    .line 259
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lus/zoom/zrc/MeetingActivity;

    return v0
.end method

.method private isInPhoneCall()Z
    .locals 1

    .line 263
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingsFragment;->isInSipCall1()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingsFragment;->isPstnCall()Z

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

.method private isInSipCall1()Z
    .locals 1

    .line 267
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingsFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lus/zoom/zrc/phonecall/SipCallFragment;

    return v0
.end method

.method private isPstnCall()Z
    .locals 1

    .line 271
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingsFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lus/zoom/zrc/phonecall/PhoneCallFragment;

    return v0
.end method

.method private opLeftContent(Ljava/lang/String;)V
    .locals 2

    .line 179
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingsFragment;->getFragmentInstance(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 180
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingsFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$id;->left_content:I

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->appendShowFragment(ILandroidx/fragment/app/Fragment;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private opRightContent(Ljava/lang/String;)V
    .locals 2

    .line 187
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingsFragment;->getFragmentInstance(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 188
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingsFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->clearTopFragment(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 194
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingsFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$id;->right_content:I

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->appendShowFragment(ILandroidx/fragment/app/Fragment;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private opSubContent(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 198
    invoke-direct {p0, p3}, Lus/zoom/zrc/settings/SettingsFragment;->getFragmentInstance(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p3

    .line 199
    invoke-direct {p0, p2}, Lus/zoom/zrc/settings/SettingsFragment;->getFragmentInstance(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 203
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 206
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingsFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->addShowFragment(ILandroidx/fragment/app/Fragment;)V

    .line 207
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingsFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    invoke-virtual {p1, p3}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showAddedFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method private opSubContentBack(Ljava/lang/String;)V
    .locals 1

    .line 211
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingsFragment;->getFragmentInstance(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 212
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingsFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->popBackStack()V

    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 151
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingsFragment;->controlViewVisible()V

    .line 152
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingsFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->clearFragmentStack()V

    .line 154
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingsFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 155
    const-class v0, Lus/zoom/zrc/settings/SettingMenuFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/settings/SettingsFragment;->opLeftContent(Ljava/lang/String;)V

    .line 157
    :cond_0
    iget-boolean v0, p0, Lus/zoom/zrc/settings/SettingsFragment;->isTablet:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingsFragment;->isInMeeting()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingsFragment;->isInPhoneCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    const-class v0, Lus/zoom/zrc/settings/SettingRoomFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/settings/SettingsFragment;->opRightContent(Ljava/lang/String;)V

    .line 160
    :cond_1
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 81
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingsFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Lus/zoom/zrc/base/notification/NotificationEvent;

    invoke-virtual {p1, v1}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerNotification([Lus/zoom/zrc/base/notification/NotificationEvent;)V

    .line 84
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lus/zoom/zrc/settings/SettingsFragment;->isTablet:Z

    const/4 p1, 0x1

    .line 85
    invoke-virtual {p0, p1, v0}, Lus/zoom/zrc/settings/SettingsFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 92
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingsFragment;->isInMeeting()Z

    move-result p3

    if-nez p3, :cond_1

    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingsFragment;->isInPhoneCall()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    new-instance p3, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$style;->ZRCTheme_Settings_PreMeeting:I

    invoke-direct {p3, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    .line 93
    :cond_1
    :goto_0
    new-instance p3, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$style;->ZRCTheme_Settings_InMeeting:I

    invoke-direct {p3, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 97
    :goto_1
    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 98
    sget p3, Lus/zoom/zrcbox/R$layout;->settings_container_view:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .line 76
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingsFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->dispatchHiddenChanged(Z)V

    return-void
.end method

.method public onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 2

    .line 43
    instance-of v0, p2, Lcom/google/common/collect/ImmutableMap;

    if-nez v0, :cond_0

    return-void

    .line 46
    :cond_0
    check-cast p2, Lcom/google/common/collect/ImmutableMap;

    const-string v0, "parentFragment"

    invoke-virtual {p2, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 47
    instance-of v1, v0, Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    return-void

    .line 50
    :cond_1
    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_2

    return-void

    :cond_2
    const-string v0, "fragmentClass"

    .line 53
    invoke-virtual {p2, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 54
    sget-object v1, Lus/zoom/zrc/settings/SettingEvent;->OP_LEFT_CONTENT:Lus/zoom/zrc/settings/SettingEvent;

    if-ne p1, v1, :cond_3

    .line 55
    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lus/zoom/zrc/settings/SettingsFragment;->opLeftContent(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_3
    sget-object v1, Lus/zoom/zrc/settings/SettingEvent;->OP_RIGHT_CONTENT:Lus/zoom/zrc/settings/SettingEvent;

    if-ne p1, v1, :cond_4

    .line 57
    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lus/zoom/zrc/settings/SettingsFragment;->opRightContent(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_4
    sget-object v1, Lus/zoom/zrc/settings/SettingEvent;->OP_BACK:Lus/zoom/zrc/settings/SettingEvent;

    if-ne p1, v1, :cond_5

    .line 59
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingsFragment;->back()V

    goto :goto_0

    .line 60
    :cond_5
    sget-object v1, Lus/zoom/zrc/settings/SettingEvent;->OP_SUB_CONTENT:Lus/zoom/zrc/settings/SettingEvent;

    if-ne p1, v1, :cond_7

    const-string p1, "from"

    .line 62
    invoke-virtual {p2, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "to"

    .line 63
    invoke-virtual {p2, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 64
    sget v0, Lus/zoom/zrcbox/R$id;->left_content:I

    .line 65
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingsFragment;->isInMeeting()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingsFragment;->isInPhoneCall()Z

    move-result v1

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lus/zoom/zrc/settings/SettingsFragment;->isTablet:Z

    if-eqz v1, :cond_6

    .line 66
    sget v0, Lus/zoom/zrcbox/R$id;->right_content:I

    .line 68
    :cond_6
    invoke-direct {p0, v0, p1, p2}, Lus/zoom/zrc/settings/SettingsFragment;->opSubContent(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_7
    sget-object p2, Lus/zoom/zrc/settings/SettingEvent;->OP_SUB_CONTENT_BACK:Lus/zoom/zrc/settings/SettingEvent;

    if-ne p1, p2, :cond_8

    .line 70
    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lus/zoom/zrc/settings/SettingsFragment;->opSubContentBack(Ljava/lang/String;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 143
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingsFragment;->mAutoDismissTimerManager:Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;->stop()V

    .line 146
    :cond_0
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 103
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onStart()V

    .line 104
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingsFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingsFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 107
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingsFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 108
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingsFragment;->isInMeeting()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingsFragment;->isInPhoneCall()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget-boolean v1, p0, Lus/zoom/zrc/settings/SettingsFragment;->isTablet:Z

    if-eqz v1, :cond_3

    .line 109
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 112
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$dimen;->settings_dialog_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lus/zoom/zrc/utils/Util;->getHeight(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f59999a    # 0.85f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    .line 114
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 116
    :goto_0
    iget-boolean v0, p0, Lus/zoom/zrc/settings/SettingsFragment;->isTablet:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingsFragment;->isInMeeting()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingsFragment;->isInPhoneCall()Z

    move-result v0

    if-nez v0, :cond_4

    .line 117
    new-instance v0, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;

    invoke-direct {v0, p0}, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;-><init>(Lus/zoom/zrc/base/app/ZRCDialogFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/settings/SettingsFragment;->mAutoDismissTimerManager:Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;

    .line 118
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingsFragment;->mAutoDismissTimerManager:Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;

    const-wide/32 v1, 0x927c0

    new-instance v3, Lus/zoom/zrc/settings/SettingsFragment$1;

    invoke-direct {v3, p0}, Lus/zoom/zrc/settings/SettingsFragment$1;-><init>(Lus/zoom/zrc/settings/SettingsFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;->startDelayDismissIfNoUserAction(JLjava/lang/Runnable;)V

    :cond_4
    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 135
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingsFragment;->mAutoDismissTimerManager:Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;->stop()V

    .line 138
    :cond_0
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onStop()V

    return-void
.end method
