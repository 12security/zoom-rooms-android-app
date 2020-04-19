.class Lus/zoom/zrc/login/LoginFragmentErrorDialog$1;
.super Ljava/lang/Object;
.source "LoginFragmentErrorDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginFragmentErrorDialog;->onStart()V
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

    .line 236
    iput-object p1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog$1;->this$0:Lus/zoom/zrc/login/LoginFragmentErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 239
    iget-object p1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog$1;->this$0:Lus/zoom/zrc/login/LoginFragmentErrorDialog;

    invoke-virtual {p1}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog$1;->this$0:Lus/zoom/zrc/login/LoginFragmentErrorDialog;

    invoke-static {v0}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->access$000(Lus/zoom/zrc/login/LoginFragmentErrorDialog;)Z

    move-result v0

    invoke-interface {p1, v0}, Lus/zoom/zrc/login/LoginContract$IPresenter;->signOut(Z)V

    .line 240
    iget-object p1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog$1;->this$0:Lus/zoom/zrc/login/LoginFragmentErrorDialog;

    invoke-static {p1}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->access$000(Lus/zoom/zrc/login/LoginFragmentErrorDialog;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 241
    iget-object p1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog$1;->this$0:Lus/zoom/zrc/login/LoginFragmentErrorDialog;

    invoke-static {p1}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->access$100(Lus/zoom/zrc/login/LoginFragmentErrorDialog;)Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog$1;->this$0:Lus/zoom/zrc/login/LoginFragmentErrorDialog;

    invoke-static {v0}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->access$200(Lus/zoom/zrc/login/LoginFragmentErrorDialog;)I

    move-result v0

    invoke-static {p1, v0}, Lus/zoom/zrc/login/LoginUsageTrack;->sendSignOut(Lus/zoom/zrc/login/LoginContract$LoginErrorType;I)V

    .line 242
    iget-object p1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog$1;->this$0:Lus/zoom/zrc/login/LoginFragmentErrorDialog;

    invoke-virtual {p1}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->dismiss()V

    :cond_0
    const-string p1, "User clicked sign out, verify:%s"

    const/4 v0, 0x1

    .line 244
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog$1;->this$0:Lus/zoom/zrc/login/LoginFragmentErrorDialog;

    invoke-static {v2}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->access$000(Lus/zoom/zrc/login/LoginFragmentErrorDialog;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
