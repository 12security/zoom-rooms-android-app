.class Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow$2;
.super Ljava/lang/Object;
.source "MeetingChatSettingsPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow$2;->this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 53
    iget-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow$2;->this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;

    invoke-static {p1}, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;->access$000(Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;)Lus/zoom/zrc/model/MeetingChatMessageManager;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/MeetingChatMessageManager;->isShowMeetingChatNotificationOnZR()Z

    move-result v0

    invoke-static {p1, v0}, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;->access$100(Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;Z)V

    .line 54
    iget-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow$2;->this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;

    invoke-static {p1}, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;->access$000(Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;)Lus/zoom/zrc/model/MeetingChatMessageManager;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/MeetingChatMessageManager;->isShowMeetingChatListOnZR()Z

    move-result v0

    invoke-static {p1, v0}, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;->access$200(Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;Z)V

    .line 55
    iget-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow$2;->this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;

    invoke-static {p1}, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;->access$000(Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;)Lus/zoom/zrc/model/MeetingChatMessageManager;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow$2;->this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;

    invoke-static {v0}, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;->access$300(Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;)Landroidx/databinding/Observable$OnPropertyChangedCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/MeetingChatMessageManager;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 60
    iget-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow$2;->this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;

    invoke-static {p1}, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;->access$000(Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;)Lus/zoom/zrc/model/MeetingChatMessageManager;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow$2;->this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;

    invoke-static {v0}, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;->access$300(Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;)Landroidx/databinding/Observable$OnPropertyChangedCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/MeetingChatMessageManager;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    return-void
.end method
