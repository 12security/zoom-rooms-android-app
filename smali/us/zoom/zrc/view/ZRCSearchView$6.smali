.class Lus/zoom/zrc/view/ZRCSearchView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ZRCSearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/ZRCSearchView;->startSearchAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ZRCSearchView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/ZRCSearchView;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCSearchView$6;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 219
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCSearchView$6;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-static {p1}, Lus/zoom/zrc/view/ZRCSearchView;->access$200(Lus/zoom/zrc/view/ZRCSearchView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView$6;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-static {v0}, Lus/zoom/zrc/view/ZRCSearchView;->access$700(Lus/zoom/zrc/view/ZRCSearchView;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setX(F)V

    .line 220
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCSearchView$6;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-static {p1}, Lus/zoom/zrc/view/ZRCSearchView;->access$200(Lus/zoom/zrc/view/ZRCSearchView;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
