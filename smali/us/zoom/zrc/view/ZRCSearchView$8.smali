.class Lus/zoom/zrc/view/ZRCSearchView$8;
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

    .line 235
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCSearchView$8;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 239
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCSearchView$8;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-static {p1}, Lus/zoom/zrc/view/ZRCSearchView;->access$900(Lus/zoom/zrc/view/ZRCSearchView;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCSearchView$8;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-virtual {p1}, Lus/zoom/zrc/view/ZRCSearchView;->getSearch_content()Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 241
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCSearchView$8;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-virtual {p1}, Lus/zoom/zrc/view/ZRCSearchView;->getSearch_content()Landroid/widget/EditText;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 242
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCSearchView$8;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-virtual {p1}, Lus/zoom/zrc/view/ZRCSearchView;->getSearch_content()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 243
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCSearchView$8;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-static {p1}, Lus/zoom/zrc/view/ZRCSearchView;->access$1200(Lus/zoom/zrc/view/ZRCSearchView;)V

    .line 244
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCSearchView$8;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-static {p1, v0}, Lus/zoom/zrc/view/ZRCSearchView;->access$1002(Lus/zoom/zrc/view/ZRCSearchView;I)I

    return-void
.end method
