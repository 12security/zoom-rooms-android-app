.class Lus/zoom/zrp/view/ZRPMeetingListItemView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ZRPMeetingListItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrp/view/ZRPMeetingListItemView;->startCheckInAnimation()V
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

    .line 203
    iput-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView$4;->this$0:Lus/zoom/zrp/view/ZRPMeetingListItemView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 206
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 207
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView$4;->this$0:Lus/zoom/zrp/view/ZRPMeetingListItemView;

    invoke-static {p1}, Lus/zoom/zrp/view/ZRPMeetingListItemView;->access$300(Lus/zoom/zrp/view/ZRPMeetingListItemView;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
