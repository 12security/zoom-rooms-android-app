.class Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$9;
.super Ljava/lang/Object;
.source "MeetingChatFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->dispatchJumpToBottom(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;

.field final synthetic val$requireAccessibilityFocus:Z


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;Z)V
    .locals 0

    .line 276
    iput-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$9;->this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;

    iput-boolean p2, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$9;->val$requireAccessibilityFocus:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 279
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$9;->this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;

    iget-boolean v1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$9;->val$requireAccessibilityFocus:Z

    invoke-static {v0, v1}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->access$200(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;Z)V

    return-void
.end method
