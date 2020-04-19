.class Lus/zoom/zrp/ZRPPanelFragment$10;
.super Ljava/lang/Object;
.source "ZRPPanelFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrp/ZRPPanelFragment;->startOpenReserveViewAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrp/ZRPPanelFragment;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lus/zoom/zrp/ZRPPanelFragment;Landroid/view/View;)V
    .locals 0

    .line 1199
    iput-object p1, p0, Lus/zoom/zrp/ZRPPanelFragment$10;->this$0:Lus/zoom/zrp/ZRPPanelFragment;

    iput-object p2, p0, Lus/zoom/zrp/ZRPPanelFragment$10;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1202
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1203
    iget-object v0, p0, Lus/zoom/zrp/ZRPPanelFragment$10;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1204
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1205
    iget-object p1, p0, Lus/zoom/zrp/ZRPPanelFragment$10;->val$v:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
