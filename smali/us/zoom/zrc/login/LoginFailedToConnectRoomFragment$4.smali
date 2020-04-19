.class Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment$4;
.super Ljava/lang/Object;
.source "LoginFailedToConnectRoomFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;

.field final synthetic val$pairing:Z


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;Z)V
    .locals 0

    .line 168
    iput-object p1, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment$4;->this$0:Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;

    iput-boolean p2, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment$4;->val$pairing:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 171
    const-class v0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;

    invoke-static {v0}, Lus/zoom/zrc/login/LoginUsageTrack;->sendSignOut(Ljava/lang/Class;)V

    .line 172
    iget-object v0, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment$4;->this$0:Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v0

    iget-boolean v1, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment$4;->val$pairing:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lus/zoom/zrc/login/LoginContract$IPresenter;->signOut(Z)V

    return-void
.end method
