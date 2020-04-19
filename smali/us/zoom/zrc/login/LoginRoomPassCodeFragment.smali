.class public Lus/zoom/zrc/login/LoginRoomPassCodeFragment;
.super Lus/zoom/zrc/login/LoginBaseFragment;
.source "LoginRoomPassCodeFragment.java"

# interfaces
.implements Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$IKeyBoardListener;


# static fields
.field private static final KEY_INPUT_PASSCODE:Ljava/lang/String; = "key_input_passcode"


# instance fields
.field private mInputPassCode:Lus/zoom/zrc/base/widget/ZRCEditText;

.field private mKeyboardView:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginBaseFragment;-><init>()V

    return-void
.end method

.method private checkActionKeyEnabled()V
    .locals 5

    .line 126
    iget-object v0, p0, Lus/zoom/zrc/login/LoginRoomPassCodeFragment;->mInputPassCode:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 127
    iget-object v1, p0, Lus/zoom/zrc/login/LoginRoomPassCodeFragment;->mKeyboardView:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1, v4}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->setDeleteKeyEnabled(Z)V

    .line 128
    iget-object v1, p0, Lus/zoom/zrc/login/LoginRoomPassCodeFragment;->mKeyboardView:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    if-lez v0, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v1, v4}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->setDoneKeyEnabled(Z)V

    .line 129
    iget-object v1, p0, Lus/zoom/zrc/login/LoginRoomPassCodeFragment;->mKeyboardView:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    const/16 v4, 0x10

    if-ge v0, v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1, v2}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->setNumberKeyEnabled(Z)V

    return-void
.end method

.method public static obtainInstance(Landroidx/fragment/app/FragmentManager;)Lus/zoom/zrc/login/LoginRoomPassCodeFragment;
    .locals 1
    .param p0    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 32
    const-class v0, Lus/zoom/zrc/login/LoginRoomPassCodeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/login/LoginRoomPassCodeFragment;

    if-nez p0, :cond_0

    .line 34
    new-instance p0, Lus/zoom/zrc/login/LoginRoomPassCodeFragment;

    invoke-direct {p0}, Lus/zoom/zrc/login/LoginRoomPassCodeFragment;-><init>()V

    :cond_0
    return-object p0
.end method

