.class Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MeetingOptionsSpeakerViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->moveVideoButton(FF)V
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

    .line 544
    iput-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$3;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 547
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 548
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$3;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$702(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;Z)Z

    .line 549
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->isVideoThumbInfoUpdate()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$3;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$800(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 550
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$3;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$900(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;Z)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 556
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 557
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$3;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$702(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;Z)Z

    return-void
.end method
