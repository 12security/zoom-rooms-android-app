.class public Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "ZRCWaitingDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;
    }
.end annotation


# instance fields
.field private loadingContentDescription:Ljava/lang/String;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method getMessage()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;->message:Ljava/lang/String;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 30
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 34
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;->message:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "message"

    const/4 v2, 0x0

    .line 37
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;->message:Ljava/lang/String;

    const-string v1, "style"

    .line 38
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "loading_content_description"

    .line 39
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;->loadingContentDescription:Ljava/lang/String;

    :goto_0
    const/4 p1, 0x0

    .line 41
    invoke-virtual {p0, v0, p1}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;->setStyle(II)V

    .line 42
    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;->setCancelable(Z)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 52
    new-instance p1, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;

    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;-><init>(Landroid/content/Context;Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$1;)V

    .line 53
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;->loadingContentDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;->setLoadingContentDescription(Ljava/lang/String;)V

    return-object p1
.end method
