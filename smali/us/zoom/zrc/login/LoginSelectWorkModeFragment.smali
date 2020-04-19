.class public Lus/zoom/zrc/login/LoginSelectWorkModeFragment;
.super Lus/zoom/zrc/login/LoginBaseFragment;
.source "LoginSelectWorkModeFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginBaseFragment;-><init>()V

    return-void
.end method

.method public static obtainInstance(Landroidx/fragment/app/FragmentManager;)Lus/zoom/zrc/login/LoginSelectWorkModeFragment;
    .locals 1
    .param p0    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 20
    const-class v0, Lus/zoom/zrc/login/LoginSelectWorkModeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/login/LoginSelectWorkModeFragment;

    if-nez p0, :cond_0

    .line 22
    new-instance p0, Lus/zoom/zrc/login/LoginSelectWorkModeFragment;

    invoke-direct {p0}, Lus/zoom/zrc/login/LoginSelectWorkModeFragment;-><init>()V

    :cond_0
    return-object p0
.end method


# virtual methods
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

    .line 30
    sget p3, Lus/zoom/zrcbox/R$layout;->login_fragment_select_work_mode:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onStart()V
    .locals 2

    .line 56
    invoke-super {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->onStart()V

    .line 57
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginSelectWorkModeFragment;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->hideActionBar()V

    .line 58
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginSelectWorkModeFragment;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lus/zoom/zrc/login/LoginContract$INavigator;->setShowFooter(Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 35
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/login/LoginBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 37
    sget p2, Lus/zoom/zrcbox/R$id;->iv_work_mode_controller:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 38
    new-instance v0, Lus/zoom/zrc/login/LoginSelectWorkModeFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/login/LoginSelectWorkModeFragment$1;-><init>(Lus/zoom/zrc/login/LoginSelectWorkModeFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    sget p2, Lus/zoom/zrcbox/R$id;->iv_work_mode_panel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 46
    new-instance p2, Lus/zoom/zrc/login/LoginSelectWorkModeFragment$2;

    invoke-direct {p2, p0}, Lus/zoom/zrc/login/LoginSelectWorkModeFragment$2;-><init>(Lus/zoom/zrc/login/LoginSelectWorkModeFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
