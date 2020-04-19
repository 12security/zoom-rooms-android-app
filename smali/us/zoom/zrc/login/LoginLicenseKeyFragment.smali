.class public Lus/zoom/zrc/login/LoginLicenseKeyFragment;
.super Lus/zoom/zrc/login/LoginBaseFragment;
.source "LoginLicenseKeyFragment.java"

# interfaces
.implements Lus/zoom/zrc/login/widget/LoginKeyCodeView$IZRCKeyCodeListener;
.implements Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$IKeyBoardListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;
    }
.end annotation


# static fields
.field private static final KEY_LICENSE_KEY:Ljava/lang/String; = "input_license_key"

.field private static final TAG:Ljava/lang/String; = "LoginLicenseF"


# instance fields
.field private mHelpDialog:Landroid/app/Dialog;

.field private mKeyCodeViewWrapper:Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;

.field private mKeyboardDisabled:Z

.field private mKeyboardView:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/login/LoginLicenseKeyFragment;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->showHelpDialog()V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/login/LoginLicenseKeyFragment;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->doLoginWithLicenseKey()V

    return-void
.end method

.method private checkActionKeyEnabled()V
    .locals 5

    .line 181
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->mKeyCodeViewWrapper:Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;

    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;->getLicenseKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-lt v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 182
    :goto_0
    iput-boolean v3, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->mKeyboardDisabled:Z

    .line 183
    iget-object v3, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->mKeyboardView:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    iget-boolean v4, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->mKeyboardDisabled:Z

    invoke-virtual {v3, v4}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->setDoneKeyEnabled(Z)V

    .line 184
    iget-object v3, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->mKeyboardView:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3, v1}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->setDeleteKeyEnabled(Z)V

    return-void
.end method

