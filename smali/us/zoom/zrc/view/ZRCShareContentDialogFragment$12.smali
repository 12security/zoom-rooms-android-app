.class Lus/zoom/zrc/view/ZRCShareContentDialogFragment$12;
.super Landroid/text/style/DynamicDrawableSpan;
.source "ZRCShareContentDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->updateScreenMirrorTv(Landroid/widget/TextView;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ZRCShareContentDialogFragment;

.field final synthetic val$drawable:Landroid/graphics/drawable/Drawable;

.field final synthetic val$scale:F

.field final synthetic val$textColor:I


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;Landroid/graphics/drawable/Drawable;FI)V
    .locals 0

    .line 2291
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$12;->this$0:Lus/zoom/zrc/view/ZRCShareContentDialogFragment;

    iput-object p2, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$12;->val$drawable:Landroid/graphics/drawable/Drawable;

    iput p3, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$12;->val$scale:F

    iput p4, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$12;->val$textColor:I

    invoke-direct {p0}, Landroid/text/style/DynamicDrawableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 2294
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$12;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$12;->val$scale:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$12;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$12;->val$scale:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2295
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$12;->val$drawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$12;->val$textColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2296
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$12;->val$drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
