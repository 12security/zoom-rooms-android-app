.class Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment$3;
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

    .line 140
    iput-object p1, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment$3;->this$0:Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 143
    const-class p1, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;

    invoke-static {p1}, Lus/zoom/zrc/login/LoginUsageTrack;->sendSignOut(Ljava/lang/Class;)V

    const-string p1, "User clicked logout in room added dialog..."

    const/4 v0, 0x0

    .line 144
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    iget-object p1, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment$3;->this$0:Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getUserProfile()Lus/zoom/zrc/model/ZRCUserProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-interface {p1, v0}, Lus/zoom/zrc/login/LoginContract$IPresenter;->signOut(Z)V

    return-void
.end method
