.class Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$8;
.super Ljava/lang/Object;
.source "MeetingChatFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->onPagedMessages(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;

.field final synthetic val$realOldFirst:Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$8;->this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;

    iput-object p2, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$8;->val$realOldFirst:Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 255
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$8;->this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->access$700(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;)Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$8;->val$realOldFirst:Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->getPosition(Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;)I

    move-result v0

    if-gez v0, :cond_0

    .line 257
    sget-object v0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->TAG:Ljava/lang/String;

    const-string v1, "try scroll up to show history, but anchor < 0"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 260
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$8;->this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;

    invoke-static {v1}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->access$800(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 261
    iget-object v1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$8;->this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;

    invoke-static {v1}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->access$900(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$8;->this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;

    invoke-static {v2}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->access$100(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;)Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v2, v3}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method
