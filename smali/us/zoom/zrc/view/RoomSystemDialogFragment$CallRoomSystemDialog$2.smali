.class Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog$2;
.super Ljava/lang/Object;
.source "RoomSystemDialogFragment.java"

# interfaces
.implements Lus/zoom/zrc/view/CallRoomSystemViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog$2;->this$1:Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickCall(Ljava/lang/String;I)V
    .locals 1

    .line 62
    invoke-static {}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getDefault()Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getSessionStatus()Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->isSituationMeetingListAndError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object p1, p0, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog$2;->this$1:Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;

    invoke-static {p1}, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;->access$200(Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;)V

    goto :goto_0

    .line 67
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getDefault()Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->tryCallRoomSystem(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onClickCancel()V
    .locals 1

    .line 73
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog$2;->this$1:Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;

    invoke-static {v0}, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;->access$200(Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;)V

    return-void
.end method

.method public onClickClose()V
    .locals 1

    .line 57
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog$2;->this$1:Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;

    invoke-static {v0}, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;->access$100(Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;)V

    return-void
.end method

.method public onClickDisconnect()V
    .locals 1

    .line 78
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog$2;->this$1:Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;

    invoke-static {v0}, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;->access$200(Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;)V

    return-void
.end method

.method public onClickDone()V
    .locals 1

    .line 83
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog$2;->this$1:Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;

    invoke-virtual {v0}, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;->dismiss()V

    .line 84
    invoke-static {}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getDefault()Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->forceEndRoomSystemUISession()V

    return-void
.end method

.method public onDial(Ljava/lang/String;)V
    .locals 1

    .line 89
    invoke-static {}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getDefault()Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->sendDTMF(Ljava/lang/String;)I

    return-void
.end method

.method public onShowKeypad(Z)V
    .locals 0

    return-void
.end method
