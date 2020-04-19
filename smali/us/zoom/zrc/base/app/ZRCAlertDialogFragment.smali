.class public Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "ZRCAlertDialogFragment.java"


# instance fields
.field private dialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

.field private isVerticalStyle:Z

.field private message:Ljava/lang/String;

.field private negativeButton:Ljava/lang/String;

.field private negativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private neutralButton:Ljava/lang/String;

.field private neutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private positiveButton:Ljava/lang/String;

.field private positiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private positiveTextColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->isVerticalStyle:Z

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->positiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->negativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->neutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method private createAlertDialog()Lus/zoom/zrc/base/app/ZRCAlertDialog;
    .locals 3

    .line 138
    new-instance v0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 139
    iget-object v1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    iget-object v1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setTitle(Ljava/lang/String;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    .line 142
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    iget-object v1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setMessage(Ljava/lang/String;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    .line 145
    :cond_1
    iget-boolean v1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->isVerticalStyle:Z

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setVerticalStyle(Z)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    .line 146
    iget-object v1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->positiveButton:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 147
    iget-object v1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->positiveButton:Ljava/lang/String;

    new-instance v2, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment$1;

    invoke-direct {v2, p0}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment$1;-><init>(Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    .line 155
    :cond_2
    iget-object v1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->negativeButton:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 156
    iget-object v1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->negativeButton:Ljava/lang/String;

    new-instance v2, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment$2;

    invoke-direct {v2, p0}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment$2;-><init>(Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    .line 164
    :cond_3
    iget-object v1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->neutralButton:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 165
    iget-object v1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->neutralButton:Ljava/lang/String;

    new-instance v2, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment$3;

    invoke-direct {v2, p0}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment$3;-><init>(Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setNeutralButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    .line 173
    :cond_4
    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->create()Lus/zoom/zrc/base/app/ZRCAlertDialog;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "title"

    .line 86
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->title:Ljava/lang/String;

    const-string v0, "message"

    .line 87
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->message:Ljava/lang/String;

    const-string v0, "positive_button"

    .line 88
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->positiveButton:Ljava/lang/String;

    const-string v0, "negative_button"

    .line 89
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->negativeButton:Ljava/lang/String;

    const-string v0, "neutral_button"

    .line 90
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->neutralButton:Ljava/lang/String;

    const-string v0, "positive_text_color"

    .line 91
    iget v1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->positiveTextColor:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->positiveTextColor:I

    .line 92
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->createAlertDialog()Lus/zoom/zrc/base/app/ZRCAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->dialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    .line 94
    :cond_0
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 123
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->dialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    if-nez p1, :cond_0

    .line 124
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->createAlertDialog()Lus/zoom/zrc/base/app/ZRCAlertDialog;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->dialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    .line 126
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->dialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 131
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->positiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 133
    iput-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->negativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 134
    iput-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->neutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 111
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "title"

    .line 112
    iget-object v1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->title:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "message"

    .line 113
    iget-object v1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->message:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "positive_button"

    .line 114
    iget-object v1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->positiveButton:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "negative_button"

    .line 115
    iget-object v1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->negativeButton:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "neutral_button"

    .line 116
    iget-object v1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->neutralButton:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "positive_text_color"

    .line 117
    iget v1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->positiveTextColor:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 99
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onStart()V

    .line 100
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    instance-of v0, v0, Lus/zoom/zrc/base/app/ZRCAlertDialog;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/base/app/ZRCAlertDialog;

    const/4 v1, -0x1

    .line 102
    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget v1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->positiveTextColor:I

    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1

    .line 43
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->message:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->dialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .line 60
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->negativeButton:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->negativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 62
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->dialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    if-eqz p1, :cond_0

    const/4 p2, -0x2

    .line 63
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->negativeButton:Ljava/lang/String;

    iget-object v1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->negativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, p2, v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setNeutralButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .line 68
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->neutralButton:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->neutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 70
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->dialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    if-eqz p1, :cond_0

    const/4 p2, -0x3

    .line 71
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->negativeButton:Ljava/lang/String;

    iget-object v1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->neutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, p2, v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .line 51
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->positiveButton:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->positiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 53
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->dialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    if-eqz p1, :cond_0

    const/4 p2, -0x1

    .line 54
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->positiveButton:Ljava/lang/String;

    iget-object v1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->positiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, p2, v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setPositiveTextColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 80
    iput p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->positiveTextColor:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 36
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->title:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->dialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setVerticalStyle(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->isVerticalStyle:Z

    return-void
.end method
