.class public Lus/zoom/zrc/view/ZRCConstraintLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "ZRCConstraintLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 26
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ZRCConstraintLayout;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    .line 28
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ZRCConstraintLayout;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .line 34
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setPressed(Z)V

    .line 36
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCConstraintLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 39
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCConstraintLayout;->isClickable()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    const/high16 p1, 0x3f000000    # 0.5f

    .line 43
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ZRCConstraintLayout;->setAlpha(F)V

    goto :goto_0

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    .line 45
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ZRCConstraintLayout;->setAlpha(F)V

    :goto_0
    return-void
.end method
