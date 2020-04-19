.class public Lus/zoom/zrc/login/LoginBaseFragment;
.super Lus/zoom/zrc/base/app/ZRCFragment;
.source "LoginBaseFragment.java"


# instance fields
.field private mDisableAnnounceTitleForAccessibility:Z

.field private mDisplayTag:Ljava/lang/String;

.field mErrorMessageView:Landroid/widget/TextView;

.field private mErrorToast:Landroid/widget/Toast;

.field private mKeyboardOpen:Z

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/login/LoginBaseFragment;Landroid/view/View;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lus/zoom/zrc/login/LoginBaseFragment;->announceForAccessibility(Landroid/view/View;)V

    return-void
.end method

.method private announceForAccessibility(Landroid/view/View;)V
    .locals 2

    .line 230
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 234
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 235
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 236
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 238
    :cond_1
    invoke-static {p1, v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->announceForAccessibilityCompat(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private delayAnnounceForAccessibility(Landroid/view/View;)V
    .locals 3

    .line 242
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 246
    :cond_0
    new-instance v0, Lus/zoom/zrc/login/LoginBaseFragment$1;

    invoke-direct {v0, p0, p1}, Lus/zoom/zrc/login/LoginBaseFragment$1;-><init>(Lus/zoom/zrc/login/LoginBaseFragment;Landroid/view/View;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private getUIStateKeyFlag()I
    .locals 2

    .line 219
    const-class v0, Lus/zoom/zrc/login/LoginPairingCodeFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    const-class v0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;

    .line 220
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    const-class v0, Lus/zoom/zrc/login/LoginLicenseKeyFragment;

    .line 221
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private restoreErrorMessageState()V
    .locals 4

    .line 122
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_error_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lus/zoom/zrc/login/LoginBaseFragment;->getUIState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_error_code"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lus/zoom/zrc/login/LoginBaseFragment;->getUIState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 126
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 127
    invoke-static {}, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->values()[Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v3, v1

    .line 128
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_error_message"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginBaseFragment;->getUIState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-virtual {p0, v1, v2, v0}, Lus/zoom/zrc/login/LoginBaseFragment;->onError(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)Z

    :cond_0
    return-void
.end method

.method private saveErrorMessageState(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/String;)V
    .locals 3

    .line 137
    sget-object v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->None:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    if-eq v0, p1, :cond_0

    .line 138
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    invoke-virtual {p1}, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 140
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p1, ""

    const-string p2, ""

    .line 145
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_error_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lus/zoom/zrc/login/LoginBaseFragment;->saveUIState(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_error_code"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/login/LoginBaseFragment;->saveUIState(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_error_message"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lus/zoom/zrc/login/LoginBaseFragment;->saveUIState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDisplayTag()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lus/zoom/zrc/login/LoginBaseFragment;->mDisplayTag:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v0
.end method

.method protected getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;
    .locals 2

    .line 180
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 181
    instance-of v1, v0, Lus/zoom/zrc/login/LoginActivity;

    if-eqz v1, :cond_0

    .line 182
    check-cast v0, Lus/zoom/zrc/login/LoginActivity;

    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginActivity;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    return-object v0

    .line 184
    :cond_0
    invoke-static {}, Lus/zoom/zrc/login/NullLoginNavigator;->getInstance()Lus/zoom/zrc/login/NullLoginNavigator;

    move-result-object v0

    return-object v0
.end method

.method protected getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;
    .locals 2

    .line 189
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 190
    instance-of v1, v0, Lus/zoom/zrc/login/LoginActivity;

    if-eqz v1, :cond_0

    .line 191
    check-cast v0, Lus/zoom/zrc/login/LoginActivity;

    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginActivity;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v0

    return-object v0

    .line 193
    :cond_0
    invoke-static {}, Lus/zoom/zrc/login/NullLoginPresenter;->getInstance()Lus/zoom/zrc/login/NullLoginPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected getUIState(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 212
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->getUIState()Lus/zoom/zrc/login/LoginContract$IUICache;

    move-result-object v0

    invoke-interface {v0, p1}, Lus/zoom/zrc/login/LoginContract$IUICache;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method protected getUIState()Lus/zoom/zrc/login/LoginContract$IUICache;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 200
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IPresenter;->getUICache()Lus/zoom/zrc/login/LoginContract$IUICache;

    move-result-object v0

    return-object v0
.end method

.method protected hideErrorMessage()V
    .locals 3

    .line 105
    iget-object v0, p0, Lus/zoom/zrc/login/LoginBaseFragment;->mErrorMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 106
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    :cond_0
    sget-object v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->None:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lus/zoom/zrc/login/LoginBaseFragment;->saveErrorMessageState(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/String;)V

    return-void
.end method

.method protected hideSoftKeyboard()V
    .locals 2

    .line 166
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 168
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lus/zoom/androidlib/util/UIUtil;->closeSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 171
    iget-boolean v0, p0, Lus/zoom/zrc/login/LoginBaseFragment;->mKeyboardOpen:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->onKeyboardClosed()V

    :cond_1
    return-void
.end method

.method isErrorViewCompleteVisible()Z
    .locals 1

    .line 176
    iget-object v0, p0, Lus/zoom/zrc/login/LoginBaseFragment;->mErrorMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isLastForCalendarResourceInBackStack()Z
    .locals 4

    .line 261
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/login/LoginActivity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 266
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getBackStackEntryCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    .line 268
    invoke-virtual {v0, v2}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragmentInBackStack(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 269
    instance-of v2, v0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 270
    check-cast v0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;

    .line 271
    invoke-virtual {v0}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->getSelectedCalendarService()Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    move-result-object v0

    if-eqz v0, :cond_1

    return v3

    :cond_1
    return v1

    .line 277
    :cond_2
    instance-of v0, v0, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;

    if-eqz v0, :cond_3

    return v3

    :cond_3
    return v1
.end method

.method isSignOutPassCodeDialogShown()Z
    .locals 1

    .line 255
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    check-cast v0, Lus/zoom/zrc/login/LoginActivity;

    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginActivity;->isSignOutPassCodeDialogShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onError(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)Z
    .locals 3

    .line 89
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->isErrorViewCompleteVisible()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lus/zoom/zrc/login/LoginBaseFragment;->mErrorMessageView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lus/zoom/zrc/login/LoginBaseFragment;->mErrorMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lus/zoom/zrc/login/LoginBaseFragment;->mErrorMessageView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lus/zoom/zrc/login/LoginBaseFragment;->delayAnnounceForAccessibility(Landroid/view/View;)V

    if-eqz p3, :cond_0

    .line 93
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrc/login/LoginBaseFragment;->saveErrorMessageState(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/String;)V

    goto :goto_1

    .line 94
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 95
    iget-object p1, p0, Lus/zoom/zrc/login/LoginBaseFragment;->mErrorToast:Landroid/widget/Toast;

    if-eqz p1, :cond_2

    .line 96
    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    .line 98
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, p3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/login/LoginBaseFragment;->mErrorToast:Landroid/widget/Toast;

    .line 99
    iget-object p1, p0, Lus/zoom/zrc/login/LoginBaseFragment;->mErrorToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_1
    return v1
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 159
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCFragment;->onHiddenChanged(Z)V

    if-eqz p1, :cond_0

    .line 161
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->hideSoftKeyboard()V

    :cond_0
    return-void
.end method

.method public onKeyboardClosed()V
    .locals 1

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lus/zoom/zrc/login/LoginBaseFragment;->mKeyboardOpen:Z

    return-void
.end method

.method public onKeyboardOpen()V
    .locals 1

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lus/zoom/zrc/login/LoginBaseFragment;->mKeyboardOpen:Z

    return-void
.end method

.method public onPopBackStack()V
    .locals 0

    .line 204
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->hideErrorMessage()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 113
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->onStart()V

    .line 114
    iget-object v0, p0, Lus/zoom/zrc/login/LoginBaseFragment;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lus/zoom/zrc/login/LoginBaseFragment;->mDisableAnnounceTitleForAccessibility:Z

    if-nez v1, :cond_0

    .line 115
    invoke-direct {p0, v0}, Lus/zoom/zrc/login/LoginBaseFragment;->announceForAccessibility(Landroid/view/View;)V

    .line 118
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->restoreErrorMessageState()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 153
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->onStop()V

    .line 154
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->hideSoftKeyboard()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

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

    .line 59
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 60
    sget p2, Lus/zoom/zrcbox/R$id;->error_message:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/login/LoginBaseFragment;->mErrorMessageView:Landroid/widget/TextView;

    .line 61
    iget-object p2, p0, Lus/zoom/zrc/login/LoginBaseFragment;->mErrorMessageView:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const/4 v0, 0x4

    .line 62
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    :cond_0
    sget p2, Lus/zoom/zrcbox/R$id;->login_fragment_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/login/LoginBaseFragment;->mTitleView:Landroid/widget/TextView;

    .line 66
    iget-object p1, p0, Lus/zoom/zrc/login/LoginBaseFragment;->mTitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 67
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 68
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lus/zoom/zrc/login/LoginBaseFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected saveUIState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 208
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->getUIState()Lus/zoom/zrc/login/LoginContract$IUICache;

    move-result-object v0

    invoke-direct {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->getUIStateKeyFlag()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lus/zoom/zrc/login/LoginContract$IUICache;->setKeyValue(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setDisableAnnounceTitleForAccessibility()V
    .locals 1

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lus/zoom/zrc/login/LoginBaseFragment;->mDisableAnnounceTitleForAccessibility:Z

    return-void
.end method

.method public setDisplayTag(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lus/zoom/zrc/login/LoginBaseFragment;->mDisplayTag:Ljava/lang/String;

    return-void
.end method