.method private setPassCode(Ljava/lang/String;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lus/zoom/zrc/login/LoginRoomPassCodeFragment;->mInputPassCode:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/widget/ZRCEditText;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lus/zoom/zrc/login/LoginRoomPassCodeFragment;->mInputPassCode:Lus/zoom/zrc/base/widget/ZRCEditText;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/widget/ZRCEditText;->setSelection(I)V

    return-void
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

    .line 42
    sget p3, Lus/zoom/zrcbox/R$layout;->login_fragment_room_pass_code:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onError(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)Z
    .locals 1

    .line 112
    sget-object v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->SetRoomPassCode:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    if-ne v0, p1, :cond_1

    const/16 p3, 0xcd

    if-ne p3, p2, :cond_0

    .line 114
    sget p3, Lus/zoom/zrcbox/R$string;->set_passcode_failed_restricted:I

    invoke-virtual {p0, p3}, Lus/zoom/zrc/login/LoginRoomPassCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 116
    :cond_0
    sget p3, Lus/zoom/zrcbox/R$string;->set_passcode_failed:I

    invoke-virtual {p0, p3}, Lus/zoom/zrc/login/LoginRoomPassCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 120
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginRoomPassCodeFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IPresenter;->getDefaultPassCode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/login/LoginRoomPassCodeFragment;->setPassCode(Ljava/lang/String;)V

    .line 122
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lus/zoom/zrc/login/LoginBaseFragment;->onError(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public onKeyBoardClicked(ILjava/lang/String;)V
    .locals 2

    const/16 p2, 0x42

    if-ne p2, p1, :cond_0

    .line 96
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginRoomPassCodeFragment;->hideErrorMessage()V

    .line 97
    iget-object p1, p0, Lus/zoom/zrc/login/LoginRoomPassCodeFragment;->mInputPassCode:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {p1}, Lus/zoom/zrc/base/widget/ZRCEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 99
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginRoomPassCodeFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object p2

    invoke-interface {p2}, Lus/zoom/zrc/login/LoginContract$IPresenter;->getDefaultPassCode()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lus/zoom/zrc/login/LoginUsageTrack;->sendSetPassCode(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginRoomPassCodeFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object p2

    invoke-interface {p2, p1}, Lus/zoom/zrc/login/LoginContract$IPresenter;->setRoomPassCode(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_0
    iget-object p2, p0, Lus/zoom/zrc/login/LoginRoomPassCodeFragment;->mInputPassCode:Lus/zoom/zrc/base/widget/ZRCEditText;

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p2, v0}, Lus/zoom/zrc/base/widget/ZRCEditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 104
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginRoomPassCodeFragment;->checkActionKeyEnabled()V

    :cond_1
    :goto_0
    const-string p1, "key_input_passcode"

    .line 107
    iget-object p2, p0, Lus/zoom/zrc/login/LoginRoomPassCodeFragment;->mInputPassCode:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {p2}, Lus/zoom/zrc/base/widget/ZRCEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/login/LoginRoomPassCodeFragment;->saveUIState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 58
    invoke-super {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->onStart()V

    .line 59
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginRoomPassCodeFragment;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lus/zoom/zrc/login/LoginContract$INavigator;->setShowFooter(Z)V

    .line 60
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginRoomPassCodeFragment;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->showActionBar()Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginRoomPassCodeFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v1

    invoke-interface {v1}, Lus/zoom/zrc/login/LoginContract$IPresenter;->getLocationHelper()Lus/zoom/zrc/login/LoginLocationHelper;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/login/LoginLocationHelper;->hasLocationToDisplay()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    sget v1, Lus/zoom/zrcbox/R$string;->location:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->setBackNavigation(I)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginRoomPassCodeFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v1

    invoke-interface {v1}, Lus/zoom/zrc/login/LoginContract$IPresenter;->getCalendarHelper()Lus/zoom/zrc/login/LoginCalendarHelper;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/login/LoginCalendarHelper;->hasCalendarToDisplay()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginRoomPassCodeFragment;->isLastForCalendarResourceInBackStack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    sget v1, Lus/zoom/zrcbox/R$string;->calendar_resource:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->setBackNavigation(I)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    goto :goto_0

    .line 67
    :cond_1
    sget v1, Lus/zoom/zrcbox/R$string;->calendar_service:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->setBackNavigation(I)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginRoomPassCodeFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v1

    invoke-interface {v1}, Lus/zoom/zrc/login/LoginContract$IPresenter;->getCalendarHelper()Lus/zoom/zrc/login/LoginCalendarHelper;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/login/LoginCalendarHelper;->canAddCalendar()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 70
    sget v1, Lus/zoom/zrcbox/R$string;->add_calendar_title:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->setBackNavigation(I)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    goto :goto_0

    .line 72
    :cond_3
    sget v1, Lus/zoom/zrcbox/R$string;->room_name:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->setBackNavigation(I)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    .line 74
    :goto_0
    sget v1, Lus/zoom/zrcbox/R$string;->sign_out:I

    new-instance v2, Lus/zoom/zrc/login/LoginRoomPassCodeFragment$1;

    invoke-direct {v2, p0}, Lus/zoom/zrc/login/LoginRoomPassCodeFragment$1;-><init>(Lus/zoom/zrc/login/LoginRoomPassCodeFragment;)V

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->setRightAction(ILjava/lang/Runnable;)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    .line 81
    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->show()V

    const-string v0, "key_input_passcode"

    .line 83
    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginRoomPassCodeFragment;->getUIState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginRoomPassCodeFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v1

    invoke-interface {v1}, Lus/zoom/zrc/login/LoginContract$IPresenter;->getDefaultPassCode()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 86
    invoke-direct {p0, v1}, Lus/zoom/zrc/login/LoginRoomPassCodeFragment;->setPassCode(Ljava/lang/String;)V

    goto :goto_1

    .line 88
    :cond_4
    invoke-direct {p0, v0}, Lus/zoom/zrc/login/LoginRoomPassCodeFragment;->setPassCode(Ljava/lang/String;)V

    .line 90
    :goto_1
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginRoomPassCodeFragment;->checkActionKeyEnabled()V

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

    .line 47
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/login/LoginBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 48
    sget p2, Lus/zoom/zrcbox/R$id;->input_pass_code:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/base/widget/ZRCEditText;

    iput-object p2, p0, Lus/zoom/zrc/login/LoginRoomPassCodeFragment;->mInputPassCode:Lus/zoom/zrc/base/widget/ZRCEditText;

    .line 49
    iget-object p2, p0, Lus/zoom/zrc/login/LoginRoomPassCodeFragment;->mInputPassCode:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {p2}, Lus/zoom/zrc/base/widget/ZRCEditText;->setAnnounceTextChangeEvenUnselected()V

    .line 50
    iget-object p2, p0, Lus/zoom/zrc/login/LoginRoomPassCodeFragment;->mInputPassCode:Lus/zoom/zrc/base/widget/ZRCEditText;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lus/zoom/zrc/base/widget/ZRCEditText;->setInputType(I)V

    .line 52
    sget p2, Lus/zoom/zrcbox/R$id;->number_key_board:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    iput-object p1, p0, Lus/zoom/zrc/login/LoginRoomPassCodeFragment;->mKeyboardView:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    .line 53
    iget-object p1, p0, Lus/zoom/zrc/login/LoginRoomPassCodeFragment;->mKeyboardView:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    invoke-virtual {p1, p0}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->setKeyBoardListener(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$IKeyBoardListener;)V

    return-void
.end method
