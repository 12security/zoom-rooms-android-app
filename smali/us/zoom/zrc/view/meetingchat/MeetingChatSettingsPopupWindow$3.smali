.class Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow$3;
.super Ljava/lang/Object;
.source "MeetingChatSettingsPopupWindow.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 67
    iput-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow$3;->this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 70
    iget-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow$3;->this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;

    invoke-static {p1}, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;->access$400(Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;)Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    invoke-virtual {p1, p2}, Lus/zoom/zrcsdk/ConfApp;->requestMeetingChatDisplaySettingsIsShowChatNotificationOnZR(Z)Z

    return-void
.end method
