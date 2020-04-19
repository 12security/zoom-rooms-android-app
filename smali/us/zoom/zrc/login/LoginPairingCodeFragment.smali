.class public Lus/zoom/zrc/login/LoginPairingCodeFragment;
.super Lus/zoom/zrc/login/LoginBaseFragment;
.source "LoginPairingCodeFragment.java"

# interfaces
.implements Lus/zoom/zrc/login/widget/LoginKeyCodeView$IZRCKeyCodeListener;


# static fields
.field private static final KEY_INPUT_PAIRING_CODE:Ljava/lang/String; = "input_pairing_code"


# instance fields
.field private mDialogHelp:Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;

.field private mKeyCodeView:Lus/zoom/zrc/login/widget/LoginKeyCodeView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/login/LoginPairingCodeFragment;)Lus/zoom/zrc/login/widget/LoginKeyCodeView;
    .locals 0

    .line 38
    iget-object p0, p0, Lus/zoom/zrc/login/LoginPairingCodeFragment;->mKeyCodeView:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/login/LoginPairingCodeFragment;)Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;
    .locals 0

    .line 38
    iget-object p0, p0, Lus/zoom/zrc/login/LoginPairingCodeFragment;->mDialogHelp:Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/login/LoginPairingCodeFragment;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lus/zoom/zrc/login/LoginPairingCodeFragment;->doQueryWithPairingCode(Ljava/lang/String;)V

    return-void
.end method

