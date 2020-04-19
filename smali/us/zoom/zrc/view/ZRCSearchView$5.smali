.class Lus/zoom/zrc/view/ZRCSearchView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ZRCSearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/ZRCSearchView;->cancelSearchAnimation()V
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

    .line 185
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCSearchView$5;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 194
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCSearchView$5;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-static {p1}, Lus/zoom/zrc/view/ZRCSearchView;->access$900(Lus/zoom/zrc/view/ZRCSearchView;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCSearchView$5;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-static {p1}, Lus/zoom/zrc/view/ZRCSearchView;->access$200(Lus/zoom/zrc/view/ZRCSearchView;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCSearchView$5;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lus/zoom/zrc/view/ZRCSearchView;->access$1002(Lus/zoom/zrc/view/ZRCSearchView;I)I

    .line 197
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCSearchView$5;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-static {p1}, Lus/zoom/zrc/view/ZRCSearchView;->access$1100(Lus/zoom/zrc/view/ZRCSearchView;)Lus/zoom/zrc/view/ZRCSearchView$ZRCSearchViewSearchListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lus/zoom/zrc/view/ZRCSearchView$5;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-static {p1}, Lus/zoom/zrc/view/ZRCSearchView;->access$1100(Lus/zoom/zrc/view/ZRCSearchView;)Lus/zoom/zrc/view/ZRCSearchView$ZRCSearchViewSearchListener;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/view/ZRCSearchView$ZRCSearchViewSearchListener;->cancelSearch()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 188
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 189
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCSearchView$5;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-virtual {p1}, Lus/zoom/zrc/view/ZRCSearchView;->getSearch_content()Landroid/widget/EditText;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 190
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCSearchView$5;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-static {p1}, Lus/zoom/zrc/view/ZRCSearchView;->access$900(Lus/zoom/zrc/view/ZRCSearchView;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
