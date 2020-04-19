.class public Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;
.super Lus/zoom/zrc/login/LoginBaseFragment;
.source "LoginLoginOrEnterLicenseFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field private static final KEY_LOGIN_EMAIL:Ljava/lang/String; = "input_work_email"

.field private static final KEY_LOGIN_PASSWORD:Ljava/lang/String; = "input_work_pass_word"


# instance fields
.field private isTablet:Z

.field private mAnimatorForKeyboard:Landroid/animation/ValueAnimator;

.field private mDisableMoveForKeyboard:Z

.field private mEmailText:Landroid/widget/EditText;

.field private mErrorType:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

.field private mInputBoxView:Landroid/view/View;

.field private mInputTextWatcher:Landroid/text/TextWatcher;

.field private mPasswordText:Landroid/widget/EditText;

.field private mSignInButton:Landroid/view/View;

.field private mTitleView:Landroid/view/View;

.field private mTranslateForKeyboard:F

.field private mTranslateHandler:Landroid/os/Handler;

.field private mVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginBaseFragment;-><init>()V

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mTranslateHandler:Landroid/os/Handler;

    .line 68
    new-instance v0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$1;-><init>(Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mInputTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;)Lus/zoom/zrc/login/LoginContract$LoginErrorType;
    .locals 0

    .line 43
    iget-object p0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mErrorType:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->checkLoginButtonEnabled()V

    return-void
.end method

.method static synthetic access$200(Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;)Landroid/widget/EditText;
    .locals 0

    .line 43
    iget-object p0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mEmailText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$302(Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;F)F
    .locals 0

    .line 43
    iput p1, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mTranslateForKeyboard:F

    return p1
.end method

.method static synthetic access$400(Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;)Landroid/view/View;
    .locals 0

    .line 43
    iget-object p0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mInputBoxView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->onClickLogin()V

    return-void
.end method

.method static synthetic access$600(Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;Z)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->moveForKeyboard(Z)V

    return-void
.end method

.method static synthetic access$700(Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;F)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->moveForKeyboard(F)V

    return-void
.end method

