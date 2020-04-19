.class public Lus/zoom/androidlib/widget/WaitingDialog;
.super Lus/zoom/androidlib/app/ZMDialogFragment;
.source "WaitingDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/widget/WaitingDialog$ZMProgressDialog;
    }
.end annotation


# static fields
.field public static final ARG_FINISH_ACTIVITY_ON_CANCEL:Ljava/lang/String; = "finishActivityOnCancel"

.field public static final ARG_MESSAGE:Ljava/lang/String; = "message"

.field public static final ARG_MESSAGE_ID:Ljava/lang/String; = "messageId"

.field public static final ARG_TITLE:Ljava/lang/String; = "title"

.field public static final ARG_TITLE_ID:Ljava/lang/String; = "titleId"

.field private static final TAG:Ljava/lang/String; = "us.zoom.androidlib.widget.WaitingDialog"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lus/zoom/androidlib/widget/WaitingDialog;->mActivity:Landroid/app/Activity;

    .line 25
    iput-object v0, p0, Lus/zoom/androidlib/widget/WaitingDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lus/zoom/androidlib/widget/WaitingDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static newInstance(I)Lus/zoom/androidlib/widget/WaitingDialog;
    .locals 4

    .line 70
    new-instance v0, Lus/zoom/androidlib/widget/WaitingDialog;

    invoke-direct {v0}, Lus/zoom/androidlib/widget/WaitingDialog;-><init>()V

    const/4 v1, 0x0

    .line 71
    invoke-virtual {v0, v1}, Lus/zoom/androidlib/widget/WaitingDialog;->setCancelable(Z)V

    .line 72
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "messageId"

    .line 73
    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "finishActivityOnCancel"

    .line 74
    invoke-virtual {v2, p0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    invoke-virtual {v0, v2}, Lus/zoom/androidlib/widget/WaitingDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static newInstance(II)Lus/zoom/androidlib/widget/WaitingDialog;
    .locals 4

    .line 92
    new-instance v0, Lus/zoom/androidlib/widget/WaitingDialog;

    invoke-direct {v0}, Lus/zoom/androidlib/widget/WaitingDialog;-><init>()V

    const/4 v1, 0x0

    .line 93
    invoke-virtual {v0, v1}, Lus/zoom/androidlib/widget/WaitingDialog;->setCancelable(Z)V

    .line 94
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "messageId"

    .line 95
    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "titleId"

    .line 96
    invoke-virtual {v2, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "finishActivityOnCancel"

    .line 97
    invoke-virtual {v2, p0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 99
    invoke-virtual {v0, v2}, Lus/zoom/androidlib/widget/WaitingDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static newInstance(IIZ)Lus/zoom/androidlib/widget/WaitingDialog;
    .locals 3

    .line 104
    new-instance v0, Lus/zoom/androidlib/widget/WaitingDialog;

    invoke-direct {v0}, Lus/zoom/androidlib/widget/WaitingDialog;-><init>()V

    .line 105
    invoke-virtual {v0, p2}, Lus/zoom/androidlib/widget/WaitingDialog;->setCancelable(Z)V

    .line 106
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "messageId"

    .line 107
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "titleId"

    .line 108
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "finishActivityOnCancel"

    .line 109
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 111
    invoke-virtual {v0, v1}, Lus/zoom/androidlib/widget/WaitingDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static newInstance(IZ)Lus/zoom/androidlib/widget/WaitingDialog;
    .locals 3

    .line 81
    new-instance v0, Lus/zoom/androidlib/widget/WaitingDialog;

    invoke-direct {v0}, Lus/zoom/androidlib/widget/WaitingDialog;-><init>()V

    .line 82
    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/WaitingDialog;->setCancelable(Z)V

    .line 83
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "messageId"

    .line 84
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "finishActivityOnCancel"

    .line 85
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 87
    invoke-virtual {v0, v1}, Lus/zoom/androidlib/widget/WaitingDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lus/zoom/androidlib/widget/WaitingDialog;
    .locals 4

    .line 28
    new-instance v0, Lus/zoom/androidlib/widget/WaitingDialog;

    invoke-direct {v0}, Lus/zoom/androidlib/widget/WaitingDialog;-><init>()V

    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Lus/zoom/androidlib/widget/WaitingDialog;->setCancelable(Z)V

    .line 30
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "message"

    .line 31
    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "finishActivityOnCancel"

    .line 32
    invoke-virtual {v2, p0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 34
    invoke-virtual {v0, v2}, Lus/zoom/androidlib/widget/WaitingDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lus/zoom/androidlib/widget/WaitingDialog;
    .locals 4

    .line 48
    new-instance v0, Lus/zoom/androidlib/widget/WaitingDialog;

    invoke-direct {v0}, Lus/zoom/androidlib/widget/WaitingDialog;-><init>()V

    const/4 v1, 0x0

    .line 49
    invoke-virtual {v0, v1}, Lus/zoom/androidlib/widget/WaitingDialog;->setCancelable(Z)V

    .line 50
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "message"

    .line 51
    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "title"

    .line 52
    invoke-virtual {v2, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "finishActivityOnCancel"

    .line 53
    invoke-virtual {v2, p0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    invoke-virtual {v0, v2}, Lus/zoom/androidlib/widget/WaitingDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lus/zoom/androidlib/widget/WaitingDialog;
    .locals 3

    .line 59
    new-instance v0, Lus/zoom/androidlib/widget/WaitingDialog;

    invoke-direct {v0}, Lus/zoom/androidlib/widget/WaitingDialog;-><init>()V

    .line 60
    invoke-virtual {v0, p2}, Lus/zoom/androidlib/widget/WaitingDialog;->setCancelable(Z)V

    .line 61
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "message"

    .line 62
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "title"

    .line 63
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "finishActivityOnCancel"

    .line 64
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 65
    invoke-virtual {v0, v1}, Lus/zoom/androidlib/widget/WaitingDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Z)Lus/zoom/androidlib/widget/WaitingDialog;
    .locals 3

    .line 38
    new-instance v0, Lus/zoom/androidlib/widget/WaitingDialog;

    invoke-direct {v0}, Lus/zoom/androidlib/widget/WaitingDialog;-><init>()V

    .line 39
    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/WaitingDialog;->setCancelable(Z)V

    .line 40
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "message"

    .line 41
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "finishActivityOnCancel"

    .line 42
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 44
    invoke-virtual {v0, v1}, Lus/zoom/androidlib/widget/WaitingDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 162
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/WaitingDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "finishActivityOnCancel"

    const/4 v1, 0x0

    .line 166
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 168
    iget-object p1, p0, Lus/zoom/androidlib/widget/WaitingDialog;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_1

    .line 169
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 124
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/WaitingDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/androidlib/widget/WaitingDialog;->mActivity:Landroid/app/Activity;

    .line 125
    iget-object p1, p0, Lus/zoom/androidlib/widget/WaitingDialog;->mActivity:Landroid/app/Activity;

    if-nez p1, :cond_0

    .line 126
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/WaitingDialog;->createEmptyDialog()Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 128
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/WaitingDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    .line 130
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/WaitingDialog;->createEmptyDialog()Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "message"

    .line 131
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    .line 132
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_2

    const-string v2, "messageId"

    .line 134
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    .line 136
    iget-object v0, p0, Lus/zoom/androidlib/widget/WaitingDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-nez v1, :cond_3

    const-string v2, "titleId"

    .line 140
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_3

    .line 142
    iget-object v1, p0, Lus/zoom/androidlib/widget/WaitingDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 145
    :cond_3
    new-instance p1, Lus/zoom/androidlib/widget/WaitingDialog$ZMProgressDialog;

    iget-object v2, p0, Lus/zoom/androidlib/widget/WaitingDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v2}, Lus/zoom/androidlib/widget/WaitingDialog$ZMProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 146
    invoke-virtual {p1, v2}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 147
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 149
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 150
    iput-object p1, p0, Lus/zoom/androidlib/widget/WaitingDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method public onStart()V
    .locals 0

    .line 118
    invoke-super {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->onStart()V

    return-void
.end method

.method public setDialogMessage(Ljava/lang/String;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lus/zoom/androidlib/widget/WaitingDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
