.class public Lus/zoom/zrc/base/widget/RoundedLinearLayout;
.super Landroid/widget/LinearLayout;
.source "RoundedLinearLayout.java"


# instance fields
.field private cornerRadius:F

.field private mCornerClipper:Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lus/zoom/zrc/base/widget/RoundedLinearLayout;->cornerRadius:F

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/base/widget/RoundedLinearLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lus/zoom/zrc/base/widget/RoundedLinearLayout;->cornerRadius:F

    .line 33
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/base/widget/RoundedLinearLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 24
    iput p3, p0, Lus/zoom/zrc/base/widget/RoundedLinearLayout;->cornerRadius:F

    .line 38
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/base/widget/RoundedLinearLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    .line 24
    iput p3, p0, Lus/zoom/zrc/base/widget/RoundedLinearLayout;->cornerRadius:F

    .line 44
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/base/widget/RoundedLinearLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 49
    sget-object v0, Lus/zoom/zrcbox/R$styleable;->RoundedLinearLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 50
    sget p2, Lus/zoom/zrcbox/R$styleable;->RoundedLinearLayout_cornerRadius:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lus/zoom/zrc/base/widget/RoundedLinearLayout;->cornerRadius:F

    .line 51
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    :cond_0
    iget p1, p0, Lus/zoom/zrc/base/widget/RoundedLinearLayout;->cornerRadius:F

    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/widget/RoundedLinearLayout;->setCornerRadius(F)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lus/zoom/zrc/base/widget/RoundedLinearLayout;->mCornerClipper:Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;->clipCorner(Landroid/graphics/Canvas;)V

    .line 74
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 75
    iget-object v0, p0, Lus/zoom/zrc/base/widget/RoundedLinearLayout;->mCornerClipper:Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;->restore(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 68
    iget-object p3, p0, Lus/zoom/zrc/base/widget/RoundedLinearLayout;->mCornerClipper:Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;

    invoke-virtual {p3, p1, p2}, Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;->onSizeChanged(II)V

    return-void
.end method

.method public setCornerRadius(F)V
    .locals 1

    .line 57
    iput p1, p0, Lus/zoom/zrc/base/widget/RoundedLinearLayout;->cornerRadius:F

    .line 58
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 59
    new-instance p1, Lus/zoom/zrc/base/widget/RoundedCornerClipper21;

    iget v0, p0, Lus/zoom/zrc/base/widget/RoundedLinearLayout;->cornerRadius:F

    invoke-direct {p1, p0, v0}, Lus/zoom/zrc/base/widget/RoundedCornerClipper21;-><init>(Landroid/view/View;F)V

    iput-object p1, p0, Lus/zoom/zrc/base/widget/RoundedLinearLayout;->mCornerClipper:Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;

    goto :goto_0

    .line 61
    :cond_0
    new-instance p1, Lus/zoom/zrc/base/widget/RoundedCornerClipper;

    iget v0, p0, Lus/zoom/zrc/base/widget/RoundedLinearLayout;->cornerRadius:F

    invoke-direct {p1, p0, v0}, Lus/zoom/zrc/base/widget/RoundedCornerClipper;-><init>(Landroid/view/View;F)V

    iput-object p1, p0, Lus/zoom/zrc/base/widget/RoundedLinearLayout;->mCornerClipper:Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;

    :goto_0
    return-void
.end method