.method static synthetic access$802(Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 43
    iput-object p1, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mAnimatorForKeyboard:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private checkLoginButtonEnabled()V
    .locals 4

    .line 417
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mEmailText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mEmailText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 418
    :goto_1
    iget-object v3, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mPasswordText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mPasswordText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v3, 0x1

    :goto_3
    if-nez v0, :cond_5

    if-eqz v3, :cond_4

    goto :goto_4

    .line 422
    :cond_4
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mSignInButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_5

    .line 420
    :cond_5
    :goto_4
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mSignInButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :goto_5
    return-void
.end method

.method private moveForKeyboard(F)V
    .locals 2

    .line 359
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 363
    :cond_0
    iget-boolean v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mDisableMoveForKeyboard:Z

    if-eqz v0, :cond_1

    return-void

    .line 367
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    .line 372
    :cond_2
    iget-boolean v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mVisible:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mAnimatorForKeyboard:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_4

    :cond_3
    const/4 p1, 0x0

    .line 376
    :cond_4
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mTitleView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 377
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mInputBoxView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 378
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mSignInButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 379
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mErrorMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    return-void
.end method

.method private moveForKeyboard(Z)V
    .locals 6

    .line 303
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 307
    :cond_0
    iget-boolean v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mVisible:Z

    if-nez v0, :cond_1

    return-void

    .line 311
    :cond_1
    iget-boolean v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mDisableMoveForKeyboard:Z

    if-eqz v0, :cond_2

    return-void

    .line 315
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    return-void

    .line 320
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mInputBoxView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 321
    iget v2, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mTranslateForKeyboard:F

    .line 322
    iget-object v3, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mAnimatorForKeyboard:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 323
    iget-object v2, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mAnimatorForKeyboard:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 324
    iget v2, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mTranslateForKeyboard:F

    sub-float/2addr v2, v0

    :cond_4
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz p1, :cond_5

    .line 329
    new-array p1, v5, [F

    aput v0, p1, v4

    aput v2, p1, v3

    invoke-static {p1}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    goto :goto_0

    .line 331
    :cond_5
    new-array p1, v5, [F

    aput v0, p1, v4

    aput v1, p1, v3

    invoke-static {p1}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 333
    :goto_0
    new-instance v0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$10;

    invoke-direct {v0, p0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$10;-><init>(Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 340
    new-instance v0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$11;

    invoke-direct {v0, p0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$11;-><init>(Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0x64

    .line 353
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 354
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 355
    iput-object p1, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mAnimatorForKeyboard:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static obtainInstance(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;
    .locals 1

    .line 95
    const-class v0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;

    if-nez p0, :cond_0

    .line 97
    new-instance p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;

    invoke-direct {p0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;-><init>()V

    .line 99
    :cond_0
    invoke-direct {p0, p1}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->setDefaultEmail(Ljava/lang/String;)V

    return-object p0
.end method

.method private onClickLogin()V
    .locals 3

    .line 383
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->hideErrorMessage()V

    .line 385
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mEmailText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mPasswordText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/CharSequence;)V

    const-string v2, "^[A-Za-z0-9!#$%&\'*+/=?^_`{|}~-]+(\\.[A-Za-z0-9!#$%&\'*+/=?^_`{|}~-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9-]+)*(\\.[A-Za-z]{2,})$"

    .line 388
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 389
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 390
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 391
    sget-object v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->LoginWithZoom:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    const/4 v1, 0x0

    sget v2, Lus/zoom/zrcbox/R$string;->invalid_email_address:I

    invoke-virtual {p0, v2}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->onError(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)Z

    return-void

    .line 395
    :cond_0
    invoke-static {}, Lus/zoom/zrc/login/LoginUsageTrack;->sendSignInWithWorkEmail()V

    .line 396
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lus/zoom/zrc/login/LoginContract$IPresenter;->loginWithZoom(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 397
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->hideSoftKeyboard()V

    .line 399
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->wipePasswordViewContent()V

    return-void
.end method

.method private onGoogleSignInFailed(Ljava/lang/CharSequence;)V
    .locals 2

    .line 445
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->findFragment(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 447
    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->dismiss()V

    .line 450
    :cond_0
    new-instance v0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    invoke-direct {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;-><init>()V

    .line 451
    sget v1, Lus/zoom/zrcbox/R$string;->failed_to_sign_in:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->setTitle(Ljava/lang/String;)V

    .line 452
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 453
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->setMessage(Ljava/lang/String;)V

    .line 455
    :cond_1
    sget p1, Lus/zoom/zrcbox/R$string;->cancel:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 456
    sget p1, Lus/zoom/zrcbox/R$string;->retry:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$12;

    invoke-direct {v1, p0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$12;-><init>(Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;)V

    invoke-virtual {v0, p1, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 462
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method

.method private setDefaultEmail(Ljava/lang/String;)V
    .locals 1

    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "input_work_email"

    .line 106
    invoke-virtual {p0, v0, p1}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->saveUIState(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mEmailText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateGoogleSignInFailed4Recreate()V
    .locals 3

    .line 466
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->findFragment(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    if-eqz v0, :cond_0

    .line 468
    sget v1, Lus/zoom/zrcbox/R$string;->retry:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$13;

    invoke-direct {v2, p0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$13;-><init>(Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;)V

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private wipePasswordViewContent()V
    .locals 5

    .line 403
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mPasswordText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 408
    :cond_0
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    add-int/lit8 v3, v2, 0x1

    const-string v4, "0"

    .line 410
    invoke-interface {v0, v2, v3, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    move v2, v3

    goto :goto_0

    .line 413
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mPasswordText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 113
    invoke-super {p0, p1}, Lus/zoom/zrc/login/LoginBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/androidlib/util/UIUtil;->isPortraitMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mDisableMoveForKeyboard:Z

    .line 115
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->isTablet:Z

    .line 116
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->updateGoogleSignInFailed4Recreate()V

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

    .line 122
    sget p3, Lus/zoom/zrcbox/R$layout;->login_fragment_login_include_google_and_sign_up:I

    .line 123
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->disableSignInGoogleOrSignUp()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->isTablet:Z

    if-nez v0, :cond_1

    .line 124
    :cond_0
    sget p3, Lus/zoom/zrcbox/R$layout;->login_fragment_login_or_enter_license_key:I

    :cond_1
    const/4 v0, 0x0

    .line 126
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p1, p2, :cond_1

    .line 269
    iget-object p1, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mEmailText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mEmailText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mPasswordText:Landroid/widget/EditText;

    .line 270
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mPasswordText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 271
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->onClickLogin()V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onError(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)Z
    .locals 2

    .line 251
    iput-object p1, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mErrorType:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    .line 252
    sget-object v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->GoogleLoginFailed:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    if-ne v0, p1, :cond_0

    .line 253
    invoke-direct {p0, p3}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->onGoogleSignInFailed(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 259
    :pswitch_0
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mPasswordText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 263
    :goto_0
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

.method public onKeyboardClosed()V
    .locals 4

    .line 292
    invoke-super {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->onKeyboardClosed()V

    .line 293
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mTranslateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 294
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mTranslateHandler:Landroid/os/Handler;

    new-instance v1, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$9;

    invoke-direct {v1, p0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$9;-><init>(Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;)V

    const-wide/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onKeyboardOpen()V
    .locals 4

    .line 280
    invoke-super {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->onKeyboardOpen()V

    .line 281
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mTranslateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 282
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mTranslateHandler:Landroid/os/Handler;

    new-instance v1, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$8;

    invoke-direct {v1, p0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$8;-><init>(Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;)V

    const-wide/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 233
    invoke-super {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->onPause()V

    const/4 v0, 0x0

    .line 234
    iput-boolean v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mVisible:Z

    .line 235
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mAnimatorForKeyboard:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mAnimatorForKeyboard:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 237
    iput-object v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mAnimatorForKeyboard:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    .line 238
    invoke-direct {p0, v0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->moveForKeyboard(F)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 226
    invoke-super {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->onResume()V

    const/4 v0, 0x1

    .line 227
    iput-boolean v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mVisible:Z

    const/4 v0, 0x0

    .line 228
    invoke-direct {p0, v0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->moveForKeyboard(F)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 189
    invoke-super {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->onStart()V

    .line 190
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mEmailText:Landroid/widget/EditText;

    iget-object v1, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mInputTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 191
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mPasswordText:Landroid/widget/EditText;

    iget-object v1, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mInputTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const-string v0, "input_work_email"

    .line 193
    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->getUIState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mEmailText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v1, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mEmailText:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 197
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->checkLoginButtonEnabled()V

    .line 199
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v1, v0, :cond_0

    .line 200
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getUserProfile()Lus/zoom/zrc/model/ZRCUserProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->showActionBar()Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->back:I

    .line 202
    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->setBackNavigation(I)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$7;

    invoke-direct {v1, p0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$7;-><init>(Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;)V

    .line 203
    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->setCustomBackAction(Ljava/lang/Runnable;)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->show()V

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->getBackStackCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 215
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->showActionBar()Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->pairing_code:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->setBackNavigation(I)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->show()V

    goto :goto_0

    .line 217
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->hideActionBar()V

    .line 221
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isOnlySupportZRPMode()Z

    move-result v1

    invoke-interface {v0, v1}, Lus/zoom/zrc/login/LoginContract$INavigator;->setShowFooter(Z)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 244
    invoke-super {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->onStop()V

    .line 245
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mEmailText:Landroid/widget/EditText;

    iget-object v1, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mInputTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 246
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mPasswordText:Landroid/widget/EditText;

    iget-object v1, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mInputTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 428
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 430
    invoke-super {p0, p1}, Lus/zoom/zrc/login/LoginBaseFragment;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 433
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_1

    .line 434
    iget-object v1, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mSignInButton:Landroid/view/View;

    invoke-static {p1, v1}, Lus/zoom/zrc/utils/ZRCUIUtils;->isTappedUnderView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 435
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 436
    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 437
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lus/zoom/androidlib/util/UIUtil;->closeSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 441
    :cond_1
    invoke-super {p0, p1}, Lus/zoom/zrc/login/LoginBaseFragment;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
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

    .line 132
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/login/LoginBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 133
    sget p2, Lus/zoom/zrcbox/R$id;->login_fragment_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mTitleView:Landroid/view/View;

    .line 134
    sget p2, Lus/zoom/zrcbox/R$id;->login_info_box:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mInputBoxView:Landroid/view/View;

    .line 136
    iget-object p2, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mInputBoxView:Landroid/view/View;

    new-instance v0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$2;

    invoke-direct {v0, p0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$2;-><init>(Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 144
    sget p2, Lus/zoom/zrcbox/R$id;->enter_license_key:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 145
    new-instance v0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$3;

    invoke-direct {v0, p0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$3;-><init>(Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    sget p2, Lus/zoom/zrcbox/R$id;->button_sign_up:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 155
    new-instance v0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$4;

    invoke-direct {v0, p0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$4;-><init>(Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    :cond_0
    sget p2, Lus/zoom/zrcbox/R$id;->login_with_google:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 166
    new-instance v0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$5;

    invoke-direct {v0, p0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$5;-><init>(Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    :cond_1
    sget p2, Lus/zoom/zrcbox/R$id;->button_login:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mSignInButton:Landroid/view/View;

    .line 175
    iget-object p2, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mSignInButton:Landroid/view/View;

    new-instance v0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$6;

    invoke-direct {v0, p0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$6;-><init>(Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    sget p2, Lus/zoom/zrcbox/R$id;->edit_text_email:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mEmailText:Landroid/widget/EditText;

    .line 183
    sget p2, Lus/zoom/zrcbox/R$id;->edit_text_password:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mPasswordText:Landroid/widget/EditText;

    .line 184
    iget-object p1, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->mPasswordText:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method
