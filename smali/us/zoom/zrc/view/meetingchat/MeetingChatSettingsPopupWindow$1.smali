.class Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow$1;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "MeetingChatSettingsPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;
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

    .line 29
    iput-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow$1;->this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 32
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->showMeetingChatNotificationOnZR:I

    if-ne p2, p1, :cond_0

    .line 33
    iget-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow$1;->this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;

    invoke-static {p1}, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;->access$000(Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;)Lus/zoom/zrc/model/MeetingChatMessageManager;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/MeetingChatMessageManager;->isShowMeetingChatNotificationOnZR()Z

    move-result p2

    invoke-static {p1, p2}, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;->access$100(Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;Z)V

    goto :goto_0

    .line 34
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->showMeetingChatListOnZR:I

    if-ne p2, p1, :cond_1

    .line 35
    iget-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow$1;->this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;

    invoke-static {p1}, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;->access$000(Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;)Lus/zoom/zrc/model/MeetingChatMessageManager;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/MeetingChatMessageManager;->isShowMeetingChatListOnZR()Z

    move-result p2

    invoke-static {p1, p2}, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;->access$200(Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;Z)V

    :cond_1
    :goto_0
    return-void
.end method
