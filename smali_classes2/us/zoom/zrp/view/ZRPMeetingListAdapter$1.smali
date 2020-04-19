.class Lus/zoom/zrp/view/ZRPMeetingListAdapter$1;
.super Ljava/lang/Object;
.source "ZRPMeetingListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 62
    iput-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListAdapter$1;->this$0:Lus/zoom/zrp/view/ZRPMeetingListAdapter;

    iput-object p2, p0, Lus/zoom/zrp/view/ZRPMeetingListAdapter$1;->val$holder:Lus/zoom/zrp/view/ZRPMeetingListAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 65
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListAdapter$1;->this$0:Lus/zoom/zrp/view/ZRPMeetingListAdapter;

    iget-object v0, p0, Lus/zoom/zrp/view/ZRPMeetingListAdapter$1;->val$holder:Lus/zoom/zrp/view/ZRPMeetingListAdapter$ViewHolder;

    invoke-static {p1, v0}, Lus/zoom/zrp/view/ZRPMeetingListAdapter;->access$000(Lus/zoom/zrp/view/ZRPMeetingListAdapter;Lus/zoom/zrp/view/ZRPMeetingListAdapter$ViewHolder;)V

    return-void
.end method
