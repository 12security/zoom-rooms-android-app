.class public Lus/zoom/zrc/phonecall/PhoneCallFragment$PhoneCallEndingDialog;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "PhoneCallFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/phonecall/PhoneCallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneCallEndingDialog"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneCallFragment$PhoneCallEndingDialog"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 737
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    return-void
.end method

.method static dismiss(Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    .line 752
    sget-object v0, Lus/zoom/zrc/phonecall/PhoneCallFragment$PhoneCallEndingDialog;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/phonecall/PhoneCallFragment$PhoneCallEndingDialog;

    if-eqz p0, :cond_0

    .line 753
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment$PhoneCallEndingDialog;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment$PhoneCallEndingDialog;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method static show(Landroidx/fragment/app/FragmentManager;)V
    .locals 2

    .line 742
    sget-object v0, Lus/zoom/zrc/phonecall/PhoneCallFragment$PhoneCallEndingDialog;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/phonecall/PhoneCallFragment$PhoneCallEndingDialog;

    if-nez v0, :cond_0

    .line 744
    new-instance v0, Lus/zoom/zrc/phonecall/PhoneCallFragment$PhoneCallEndingDialog;

    invoke-direct {v0}, Lus/zoom/zrc/phonecall/PhoneCallFragment$PhoneCallEndingDialog;-><init>()V

    .line 746
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrc/phonecall/PhoneCallFragment$PhoneCallEndingDialog;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 747
    sget-object v1, Lus/zoom/zrc/phonecall/PhoneCallFragment$PhoneCallEndingDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lus/zoom/zrc/phonecall/PhoneCallFragment$PhoneCallEndingDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 760
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 761
    invoke-virtual {p0, p1}, Lus/zoom/zrc/phonecall/PhoneCallFragment$PhoneCallEndingDialog;->setCancelable(Z)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 767
    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallFragment$PhoneCallEndingDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$style;->ZRCDialog:I

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method
