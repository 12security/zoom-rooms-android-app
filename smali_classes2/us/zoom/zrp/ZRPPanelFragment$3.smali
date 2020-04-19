.class Lus/zoom/zrp/ZRPPanelFragment$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ZRPPanelFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrp/ZRPPanelFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrp/ZRPPanelFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrp/ZRPPanelFragment;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lus/zoom/zrp/ZRPPanelFragment$3;->this$0:Lus/zoom/zrp/ZRPPanelFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 197
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 199
    iget-object p1, p0, Lus/zoom/zrp/ZRPPanelFragment$3;->this$0:Lus/zoom/zrp/ZRPPanelFragment;

    invoke-static {p1}, Lus/zoom/zrp/ZRPPanelFragment;->access$200(Lus/zoom/zrp/ZRPPanelFragment;)Lus/zoom/zrp/view/ZRPMeetingListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->getItemCount()I

    move-result p1

    invoke-static {p1}, Lus/zoom/zrp/util/ZRPUsageTrace;->scrollMeetingList(I)V

    :cond_0
    return-void
.end method
