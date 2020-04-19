.class Lus/zoom/zrc/view/LeaveMeetingDialogFragment$2;
.super Ljava/lang/Object;
.source "LeaveMeetingDialogFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/LeaveMeetingDialogFragment;->animateBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/LeaveMeetingDialogFragment;

.field final synthetic val$root:Landroid/view/View;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/LeaveMeetingDialogFragment;Landroid/view/View;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lus/zoom/zrc/view/LeaveMeetingDialogFragment$2;->this$0:Lus/zoom/zrc/view/LeaveMeetingDialogFragment;

    iput-object p2, p0, Lus/zoom/zrc/view/LeaveMeetingDialogFragment$2;->val$root:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lus/zoom/zrc/view/LeaveMeetingDialogFragment$2;->val$root:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
