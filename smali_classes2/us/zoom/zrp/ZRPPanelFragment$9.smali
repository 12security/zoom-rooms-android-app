.class Lus/zoom/zrp/ZRPPanelFragment$9;
.super Ljava/lang/Object;
.source "ZRPPanelFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrp/ZRPPanelFragment;->onMeetingListItemClicked(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrp/ZRPPanelFragment;

.field final synthetic val$meeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;


# direct methods
.method constructor <init>(Lus/zoom/zrp/ZRPPanelFragment;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 0

    .line 1113
    iput-object p1, p0, Lus/zoom/zrp/ZRPPanelFragment$9;->this$0:Lus/zoom/zrp/ZRPPanelFragment;

    iput-object p2, p0, Lus/zoom/zrp/ZRPPanelFragment$9;->val$meeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1116
    iget-object p1, p0, Lus/zoom/zrp/ZRPPanelFragment$9;->this$0:Lus/zoom/zrp/ZRPPanelFragment;

    iget-object p2, p0, Lus/zoom/zrp/ZRPPanelFragment$9;->val$meeting:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    invoke-static {p1, p2}, Lus/zoom/zrp/ZRPPanelFragment;->access$1200(Lus/zoom/zrp/ZRPPanelFragment;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    return-void
.end method
