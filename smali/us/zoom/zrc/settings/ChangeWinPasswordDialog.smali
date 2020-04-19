.class public Lus/zoom/zrc/settings/ChangeWinPasswordDialog;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "ChangeWinPasswordDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static final ChangeWinPassResult_ERROR_INVALID_PASSWORD:I = 0x56

.field private static final ChangeWinPassResult_NERR_PasswordTooShort:I = 0x8c5

.field private static final ChangeWinPassResult_Success:I


# instance fields
.field private errorMsgTv:Landroid/widget/TextView;

.field private newPasswordEt:Landroid/widget/EditText;

.field private okBtn:Lus/zoom/zrc/view/ZRCTextViewButton;

.field private oldPasswordEt:Landroid/widget/EditText;

.field private pcNameTv:Landroid/widget/TextView;

.field private verifyPasswordEt:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/settings/ChangeWinPasswordDialog;)Z
    .locals 0

    .line 36
    invoke-direct {p0}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->needNoneNullOldPassword()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/settings/ChangeWinPasswordDialog;)Landroid/widget/EditText;
    .locals 0

    .line 36
    iget-object p0, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->oldPasswordEt:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/settings/ChangeWinPasswordDialog;Landroid/text/Editable;)Z
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->isEmptyOrNull(Landroid/text/Editable;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lus/zoom/zrc/settings/ChangeWinPasswordDialog;)Landroid/widget/EditText;
    .locals 0

    .line 36
    iget-object p0, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->newPasswordEt:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lus/zoom/zrc/settings/ChangeWinPasswordDialog;)Landroid/widget/EditText;
    .locals 0

    .line 36
    iget-object p0, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->verifyPasswordEt:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$500(Lus/zoom/zrc/settings/ChangeWinPasswordDialog;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->requestChangePassword()V

    return-void
.end method

.method private announceForAccessibility(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1

    .line 240
    invoke-virtual {p0}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-static {p1, p2}, Lus/zoom/androidlib/util/AccessibilityUtil;->announceForAccessibilityCompat(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private isConnectedWinZR()Z
    .locals 2

    .line 252
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getRoomInfo()Lus/zoom/zrcsdk/model/ZRCRoomInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->getPlatform()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Windows"

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isEmptyOrNull(Landroid/text/Editable;)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 227
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private needNoneNullOldPassword()Z
    .locals 2

    .line 246
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/PTApp;->getZRVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4.5.1119.1024"

    .line 248
    invoke-static {v0, v1}, Lus/zoom/zrc/utils/Util;->isNewerZoomVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->isConnectedWinZR()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private requestChangePassword()V
    .locals 3

    .line 216
    iget-object v0, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->errorMsgTv:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    invoke-direct {p0}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->verifyPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->oldPasswordEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->newPasswordEt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrcsdk/PTApp;->changeWindowsPassword(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->showWaitingDialog()V

    :cond_0
    return-void
.end method

.method public static show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V
    .locals 2

    .line 169
    const-class v0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/DialogFragment;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;

    invoke-direct {v0}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;-><init>()V

    .line 173
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 176
    :cond_1
    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method

.method private updatePcNameView()V
    .locals 2

    .line 231
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getRoomInfo()Lus/zoom/zrcsdk/model/ZRCRoomInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->getOsAccountName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->pcNameTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 233
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->getParentFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->dismissDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method

.method private verifyPassword()Z
    .locals 3

    .line 203
    iget-object v0, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->newPasswordEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->verifyPasswordEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->errorMsgTv:Landroid/widget/TextView;

    sget v2, Lus/zoom/zrcbox/R$string;->new_passwords_not_match:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 205
    iget-object v0, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->errorMsgTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->announceForAccessibility(Landroid/view/View;Ljava/lang/CharSequence;)V

    return v1

    .line 207
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->oldPasswordEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->newPasswordEt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->errorMsgTv:Landroid/widget/TextView;

    sget v2, Lus/zoom/zrcbox/R$string;->new_and_old_password_same:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 209
    iget-object v0, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->errorMsgTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->announceForAccessibility(Landroid/view/View;Ljava/lang/CharSequence;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 78
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 79
    invoke-virtual {p0, v0, p1}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->setStyle(II)V

    .line 80
    invoke-virtual {p0, p1}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->setCancelable(Z)V

    .line 81
    invoke-virtual {p0}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object v0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    .line 82
    invoke-virtual {p0}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object v0

    new-array p1, p1, [Lus/zoom/zrc/base/notification/NotificationEvent;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerNotification([Lus/zoom/zrc/base/notification/NotificationEvent;)V

    .line 83
    invoke-virtual {p0}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->setDisableImmersiveModeForPolycomTrio()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 137
    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 138
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x106000d

    .line 140
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 141
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 142
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 143
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v1, 0x5

    .line 144
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
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

    .line 89
    sget p3, Lus/zoom/zrcbox/R$layout;->change_windows_password_dialog:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 90
    sget p2, Lus/zoom/zrcbox/R$id;->pc_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->pcNameTv:Landroid/widget/TextView;

    .line 91
    sget p2, Lus/zoom/zrcbox/R$id;->old_password_et:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->oldPasswordEt:Landroid/widget/EditText;

    .line 92
    sget p2, Lus/zoom/zrcbox/R$id;->new_password_et:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->newPasswordEt:Landroid/widget/EditText;

    .line 93
    sget p2, Lus/zoom/zrcbox/R$id;->verify_password_et:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->verifyPasswordEt:Landroid/widget/EditText;

    .line 94
    sget p2, Lus/zoom/zrcbox/R$id;->error_message:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->errorMsgTv:Landroid/widget/TextView;

    .line 95
    iget-object p2, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->errorMsgTv:Landroid/widget/TextView;

    const-string p3, ""

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    sget p2, Lus/zoom/zrcbox/R$id;->cancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/view/ZRCTextViewButton;

    .line 97
    sget p3, Lus/zoom/zrcbox/R$id;->ok:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lus/zoom/zrc/view/ZRCTextViewButton;

    iput-object p3, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->okBtn:Lus/zoom/zrc/view/ZRCTextViewButton;

    .line 98
    iget-object p3, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->okBtn:Lus/zoom/zrc/view/ZRCTextViewButton;

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Lus/zoom/zrc/view/ZRCTextViewButton;->setDisableAlpha(Z)V

    .line 99
    iget-object p3, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->okBtn:Lus/zoom/zrc/view/ZRCTextViewButton;

    invoke-virtual {p3, v0}, Lus/zoom/zrc/view/ZRCTextViewButton;->setEnableOnly(Z)V

    .line 100
    iget-object p3, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->oldPasswordEt:Landroid/widget/EditText;

    invoke-virtual {p3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 101
    iget-object p3, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->newPasswordEt:Landroid/widget/EditText;

    invoke-virtual {p3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 102
    iget-object p3, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->verifyPasswordEt:Landroid/widget/EditText;

    invoke-virtual {p3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 103
    new-instance p3, Lus/zoom/zrc/settings/ChangeWinPasswordDialog$1;

    invoke-direct {p3, p0}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog$1;-><init>(Lus/zoom/zrc/settings/ChangeWinPasswordDialog;)V

    invoke-virtual {p2, p3}, Lus/zoom/zrc/view/ZRCTextViewButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object p2, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->okBtn:Lus/zoom/zrc/view/ZRCTextViewButton;

    new-instance p3, Lus/zoom/zrc/settings/ChangeWinPasswordDialog$2;

    invoke-direct {p3, p0}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog$2;-><init>(Lus/zoom/zrc/settings/ChangeWinPasswordDialog;)V

    invoke-virtual {p2, p3}, Lus/zoom/zrc/view/ZRCTextViewButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object p2, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->verifyPasswordEt:Landroid/widget/EditText;

    new-instance p3, Lus/zoom/zrc/settings/ChangeWinPasswordDialog$3;

    invoke-direct {p3, p0}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog$3;-><init>(Lus/zoom/zrc/settings/ChangeWinPasswordDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-object p1
.end method

.method public onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 3

    .line 58
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->WindowsPasswordChanged:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/notification/ModelEvent;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 59
    invoke-virtual {p0}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->dismissWaitingDialog()V

    .line 60
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 62
    invoke-virtual {p0}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->getParentFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->dismissDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    .line 63
    invoke-virtual {p0}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$string;->successfully_changed:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const/16 v0, 0x56

    if-ne p1, v0, :cond_1

    .line 66
    iget-object p1, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->errorMsgTv:Landroid/widget/TextView;

    sget p2, Lus/zoom/zrcbox/R$string;->incorrect_old_password:I

    invoke-virtual {p0, p2}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8c5

    if-ne p1, v0, :cond_2

    .line 68
    iget-object p1, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->errorMsgTv:Landroid/widget/TextView;

    sget p2, Lus/zoom/zrcbox/R$string;->new_password_format_error:I

    invoke-virtual {p0, p2}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 70
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->errorMsgTv:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->unknown_error:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v2

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->errorMsgTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->announceForAccessibility(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 51
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->roomInfo:I

    if-ne p1, p2, :cond_0

    .line 52
    invoke-direct {p0}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->updatePcNameView()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 151
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onStart()V

    .line 152
    invoke-virtual {p0}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$dimen;->zrc_round_dialog_min_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 158
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->oldPasswordEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 159
    iget-object v0, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->oldPasswordEt:Landroid/widget/EditText;

    new-instance v1, Lus/zoom/zrc/settings/ChangeWinPasswordDialog$4;

    invoke-direct {v1, p0}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog$4;-><init>(Lus/zoom/zrc/settings/ChangeWinPasswordDialog;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 165
    invoke-direct {p0}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->updatePcNameView()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 186
    invoke-direct {p0}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->needNoneNullOldPassword()Z

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->oldPasswordEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->isEmptyOrNull(Landroid/text/Editable;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->newPasswordEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->isEmptyOrNull(Landroid/text/Editable;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->verifyPasswordEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->isEmptyOrNull(Landroid/text/Editable;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 191
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->okBtn:Lus/zoom/zrc/view/ZRCTextViewButton;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lus/zoom/zrcbox/R$color;->enable_blue:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    invoke-virtual {p1, p4}, Lus/zoom/zrc/view/ZRCTextViewButton;->setTextColor(I)V

    .line 192
    iget-object p1, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->okBtn:Lus/zoom/zrc/view/ZRCTextViewButton;

    invoke-virtual {p1, p2}, Lus/zoom/zrc/view/ZRCTextViewButton;->setDisableAlpha(Z)V

    .line 193
    iget-object p1, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->okBtn:Lus/zoom/zrc/view/ZRCTextViewButton;

    invoke-virtual {p1, p3}, Lus/zoom/zrc/view/ZRCTextViewButton;->setEnableOnly(Z)V

    goto :goto_1

    .line 187
    :cond_2
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->okBtn:Lus/zoom/zrc/view/ZRCTextViewButton;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lus/zoom/zrcbox/R$color;->disable_button_text:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    invoke-virtual {p1, p4}, Lus/zoom/zrc/view/ZRCTextViewButton;->setTextColor(I)V

    .line 188
    iget-object p1, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->okBtn:Lus/zoom/zrc/view/ZRCTextViewButton;

    invoke-virtual {p1, p3}, Lus/zoom/zrc/view/ZRCTextViewButton;->setDisableAlpha(Z)V

    .line 189
    iget-object p1, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->okBtn:Lus/zoom/zrc/view/ZRCTextViewButton;

    invoke-virtual {p1, p2}, Lus/zoom/zrc/view/ZRCTextViewButton;->setEnableOnly(Z)V

    :goto_1
    return-void
.end method
