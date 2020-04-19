.class public Lus/zoom/zrc/view/meetingchat/MeetingChatFileMessageViewHolder;
.super Lus/zoom/zrc/view/meetingchat/MeetingChatMessageViewHolder;
.source "MeetingChatFileMessageViewHolder.java"


# instance fields
.field private tvFileName:Landroid/widget/TextView;

.field private txtMsgLabel:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 17
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/meetingchat/MeetingChatMessageViewHolder;-><init>(Landroid/view/View;)V

    .line 18
    sget v0, Lus/zoom/zrcbox/R$id;->txtMsgLabel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFileMessageViewHolder;->txtMsgLabel:Landroid/widget/TextView;

    .line 19
    sget v0, Lus/zoom/zrcbox/R$id;->tv_fileName:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFileMessageViewHolder;->tvFileName:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public update(Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;Z)V
    .locals 4

    if-nez p1, :cond_0

    .line 24
    new-instance p1, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;

    invoke-direct {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;-><init>()V

    .line 26
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFileMessageViewHolder;->txtMsgLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->getSenderDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 29
    iget-object p2, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFileMessageViewHolder;->txtMsgLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 31
    :cond_1
    iget-object p2, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFileMessageViewHolder;->txtMsgLabel:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const-string p2, ""

    .line 35
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 36
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->getFileName()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 37
    :cond_2
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->isShareFileMsg()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 38
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->getShareFileInfo()Lus/zoom/zrcsdk/model/ZRCShareFileInMeetingChatParam;

    move-result-object p2

    if-nez p2, :cond_3

    const-string p2, ""

    goto :goto_1

    .line 41
    :cond_3
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->getShareFileInfo()Lus/zoom/zrcsdk/model/ZRCShareFileInMeetingChatParam;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCShareFileInMeetingChatParam;->getFileName()Ljava/lang/String;

    move-result-object p2

    .line 44
    :cond_4
    :goto_1
    iget-object v1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFileMessageViewHolder;->tvFileName:Landroid/widget/TextView;

    const-string v2, "[ %s ]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object p2, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFileMessageViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 47
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFileMessageViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2, p1}, Lus/zoom/zrc/view/meetingchat/MeetingChatFileMessageViewHolder;->getAccessibilityString(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
