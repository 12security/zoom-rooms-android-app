.class Lus/zoom/zrc/base/widget/RoundedCornerClipper21$1;
.super Landroid/view/ViewOutlineProvider;
.source "RoundedCornerClipper21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/base/widget/RoundedCornerClipper21;->init(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/base/widget/RoundedCornerClipper21;


# direct methods
.method constructor <init>(Lus/zoom/zrc/base/widget/RoundedCornerClipper21;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lus/zoom/zrc/base/widget/RoundedCornerClipper21$1;->this$0:Lus/zoom/zrc/base/widget/RoundedCornerClipper21;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object p1, p0, Lus/zoom/zrc/base/widget/RoundedCornerClipper21$1;->this$0:Lus/zoom/zrc/base/widget/RoundedCornerClipper21;

    iget v5, p1, Lus/zoom/zrc/base/widget/RoundedCornerClipper21;->mCornerRadius:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    const/4 p1, 0x0

    .line 28
    invoke-virtual {p2, p1}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void
.end method
