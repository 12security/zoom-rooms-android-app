.class public Lus/zoom/zrc/base/widget/ZRCImageButton;
.super Landroid/widget/ImageButton;
.source "ZRCImageButton.java"


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
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 35
    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/widget/ZRCImageButton;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    .line 37
    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/widget/ZRCImageButton;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 44
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCImageButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCImageButton;->isClickable()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    const/high16 p1, 0x3f000000    # 0.5f

    .line 51
    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/widget/ZRCImageButton;->setAlpha(F)V

    goto :goto_0

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    .line 53
    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/widget/ZRCImageButton;->setAlpha(F)V

    :goto_0
    return-void
.end method
