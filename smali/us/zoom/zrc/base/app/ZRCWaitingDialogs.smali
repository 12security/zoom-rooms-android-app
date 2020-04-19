.class public Lus/zoom/zrc/base/app/ZRCWaitingDialogs;
.super Ljava/lang/Object;
.source "ZRCWaitingDialogs.java"


# static fields
.field public static final LOADING_CONTENT_DESCRIPTION:Ljava/lang/String; = "loading_content_description"

.field public static final MSG_KEY:Ljava/lang/String; = "message"

.field public static final STYLE_KEY:Ljava/lang/String; = "style"

.field private static final TAG:Ljava/lang/String; = "ZRCWaitingDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismiss(Landroidx/fragment/app/FragmentManager;)V
    .locals 2
    .param p0    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ZRCWaitingDialog"

    .line 54
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;->dismiss()V

    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    :cond_0
    return-void
.end method

.method public static isShowing(Landroidx/fragment/app/FragmentManager;)Z
    .locals 1
    .param p0    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ZRCWaitingDialog"

    .line 62
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;

    if-eqz p0, :cond_0

    .line 63
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;->isAdded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isShowing(Landroidx/fragment/app/FragmentManager;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ZRCWaitingDialog"

    .line 68
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;

    if-eqz p0, :cond_0

    .line 69
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static show(Landroidx/fragment/app/FragmentManager;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 18
    invoke-static {p0, p1, v0}, Lus/zoom/zrc/base/app/ZRCWaitingDialogs;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-void
.end method

.method public static show(Landroidx/fragment/app/FragmentManager;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 3
    .param p0    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 22
    invoke-static {p0, p1}, Lus/zoom/zrc/base/app/ZRCWaitingDialogs;->isShowing(Landroidx/fragment/app/FragmentManager;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ZRCWaitingDialog"

    .line 26
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;

    if-nez v0, :cond_1

    .line 28
    new-instance v0, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;

    invoke-direct {v0}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;-><init>()V

    .line 31
    :cond_1
    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_2

    .line 33
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_2
    const-string v2, "message"

    .line 35
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v2, "loading_content_description"

    .line 36
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;->isAdded()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 40
    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;

    if-eqz p2, :cond_3

    .line 42
    invoke-virtual {p2, p1}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment$MyProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 44
    :cond_3
    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;->dismiss()V

    const-string p1, "ZRCWaitingDialog"

    .line 45
    invoke-virtual {v0, p0, p1}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p1, "ZRCWaitingDialog"

    .line 48
    invoke-virtual {v0, p0, p1}, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 50
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method
