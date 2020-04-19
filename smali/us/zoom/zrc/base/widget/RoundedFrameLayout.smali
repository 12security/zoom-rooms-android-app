.class public Lus/zoom/zrc/base/widget/RoundedFrameLayout;
.super Landroid/widget/FrameLayout;
.source "RoundedFrameLayout.java"


# instance fields
.field private mCornerClipper:Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/base/widget/RoundedFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/base/widget/RoundedFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/base/widget/RoundedFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/base/widget/RoundedFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 48
    sget-object v1, Lus/zoom/zrcbox/R$styleable;->RoundedFrameLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 49
    sget p2, Lus/zoom/zrcbox/R$styleable;->RoundedFrameLayout_cornerRadius:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 50
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_1

    .line 53
    new-instance p1, Lus/zoom/zrc/base/widget/RoundedCornerClipper21;

    invoke-direct {p1, p0, v0}, Lus/zoom/zrc/base/widget/RoundedCornerClipper21;-><init>(Landroid/view/View;F)V

    iput-object p1, p0, Lus/zoom/zrc/base/widget/RoundedFrameLayout;->mCornerClipper:Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;

    goto :goto_0

    .line 55
    :cond_1
    new-instance p1, Lus/zoom/zrc/base/widget/RoundedCornerClipper;

    invoke-direct {p1, p0, v0}, Lus/zoom/zrc/base/widget/RoundedCornerClipper;-><init>(Landroid/view/View;F)V

    iput-object p1, p0, Lus/zoom/zrc/base/widget/RoundedFrameLayout;->mCornerClipper:Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;

    :goto_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lus/zoom/zrc/base/widget/RoundedFrameLayout;->mCornerClipper:Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;->clipCorner(Landroid/graphics/Canvas;)V

    .line 68
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 69
    iget-object v0, p0, Lus/zoom/zrc/base/widget/RoundedFrameLayout;->mCornerClipper:Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;->restore(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 62
    iget-object p3, p0, Lus/zoom/zrc/base/widget/RoundedFrameLayout;->mCornerClipper:Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;

    invoke-virtual {p3, p1, p2}, Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;->onSizeChanged(II)V

    return-void
.end method
