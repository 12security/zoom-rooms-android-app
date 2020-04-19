.class Lus/zoom/zrc/login/LoginNoRoomFragment$2;
.super Ljava/lang/Object;
.source "LoginNoRoomFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginNoRoomFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/LoginNoRoomFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/LoginNoRoomFragment;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lus/zoom/zrc/login/LoginNoRoomFragment$2;->this$0:Lus/zoom/zrc/login/LoginNoRoomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 59
    const-class v0, Lus/zoom/zrc/login/LoginNoRoomFragment;

    invoke-static {v0}, Lus/zoom/zrc/login/LoginUsageTrack;->sendSignOut(Ljava/lang/Class;)V

    .line 60
    iget-object v0, p0, Lus/zoom/zrc/login/LoginNoRoomFragment$2;->this$0:Lus/zoom/zrc/login/LoginNoRoomFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginNoRoomFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lus/zoom/zrc/login/LoginContract$IPresenter;->signOut(Z)V

    return-void
.end method
