.class Lus/zoom/zrc/login/LoginNetworkDisconnectFragment$3;
.super Ljava/lang/Object;
.source "LoginNetworkDisconnectFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->startReconnectTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment$3;->this$0:Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 190
    iget-object v0, p0, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment$3;->this$0:Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->isSignOutPassCodeDialogShown()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment$3;->this$0:Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->isResumed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "timer to reconnect ZR error, UI is not resumed"

    .line 194
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v0, "Retry connection by timer..."

    .line 197
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    iget-object v0, p0, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment$3;->this$0:Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;

    invoke-static {v0}, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->access$300(Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment$3;->this$0:Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;

    invoke-static {v2}, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->access$200(Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/32 v3, 0xea60

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 199
    iget-object v0, p0, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment$3;->this$0:Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v0

    invoke-interface {v0, v1}, Lus/zoom/zrc/login/LoginContract$IPresenter;->retryConnect(Z)V

    return-void
.end method
