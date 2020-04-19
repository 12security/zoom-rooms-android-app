.class Lus/zoom/zrc/view/CallRoomSystemPreMeetingView$1;
.super Ljava/lang/Object;
.source "CallRoomSystemPreMeetingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;
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

    .line 27
    iput-object p1, p0, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView$1;->this$0:Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 30
    iget-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView$1;->this$0:Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;

    invoke-static {v0}, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->access$000(Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView$1;->this$0:Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;

    invoke-static {v0}, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->access$100(Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;)V

    .line 32
    invoke-static {}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getDefault()Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->startAutoEnd()V

    return-void

    .line 35
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getDefault()Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView$1;->this$0:Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;

    invoke-static {v1}, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->access$000(Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->sendDTMF(Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView$1;->this$0:Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;

    invoke-static {v0}, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->access$000(Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->access$002(Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView$1;->this$0:Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;

    invoke-static {v0}, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->access$200(Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
