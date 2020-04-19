.class public Lus/zoom/zrc/base/widget/ZRCCheckedTextView;
.super Landroid/widget/TextView;
.source "ZRCCheckedTextView.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field private checkMark:Landroid/graphics/drawable/Drawable;

.field private checkMarkTint:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private checked:Z

.field private checkedPaddingRight:I

.field private uncheckedPaddingRight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$drawable;->checkmark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->checkMark:Landroid/graphics/drawable/Drawable;

    .line 35
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$color;->zrc_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->checkMarkTint:I

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 53
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 58
    sget-object v0, Lus/zoom/zrcbox/R$styleable;->ZRCCheckedTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 59
    sget v0, Lus/zoom/zrcbox/R$styleable;->ZRCCheckedTextView_checkMark:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->checkMark:Landroid/graphics/drawable/Drawable;

    .line 60
    sget v0, Lus/zoom/zrcbox/R$styleable;->ZRCCheckedTextView_checkMarkTint:I

    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$color;->zrc_blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->checkMarkTint:I

    .line 61
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    const/high16 p2, 0x41000000    # 8.0f

    .line 64
    invoke-static {p1, p2}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->setCompoundDrawablePadding(I)V

    .line 66
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->getPaddingRight()I

    move-result p1

    iput p1, p0, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->checkedPaddingRight:I

    .line 68
    iget-object p1, p0, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->checkMark:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 69
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->getTextSize()F

    move-result p2

    float-to-int p2, p2

    invoke-static {p1, p2}, Lus/zoom/zrc/utils/ZRCUIUtils;->setComponentDrawableBound(Landroid/graphics/drawable/Drawable;I)V

    .line 70
    iget-object p1, p0, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->checkMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->getPaddingRight()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->getCompoundDrawablePadding()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->uncheckedPaddingRight:I

    goto :goto_0

    .line 72
    :cond_1
    iget p1, p0, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->checkedPaddingRight:I

    iput p1, p0, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->uncheckedPaddingRight:I

    .line 75
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->checkMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->checked:Z

    return v0
.end method

.method public setCheckMarkDrawable(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 107
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 111
    iput-object p1, p0, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->checkMark:Landroid/graphics/drawable/Drawable;

    .line 112
    iget-object p1, p0, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->checkMark:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 113
    iget-object p1, p0, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->checkMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->getTextSize()F

    move-result v1

    float-to-int v1, v1

    invoke-static {p1, v1}, Lus/zoom/zrc/utils/ZRCUIUtils;->setComponentDrawableBound(Landroid/graphics/drawable/Drawable;I)V

    .line 114
    iget-object p1, p0, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->checkMark:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->checkMarkTint:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 115
    iget-object p1, p0, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->checkMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v0, p1, v0}, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 116
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->checkedPaddingRight:I

    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->setPadding(IIII)V

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {p0, v0, v0, v0, v0}, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 119
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->uncheckedPaddingRight:I

    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->setPadding(IIII)V

    :goto_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 80
    iget-boolean v0, p0, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->checked:Z

    if-eq v0, p1, :cond_0

    .line 81
    iput-boolean p1, p0, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->checked:Z

    .line 82
    iget-object p1, p0, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->checkMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    .line 98
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 99
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 100
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$string;->selected:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 93
    iget-boolean v0, p0, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->checked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->setChecked(Z)V

    return-void
.end method
