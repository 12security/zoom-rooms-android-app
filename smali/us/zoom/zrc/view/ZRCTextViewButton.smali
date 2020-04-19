.class public Lus/zoom/zrc/view/ZRCTextViewButton;
.super Landroid/widget/TextView;
.source "ZRCTextViewButton.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field private configuredAlpha:F

.field private disableAlpha:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lus/zoom/zrc/view/ZRCTextViewButton;->disableAlpha:Z

    .line 20
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCTextViewButton;->getAlpha()F

    move-result p1

    iput p1, p0, Lus/zoom/zrc/view/ZRCTextViewButton;->configuredAlpha:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lus/zoom/zrc/view/ZRCTextViewButton;->disableAlpha:Z

    .line 25
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCTextViewButton;->getAlpha()F

    move-result p1

    iput p1, p0, Lus/zoom/zrc/view/ZRCTextViewButton;->configuredAlpha:F

    return-void
.end method

.method private setViewDisabled()V
    .locals 2

    .line 83
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCTextViewButton;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    .line 84
    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/ZRCTextViewButton;->setAlpha(F)V

    .line 85
    iput v0, p0, Lus/zoom/zrc/view/ZRCTextViewButton;->configuredAlpha:F

    return-void
.end method

.method private setViewPressed()V
    .locals 2

    .line 77
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCTextViewButton;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    .line 78
    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/ZRCTextViewButton;->setAlpha(F)V

    .line 79
    iput v0, p0, Lus/zoom/zrc/view/ZRCTextViewButton;->configuredAlpha:F

    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 73
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAlpha(F)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 64
    iput p1, p0, Lus/zoom/zrc/view/ZRCTextViewButton;->configuredAlpha:F

    return-void
.end method

.method public setDisableAlpha(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lus/zoom/zrc/view/ZRCTextViewButton;->disableAlpha:Z

    return-void
.end method

.method public setEnableOnly(Z)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 32
    iget p1, p0, Lus/zoom/zrc/view/ZRCTextViewButton;->configuredAlpha:F

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ZRCTextViewButton;->setAlpha(F)V

    goto :goto_0

    .line 34
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCTextViewButton;->setViewDisabled()V

    :goto_0
    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Landroid/widget/TextView;->setPressed(Z)V

    .line 45
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCTextViewButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCTextViewButton;->isClickable()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 51
    :cond_1
    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCTextViewButton;->disableAlpha:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 55
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCTextViewButton;->setViewPressed()V

    goto :goto_0

    .line 57
    :cond_3
    iget p1, p0, Lus/zoom/zrc/view/ZRCTextViewButton;->configuredAlpha:F

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ZRCTextViewButton;->setAlpha(F)V

    :goto_0
    return-void
.end method
