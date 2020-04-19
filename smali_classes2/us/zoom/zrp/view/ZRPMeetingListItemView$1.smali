.class Lus/zoom/zrp/view/ZRPMeetingListItemView$1;
.super Ljava/lang/Object;
.source "ZRPMeetingListItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrp/view/ZRPMeetingListItemView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrp/view/ZRPMeetingListItemView;


# direct methods
.method constructor <init>(Lus/zoom/zrp/view/ZRPMeetingListItemView;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView$1;->this$0:Lus/zoom/zrp/view/ZRPMeetingListItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 75
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView$1;->this$0:Lus/zoom/zrp/view/ZRPMeetingListItemView;

    invoke-static {p1}, Lus/zoom/zrp/view/ZRPMeetingListItemView;->access$000(Lus/zoom/zrp/view/ZRPMeetingListItemView;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 76
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView$1;->this$0:Lus/zoom/zrp/view/ZRPMeetingListItemView;

    invoke-static {p1}, Lus/zoom/zrp/view/ZRPMeetingListItemView;->access$100(Lus/zoom/zrp/view/ZRPMeetingListItemView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView$1;->this$0:Lus/zoom/zrp/view/ZRPMeetingListItemView;

    invoke-virtual {v0}, Lus/zoom/zrp/view/ZRPMeetingListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$color;->zrp_reserve_common_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView$1;->this$0:Lus/zoom/zrp/view/ZRPMeetingListItemView;

    invoke-static {p1}, Lus/zoom/zrp/view/ZRPMeetingListItemView;->access$200(Lus/zoom/zrp/view/ZRPMeetingListItemView;)Lus/zoom/zrp/view/ZRPMeetingListItemView$Listener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView$1;->this$0:Lus/zoom/zrp/view/ZRPMeetingListItemView;

    invoke-static {p1}, Lus/zoom/zrp/view/ZRPMeetingListItemView;->access$200(Lus/zoom/zrp/view/ZRPMeetingListItemView;)Lus/zoom/zrp/view/ZRPMeetingListItemView$Listener;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView$1;->this$0:Lus/zoom/zrp/view/ZRPMeetingListItemView;

    invoke-interface {p1, v0}, Lus/zoom/zrp/view/ZRPMeetingListItemView$Listener;->onCheckInClicked(Lus/zoom/zrp/view/ZRPMeetingListItemView;)V

    :cond_0
    return-void
.end method
