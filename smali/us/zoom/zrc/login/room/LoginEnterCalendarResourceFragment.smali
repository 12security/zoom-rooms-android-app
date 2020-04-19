.class public Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;
.super Lus/zoom/zrc/login/LoginBaseFragment;
.source "LoginEnterCalendarResourceFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field private static final KEY_INPUT_RESOURCE_NAME:Ljava/lang/String; = "input_resource_name"


# instance fields
.field private mAddButton:Landroid/view/View;

.field private mInputName:Landroid/widget/EditText;

.field private mSelectedService:Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->onAddButtonClicked()V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;)Lus/zoom/zrc/login/LoginContract$IPresenter;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;)Lus/zoom/zrc/login/LoginContract$INavigator;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;)Lus/zoom/zrc/login/LoginContract$INavigator;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;)Lus/zoom/zrc/login/LoginContract$IPresenter;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object p0

    return-object p0
.end method

.method public static obtainInstance(Landroidx/fragment/app/FragmentManager;Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;
    .locals 1
    .param p0    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 45
    const-class v0, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;

    if-nez p0, :cond_0

    .line 47
    new-instance p0, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;

    invoke-direct {p0}, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;-><init>()V

    .line 49
    :cond_0
    invoke-direct {p0, p1}, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->setSelectedCalendarService(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)V

    return-object p0
.end method

.method private onAddButtonClicked()V
    .locals 3

    .line 139
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->mSelectedService:Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAddButtonClicked with null service!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->mInputName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^[A-Za-z0-9!#$%&\'*+/=?^_`{|}~-]+(\\.[A-Za-z0-9!#$%&\'*+/=?^_`{|}~-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9-]+)*(\\.[A-Za-z]{2,})$"

    .line 147
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 148
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 149
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    .line 150
    sget-object v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->AssignRoomCalendar:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    const/16 v1, 0x12c

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->onError(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)Z

    return-void

    .line 154
    :cond_1
    new-instance v1, Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;

    invoke-direct {v1}, Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;-><init>()V

    .line 155
    invoke-virtual {v1, v0}, Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;->setEmail(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v0

    iget-object v2, p0, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->mSelectedService:Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    invoke-interface {v0, v2, v1}, Lus/zoom/zrc/login/LoginContract$IPresenter;->assignRoomCalendar(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;)V

    .line 157
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->getUIState()Lus/zoom/zrc/login/LoginContract$IUICache;

    move-result-object v0

    invoke-interface {v0, v1}, Lus/zoom/zrc/login/LoginContract$IUICache;->selectCalendarResource(Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;)V

    .line 159
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->hideSoftKeyboard()V

    return-void
.end method

.method private setSelectedCalendarService(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->mSelectedService:Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 174
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->hideErrorMessage()V

    .line 175
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->mAddButton:Landroid/view/View;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    const-string v0, "input_resource_name"

    .line 176
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->saveUIState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

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

    .line 60
    sget p3, Lus/zoom/zrcbox/R$layout;->login_fragment_enter_calendar_resource:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-ne p1, p2, :cond_0

    .line 182
    invoke-direct {p0}, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->onAddButtonClicked()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onError(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)Z
    .locals 2

    .line 121
    sget-object v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->AssignRoomCalendar:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    if-ne v0, p1, :cond_3

    const/16 p3, 0xfa5

    if-ne p3, p2, :cond_0

    .line 123
    sget p3, Lus/zoom/zrcbox/R$string;->assign_calendar_failed_not_exit:I

    invoke-virtual {p0, p3}, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->getUIState()Lus/zoom/zrc/login/LoginContract$IUICache;

    move-result-object p3

    invoke-interface {p3}, Lus/zoom/zrc/login/LoginContract$IUICache;->getSelectedCalendarResource()Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;

    move-result-object p3

    if-nez p3, :cond_1

    .line 125
    sget p3, Lus/zoom/zrcbox/R$string;->unassign_calendar_failed:I

    invoke-virtual {p0, p3}, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    const/16 p3, 0x12c

    if-ne p3, p2, :cond_2

    .line 127
    sget p3, Lus/zoom/zrcbox/R$string;->invalid_email_address:I

    invoke-virtual {p0, p3}, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 129
    :cond_2
    sget p3, Lus/zoom/zrcbox/R$string;->assign_calendar_failed:I

    invoke-virtual {p0, p3}, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 132
    :cond_3
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->mInputName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 133
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->mInputName:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lus/zoom/androidlib/util/UIUtil;->openSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 135
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lus/zoom/zrc/login/LoginBaseFragment;->onError(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public onStart()V
    .locals 3

    .line 90
    invoke-super {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->onStart()V

    .line 91
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->showActionBar()Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->calendar_resource:I

    .line 92
    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->setBackNavigation(I)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->sign_out:I

    new-instance v2, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment$3;

    invoke-direct {v2, p0}, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment$3;-><init>(Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;)V

    .line 93
    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->setRightAction(ILjava/lang/Runnable;)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->show()V

    .line 101
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->mInputName:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 103
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->mInputName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->mInputName:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lus/zoom/androidlib/util/UIUtil;->openSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    :cond_0
    const-string v0, "input_resource_name"

    .line 107
    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->getUIState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->mInputName:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v1, p0, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->mInputName:Landroid/widget/EditText;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 110
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->mAddButton:Landroid/view/View;

    iget-object v1, p0, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->mInputName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 115
    invoke-super {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->onStop()V

    .line 116
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->mInputName:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

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

    .line 65
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/login/LoginBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 66
    sget p2, Lus/zoom/zrcbox/R$id;->input_calendar_resource_email:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->mInputName:Landroid/widget/EditText;

    .line 67
    sget p2, Lus/zoom/zrcbox/R$id;->add_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->mAddButton:Landroid/view/View;

    .line 68
    iget-object p2, p0, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->mAddButton:Landroid/view/View;

    new-instance v0, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment$1;-><init>(Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    sget p2, Lus/zoom/zrcbox/R$id;->skip_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 76
    new-instance p2, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment$2;

    invoke-direct {p2, p0}, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment$2;-><init>(Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
