.class Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MeetingOptionsSpeakerViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->ScaleAnimationView(Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

.field final synthetic val$videoThumbInfo:Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)V
    .locals 0

    .line 603
    iput-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$5;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    iput-object p2, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$5;->val$videoThumbInfo:Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 606
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 607
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$5;->val$videoThumbInfo:Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->getSize()I

    move-result p1

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 608
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$5;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$300(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 609
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$5;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$1300(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 610
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$5;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$1200(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 611
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$5;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$1000(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 612
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$5;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$1100(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 613
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$5;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$1400(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 614
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$5;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$1500(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 616
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$5;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$300(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 617
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$5;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$1300(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 618
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$5;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$1200(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 619
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$5;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$1000(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 620
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$5;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$1100(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 621
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$5;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$1400(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 622
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$5;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$1500(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 624
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$5;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {p1, v1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$802(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;Z)Z

    .line 625
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->isVideoThumbInfoUpdate()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$5;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$700(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 626
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$5;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$900(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;Z)V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 632
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$5;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$500(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$5;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$500(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->getSize()I

    move-result p1

    if-nez p1, :cond_0

    .line 633
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$5;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$300(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x3c23d70a    # 0.01f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 634
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$5;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$300(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 635
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$5;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$1000(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 636
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$5;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$1000(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 637
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$5;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$1100(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 638
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$5;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$1100(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 639
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$5;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$1200(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 640
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$5;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$1200(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 641
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$5;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$1300(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 642
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$5;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$1300(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 643
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$5;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$300(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 644
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$5;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$1300(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 645
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$5;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$1200(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 646
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$5;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$1000(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 647
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$5;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$1100(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 649
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$5;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$802(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;Z)Z

    return-void
.end method
