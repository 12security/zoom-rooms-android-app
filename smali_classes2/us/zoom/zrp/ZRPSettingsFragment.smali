.class public Lus/zoom/zrp/ZRPSettingsFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "ZRPSettingsFragment.java"

# interfaces
.implements Lus/zoom/zrp/settings/ZRPMainSettingsFragment$Listener;
.implements Lus/zoom/zrp/listener/OnSettingsBackClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "ZRPSettingsFragment"


# instance fields
.field private aboutSettingsFragment:Lus/zoom/zrc/settings/SettingAboutFragment;

.field private mainSettingsFragment:Lus/zoom/zrp/settings/ZRPMainSettingsFragment;

.field private roomSettingsFragment:Lus/zoom/zrc/settings/SettingRoomFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrp/ZRPSettingsFragment;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lus/zoom/zrp/ZRPSettingsFragment;->onBackPressed()V

    return-void
.end method

.method private onBackPressed()V
    .locals 2

    .line 128
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPSettingsFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 130
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPSettingsFragment;->dismiss()V

    :goto_0
    return-void
.end method

.method private showFragment(Landroidx/fragment/app/Fragment;ZLjava/lang/String;)V
    .locals 2

    .line 137
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPSettingsFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 139
    sget v1, Lus/zoom/zrcbox/R$id;->settings_content:I

    invoke-virtual {v0, v1, p1, p3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    if-eqz p2, :cond_0

    .line 141
    sget p1, Lus/zoom/zrcbox/R$anim;->slide_in_left:I

    sget p2, Lus/zoom/zrcbox/R$anim;->slide_out_right:I

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    const/4 p1, 0x0

    .line 142
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 144
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method public onAboutSettingsClicked()V
    .locals 3

    .line 120
    iget-object v0, p0, Lus/zoom/zrp/ZRPSettingsFragment;->aboutSettingsFragment:Lus/zoom/zrc/settings/SettingAboutFragment;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lus/zoom/zrc/settings/SettingAboutFragment;

    invoke-direct {v0}, Lus/zoom/zrc/settings/SettingAboutFragment;-><init>()V

    iput-object v0, p0, Lus/zoom/zrp/ZRPSettingsFragment;->aboutSettingsFragment:Lus/zoom/zrc/settings/SettingAboutFragment;

    .line 123
    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/ZRPSettingsFragment;->aboutSettingsFragment:Lus/zoom/zrc/settings/SettingAboutFragment;

    const/4 v1, 0x1

    const-string v2, "SettingAboutFragment"

    invoke-direct {p0, v0, v1, v2}, Lus/zoom/zrp/ZRPSettingsFragment;->showFragment(Landroidx/fragment/app/Fragment;ZLjava/lang/String;)V

    const-string v0, "About"

    .line 124
    invoke-static {v0}, Lus/zoom/zrp/util/ZRPUsageTrace;->selectSettingsItem(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 50
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPSettingsFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Lus/zoom/zrc/base/notification/NotificationEvent;

    invoke-virtual {p1, v1}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerNotification([Lus/zoom/zrc/base/notification/NotificationEvent;)V

    .line 52
    invoke-virtual {p0, v0}, Lus/zoom/zrp/ZRPSettingsFragment;->setCancelable(Z)V

    .line 53
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPSettingsFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 54
    sget-object v0, Lus/zoom/zrp/settings/ZRPMainSettingsFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrp/settings/ZRPMainSettingsFragment;

    iput-object v0, p0, Lus/zoom/zrp/ZRPSettingsFragment;->mainSettingsFragment:Lus/zoom/zrp/settings/ZRPMainSettingsFragment;

    const-string v0, "SettingRoomFragment"

    .line 55
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/settings/SettingRoomFragment;

    iput-object v0, p0, Lus/zoom/zrp/ZRPSettingsFragment;->roomSettingsFragment:Lus/zoom/zrc/settings/SettingRoomFragment;

    const-string v0, "SettingAboutFragment"

    .line 56
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/settings/SettingAboutFragment;

    iput-object p1, p0, Lus/zoom/zrp/ZRPSettingsFragment;->aboutSettingsFragment:Lus/zoom/zrc/settings/SettingAboutFragment;

    .line 57
    iget-object p1, p0, Lus/zoom/zrp/ZRPSettingsFragment;->mainSettingsFragment:Lus/zoom/zrp/settings/ZRPMainSettingsFragment;

    if-nez p1, :cond_0

    .line 58
    new-instance p1, Lus/zoom/zrp/settings/ZRPMainSettingsFragment;

    invoke-direct {p1}, Lus/zoom/zrp/settings/ZRPMainSettingsFragment;-><init>()V

    iput-object p1, p0, Lus/zoom/zrp/ZRPSettingsFragment;->mainSettingsFragment:Lus/zoom/zrp/settings/ZRPMainSettingsFragment;

    .line 60
    :cond_0
    iget-object p1, p0, Lus/zoom/zrp/ZRPSettingsFragment;->mainSettingsFragment:Lus/zoom/zrp/settings/ZRPMainSettingsFragment;

    invoke-virtual {p1, p0}, Lus/zoom/zrp/settings/ZRPMainSettingsFragment;->setListener(Lus/zoom/zrp/settings/ZRPMainSettingsFragment$Listener;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 66
    new-instance p1, Lus/zoom/zrp/ZRPSettingsFragment$1;

    invoke-virtual {p0}, Lus/zoom/zrp/ZRPSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lus/zoom/zrp/ZRPSettingsFragment;->getTheme()I

    move-result v1

    invoke-direct {p1, p0, v0, v1}, Lus/zoom/zrp/ZRPSettingsFragment$1;-><init>(Lus/zoom/zrp/ZRPSettingsFragment;Landroid/content/Context;I)V

    const/4 v0, 0x1

    .line 72
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 74
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x400

    .line 76
    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 77
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 78
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    const v0, 0x106000d

    .line 79
    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_0
    return-object p1
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

    .line 88
    sget p3, Lus/zoom/zrcbox/R$layout;->zrp_settings_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onReceivedNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 0

    .line 40
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPSettingsFragment;->isStateSaved()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 43
    :cond_0
    sget-object p2, Lus/zoom/zrc/settings/SettingEvent;->OP_BACK:Lus/zoom/zrc/settings/SettingEvent;

    if-ne p1, p2, :cond_1

    .line 44
    invoke-direct {p0}, Lus/zoom/zrp/ZRPSettingsFragment;->onBackPressed()V

    :cond_1
    return-void
.end method

.method public onRoomSettingsClicked()V
    .locals 3

    .line 111
    iget-object v0, p0, Lus/zoom/zrp/ZRPSettingsFragment;->roomSettingsFragment:Lus/zoom/zrc/settings/SettingRoomFragment;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lus/zoom/zrc/settings/SettingRoomFragment;

    invoke-direct {v0}, Lus/zoom/zrc/settings/SettingRoomFragment;-><init>()V

    iput-object v0, p0, Lus/zoom/zrp/ZRPSettingsFragment;->roomSettingsFragment:Lus/zoom/zrc/settings/SettingRoomFragment;

    .line 114
    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/ZRPSettingsFragment;->roomSettingsFragment:Lus/zoom/zrc/settings/SettingRoomFragment;

    const/4 v1, 0x1

    const-string v2, "SettingRoomFragment"

    invoke-direct {p0, v0, v1, v2}, Lus/zoom/zrp/ZRPSettingsFragment;->showFragment(Landroidx/fragment/app/Fragment;ZLjava/lang/String;)V

    const-string v0, "Room"

    .line 115
    invoke-static {v0}, Lus/zoom/zrp/util/ZRPUsageTrace;->selectSettingsItem(Ljava/lang/String;)V

    return-void
.end method

.method public onSettingsBackClick()V
    .locals 0

    .line 149
    invoke-direct {p0}, Lus/zoom/zrp/ZRPSettingsFragment;->onBackPressed()V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 93
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onStart()V

    .line 95
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPSettingsFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lus/zoom/zrp/ZRPSettingsFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 98
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPSettingsFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 99
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 100
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lus/zoom/zrc/utils/Util;->getHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lus/zoom/zrp/ZRPSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lus/zoom/zrc/utils/Util;->getWidth(Landroid/content/Context;)I

    move-result v2

    if-le v1, v2, :cond_1

    invoke-virtual {p0}, Lus/zoom/zrp/ZRPSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lus/zoom/zrc/utils/Util;->getWidth(Landroid/content/Context;)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lus/zoom/zrc/utils/Util;->getHeight(Landroid/content/Context;)I

    move-result v1

    .line 101
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$dimen;->settings_dialog_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v1, v1

    const v3, 0x3f59999a    # 0.85f

    mul-float v1, v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setLayout(II)V

    .line 104
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrp/ZRPSettingsFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 105
    iget-object v0, p0, Lus/zoom/zrp/ZRPSettingsFragment;->mainSettingsFragment:Lus/zoom/zrp/settings/ZRPMainSettingsFragment;

    const/4 v1, 0x0

    sget-object v2, Lus/zoom/zrp/settings/ZRPMainSettingsFragment;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lus/zoom/zrp/ZRPSettingsFragment;->showFragment(Landroidx/fragment/app/Fragment;ZLjava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method
