.class Lus/zoom/zrc/login/room/LoginRoomPickerFragment$3;
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

    .line 89
    iput-object p1, p0, Lus/zoom/zrc/login/room/LoginRoomPickerFragment$3;->this$0:Lus/zoom/zrc/login/room/LoginRoomPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 92
    invoke-static {}, Lus/zoom/zrc/login/LoginUsageTrack;->sendClickCreateRoom()V

    .line 93
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginRoomPickerFragment$3;->this$0:Lus/zoom/zrc/login/room/LoginRoomPickerFragment;

    invoke-static {v0}, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->access$200(Lus/zoom/zrc/login/room/LoginRoomPickerFragment;)Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->onCreateNewZoomRoom()V

    return-void
.end method
