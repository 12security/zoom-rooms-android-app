.class public Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;
.super Lus/zoom/zrc/login/LoginBaseFragment;
.source "LoginCreateNewRoomFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field private static final KEY_INPUT_ROOM_NAME:Ljava/lang/String; = "key_input_room_name"


# instance fields
.field private mNameInput:Landroid/widget/EditText;

.field private mNextButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;->onNextButtonClicked()V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;)Lus/zoom/zrc/login/LoginContract$IPresenter;
    .locals 0

    .line 27
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;->onCancelButtonClicked()V

    return-void
.end method

.method private checkNextButtonEnabled()V
    .locals 2

    .line 162
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;->mNameInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 163
    :goto_0
    iget-object v1, p0, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;->mNextButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public static obtainInstance(Landroidx/fragment/app/FragmentManager;)Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;
    .locals 1
    .param p0    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 35
    const-class v0, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;

    if-nez p0, :cond_0

    .line 37
    new-instance p0, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;

    invoke-direct {p0}, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;-><init>()V

    :cond_0
    return-object p0
.end method

.method private onCancelButtonClicked()V
    .locals 1

    .line 122
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IPresenter;->cancelCreateRoom()V

    .line 124
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method private onNextButtonClicked()V
    .locals 2

    .line 129
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;->mNameInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-static {v0}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 136
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;->hideSoftKeyboard()V

    .line 137
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v1

    invoke-interface {v1, v0}, Lus/zoom/zrc/login/LoginContract$IPresenter;->createNewRoom(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 154
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;->hideErrorMessage()V

    .line 155
    invoke-direct {p0}, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;->checkNextButtonEnabled()V

    const-string p1, "key_input_room_name"

    .line 156
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;->mNameInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;->saveUIState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

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

    .line 45
    sget p3, Lus/zoom/zrcbox/R$layout;->login_fragment_create_new_room:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-ne p1, p2, :cond_0

    .line 169
    invoke-direct {p0}, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;->onNextButtonClicked()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onError(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)Z
    .locals 2

    .line 101
    sget-object v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->CreateNewRoom:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    const/16 v1, 0xfa1

    if-ne v0, p1, :cond_1

    if-ne v1, p2, :cond_0

    .line 103
    sget p3, Lus/zoom/zrcbox/R$string;->create_room_failed_duplicated:I

    invoke-virtual {p0, p3}, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 105
    :cond_0
    sget p3, Lus/zoom/zrcbox/R$string;->create_room_failed:I

    invoke-virtual {p0, p3}, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 107
    :cond_1
    sget-object v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->UpdateRoomName:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    if-ne v0, p1, :cond_3

    if-ne v1, p2, :cond_2

    .line 109
    sget p3, Lus/zoom/zrcbox/R$string;->create_room_failed_duplicated:I

    invoke-virtual {p0, p3}, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 111
    :cond_2
    sget p3, Lus/zoom/zrcbox/R$string;->rename_room_failed:I

    invoke-virtual {p0, p3}, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 115
    :cond_3
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;->mNameInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 116
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;->mNameInput:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lus/zoom/androidlib/util/UIUtil;->openSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 118
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lus/zoom/zrc/login/LoginBaseFragment;->onError(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public onStart()V
    .locals 3

    .line 64
    invoke-super {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->onStart()V

    .line 65
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->showActionBar()Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->select_a_room:I

    .line 66
    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->setBackNavigation(I)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment$3;

    invoke-direct {v1, p0}, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment$3;-><init>(Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;)V

    .line 67
    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->setCustomBackAction(Ljava/lang/Runnable;)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->sign_out:I

    new-instance v2, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment$2;

    invoke-direct {v2, p0}, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment$2;-><init>(Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;)V

    .line 73
    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->setRightAction(ILjava/lang/Runnable;)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->show()V

    const-string v0, "key_input_room_name"

    .line 81
    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;->getUIState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;->mNameInput:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v1, p0, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;->mNameInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 85
    invoke-direct {p0}, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;->checkNextButtonEnabled()V

    .line 87
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;->mNameInput:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 88
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;->mNameInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;->mNameInput:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lus/zoom/androidlib/util/UIUtil;->openSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 95
    invoke-super {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->onStop()V

    .line 96
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;->mNameInput:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 50
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/login/LoginBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 51
    sget p2, Lus/zoom/zrcbox/R$id;->input_room_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;->mNameInput:Landroid/widget/EditText;

    .line 52
    iget-object p2, p0, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;->mNameInput:Landroid/widget/EditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 53
    sget p2, Lus/zoom/zrcbox/R$id;->next_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;->mNextButton:Landroid/view/View;

    .line 54
    iget-object p1, p0, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;->mNextButton:Landroid/view/View;

    new-instance p2, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment$1;

    invoke-direct {p2, p0}, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment$1;-><init>(Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
