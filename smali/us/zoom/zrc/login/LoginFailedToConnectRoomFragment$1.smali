.class Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment$1;
.super Ljava/lang/Object;
.source "LoginFailedToConnectRoomFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    .line 123
    iput-object p1, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment$1;->this$0:Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 126
    iget-object p1, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment$1;->this$0:Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;

    invoke-static {p1}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->access$000(Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;)V

    .line 127
    invoke-static {}, Lus/zoom/zrc/login/LoginUsageTrack;->sendRetryConnect()V

    const-string p1, "User clicked retry connection..."

    const/4 v0, 0x0

    .line 128
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    iget-object p1, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment$1;->this$0:Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lus/zoom/zrc/login/LoginContract$IPresenter;->retryConnect(Z)V

    return-void
.end method
