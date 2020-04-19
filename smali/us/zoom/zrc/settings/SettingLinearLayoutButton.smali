.class public Lus/zoom/zrc/settings/SettingLinearLayoutButton;
.super Landroid/widget/LinearLayout;
.source "SettingLinearLayoutButton.java"


# instance fields
.field private configuredAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingLinearLayoutButton;->getAlpha()F

    move-result p1

    iput p1, p0, Lus/zoom/zrc/settings/SettingLinearLayoutButton;->configuredAlpha:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingLinearLayoutButton;->getAlpha()F

    move-result p1

    iput p1, p0, Lus/zoom/zrc/settings/SettingLinearLayoutButton;->configuredAlpha:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingLinearLayoutButton;->getAlpha()F

    move-result p1

    iput p1, p0, Lus/zoom/zrc/settings/SettingLinearLayoutButton;->configuredAlpha:F

    return-void
.end method

.method private setViewDisabled()V
    .locals 2

    .line 73
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingLinearLayoutButton;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    .line 74
    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingLinearLayoutButton;->setAlpha(F)V

    .line 75
    iput v0, p0, Lus/zoom/zrc/settings/SettingLinearLayoutButton;->configuredAlpha:F

    return-void
.end method

.method private setViewPressed()V
    .locals 2

    .line 67
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingLinearLayoutButton;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    .line 68
    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingLinearLayoutButton;->setAlpha(F)V

    .line 69
    iput v0, p0, Lus/zoom/zrc/settings/SettingLinearLayoutButton;->configuredAlpha:F

    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 63
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAlpha(F)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 58
    iput p1, p0, Lus/zoom/zrc/settings/SettingLinearLayoutButton;->configuredAlpha:F

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 33
    iget p1, p0, Lus/zoom/zrc/settings/SettingLinearLayoutButton;->configuredAlpha:F

    invoke-virtual {p0, p1}, Lus/zoom/zrc/settings/SettingLinearLayoutButton;->setAlpha(F)V

    goto :goto_0

    .line 35
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingLinearLayoutButton;->setViewDisabled()V

    :goto_0
    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 42
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingLinearLayoutButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingLinearLayoutButton;->isClickable()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 49
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingLinearLayoutButton;->setViewPressed()V

    goto :goto_0

    .line 51
    :cond_2
    iget p1, p0, Lus/zoom/zrc/settings/SettingLinearLayoutButton;->configuredAlpha:F

    invoke-virtual {p0, p1}, Lus/zoom/zrc/settings/SettingLinearLayoutButton;->setAlpha(F)V

    :goto_0
    return-void
.end method
