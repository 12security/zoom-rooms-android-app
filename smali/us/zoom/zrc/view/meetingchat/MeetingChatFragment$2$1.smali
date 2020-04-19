.class Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$2$1;
.super Ljava/lang/Object;
.source "MeetingChatFragment.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$2;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$2;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$2$1;->this$1:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 103
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$2$1;->this$1:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$2;

    iget-object v0, v0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$2;->this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->access$002(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    return-void
.end method
