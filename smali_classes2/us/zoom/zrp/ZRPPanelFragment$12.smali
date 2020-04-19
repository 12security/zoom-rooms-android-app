.class Lus/zoom/zrp/ZRPPanelFragment$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ZRPPanelFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrp/ZRPPanelFragment;->startCloseReserveViewAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrp/ZRPPanelFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrp/ZRPPanelFragment;)V
    .locals 0

    .line 1240
    iput-object p1, p0, Lus/zoom/zrp/ZRPPanelFragment$12;->this$0:Lus/zoom/zrp/ZRPPanelFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1256
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 1257
    iget-object p1, p0, Lus/zoom/zrp/ZRPPanelFragment$12;->this$0:Lus/zoom/zrp/ZRPPanelFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lus/zoom/zrp/ZRPPanelFragment;->access$1302(Lus/zoom/zrp/ZRPPanelFragment;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1250
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1251
    iget-object p1, p0, Lus/zoom/zrp/ZRPPanelFragment$12;->this$0:Lus/zoom/zrp/ZRPPanelFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lus/zoom/zrp/ZRPPanelFragment;->access$1302(Lus/zoom/zrp/ZRPPanelFragment;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1244
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1245
    iget-object p1, p0, Lus/zoom/zrp/ZRPPanelFragment$12;->this$0:Lus/zoom/zrp/ZRPPanelFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lus/zoom/zrp/ZRPPanelFragment;->access$1302(Lus/zoom/zrp/ZRPPanelFragment;Z)Z

    return-void
.end method
