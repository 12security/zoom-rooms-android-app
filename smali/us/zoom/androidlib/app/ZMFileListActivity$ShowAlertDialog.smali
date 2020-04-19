.class public Lus/zoom/androidlib/app/ZMFileListActivity$ShowAlertDialog;
.super Lus/zoom/androidlib/app/ZMDialogFragment;
.source "ZMFileListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/app/ZMFileListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShowAlertDialog"
.end annotation


# static fields
.field private static final ARG_MESSAGE:Ljava/lang/String; = "arg_message"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 675
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;-><init>()V

    return-void
.end method

.method public static showDialog(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 3

    .line 666
    new-instance v0, Lus/zoom/androidlib/app/ZMFileListActivity$ShowAlertDialog;

    invoke-direct {v0}, Lus/zoom/androidlib/app/ZMFileListActivity$ShowAlertDialog;-><init>()V

    .line 667
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 668
    invoke-static {p1}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "arg_message"

    .line 669
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    :cond_0
    invoke-virtual {v0, v1}, Lus/zoom/androidlib/app/ZMFileListActivity$ShowAlertDialog;->setArguments(Landroid/os/Bundle;)V

    .line 672
    const-class p1, Lus/zoom/androidlib/app/ZMFileListActivity$ShowAlertDialog;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lus/zoom/androidlib/app/ZMFileListActivity$ShowAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 682
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMFileListActivity$ShowAlertDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    .line 684
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMFileListActivity$ShowAlertDialog;->createEmptyDialog()Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "arg_message"

    .line 685
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 687
    new-instance v0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;

    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMFileListActivity$ShowAlertDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 688
    invoke-virtual {v0, v1}, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->setCancelable(Z)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;

    move-result-object v0

    sget v1, Lus/zoom/androidlib/R$string;->zm_btn_ok:I

    new-instance v2, Lus/zoom/androidlib/app/ZMFileListActivity$ShowAlertDialog$1;

    invoke-direct {v2, p0}, Lus/zoom/androidlib/app/ZMFileListActivity$ShowAlertDialog$1;-><init>(Lus/zoom/androidlib/app/ZMFileListActivity$ShowAlertDialog;)V

    .line 689
    invoke-virtual {v0, v1, v2}, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;

    move-result-object v0

    .line 697
    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->setMessage(Ljava/lang/String;)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;

    .line 698
    invoke-virtual {v0}, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->create()Lus/zoom/androidlib/widget/ZMAlertDialog;

    move-result-object p1

    return-object p1
.end method
