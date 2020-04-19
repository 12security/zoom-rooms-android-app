.class Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment$2;
.super Ljava/lang/Object;
.source "LoginCreateNewRoomFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment$2;->this$0:Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 76
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment$2;->this$0:Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;

    invoke-static {v0}, Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;->access$100(Lus/zoom/zrc/login/room/LoginCreateNewRoomFragment;)Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lus/zoom/zrc/login/LoginContract$IPresenter;->signOut(Z)V

    return-void
.end method
