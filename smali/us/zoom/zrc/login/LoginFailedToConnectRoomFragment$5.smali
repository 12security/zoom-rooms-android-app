.class Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment$5;
.super Ljava/lang/Object;
.source "LoginFailedToConnectRoomFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->startReconnectTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment$5;->this$0:Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 314
    iget-object v0, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment$5;->this$0:Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->isSignOutPassCodeDialogShown()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment$5;->this$0:Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->isResumed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "timer to reconnect ZR error, UI is not resumed"

    .line 318
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v0, "Retry connection by timer..."

    .line 321
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    iget-object v0, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment$5;->this$0:Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;

    invoke-static {v0}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->access$300(Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment$5;->this$0:Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;

    invoke-static {v2}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->access$200(Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/32 v3, 0xea60

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 323
    iget-object v0, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment$5;->this$0:Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v0

    invoke-interface {v0, v1}, Lus/zoom/zrc/login/LoginContract$IPresenter;->retryConnect(Z)V

    return-void
.end method
