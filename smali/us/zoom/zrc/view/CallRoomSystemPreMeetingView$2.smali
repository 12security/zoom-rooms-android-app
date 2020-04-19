.class Lus/zoom/zrc/view/CallRoomSystemPreMeetingView$2;
.super Ljava/lang/Object;
.source "CallRoomSystemPreMeetingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView$2;->this$0:Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 61
    iget-object p1, p0, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView$2;->this$0:Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;

    iget-object p1, p1, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->listener:Lus/zoom/zrc/view/CallRoomSystemViewListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView$2;->this$0:Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;

    iget-object p1, p1, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->listener:Lus/zoom/zrc/view/CallRoomSystemViewListener;

    invoke-interface {p1}, Lus/zoom/zrc/view/CallRoomSystemViewListener;->onClickClose()V

    :cond_0
    return-void
.end method
