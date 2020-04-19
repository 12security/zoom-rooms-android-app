.class Lus/zoom/zrc/view/MaxHeightListView$3;
.super Ljava/lang/Object;
.source "MaxHeightListView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/MaxHeightListView;->performDismiss(Landroid/view/View;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/MaxHeightListView;

.field final synthetic val$dismissView:Landroid/view/View;

.field final synthetic val$lp:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/MaxHeightListView;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lus/zoom/zrc/view/MaxHeightListView$3;->this$0:Lus/zoom/zrc/view/MaxHeightListView;

    iput-object p2, p0, Lus/zoom/zrc/view/MaxHeightListView$3;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    iput-object p3, p0, Lus/zoom/zrc/view/MaxHeightListView$3;->val$dismissView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 264
    iget-object v0, p0, Lus/zoom/zrc/view/MaxHeightListView$3;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 265
    iget-object p1, p0, Lus/zoom/zrc/view/MaxHeightListView$3;->val$dismissView:Landroid/view/View;

    iget-object v0, p0, Lus/zoom/zrc/view/MaxHeightListView$3;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
