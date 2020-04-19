.class Lus/zoom/zrc/view/ZRCExtensibleTextView$2;
.super Ljava/lang/Object;
.source "ZRCExtensibleTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/ZRCExtensibleTextView;->showPopupWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ZRCExtensibleTextView;

.field final synthetic val$arrowView:Landroid/view/View;

.field final synthetic val$loc:[I

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/ZRCExtensibleTextView;[ILandroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCExtensibleTextView$2;->this$0:Lus/zoom/zrc/view/ZRCExtensibleTextView;

    iput-object p2, p0, Lus/zoom/zrc/view/ZRCExtensibleTextView$2;->val$loc:[I

    iput-object p3, p0, Lus/zoom/zrc/view/ZRCExtensibleTextView$2;->val$v:Landroid/view/View;

    iput-object p4, p0, Lus/zoom/zrc/view/ZRCExtensibleTextView$2;->val$arrowView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 153
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCExtensibleTextView$2;->this$0:Lus/zoom/zrc/view/ZRCExtensibleTextView;

    iget-object v1, p0, Lus/zoom/zrc/view/ZRCExtensibleTextView$2;->val$loc:[I

    invoke-static {v0, v1}, Lus/zoom/zrc/view/ZRCExtensibleTextView;->access$100(Lus/zoom/zrc/view/ZRCExtensibleTextView;[I)V

    .line 154
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCExtensibleTextView$2;->val$loc:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    int-to-float v2, v2

    .line 155
    iget-object v3, p0, Lus/zoom/zrc/view/ZRCExtensibleTextView$2;->val$v:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 156
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCExtensibleTextView$2;->val$loc:[I

    aget v0, v0, v1

    int-to-float v0, v0

    sub-float/2addr v2, v0

    iget-object v0, p0, Lus/zoom/zrc/view/ZRCExtensibleTextView$2;->val$arrowView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v2, v0

    .line 157
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCExtensibleTextView$2;->val$arrowView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setX(F)V

    return-void
.end method
