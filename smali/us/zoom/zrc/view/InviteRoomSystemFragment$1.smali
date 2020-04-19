.class Lus/zoom/zrc/view/InviteRoomSystemFragment$1;
.super Ljava/lang/Object;
.source "InviteRoomSystemFragment.java"

# interfaces
.implements Lus/zoom/zrc/view/CallRoomSystemViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/InviteRoomSystemFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/InviteRoomSystemFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/InviteRoomSystemFragment;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lus/zoom/zrc/view/InviteRoomSystemFragment$1;->this$0:Lus/zoom/zrc/view/InviteRoomSystemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickCall(Ljava/lang/String;I)V
    .locals 1

    .line 69
    invoke-static {}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getDefault()Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->tryCallRoomSystem(ILjava/lang/String;)V

    return-void
.end method

.method public onClickCancel()V
    .locals 1

    .line 75
    invoke-static {}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getDefault()Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->cancelRoomSystem()V

    return-void
.end method

.method public onClickClose()V
    .locals 0

    return-void
.end method

.method public onClickDisconnect()V
    .locals 1

    .line 80
    invoke-static {}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getDefault()Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->cancelRoomSystem()V

    return-void
.end method

.method public onClickDone()V
    .locals 1

    .line 85
    iget-object v0, p0, Lus/zoom/zrc/view/InviteRoomSystemFragment$1;->this$0:Lus/zoom/zrc/view/InviteRoomSystemFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/InviteRoomSystemFragment;->access$000(Lus/zoom/zrc/view/InviteRoomSystemFragment;)V

    return-void
.end method

.method public onDial(Ljava/lang/String;)V
    .locals 1

    .line 90
    invoke-static {}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getDefault()Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->sendDTMF(Ljava/lang/String;)I

    return-void
.end method

.method public onShowKeypad(Z)V
    .locals 0

    return-void
.end method
