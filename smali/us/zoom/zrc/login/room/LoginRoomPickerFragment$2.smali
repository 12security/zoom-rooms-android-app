.class Lus/zoom/zrc/login/room/LoginRoomPickerFragment$2;
.super Ljava/lang/Object;
.source "LoginRoomPickerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/room/LoginRoomPickerFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/room/LoginRoomPickerFragment;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lus/zoom/zrc/login/room/LoginRoomPickerFragment$2;->this$0:Lus/zoom/zrc/login/room/LoginRoomPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 84
    const-class v0, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;

    invoke-static {v0}, Lus/zoom/zrc/login/LoginUsageTrack;->sendSignOut(Ljava/lang/Class;)V

    .line 85
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginRoomPickerFragment$2;->this$0:Lus/zoom/zrc/login/room/LoginRoomPickerFragment;

    invoke-static {v0}, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->access$100(Lus/zoom/zrc/login/room/LoginRoomPickerFragment;)Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lus/zoom/zrc/login/LoginContract$IPresenter;->signOut(Z)V

    return-void
.end method