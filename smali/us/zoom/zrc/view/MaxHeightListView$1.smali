.class Lus/zoom/zrc/view/MaxHeightListView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MaxHeightListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/MaxHeightListView;->handleActionUp(Landroid/view/MotionEvent;Landroid/view/View;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/MaxHeightListView;

.field final synthetic val$mDownPosition:Ljava/lang/Object;

.field final synthetic val$mDownView:Landroid/view/View;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/MaxHeightListView;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lus/zoom/zrc/view/MaxHeightListView$1;->this$0:Lus/zoom/zrc/view/MaxHeightListView;

    iput-object p2, p0, Lus/zoom/zrc/view/MaxHeightListView$1;->val$mDownView:Landroid/view/View;

    iput-object p3, p0, Lus/zoom/zrc/view/MaxHeightListView$1;->val$mDownPosition:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 223
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 224
    iget-object p1, p0, Lus/zoom/zrc/view/MaxHeightListView$1;->this$0:Lus/zoom/zrc/view/MaxHeightListView;

    iget-object v0, p0, Lus/zoom/zrc/view/MaxHeightListView$1;->val$mDownView:Landroid/view/View;

    iget-object v1, p0, Lus/zoom/zrc/view/MaxHeightListView$1;->val$mDownPosition:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrc/view/MaxHeightListView;->access$000(Lus/zoom/zrc/view/MaxHeightListView;Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method
