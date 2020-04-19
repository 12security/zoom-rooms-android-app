.class public Lus/zoom/zrc/CertItemVerifyFailedDialogFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "CertItemVerifyFailedDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private msg:Landroid/widget/TextView;

.field private trustBtn:Landroid/view/View;

.field private untrustBtn:Landroid/view/View;

.field private verifyCertEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCVerifyCertEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/CertItemVerifyFailedDialogFragment;->verifyCertEvents:Ljava/util/List;

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0, v0}, Lus/zoom/zrc/CertItemVerifyFailedDialogFragment;->setCancelable(Z)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 82
    invoke-virtual {p0}, Lus/zoom/zrc/CertItemVerifyFailedDialogFragment;->dismiss()V

    .line 83
    iget-object v0, p0, Lus/zoom/zrc/CertItemVerifyFailedDialogFragment;->verifyCertEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCVerifyCertEvent;

    .line 84
    iget-object v2, p0, Lus/zoom/zrc/CertItemVerifyFailedDialogFragment;->trustBtn:Landroid/view/View;

    if-ne p1, v2, :cond_1

    .line 85
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3, v3}, Lus/zoom/zrcsdk/PTApp;->VTLSConfirmAcceptCertItem(Lus/zoom/zrcsdk/model/ZRCVerifyCertEvent;ZZ)V

    goto :goto_0

    .line 86
    :cond_1
    iget-object v2, p0, Lus/zoom/zrc/CertItemVerifyFailedDialogFragment;->untrustBtn:Landroid/view/View;

    if-ne p1, v2, :cond_0

    .line 87
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v3}, Lus/zoom/zrcsdk/PTApp;->VTLSConfirmAcceptCertItem(Lus/zoom/zrcsdk/model/ZRCVerifyCertEvent;ZZ)V

    goto :goto_0

    .line 90
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/CertItemVerifyFailedDialogFragment;->verifyCertEvents:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 42
    new-instance p1, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    invoke-virtual {p0}, Lus/zoom/zrc/CertItemVerifyFailedDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setCancelable(Z)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    .line 45
    invoke-virtual {p0}, Lus/zoom/zrc/CertItemVerifyFailedDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 46
    sget v2, Lus/zoom/zrcbox/R$layout;->activity_cert_item_verify_failed:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 47
    sget v2, Lus/zoom/zrcbox/R$id;->zrc_security_certificate_info:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lus/zoom/zrc/CertItemVerifyFailedDialogFragment;->msg:Landroid/widget/TextView;

    .line 48
    sget v2, Lus/zoom/zrcbox/R$id;->user_trust_anyway:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lus/zoom/zrc/CertItemVerifyFailedDialogFragment;->trustBtn:Landroid/view/View;

    .line 49
    sget v2, Lus/zoom/zrcbox/R$id;->user_not_trust:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lus/zoom/zrc/CertItemVerifyFailedDialogFragment;->untrustBtn:Landroid/view/View;

    .line 51
    iget-object v2, p0, Lus/zoom/zrc/CertItemVerifyFailedDialogFragment;->trustBtn:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v2, p0, Lus/zoom/zrc/CertItemVerifyFailedDialogFragment;->untrustBtn:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v2, p0, Lus/zoom/zrc/CertItemVerifyFailedDialogFragment;->verifyCertEvents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_0

    .line 55
    iget-object v2, p0, Lus/zoom/zrc/CertItemVerifyFailedDialogFragment;->verifyCertEvents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCVerifyCertEvent;

    .line 56
    iget-object v4, p0, Lus/zoom/zrc/CertItemVerifyFailedDialogFragment;->msg:Landroid/widget/TextView;

    sget v5, Lus/zoom/zrcbox/R$string;->security_warning_message:I

    invoke-virtual {p0, v5}, Lus/zoom/zrc/CertItemVerifyFailedDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCVerifyCertEvent;->getCert_item_()Lus/zoom/zrcsdk/model/ZRCCertItem;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCCertItem;->getIssuer_()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :cond_0
    invoke-static {}, Lus/zoom/zrcsdk/model/PolicyBlockUnknownSSLCert;->isBlockUnknownSSLCert()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lus/zoom/zrc/CertItemVerifyFailedDialogFragment;->msg:Landroid/widget/TextView;

    sget v2, Lus/zoom/zrcbox/R$string;->security_block_message:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 61
    iget-object v0, p0, Lus/zoom/zrc/CertItemVerifyFailedDialogFragment;->trustBtn:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/CertItemVerifyFailedDialogFragment;->verifyCertEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    invoke-virtual {p0}, Lus/zoom/zrc/CertItemVerifyFailedDialogFragment;->dismissAllowingStateLoss()V

    .line 68
    :cond_2
    invoke-virtual {p1, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setView(Landroid/view/View;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    .line 69
    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->create()Lus/zoom/zrc/base/app/ZRCAlertDialog;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v1, 0x400

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 73
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 74
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    const v1, 0x106000d

    .line 75
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_3
    return-object p1
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCVerifyCertEvent;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lus/zoom/zrc/CertItemVerifyFailedDialogFragment;->verifyCertEvents:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {p0}, Lus/zoom/zrc/CertItemVerifyFailedDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object p1, p0, Lus/zoom/zrc/CertItemVerifyFailedDialogFragment;->msg:Landroid/widget/TextView;

    sget p2, Lus/zoom/zrcbox/R$string;->security_warning_message:I

    invoke-virtual {p0, p2}, Lus/zoom/zrc/CertItemVerifyFailedDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p3}, Lus/zoom/zrcsdk/model/ZRCVerifyCertEvent;->getCert_item_()Lus/zoom/zrcsdk/model/ZRCCertItem;

    move-result-object p3

    invoke-virtual {p3}, Lus/zoom/zrcsdk/model/ZRCCertItem;->getIssuer_()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
