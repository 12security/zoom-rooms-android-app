.class Lus/zoom/zrc/login/LoginFragmentErrorDialog$4;
.super Ljava/lang/Object;
.source "LoginFragmentErrorDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginFragmentErrorDialog;->createDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/LoginFragmentErrorDialog;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/LoginFragmentErrorDialog;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog$4;->this$0:Lus/zoom/zrc/login/LoginFragmentErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 306
    iget-object p1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog$4;->this$0:Lus/zoom/zrc/login/LoginFragmentErrorDialog;

    invoke-virtual {p1}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$IPresenter;->continueConnectStandaloneZRPInPairedMode()V

    return-void
.end method
