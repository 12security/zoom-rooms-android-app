.class public Lus/zoom/zrc/view/meetingchat/MeetingChatNormalMessageViewHolder;
.super Lus/zoom/zrc/view/meetingchat/MeetingChatMessageViewHolder;
.source "MeetingChatNormalMessageViewHolder.java"


# static fields
.field private static final ANDROID_LINE_FEED:Ljava/lang/String; = "\n"

.field private static final LINE_BREAK_CHARACTERS:[Ljava/lang/String;


# instance fields
.field private txtMsgLabel:Landroid/widget/TextView;

.field private txtMsgValue:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    .line 19
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\r\n"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "\r"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "\u000c"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "\u000b"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "\u0085"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "\u2028"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "\u2029"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lus/zoom/zrc/view/meetingchat/MeetingChatNormalMessageViewHolder;->LINE_BREAK_CHARACTERS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 41
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/meetingchat/MeetingChatMessageViewHolder;-><init>(Landroid/view/View;)V

    .line 42
    sget v0, Lus/zoom/zrcbox/R$id;->txtMsgLabel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatNormalMessageViewHolder;->txtMsgLabel:Landroid/widget/TextView;

    .line 43
    sget v0, Lus/zoom/zrcbox/R$id;->txtMsgValue:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatNormalMessageViewHolder;->txtMsgValue:Landroid/widget/TextView;

    return-void
.end method

.method static handleNewLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 34
    sget-object v0, Lus/zoom/zrc/view/meetingchat/MeetingChatNormalMessageViewHolder;->LINE_BREAK_CHARACTERS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const-string v4, "\n"

    .line 35
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public update(Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 48
    new-instance p1, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;

    invoke-direct {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;-><init>()V

    .line 50
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatNormalMessageViewHolder;->txtMsgLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->getSenderDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_1

    .line 53
    iget-object p2, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatNormalMessageViewHolder;->txtMsgLabel:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 55
    :cond_1
    iget-object p2, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatNormalMessageViewHolder;->txtMsgLabel:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    :goto_0
    iget-object p2, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatNormalMessageViewHolder;->txtMsgValue:Landroid/widget/TextView;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;->getMessageContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/view/meetingchat/MeetingChatNormalMessageViewHolder;->handleNewLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object p2, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatNormalMessageViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 60
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatNormalMessageViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2, p1}, Lus/zoom/zrc/view/meetingchat/MeetingChatNormalMessageViewHolder;->getAccessibilityString(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
