.class public Lus/zoom/zrc/login/LoginNoRoomFragment;
.super Lus/zoom/zrc/login/LoginBaseFragment;
.source "LoginNoRoomFragment.java"


# instance fields
.field private mCreateRoomButton:Landroid/view/View;

.field private mFreeTrialDesView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginBaseFragment;-><init>()V

    return-void
.end method

.method public static obtainInstance(Landroidx/fragment/app/FragmentManager;)Lus/zoom/zrc/login/LoginNoRoomFragment;
    .locals 1
    .param p0    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 24
    const-class v0, Lus/zoom/zrc/login/LoginNoRoomFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/login/LoginNoRoomFragment;

    if-nez p0, :cond_0

    .line 26
    new-instance p0, Lus/zoom/zrc/login/LoginNoRoomFragment;

    invoke-direct {p0}, Lus/zoom/zrc/login/LoginNoRoomFragment;-><init>()V

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

    .line 34
    sget p3, Lus/zoom/zrcbox/R$layout;->login_fragment_no_room:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onStart()V
    .locals 4

    .line 54
    invoke-super {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->onStart()V

    .line 55
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginNoRoomFragment;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->showActionBar()Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->sign_out:I

    new-instance v2, Lus/zoom/zrc/login/LoginNoRoomFragment$2;

    invoke-direct {v2, p0}, Lus/zoom/zrc/login/LoginNoRoomFragment$2;-><init>(Lus/zoom/zrc/login/LoginNoRoomFragment;)V

    .line 56
    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->setLeftAction(ILjava/lang/Runnable;)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->show()V

    .line 64
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginNoRoomFragment;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lus/zoom/zrc/login/LoginContract$INavigator;->setShowFooter(Z)V

    .line 66
    iget-object v0, p0, Lus/zoom/zrc/login/LoginNoRoomFragment;->mCreateRoomButton:Landroid/view/View;

    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginNoRoomFragment;->getUIState()Lus/zoom/zrc/login/LoginContract$IUICache;

    move-result-object v2

    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginNoRoomFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-interface {v2, v3}, Lus/zoom/zrc/login/LoginContract$IUICache;->canCreateRoom(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 68
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginNoRoomFragment;->getUIState()Lus/zoom/zrc/login/LoginContract$IUICache;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IUICache;->getBillingType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 69
    :goto_1
    iget-object v0, p0, Lus/zoom/zrc/login/LoginNoRoomFragment;->mFreeTrialDesView:Landroid/view/View;

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

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

    .line 39
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/login/LoginBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 40
    sget p2, Lus/zoom/zrcbox/R$id;->button_create_room:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/login/LoginNoRoomFragment;->mCreateRoomButton:Landroid/view/View;

    .line 41
    iget-object p2, p0, Lus/zoom/zrc/login/LoginNoRoomFragment;->mCreateRoomButton:Landroid/view/View;

    new-instance v0, Lus/zoom/zrc/login/LoginNoRoomFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/login/LoginNoRoomFragment$1;-><init>(Lus/zoom/zrc/login/LoginNoRoomFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    sget p2, Lus/zoom/zrcbox/R$id;->des_free_trial:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/login/LoginNoRoomFragment;->mFreeTrialDesView:Landroid/view/View;

    return-void
.end method