.method private doLoginWithLicenseKey()V
    .locals 3

    .line 155
    invoke-static {}, Lus/zoom/zrc/login/LoginUsageTrack;->sendSignInWithLicenseKey()V

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->mKeyboardDisabled:Z

    .line 157
    iget-object v1, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->mKeyCodeViewWrapper:Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;

    invoke-virtual {v1}, Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;->getLicenseKey()Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v2

    invoke-interface {v2, v1}, Lus/zoom/zrc/login/LoginContract$IPresenter;->loginWithLicenseKey(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->mKeyboardView:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    invoke-virtual {v1, v0}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->setDoneKeyEnabled(Z)V

    .line 160
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->hideErrorMessage()V

    return-void
.end method

.method public static obtainInstance(Landroidx/fragment/app/FragmentManager;)Lus/zoom/zrc/login/LoginLicenseKeyFragment;
    .locals 1
    .param p0    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 49
    const-class v0, Lus/zoom/zrc/login/LoginLicenseKeyFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment;

    if-nez p0, :cond_0

    .line 51
    new-instance p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment;

    invoke-direct {p0}, Lus/zoom/zrc/login/LoginLicenseKeyFragment;-><init>()V

    :cond_0
    return-object p0
.end method

.method private showHelpDialog()V
    .locals 6

    .line 188
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->mHelpDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$layout;->login_dialog_help_text:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 190
    sget v1, Lus/zoom/zrcbox/R$string;->license_key_help:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v5

    invoke-virtual {v5}, Lus/zoom/zrcsdk/ZRCSdk;->currentDomain()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/location"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    new-instance v1, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;

    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 192
    sget v2, Lus/zoom/zrcbox/R$style;->ZRCLoginDialog_Transparent:I

    invoke-virtual {v1, v2}, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->setTheme(I)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;

    .line 193
    invoke-virtual {v1, v0}, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->setView(Landroid/view/View;)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;

    .line 194
    invoke-virtual {v1}, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->create()Lus/zoom/androidlib/widget/ZMAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->mHelpDialog:Landroid/app/Dialog;

    .line 196
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->mHelpDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 197
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->mHelpDialog:Landroid/app/Dialog;

    invoke-static {v0}, Lus/zoom/zrc/utils/PolycomTrioUtils;->setImmersiveModeForPolycomTrio(Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method public autoLoginWithLicenseKey(Ljava/lang/String;)V
    .locals 3

    .line 201
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "LoginLicenseF"

    const-string v0, "autoLoginWithLicenseKey() called with: pushedKey empty"

    .line 202
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->mKeyCodeViewWrapper:Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->mKeyboardView:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    if-eqz v2, :cond_1

    .line 207
    invoke-virtual {v0, p1}, Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;->onStart(Ljava/lang/String;)V

    .line 208
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->checkActionKeyEnabled()V

    .line 209
    iput-boolean v1, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->mKeyboardDisabled:Z

    const-string v0, "Auto login with license key: %s"

    const/4 v2, 0x1

    .line 210
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->doLoginWithLicenseKey()V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 58
    sget p3, Lus/zoom/zrcbox/R$layout;->login_fragment_enter_license_key:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onError(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)Z
    .locals 1

    .line 88
    sget-object v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->WebLoginFinish:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    if-ne v0, p1, :cond_1

    const/16 v0, 0xfaa

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 92
    :pswitch_0
    sget p3, Lus/zoom/zrcbox/R$string;->license_code_wrong:I

    invoke-virtual {p0, p3}, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 93
    invoke-static {}, Lus/zoom/zrc/login/AutoLoginManager;->getInstance()Lus/zoom/zrc/login/AutoLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/login/AutoLoginManager;->checkAutoLoginFailed()V

    goto :goto_0

    .line 96
    :cond_0
    sget p3, Lus/zoom/zrcbox/R$string;->license_key_expired:I

    invoke-virtual {p0, p3}, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 97
    invoke-static {}, Lus/zoom/zrc/login/AutoLoginManager;->getInstance()Lus/zoom/zrc/login/AutoLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/login/AutoLoginManager;->checkAutoLoginFailed()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->mKeyboardDisabled:Z

    .line 102
    invoke-super {p0, p1, p2, p3}, Lus/zoom/zrc/login/LoginBaseFragment;->onError(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyBoardClicked(ILjava/lang/String;)V
    .locals 2

    const/16 v0, 0x42

    if-ne v0, p1, :cond_0

    const-string p1, "User clicked enter, login with license key: %s"

    const/4 p2, 0x1

    .line 167
    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->mKeyCodeViewWrapper:Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;

    invoke-virtual {v1}, Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;->getLicenseKey()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->doLoginWithLicenseKey()V

    goto :goto_0

    .line 170
    :cond_0
    iget-boolean v0, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->mKeyboardDisabled:Z

    if-eqz v0, :cond_1

    return-void

    .line 174
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->mKeyCodeViewWrapper:Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;->onKeyBoardClicked(ILjava/lang/String;)V

    const-string p1, "input_license_key"

    .line 175
    iget-object p2, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->mKeyCodeViewWrapper:Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;

    invoke-virtual {p2}, Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;->getLicenseKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->saveUIState(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->checkActionKeyEnabled()V

    :goto_0
    return-void
.end method

.method public onKeyCodeDeleted(I)V
    .locals 0

    .line 138
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->hideErrorMessage()V

    return-void
.end method

.method public onKeyCodeInput(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 144
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->hideErrorMessage()V

    return-void
.end method

.method public onKeyCodeInputComplete()V
    .locals 4

    const-string v0, "User input complete, login with license key: %s"

    const/4 v1, 0x1

    .line 150
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->mKeyCodeViewWrapper:Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;

    invoke-virtual {v2}, Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;->getLicenseKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->doLoginWithLicenseKey()V

    return-void
.end method

.method public onPopBackStack()V
    .locals 2

    .line 121
    invoke-super {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->onPopBackStack()V

    const-string v0, "input_license_key"

    const-string v1, ""

    .line 122
    invoke-virtual {p0, v0, v1}, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->saveUIState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 107
    invoke-super {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->onStart()V

    .line 108
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->showActionBar()Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->back:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->setBackNavigation(I)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->show()V

    .line 109
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lus/zoom/zrc/login/LoginContract$INavigator;->setShowFooter(Z)V

    const-string v0, "input_license_key"

    .line 111
    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->getUIState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    iget-object v2, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->mKeyCodeViewWrapper:Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;

    invoke-virtual {v2, v0}, Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;->onStart(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->hideErrorMessage()V

    .line 115
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->checkActionKeyEnabled()V

    .line 116
    iput-boolean v1, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->mKeyboardDisabled:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 127
    invoke-super {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->onStop()V

    .line 128
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->mHelpDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->mHelpDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 132
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->mKeyCodeViewWrapper:Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;

    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;->onStop()V

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

    .line 63
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/login/LoginBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 65
    new-instance p2, Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;

    invoke-direct {p2, p0, p1}, Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;-><init>(Lus/zoom/zrc/login/LoginLicenseKeyFragment;Landroid/view/View;)V

    iput-object p2, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->mKeyCodeViewWrapper:Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;

    .line 66
    iget-object p2, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->mKeyCodeViewWrapper:Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;

    invoke-virtual {p2}, Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;->onViewCreated()V

    .line 68
    sget p2, Lus/zoom/zrcbox/R$id;->license_key_board:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    iput-object p2, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->mKeyboardView:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    .line 69
    iget-object p2, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->mKeyboardView:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    invoke-virtual {p2, p0}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->setKeyBoardListener(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$IKeyBoardListener;)V

    .line 71
    sget p2, Lus/zoom/zrcbox/R$id;->where_is_the_key:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 72
    new-instance v0, Lus/zoom/zrc/login/LoginLicenseKeyFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/login/LoginLicenseKeyFragment$1;-><init>(Lus/zoom/zrc/login/LoginLicenseKeyFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    sget p2, Lus/zoom/zrcbox/R$id;->login_fragment_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 80
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lus/zoom/androidlib/util/UIUtil;->getDisplayWidth(Landroid/content/Context;)I

    move-result p2

    .line 81
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$dimen;->login_button_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    .line 82
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v0, v1}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    sub-int/2addr p2, v0

    .line 83
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxWidth(I)V

    return-void
.end method
