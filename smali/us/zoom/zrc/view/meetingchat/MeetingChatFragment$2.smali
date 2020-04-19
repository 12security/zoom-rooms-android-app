.class Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$2;
.super Ljava/lang/Object;
.source "MeetingChatFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$ivSettings:Landroid/view/View;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;Landroid/view/View;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$2;->this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;

    iput-object p2, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$2;->val$ivSettings:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 98
    iget-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$2;->this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->access$000(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;)Landroid/widget/PopupWindow;

    move-result-object p1

    if-nez p1, :cond_0

    .line 99
    iget-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$2;->this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;

    new-instance v0, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;

    invoke-static {p1}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->access$100(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->access$002(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 100
    iget-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$2;->this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->access$000(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;)Landroid/widget/PopupWindow;

    move-result-object p1

    new-instance v0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$2$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$2$1;-><init>(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$2;)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 107
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$2;->this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->access$000(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;)Landroid/widget/PopupWindow;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$2;->val$ivSettings:Landroid/view/View;

    invoke-static {p1, v0}, Lus/zoom/zrc/login/util/ZRCPopupWindowUtils;->showAtBottomAlignRight(Landroid/widget/PopupWindow;Landroid/view/View;)V

    return-void
.end method
