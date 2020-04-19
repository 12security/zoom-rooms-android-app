.class Lus/zoom/zrp/view/ZRPMeetingListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ZRPMeetingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrp/view/ZRPMeetingListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field meetingListItemView:Lus/zoom/zrp/view/ZRPMeetingListItemView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 154
    check-cast p1, Lus/zoom/zrp/view/ZRPMeetingListItemView;

    iput-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListAdapter$ViewHolder;->meetingListItemView:Lus/zoom/zrp/view/ZRPMeetingListItemView;

    return-void
.end method
