.class Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$4;
.super Ljava/lang/Object;
.source "MeetingChatFragment.java"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    .line 119
    iput-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$4;->this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 122
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$4;->this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->access$100(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$4;->this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->access$300(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->loading:I

    invoke-static {v0, v1}, Lus/zoom/androidlib/util/AccessibilityUtil;->announceForAccessibilityCompat(Landroid/view/View;I)V

    .line 125
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$4;->this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->access$400(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;)Lus/zoom/zrc/model/MeetingChatMessageManager;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/MeetingChatMessageManager;->requestHistory()V

    return-void
.end method