.method static autoPairWithKey(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 58
    const-class v0, Lus/zoom/zrc/login/LoginPairingCodeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/login/LoginPairingCodeFragment;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "autoPairWithKey: fragment can\'t find"

    .line 60
    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 64
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/login/LoginPairingCodeFragment;->mKeyCodeView:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    if-nez v1, :cond_1

    const-string p0, "autoPairWithKey: keyCodeView can\'t find"

    .line 65
    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 69
    :cond_1
    invoke-virtual {v1, p1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->setText(Ljava/lang/String;)V

    .line 70
    invoke-direct {p0, p1}, Lus/zoom/zrc/login/LoginPairingCodeFragment;->doQueryWithPairingCode(Ljava/lang/String;)V

    return-void
.end method

.method private buildPairingFailedMessage()Ljava/lang/CharSequence;
    .locals 6

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lus/zoom/zrcbox/R$string;->pairing_failed:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/login/LoginPairingCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "     "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    sget v1, Lus/zoom/zrcbox/R$string;->retry:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/login/LoginPairingCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 232
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 233
    new-instance v0, Lus/zoom/zrc/login/LoginPairingCodeFragment$5;

    invoke-direct {v0, p0}, Lus/zoom/zrc/login/LoginPairingCodeFragment$5;-><init>(Lus/zoom/zrc/login/LoginPairingCodeFragment;)V

    const/16 v4, 0x21

    invoke-virtual {v3, v0, v2, v1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 248
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v0, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v3, v0, v2, v1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 250
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPairingCodeFragment;->mErrorMessageView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-object v3
.end method

.method private doQueryWithPairingCode(Ljava/lang/String;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPairingCodeFragment;->mKeyCodeView:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->hideInputMethod()V

    .line 195
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginPairingCodeFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v0

    invoke-interface {v0, p1}, Lus/zoom/zrc/login/LoginContract$IPresenter;->queryWithParingCode(Ljava/lang/String;)V

    return-void
.end method

.method public static obtainInstance(Landroidx/fragment/app/FragmentManager;)Lus/zoom/zrc/login/LoginPairingCodeFragment;
    .locals 1

    .line 47
    const-class v0, Lus/zoom/zrc/login/LoginPairingCodeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/login/LoginPairingCodeFragment;

    if-nez p0, :cond_0

    .line 49
    new-instance p0, Lus/zoom/zrc/login/LoginPairingCodeFragment;

    invoke-direct {p0}, Lus/zoom/zrc/login/LoginPairingCodeFragment;-><init>()V

    :cond_0
    return-object p0
.end method

.method private setupDomainSwitchAction(Landroid/view/View;)V
    .locals 1

    .line 255
    new-instance v0, Lus/zoom/zrc/login/LoginPairingCodeFragment$6;

    invoke-direct {v0, p0}, Lus/zoom/zrc/login/LoginPairingCodeFragment$6;-><init>(Lus/zoom/zrc/login/LoginPairingCodeFragment;)V

    invoke-static {p1, v0}, Lus/zoom/zrc/base/widget/RepeatClickDetector;->setupRepeatClick_3(Landroid/view/View;Lus/zoom/zrc/base/widget/RepeatClickDetector$OnRepeatClickListener;)V

    return-void
.end method

.method private showParingCodeKeyboard()V
    .locals 4

    .line 211
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginPairingCodeFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    new-instance v1, Lus/zoom/zrc/login/LoginPairingCodeFragment$4;

    invoke-direct {v1, p0}, Lus/zoom/zrc/login/LoginPairingCodeFragment$4;-><init>(Lus/zoom/zrc/login/LoginPairingCodeFragment;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 75
    invoke-super {p0, p1}, Lus/zoom/zrc/login/LoginBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    new-instance p1, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;

    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginPairingCodeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lus/zoom/zrc/login/LoginPairingCodeFragment;->mDialogHelp:Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;

    .line 77
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPairingCodeFragment;->mDialogHelp:Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;

    new-instance v0, Lus/zoom/zrc/login/LoginPairingCodeFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/login/LoginPairingCodeFragment$1;-><init>(Lus/zoom/zrc/login/LoginPairingCodeFragment;)V

    invoke-virtual {p1, v0}, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

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
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 88
    sget p3, Lus/zoom/zrcbox/R$layout;->login_fragment_enter_pairing_code:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 163
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPairingCodeFragment;->mDialogHelp:Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;

    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->release()V

    .line 164
    invoke-super {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->onDestroy()V

    return-void
.end method

.method public onError(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)Z
    .locals 2

    .line 120
    sget-object v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->QueryWithParingCode:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    if-ne v0, p1, :cond_2

    const/16 p3, 0x12c

    if-ne p3, p2, :cond_0

    .line 122
    sget p3, Lus/zoom/zrcbox/R$string;->pairing_code_wrong:I

    invoke-virtual {p0, p3}, Lus/zoom/zrc/login/LoginPairingCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/16 p3, 0xfab

    if-ne p3, p2, :cond_1

    .line 124
    sget p3, Lus/zoom/zrcbox/R$string;->pairing_code_expired:I

    invoke-virtual {p0, p3}, Lus/zoom/zrc/login/LoginPairingCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 125
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPairingCodeFragment;->mKeyCodeView:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_1
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginPairingCodeFragment;->buildPairingFailedMessage()Ljava/lang/CharSequence;

    move-result-object p3

    .line 130
    :cond_2
    :goto_0
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginPairingCodeFragment;->showParingCodeKeyboard()V

    .line 131
    invoke-super {p0, p1, p2, p3}, Lus/zoom/zrc/login/LoginBaseFragment;->onError(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public onKeyCodeDeleted(I)V
    .locals 1

    .line 170
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginPairingCodeFragment;->hideErrorMessage()V

    const-string p1, "input_pairing_code"

    .line 171
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPairingCodeFragment;->mKeyCodeView:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lus/zoom/zrc/login/LoginPairingCodeFragment;->saveUIState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onKeyCodeInput(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 177
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginPairingCodeFragment;->hideErrorMessage()V

    const-string p1, "input_pairing_code"

    .line 178
    iget-object p2, p0, Lus/zoom/zrc/login/LoginPairingCodeFragment;->mKeyCodeView:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    invoke-virtual {p2}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/login/LoginPairingCodeFragment;->saveUIState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onKeyCodeInputComplete()V
    .locals 4

    .line 184
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPairingCodeFragment;->mKeyCodeView:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User input complete, query with pairing code: %s"

    const/4 v2, 0x1

    .line 185
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    invoke-direct {p0, v0}, Lus/zoom/zrc/login/LoginPairingCodeFragment;->doQueryWithPairingCode(Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 136
    invoke-super {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->onStart()V

    .line 137
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginPairingCodeFragment;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->showActionBar()Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->sign_in:I

    new-instance v2, Lus/zoom/zrc/login/LoginPairingCodeFragment$3;

    invoke-direct {v2, p0}, Lus/zoom/zrc/login/LoginPairingCodeFragment$3;-><init>(Lus/zoom/zrc/login/LoginPairingCodeFragment;)V

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->setLeftAction(ILjava/lang/Runnable;)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->show()V

    .line 144
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginPairingCodeFragment;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lus/zoom/zrc/login/LoginContract$INavigator;->setShowFooter(Z)V

    .line 145
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginPairingCodeFragment;->showParingCodeKeyboard()V

    .line 147
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getPairingCode()Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "input_pairing_code"

    .line 149
    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginPairingCodeFragment;->getUIState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/login/LoginPairingCodeFragment;->mKeyCodeView:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    invoke-virtual {v1, v0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 156
    invoke-super {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->onStop()V

    .line 157
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPairingCodeFragment;->mKeyCodeView:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->hideInputMethod()V

    .line 158
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPairingCodeFragment;->mDialogHelp:Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;

    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginPairingCodeHelpDialog;->dismiss()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 201
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPairingCodeFragment;->mKeyCodeView:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    invoke-static {p1, v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->isTappedOnView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginPairingCodeFragment;->showParingCodeKeyboard()V

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPairingCodeFragment;->mKeyCodeView:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    invoke-static {p1, v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->isTappedUnderView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPairingCodeFragment;->mKeyCodeView:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->hideInputMethod()V

    .line 207
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lus/zoom/zrc/login/LoginBaseFragment;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
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

    .line 93
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/login/LoginBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 95
    sget p2, Lus/zoom/zrcbox/R$id;->edit_text_paring_code:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    iput-object p2, p0, Lus/zoom/zrc/login/LoginPairingCodeFragment;->mKeyCodeView:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    .line 96
    iget-object p2, p0, Lus/zoom/zrc/login/LoginPairingCodeFragment;->mKeyCodeView:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    invoke-virtual {p2, p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->setKeyCodeListener(Lus/zoom/zrc/login/widget/LoginKeyCodeView$IZRCKeyCodeListener;)V

    .line 98
    sget p2, Lus/zoom/zrcbox/R$id;->where_is_the_code:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 99
    new-instance v0, Lus/zoom/zrc/login/LoginPairingCodeFragment$2;

    invoke-direct {v0, p0}, Lus/zoom/zrc/login/LoginPairingCodeFragment$2;-><init>(Lus/zoom/zrc/login/LoginPairingCodeFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    sget p2, Lus/zoom/zrcbox/R$id;->login_fragment_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 108
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginPairingCodeFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lus/zoom/androidlib/util/UIUtil;->getDisplayWidth(Landroid/content/Context;)I

    move-result p2

    .line 109
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginPairingCodeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$dimen;->login_button_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    .line 110
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginPairingCodeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v0, v1}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    sub-int/2addr p2, v0

    .line 111
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxWidth(I)V

    return-void
.end method
