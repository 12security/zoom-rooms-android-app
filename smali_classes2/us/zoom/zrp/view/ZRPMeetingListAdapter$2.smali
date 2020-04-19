.class Lus/zoom/zrp/view/ZRPMeetingListAdapter$2;
.super Ljava/lang/Object;
.source "ZRPMeetingListAdapter.java"

# interfaces
.implements Lus/zoom/zrp/view/ZRPMeetingListItemView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrp/view/ZRPMeetingListAdapter;->onBindViewHolder(Lus/zoom/zrp/view/ZRPMeetingListAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrp/view/ZRPMeetingListAdapter;

.field final synthetic val$holder:Lus/zoom/zrp/view/ZRPMeetingListAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lus/zoom/zrp/view/ZRPMeetingListAdapter;Lus/zoom/zrp/view/ZRPMeetingListAdapter$ViewHolder;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListAdapter$2;->this$0:Lus/zoom/zrp/view/ZRPMeetingListAdapter;

    iput-object p2, p0, Lus/zoom/zrp/view/ZRPMeetingListAdapter$2;->val$holder:Lus/zoom/zrp/view/ZRPMeetingListAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckInAnimationEnded()V
    .locals 1

    .line 76
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPMeetingListAdapter$2;->this$0:Lus/zoom/zrp/view/ZRPMeetingListAdapter;

    invoke-static {v0}, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->access$200(Lus/zoom/zrp/view/ZRPMeetingListAdapter;)V

    return-void
.end method

.method public onCheckInClicked(Lus/zoom/zrp/view/ZRPMeetingListItemView;)V
    .locals 2

    .line 71
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPMeetingListAdapter$2;->this$0:Lus/zoom/zrp/view/ZRPMeetingListAdapter;

    iget-object v1, p0, Lus/zoom/zrp/view/ZRPMeetingListAdapter$2;->val$holder:Lus/zoom/zrp/view/ZRPMeetingListAdapter$ViewHolder;

    invoke-virtual {v1}, Lus/zoom/zrp/view/ZRPMeetingListAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-static {v0, p1, v1}, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->access$100(Lus/zoom/zrp/view/ZRPMeetingListAdapter;Lus/zoom/zrp/view/ZRPMeetingListItemView;I)V

    return-void
.end method
