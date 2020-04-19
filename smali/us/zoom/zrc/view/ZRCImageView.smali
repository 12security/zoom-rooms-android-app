.class public Lus/zoom/zrc/view/ZRCImageView;
.super Landroid/widget/ImageView;
.source "ZRCImageView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 27
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ZRCImageView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    .line 29
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ZRCImageView;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .line 35
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 36
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCImageView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 39
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCImageView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 42
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 43
    instance-of v0, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    const/high16 p1, 0x3f000000    # 0.5f

    .line 47
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ZRCImageView;->setAlpha(F)V

    goto :goto_0

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    .line 49
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ZRCImageView;->setAlpha(F)V

    :goto_0
    return-void
.end method
