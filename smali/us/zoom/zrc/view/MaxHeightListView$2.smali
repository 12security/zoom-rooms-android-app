.class Lus/zoom/zrc/view/MaxHeightListView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MaxHeightListView.java"


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

.field final synthetic val$dismissPosition:Ljava/lang/Object;

.field final synthetic val$dismissView:Landroid/view/View;

.field final synthetic val$originalHeight:I


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/MaxHeightListView;Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .line 246
    iput-object p1, p0, Lus/zoom/zrc/view/MaxHeightListView$2;->this$0:Lus/zoom/zrc/view/MaxHeightListView;

    iput-object p2, p0, Lus/zoom/zrc/view/MaxHeightListView$2;->val$dismissPosition:Ljava/lang/Object;

    iput-object p3, p0, Lus/zoom/zrc/view/MaxHeightListView$2;->val$dismissView:Landroid/view/View;

    iput p4, p0, Lus/zoom/zrc/view/MaxHeightListView$2;->val$originalHeight:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 249
    iget-object p1, p0, Lus/zoom/zrc/view/MaxHeightListView$2;->this$0:Lus/zoom/zrc/view/MaxHeightListView;

    invoke-static {p1}, Lus/zoom/zrc/view/MaxHeightListView;->access$100(Lus/zoom/zrc/view/MaxHeightListView;)Lus/zoom/zrc/view/MaxHeightListView$OnDismissCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 250
    iget-object p1, p0, Lus/zoom/zrc/view/MaxHeightListView$2;->this$0:Lus/zoom/zrc/view/MaxHeightListView;

    invoke-static {p1}, Lus/zoom/zrc/view/MaxHeightListView;->access$100(Lus/zoom/zrc/view/MaxHeightListView;)Lus/zoom/zrc/view/MaxHeightListView$OnDismissCallback;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/view/MaxHeightListView$2;->val$dismissPosition:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lus/zoom/zrc/view/MaxHeightListView$OnDismissCallback;->onDismiss(Ljava/lang/Object;)V

    .line 252
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/MaxHeightListView$2;->val$dismissView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 253
    iget-object p1, p0, Lus/zoom/zrc/view/MaxHeightListView$2;->val$dismissView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 254
    iget-object p1, p0, Lus/zoom/zrc/view/MaxHeightListView$2;->val$dismissView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 255
    iget v0, p0, Lus/zoom/zrc/view/MaxHeightListView$2;->val$originalHeight:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 256
    iget-object v0, p0, Lus/zoom/zrc/view/MaxHeightListView$2;->val$dismissView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
