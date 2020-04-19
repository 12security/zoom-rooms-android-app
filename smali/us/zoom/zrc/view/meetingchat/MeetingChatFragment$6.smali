.class Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$6;
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


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$6;->this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 208
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$6;->this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->access$200(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;Z)V

    .line 209
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$6;->this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->access$100(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$6;->this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->access$100(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$6;->this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;

    invoke-static {v1}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->access$700(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;)Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$MeetingChatMessageAdapter;->getLast()Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lus/zoom/zrc/view/meetingchat/MeetingChatMessageViewHolder;->getAccessibilityString(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;)Ljava/lang/String;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$6;->this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;

    invoke-static {v1}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->access$800(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-static {v1, v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->announceForAccessibilityCompat(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
