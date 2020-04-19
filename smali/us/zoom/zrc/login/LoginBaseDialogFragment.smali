.class public Lus/zoom/zrc/login/LoginBaseDialogFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "LoginBaseDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;
    .locals 2

    .line 14
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginBaseDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 15
    instance-of v1, v0, Lus/zoom/zrc/login/LoginActivity;

    if-eqz v1, :cond_0

    .line 16
    check-cast v0, Lus/zoom/zrc/login/LoginActivity;

    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginActivity;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    return-object v0

    .line 18
    :cond_0
    invoke-static {}, Lus/zoom/zrc/login/NullLoginNavigator;->getInstance()Lus/zoom/zrc/login/NullLoginNavigator;

    move-result-object v0

    return-object v0
.end method

.method protected getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;
    .locals 2

    .line 23
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginBaseDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 24
    instance-of v1, v0, Lus/zoom/zrc/login/LoginActivity;

    if-eqz v1, :cond_0

    .line 25
    check-cast v0, Lus/zoom/zrc/login/LoginActivity;

    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginActivity;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v0

    return-object v0

    .line 27
    :cond_0
    invoke-static {}, Lus/zoom/zrc/login/NullLoginPresenter;->getInstance()Lus/zoom/zrc/login/NullLoginPresenter;

    move-result-object v0

    return-object v0
.end method
