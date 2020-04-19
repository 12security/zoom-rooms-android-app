.class final Lus/zoom/zrc/login/util/ZRCPopupWindowUtils$1;
.super Ljava/lang/Object;
.source "ZRCPopupWindowUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/util/ZRCPopupWindowUtils;->updateArrowToCenterHorizontal(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$anchorView:Landroid/view/View;

.field final synthetic val$arrowView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lus/zoom/zrc/login/util/ZRCPopupWindowUtils$1;->val$anchorView:Landroid/view/View;

    iput-object p2, p0, Lus/zoom/zrc/login/util/ZRCPopupWindowUtils$1;->val$arrowView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x2

    .line 97
    new-array v1, v0, [I

    .line 98
    iget-object v2, p0, Lus/zoom/zrc/login/util/ZRCPopupWindowUtils$1;->val$anchorView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    .line 100
    aget v3, v1, v2

    iget-object v4, p0, Lus/zoom/zrc/login/util/ZRCPopupWindowUtils$1;->val$anchorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/2addr v4, v0

    add-int/2addr v3, v4

    .line 102
    iget-object v4, p0, Lus/zoom/zrc/login/util/ZRCPopupWindowUtils$1;->val$arrowView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 104
    aget v1, v1, v2

    sub-int/2addr v3, v1

    iget-object v1, p0, Lus/zoom/zrc/login/util/ZRCPopupWindowUtils$1;->val$arrowView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/2addr v1, v0

    sub-int/2addr v3, v1

    .line 105
    iget-object v0, p0, Lus/zoom/zrc/login/util/ZRCPopupWindowUtils$1;->val$arrowView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    int-to-float v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    return-void
.end method
