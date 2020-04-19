.class Lus/zoom/zrp/view/ZRPMeetingListItemView$6;
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

.field final synthetic val$checkInBgDrawRect:Landroid/graphics/Rect;

.field final synthetic val$checkInBgDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic val$checkInButDrawRect:Landroid/graphics/Rect;

.field final synthetic val$checkInButtonDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lus/zoom/zrp/view/ZRPMeetingListItemView;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView$6;->this$0:Lus/zoom/zrp/view/ZRPMeetingListItemView;

    iput-object p2, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView$6;->val$checkInBgDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView$6;->val$checkInBgDrawRect:Landroid/graphics/Rect;

    iput-object p4, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView$6;->val$checkInButtonDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p5, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView$6;->val$checkInButDrawRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 231
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 233
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView$6;->this$0:Lus/zoom/zrp/view/ZRPMeetingListItemView;

    invoke-static {p1}, Lus/zoom/zrp/view/ZRPMeetingListItemView;->access$000(Lus/zoom/zrp/view/ZRPMeetingListItemView;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 234
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView$6;->this$0:Lus/zoom/zrp/view/ZRPMeetingListItemView;

    invoke-static {p1}, Lus/zoom/zrp/view/ZRPMeetingListItemView;->access$000(Lus/zoom/zrp/view/ZRPMeetingListItemView;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 v1, 0xff

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 235
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView$6;->this$0:Lus/zoom/zrp/view/ZRPMeetingListItemView;

    invoke-static {p1}, Lus/zoom/zrp/view/ZRPMeetingListItemView;->access$000(Lus/zoom/zrp/view/ZRPMeetingListItemView;)Landroid/widget/Button;

    move-result-object p1

    iget-object v2, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView$6;->this$0:Lus/zoom/zrp/view/ZRPMeetingListItemView;

    invoke-virtual {v2}, Lus/zoom/zrp/view/ZRPMeetingListItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$color;->zrc_white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 237
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView$6;->this$0:Lus/zoom/zrp/view/ZRPMeetingListItemView;

    invoke-static {p1}, Lus/zoom/zrp/view/ZRPMeetingListItemView;->access$400(Lus/zoom/zrp/view/ZRPMeetingListItemView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView$6;->this$0:Lus/zoom/zrp/view/ZRPMeetingListItemView;

    invoke-static {p1}, Lus/zoom/zrp/view/ZRPMeetingListItemView;->access$400(Lus/zoom/zrp/view/ZRPMeetingListItemView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 240
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView$6;->val$checkInBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView$6;->val$checkInBgDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 241
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView$6;->val$checkInButtonDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView$6;->val$checkInButDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 243
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView$6;->this$0:Lus/zoom/zrp/view/ZRPMeetingListItemView;

    invoke-static {p1}, Lus/zoom/zrp/view/ZRPMeetingListItemView;->access$200(Lus/zoom/zrp/view/ZRPMeetingListItemView;)Lus/zoom/zrp/view/ZRPMeetingListItemView$Listener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 244
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPMeetingListItemView$6;->this$0:Lus/zoom/zrp/view/ZRPMeetingListItemView;

    invoke-static {p1}, Lus/zoom/zrp/view/ZRPMeetingListItemView;->access$200(Lus/zoom/zrp/view/ZRPMeetingListItemView;)Lus/zoom/zrp/view/ZRPMeetingListItemView$Listener;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrp/view/ZRPMeetingListItemView$Listener;->onCheckInAnimationEnded()V

    :cond_0
    return-void
.end method
