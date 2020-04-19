.class Lus/zoom/zrc/view/ZRCShareContentDialogFragment$4;
.super Ljava/lang/Object;
.source "ZRCShareContentDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->alignWbcAndLocalViewCenter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ZRCShareContentDialogFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;)V
    .locals 0

    .line 568
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$4;->this$0:Lus/zoom/zrc/view/ZRCShareContentDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 571
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$4;->this$0:Lus/zoom/zrc/view/ZRCShareContentDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->access$400(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 573
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$4;->this$0:Lus/zoom/zrc/view/ZRCShareContentDialogFragment;

    invoke-static {v1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->access$500(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v0, v1

    .line 574
    div-int/lit8 v1, v1, 0x2

    .line 576
    iget-object v2, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$4;->this$0:Lus/zoom/zrc/view/ZRCShareContentDialogFragment;

    invoke-static {v2}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->access$600(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 577
    div-int/lit8 v0, v0, 0x2

    .line 579
    iget-object v2, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$4;->this$0:Lus/zoom/zrc/view/ZRCShareContentDialogFragment;

    invoke-static {v2}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->access$500(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 580
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$4;->this$0:Lus/zoom/zrc/view/ZRCShareContentDialogFragment;

    invoke-static {v1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->access$600(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method
