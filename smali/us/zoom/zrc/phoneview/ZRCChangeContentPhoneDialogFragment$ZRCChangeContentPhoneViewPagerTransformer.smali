.class Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$ZRCChangeContentPhoneViewPagerTransformer;
.super Ljava/lang/Object;
.source "ZRCChangeContentPhoneDialogFragment.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$PageTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZRCChangeContentPhoneViewPagerTransformer"
.end annotation


# instance fields
.field final MAX_SCALE:F

.field final synthetic this$0:Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;


# direct methods
.method private constructor <init>(Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$ZRCChangeContentPhoneViewPagerTransformer;->this$0:Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x3ecccccd    # 0.4f

    .line 421
    iput p1, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$ZRCChangeContentPhoneViewPagerTransformer;->MAX_SCALE:F

    return-void
.end method

.method synthetic constructor <init>(Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$1;)V
    .locals 0

    .line 420
    invoke-direct {p0, p1}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$ZRCChangeContentPhoneViewPagerTransformer;-><init>(Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;)V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 425
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 426
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v4, p2, v2

    if-gez v4, :cond_0

    const v4, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    const v4, -0x40e66666    # -0.6f

    :goto_0
    mul-float v4, v4, p2

    add-float/2addr v4, v3

    const/high16 v5, -0x40800000    # -1.0f

    cmpg-float v5, p2, v5

    if-gez v5, :cond_1

    .line 432
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_1
    cmpg-float v5, p2, v2

    if-gez v5, :cond_2

    add-float/2addr p2, v3

    .line 434
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    int-to-float p2, v1

    mul-float v1, p2, v4

    sub-float/2addr p2, v1

    .line 435
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    int-to-float p2, v0

    mul-float v0, p2, v4

    sub-float/2addr p2, v0

    .line 436
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    .line 437
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 438
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1

    :cond_2
    cmpl-float v5, p2, v2

    if-nez v5, :cond_3

    .line 440
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 441
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 442
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1

    :cond_3
    cmpl-float v5, p2, v2

    if-lez v5, :cond_4

    sub-float/2addr v3, p2

    .line 444
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    int-to-float p2, v1

    mul-float v1, p2, v4

    sub-float/2addr p2, v1

    .line 445
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    int-to-float p2, v0

    mul-float v0, p2, v4

    sub-float/2addr p2, v0

    .line 446
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    .line 447
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 448
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1

    .line 450
    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    return-void
.end method
