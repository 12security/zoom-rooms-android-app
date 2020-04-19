.class Lus/zoom/zrp/ZRPReserveFragment$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ZRPReserveFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrp/ZRPReserveFragment;->initReserveOtherRoomsAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrp/ZRPReserveFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrp/ZRPReserveFragment;)V
    .locals 0

    .line 740
    iput-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment$10;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 751
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 753
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment$10;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-static {p1}, Lus/zoom/zrp/ZRPReserveFragment;->access$1400(Lus/zoom/zrp/ZRPReserveFragment;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 744
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 746
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment$10;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-static {p1}, Lus/zoom/zrp/ZRPReserveFragment;->access$1300(Lus/zoom/zrp/ZRPReserveFragment;)V

    return-void
.end method
