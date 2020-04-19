.class Lus/zoom/zrp/ZRPReserveFragment$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ZRPReserveFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrp/ZRPReserveFragment;->initReturnSelfRoomAnimation()V
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

    .line 774
    iput-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment$12;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 785
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 787
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment$12;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-static {p1}, Lus/zoom/zrp/ZRPReserveFragment;->access$1700(Lus/zoom/zrp/ZRPReserveFragment;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 778
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 780
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment$12;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-static {p1}, Lus/zoom/zrp/ZRPReserveFragment;->access$1600(Lus/zoom/zrp/ZRPReserveFragment;)V

    return-void
.end method
