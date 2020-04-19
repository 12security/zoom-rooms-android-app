.class Lus/zoom/zrc/login/LoginFragmentErrorDialog$5;
.super Ljava/lang/Object;
.source "LoginFragmentErrorDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginFragmentErrorDialog;->startAutoReconnectTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/LoginFragmentErrorDialog;

.field final synthetic val$presenter:Lus/zoom/zrc/login/LoginContract$IPresenter;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/LoginFragmentErrorDialog;Lus/zoom/zrc/login/LoginContract$IPresenter;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog$5;->this$0:Lus/zoom/zrc/login/LoginFragmentErrorDialog;

    iput-object p2, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog$5;->val$presenter:Lus/zoom/zrc/login/LoginContract$IPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "Retry connection by timer..."

    const/4 v1, 0x0

    .line 322
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    iget-object v0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog$5;->this$0:Lus/zoom/zrc/login/LoginFragmentErrorDialog;

    invoke-static {v0}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->access$400(Lus/zoom/zrc/login/LoginFragmentErrorDialog;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog$5;->this$0:Lus/zoom/zrc/login/LoginFragmentErrorDialog;

    invoke-static {v2}, Lus/zoom/zrc/login/LoginFragmentErrorDialog;->access$300(Lus/zoom/zrc/login/LoginFragmentErrorDialog;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/32 v3, 0x493e0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 324
    iget-object v0, p0, Lus/zoom/zrc/login/LoginFragmentErrorDialog$5;->val$presenter:Lus/zoom/zrc/login/LoginContract$IPresenter;

    if-eqz v0, :cond_0

    .line 325
    invoke-interface {v0, v1}, Lus/zoom/zrc/login/LoginContract$IPresenter;->retryConnect(Z)V

    :cond_0
    return-void
.end method
