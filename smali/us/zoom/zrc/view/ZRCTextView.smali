.class public Lus/zoom/zrc/view/ZRCTextView;
.super Landroid/widget/TextView;
.source "ZRCTextView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 25
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ZRCTextView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    .line 27
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ZRCTextView;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .line 33
    invoke-super {p0, p1}, Landroid/widget/TextView;->setPressed(Z)V

    .line 34
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCTextView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 37
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCTextView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    const/high16 p1, 0x3f000000    # 0.5f

    .line 41
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ZRCTextView;->setAlpha(F)V

    goto :goto_0

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    .line 43
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ZRCTextView;->setAlpha(F)V

    :goto_0
    return-void
.end method
