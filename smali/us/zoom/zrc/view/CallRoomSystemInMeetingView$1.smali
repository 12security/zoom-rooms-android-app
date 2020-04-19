.class Lus/zoom/zrc/view/CallRoomSystemInMeetingView$1;
.super Lus/zoom/zrc/view/CallRoomSystemView$InternalRoomSystemKeypadControllerListener;
.source "CallRoomSystemInMeetingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/CallRoomSystemInMeetingView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/CallRoomSystemInMeetingView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/CallRoomSystemInMeetingView;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lus/zoom/zrc/view/CallRoomSystemInMeetingView$1;->this$0:Lus/zoom/zrc/view/CallRoomSystemInMeetingView;

    invoke-direct {p0, p1}, Lus/zoom/zrc/view/CallRoomSystemView$InternalRoomSystemKeypadControllerListener;-><init>(Lus/zoom/zrc/view/CallRoomSystemView;)V

    return-void
.end method


# virtual methods
.method public onShowKeypad(Z)V
    .locals 1

    .line 39
    invoke-super {p0, p1}, Lus/zoom/zrc/view/CallRoomSystemView$InternalRoomSystemKeypadControllerListener;->onShowKeypad(Z)V

    .line 40
    iget-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemInMeetingView$1;->this$0:Lus/zoom/zrc/view/CallRoomSystemInMeetingView;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/CallRoomSystemInMeetingView;->showTip(Z)V

    return-void
.end method
