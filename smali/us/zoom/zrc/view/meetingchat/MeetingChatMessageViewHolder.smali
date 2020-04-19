.class public abstract Lus/zoom/zrc/view/meetingchat/MeetingChatMessageViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MeetingChatMessageViewHolder.java"


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 32
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static getAccessibilityString(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;)Ljava/lang/String;
    .locals 7

    .line 15
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->isFile()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 16
    sget v0, Lus/zoom/zrcbox/R$string;->open_from_zoom_desktop_app:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "%s %s"

    .line 17
    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->getFileName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->isShareFileMsg()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19
    sget v0, Lus/zoom/zrcbox/R$string;->open_from_zoom_desktop_app:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->getShareFileInfo()Lus/zoom/zrcsdk/model/ZRCShareFileInMeetingChatParam;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, "%s %s"

    .line 21
    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, ""

    aput-object v6, v5, v2

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v4, "%s %s"

    .line 23
    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->getShareFileInfo()Lus/zoom/zrcsdk/model/ZRCShareFileInMeetingChatParam;

    move-result-object v6

    invoke-virtual {v6}, Lus/zoom/zrcsdk/model/ZRCShareFileInMeetingChatParam;->getFileName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 26
    :cond_2
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->getMessageContent()Ljava/lang/String;

    move-result-object v0

    .line 28
    :goto_0
    sget v4, Lus/zoom/zrcbox/R$string;->meeting_chat_message_talk_back:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->getSenderDisplayName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    aput-object v0, v3, v1

    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract update(Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;Z)V
.end method
