.class Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$4;
.super Ljava/lang/Object;
.source "MeetingOptionsSpeakerViewFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)V
    .locals 0

    .line 587
    iput-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$4;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 590
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 591
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$4;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$300(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 592
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$4;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$300(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 593
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$4;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$1000(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 594
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$4;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$1000(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 595
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$4;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$1100(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 596
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$4;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$1100(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 597
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$4;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$1200(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 598
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$4;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$1200(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 599
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$4;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$1300(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 600
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$4;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$1300(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    return-void
.end method
