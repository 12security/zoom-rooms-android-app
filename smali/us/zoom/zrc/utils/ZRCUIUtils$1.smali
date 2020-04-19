.class final Lus/zoom/zrc/utils/ZRCUIUtils$1;
.super Ljava/lang/Object;
.source "ZRCUIUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/utils/ZRCUIUtils;->matchImageViewToTextSize(Landroid/widget/ImageView;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$toHeight:F


# direct methods
.method constructor <init>(Landroid/widget/ImageView;F)V
    .locals 0

    .line 153
    iput-object p1, p0, Lus/zoom/zrc/utils/ZRCUIUtils$1;->val$imageView:Landroid/widget/ImageView;

    iput p2, p0, Lus/zoom/zrc/utils/ZRCUIUtils$1;->val$toHeight:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 156
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCUIUtils$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lus/zoom/zrc/utils/ZRCUIUtils$1;->val$toHeight:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 157
    iget-object v1, p0, Lus/zoom/zrc/utils/ZRCUIUtils$1;->val$imageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v2, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    return-void
.end method
