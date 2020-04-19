.class Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$1;
.super Ljava/lang/Object;
.source "PortraitMeetingListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;->onBindViewHolder(Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;

.field final synthetic val$holder:Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;

.field final synthetic val$item:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;


# direct methods
.method constructor <init>(Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$1;->this$0:Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;

    iput-object p2, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$1;->val$item:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    iput-object p3, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$1;->val$holder:Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 85
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$1;->this$0:Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;

    invoke-static {p1}, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;->access$700(Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;)Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$IListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 86
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$1;->this$0:Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;

    invoke-static {p1}, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;->access$700(Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;)Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$IListener;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$1;->val$item:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    invoke-interface {p1, v0}, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$IListener;->onItemSelect(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    .line 87
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$1;->this$0:Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;

    invoke-static {p1}, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;->access$700(Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;)Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$IListener;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$1;->val$item:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    invoke-interface {p1, v0}, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$IListener;->onMeetingStart(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    .line 90
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$1;->val$item:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->isCheckedIn(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 92
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$1;->this$0:Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;

    invoke-static {v0}, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;->access$800(Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$1;->val$item:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getMeetingBtnText(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;

    move-result-object p1

    .line 93
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$1;->val$holder:Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$ViewHolder;->updateButton(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
