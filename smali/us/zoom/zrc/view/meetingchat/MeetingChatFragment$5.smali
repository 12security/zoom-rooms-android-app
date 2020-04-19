.class Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$5;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "MeetingChatFragment.java"


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

    .line 133
    iput-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$5;->this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p2, :cond_0

    .line 137
    iget-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$5;->this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->access$500(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 138
    iget-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$5;->this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->access$600(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
