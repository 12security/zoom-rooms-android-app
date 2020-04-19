.class Lus/zoom/zrc/login/LoginActivity$15;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginActivity;->handleShowSignOutWithAccessCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/LoginActivity;

.field final synthetic val$errorDialog:Lus/zoom/zrc/login/LoginFragmentErrorDialog;

.field final synthetic val$showErrorDialog:Z


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/LoginActivity;ZLus/zoom/zrc/login/LoginFragmentErrorDialog;)V
    .locals 0

    .line 578
    iput-object p1, p0, Lus/zoom/zrc/login/LoginActivity$15;->this$0:Lus/zoom/zrc/login/LoginActivity;

    iput-boolean p2, p0, Lus/zoom/zrc/login/LoginActivity$15;->val$showErrorDialog:Z

    iput-object p3, p0, Lus/zoom/zrc/login/LoginActivity$15;->val$errorDialog:Lus/zoom/zrc/login/LoginFragmentErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 581
    iget-boolean p1, p0, Lus/zoom/zrc/login/LoginActivity$15;->val$showErrorDialog:Z

    if-eqz p1, :cond_0

    .line 582
    iget-object p1, p0, Lus/zoom/zrc/login/LoginActivity$15;->val$errorDialog:Lus/zoom/zrc/login/LoginFragmentErrorDialog;

    invoke-virtual {p1}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
