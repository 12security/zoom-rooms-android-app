.class Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$1;
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


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$1;->this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 91
    iget-object p1, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment$1;->this$0:Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/view/meetingchat/MeetingChatFragment;->safeDismiss()V

    return-void
.end method
