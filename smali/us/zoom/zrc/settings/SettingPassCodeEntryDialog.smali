.class public Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "SettingPassCodeEntryDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private cancelBtn:Landroid/widget/Button;

.field private cancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private confirmBtn:Landroid/widget/Button;

.field private eventAction:Lus/zoom/androidlib/util/EventAction;

.field private inputBox:Landroid/widget/EditText;

.field private message:Ljava/lang/CharSequence;

.field private messageTv:Landroid/widget/TextView;

.field private title:Ljava/lang/CharSequence;

.field private titleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;)Landroid/widget/EditText;
    .locals 0

    .line 37
    iget-object p0, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->inputBox:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;)Landroid/widget/Button;
    .locals 0

    .line 37
    iget-object p0, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->confirmBtn:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->postActionEvent()V

    return-void
.end method

.method private cancelAction()V
    .locals 2

    .line 249
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->inputBox:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lus/zoom/androidlib/util/UIUtil;->closeSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 250
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->inputBox:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 251
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->safeDismiss()V

    .line 252
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method private confirmAction()V
    .locals 4

    .line 203
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getZoomRoomPassCode()Ljava/lang/String;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->inputBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-static {v0, v1}, Lus/zoom/androidlib/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->inputBox:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lus/zoom/androidlib/util/UIUtil;->closeSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 208
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->inputBox:Landroid/widget/EditText;

    new-instance v1, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog$2;

    invoke-direct {v1, p0}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog$2;-><init>(Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->getParentFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "getParentFragmentManagerHelper failed"

    const/4 v1, 0x0

    .line 219
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 222
    :cond_1
    sget v1, Lus/zoom/zrcbox/R$string;->wrong_password:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-virtual {v0, p0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->dismissDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    .line 224
    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->executePendingTransactions()V

    .line 226
    iget-object v2, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->title:Ljava/lang/CharSequence;

    iget-object v3, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->eventAction:Lus/zoom/androidlib/util/EventAction;

    invoke-static {v0, v2, v3, v1}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/CharSequence;Lus/zoom/androidlib/util/EventAction;Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->executePendingTransactions()V

    .line 229
    invoke-static {v0}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->get(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 231
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->setCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static dismiss(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V
    .locals 1

    .line 84
    const-class v0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;

    if-eqz p0, :cond_0

    .line 85
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->safeDismiss()V

    :cond_0
    return-void
.end method

.method public static get(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 97
    const-class v0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;

    return-object p0
.end method

.method public static isShowing(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)Z
    .locals 1

    .line 91
    const-class v0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;

    if-eqz p0, :cond_0

    .line 92
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->isAdded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private postActionEvent()V
    .locals 3

    .line 237
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 238
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 239
    instance-of v2, v1, Lus/zoom/zrc/base/app/ZRCFragment;

    if-eqz v2, :cond_0

    .line 240
    check-cast v1, Lus/zoom/zrc/base/app/ZRCFragment;

    invoke-virtual {v1}, Lus/zoom/zrc/base/app/ZRCFragment;->getNonNullEventTaskManagerOrThrowException()Lus/zoom/androidlib/util/EventTaskManager;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->eventAction:Lus/zoom/androidlib/util/EventAction;

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/util/EventTaskManager;->push(Lus/zoom/androidlib/util/EventAction;)V

    goto :goto_0

    .line 241
    :cond_0
    instance-of v2, v1, Lus/zoom/zrc/base/app/ZRCDialogFragment;

    if-eqz v2, :cond_1

    .line 242
    check-cast v1, Lus/zoom/zrc/base/app/ZRCDialogFragment;

    invoke-virtual {v1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->getNonNullEventTaskManagerOrThrowException()Lus/zoom/androidlib/util/EventTaskManager;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->eventAction:Lus/zoom/androidlib/util/EventAction;

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/util/EventTaskManager;->push(Lus/zoom/androidlib/util/EventAction;)V

    goto :goto_0

    .line 243
    :cond_1
    instance-of v1, v0, Lus/zoom/zrc/ZRCActivity;

    if-eqz v1, :cond_2

    .line 244
    check-cast v0, Lus/zoom/zrc/ZRCActivity;

    invoke-virtual {v0}, Lus/zoom/zrc/ZRCActivity;->getNonNullEventTaskManagerOrThrowException()Lus/zoom/androidlib/util/EventTaskManager;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->eventAction:Lus/zoom/androidlib/util/EventAction;

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/util/EventTaskManager;->push(Lus/zoom/androidlib/util/EventAction;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setEventAction(Lus/zoom/androidlib/util/EventAction;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->eventAction:Lus/zoom/androidlib/util/EventAction;

    return-void
.end method

.method public static show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/CharSequence;Lus/zoom/androidlib/util/EventAction;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-static {p0, p1, p2, v0}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/CharSequence;Lus/zoom/androidlib/util/EventAction;Ljava/lang/String;)V

    return-void
.end method

.method private static show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/CharSequence;Lus/zoom/androidlib/util/EventAction;Ljava/lang/String;)V
    .locals 1
    .param p0    # Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return-void

    .line 73
    :cond_0
    const-class v0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;

    if-nez v0, :cond_1

    .line 75
    new-instance v0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;

    invoke-direct {v0}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;-><init>()V

    .line 77
    :cond_1
    invoke-virtual {v0, p1}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {v0, p3}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 79
    invoke-direct {v0, p2}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->setEventAction(Lus/zoom/androidlib/util/EventAction;)V

    .line 80
    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 166
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 167
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 168
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 195
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->confirmBtn:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 196
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->confirmAction()V

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->cancelBtn:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 198
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->cancelAction()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 53
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 54
    invoke-virtual {p0, v0, p1}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->setStyle(II)V

    .line 55
    invoke-virtual {p0, p1}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->setCancelable(Z)V

    .line 56
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    iget-object p1, p1, Lus/zoom/zrc/base/app/ZRCRetainFragment;->cachedObj:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    iget-object p1, p1, Lus/zoom/zrc/base/app/ZRCRetainFragment;->cachedObj:Ljava/lang/Object;

    check-cast p1, Lus/zoom/androidlib/util/EventAction;

    iput-object p1, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->eventAction:Lus/zoom/androidlib/util/EventAction;

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->eventAction:Lus/zoom/androidlib/util/EventAction;

    iput-object v0, p1, Lus/zoom/zrc/base/app/ZRCRetainFragment;->cachedObj:Ljava/lang/Object;

    .line 62
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->setDisableImmersiveModeForPolycomTrio()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 121
    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 122
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x106000d

    .line 124
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 125
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 126
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 127
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v1, 0x5

    .line 128
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    return-object p1
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

    .line 107
    sget p3, Lus/zoom/zrcbox/R$layout;->setting_pass_code_entry:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 108
    sget p2, Lus/zoom/zrcbox/R$id;->title_tv:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->titleTv:Landroid/widget/TextView;

    .line 109
    sget p2, Lus/zoom/zrcbox/R$id;->message_tv:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->messageTv:Landroid/widget/TextView;

    .line 110
    sget p2, Lus/zoom/zrcbox/R$id;->input_box:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->inputBox:Landroid/widget/EditText;

    .line 111
    sget p2, Lus/zoom/zrcbox/R$id;->confirm_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->confirmBtn:Landroid/widget/Button;

    .line 112
    sget p2, Lus/zoom/zrcbox/R$id;->cancel_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->cancelBtn:Landroid/widget/Button;

    .line 113
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->confirmBtn:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->cancelBtn:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onStart()V
    .locals 2

    .line 135
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onStart()V

    .line 136
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->title:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 138
    sget v0, Lus/zoom/zrcbox/R$string;->unlock_settings_message:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->title:Ljava/lang/CharSequence;

    .line 140
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->titleTv:Landroid/widget/TextView;

    iget-object v1, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->message:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->messageTv:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->messageTv:Landroid/widget/TextView;

    iget-object v1, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->message:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->messageTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->inputBox:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 148
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->inputBox:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 149
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->inputBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 151
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->inputBox:Landroid/widget/EditText;

    new-instance v1, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog$1;

    invoke-direct {v1, p0}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog$1;-><init>(Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public setCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 181
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->message:Ljava/lang/CharSequence;

    .line 182
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->messageTv:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->message:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->messageTv:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 188
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->messageTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->messageTv:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->title:Ljava/lang/CharSequence;

    return-void
.end method
