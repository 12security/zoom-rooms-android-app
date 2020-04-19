.class public Lus/zoom/zrc/base/widget/RoundedRadioGroup;
.super Landroid/widget/RadioGroup;
.source "RoundedRadioGroup.java"


# instance fields
.field private mCornerClipper:Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/base/widget/RoundedRadioGroup;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/base/widget/RoundedRadioGroup;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 29
    sget-object v1, Lus/zoom/zrcbox/R$styleable;->RoundedRadioGroup:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 30
    sget p2, Lus/zoom/zrcbox/R$styleable;->RoundedRadioGroup_cornerRadius:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 31
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_1

    .line 34
    new-instance p1, Lus/zoom/zrc/base/widget/RoundedCornerClipper21;

    invoke-direct {p1, p0, v0}, Lus/zoom/zrc/base/widget/RoundedCornerClipper21;-><init>(Landroid/view/View;F)V

    iput-object p1, p0, Lus/zoom/zrc/base/widget/RoundedRadioGroup;->mCornerClipper:Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;

    goto :goto_0

    .line 36
    :cond_1
    new-instance p1, Lus/zoom/zrc/base/widget/RoundedCornerClipper;

    invoke-direct {p1, p0, v0}, Lus/zoom/zrc/base/widget/RoundedCornerClipper;-><init>(Landroid/view/View;F)V

    iput-object p1, p0, Lus/zoom/zrc/base/widget/RoundedRadioGroup;->mCornerClipper:Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;

    :goto_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lus/zoom/zrc/base/widget/RoundedRadioGroup;->mCornerClipper:Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;->clipCorner(Landroid/graphics/Canvas;)V

    .line 49
    invoke-super {p0, p1}, Landroid/widget/RadioGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 50
    iget-object v0, p0, Lus/zoom/zrc/base/widget/RoundedRadioGroup;->mCornerClipper:Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;->restore(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 42
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RadioGroup;->onSizeChanged(IIII)V

    .line 43
    iget-object p3, p0, Lus/zoom/zrc/base/widget/RoundedRadioGroup;->mCornerClipper:Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;

    invoke-virtual {p3, p1, p2}, Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;->onSizeChanged(II)V

    return-void
.end method
