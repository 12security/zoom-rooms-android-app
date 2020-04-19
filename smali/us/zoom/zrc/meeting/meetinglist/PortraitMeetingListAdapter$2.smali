.class Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$2;
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

.field final synthetic val$item:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;


# direct methods
.method constructor <init>(Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$2;->this$0:Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;

    iput-object p2, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$2;->val$item:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 102
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$2;->this$0:Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;

    invoke-static {p1}, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;->access$700(Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;)Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$IListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 103
    iget-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$2;->this$0:Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;

    invoke-static {p1}, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;->access$700(Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter;)Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$IListener;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$2;->val$item:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    invoke-interface {p1, v0}, Lus/zoom/zrc/meeting/meetinglist/PortraitMeetingListAdapter$IListener;->onItemSelect(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    :cond_0
    return-void
.end method
