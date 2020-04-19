.class public Lus/zoom/zrc/view/CallRoomSystemView$InternalRoomSystemKeypadControllerListener;
.super Ljava/lang/Object;
.source "CallRoomSystemView.java"

# interfaces
.implements Lus/zoom/zrc/view/RoomSystemKeypadControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/CallRoomSystemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "InternalRoomSystemKeypadControllerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/CallRoomSystemView;


# direct methods
.method protected constructor <init>(Lus/zoom/zrc/view/CallRoomSystemView;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lus/zoom/zrc/view/CallRoomSystemView$InternalRoomSystemKeypadControllerListener;->this$0:Lus/zoom/zrc/view/CallRoomSystemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickDisconnect()V
    .locals 1

    .line 119
    iget-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemView$InternalRoomSystemKeypadControllerListener;->this$0:Lus/zoom/zrc/view/CallRoomSystemView;

    iget-object v0, v0, Lus/zoom/zrc/view/CallRoomSystemView;->listener:Lus/zoom/zrc/view/CallRoomSystemViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemView$InternalRoomSystemKeypadControllerListener;->this$0:Lus/zoom/zrc/view/CallRoomSystemView;

    iget-object v0, v0, Lus/zoom/zrc/view/CallRoomSystemView;->listener:Lus/zoom/zrc/view/CallRoomSystemViewListener;

    invoke-interface {v0}, Lus/zoom/zrc/view/CallRoomSystemViewListener;->onClickDisconnect()V

    :cond_0
    return-void
.end method

.method public onClickDone()V
    .locals 1

    .line 124
    iget-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemView$InternalRoomSystemKeypadControllerListener;->this$0:Lus/zoom/zrc/view/CallRoomSystemView;

    iget-object v0, v0, Lus/zoom/zrc/view/CallRoomSystemView;->listener:Lus/zoom/zrc/view/CallRoomSystemViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemView$InternalRoomSystemKeypadControllerListener;->this$0:Lus/zoom/zrc/view/CallRoomSystemView;

    iget-object v0, v0, Lus/zoom/zrc/view/CallRoomSystemView;->listener:Lus/zoom/zrc/view/CallRoomSystemViewListener;

    invoke-interface {v0}, Lus/zoom/zrc/view/CallRoomSystemViewListener;->onClickDone()V

    :cond_0
    return-void
.end method

.method public onDial(Ljava/lang/String;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemView$InternalRoomSystemKeypadControllerListener;->this$0:Lus/zoom/zrc/view/CallRoomSystemView;

    iget-object v0, v0, Lus/zoom/zrc/view/CallRoomSystemView;->listener:Lus/zoom/zrc/view/CallRoomSystemViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemView$InternalRoomSystemKeypadControllerListener;->this$0:Lus/zoom/zrc/view/CallRoomSystemView;

    iget-object v0, v0, Lus/zoom/zrc/view/CallRoomSystemView;->listener:Lus/zoom/zrc/view/CallRoomSystemViewListener;

    invoke-interface {v0, p1}, Lus/zoom/zrc/view/CallRoomSystemViewListener;->onDial(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onShowKeypad(Z)V
    .locals 1

    .line 134
    iget-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemView$InternalRoomSystemKeypadControllerListener;->this$0:Lus/zoom/zrc/view/CallRoomSystemView;

    iget-object v0, v0, Lus/zoom/zrc/view/CallRoomSystemView;->listener:Lus/zoom/zrc/view/CallRoomSystemViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemView$InternalRoomSystemKeypadControllerListener;->this$0:Lus/zoom/zrc/view/CallRoomSystemView;

    iget-object v0, v0, Lus/zoom/zrc/view/CallRoomSystemView;->listener:Lus/zoom/zrc/view/CallRoomSystemViewListener;

    invoke-interface {v0, p1}, Lus/zoom/zrc/view/CallRoomSystemViewListener;->onShowKeypad(Z)V

    :cond_0
    return-void
.end method
