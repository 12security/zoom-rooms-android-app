.class public Lus/zoom/zrc/base/widget/RoundedListView;
.super Landroid/widget/ListView;
.source "RoundedListView.java"


# instance fields
.field private mCornerClipper:Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/base/widget/RoundedListView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/base/widget/RoundedListView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/base/widget/RoundedListView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/base/widget/RoundedListView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 44
    sget-object v1, Lus/zoom/zrcbox/R$styleable;->RoundedListView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 45
    sget p2, Lus/zoom/zrcbox/R$styleable;->RoundedListView_cornerRadius:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 46
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_1

    .line 49
    new-instance p1, Lus/zoom/zrc/base/widget/RoundedCornerClipper21;

    invoke-direct {p1, p0, v0}, Lus/zoom/zrc/base/widget/RoundedCornerClipper21;-><init>(Landroid/view/View;F)V

    iput-object p1, p0, Lus/zoom/zrc/base/widget/RoundedListView;->mCornerClipper:Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;

    goto :goto_0

    .line 51
    :cond_1
    new-instance p1, Lus/zoom/zrc/base/widget/RoundedCornerClipper;

    invoke-direct {p1, p0, v0}, Lus/zoom/zrc/base/widget/RoundedCornerClipper;-><init>(Landroid/view/View;F)V

    iput-object p1, p0, Lus/zoom/zrc/base/widget/RoundedListView;->mCornerClipper:Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;

    :goto_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lus/zoom/zrc/base/widget/RoundedListView;->mCornerClipper:Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;->clipCorner(Landroid/graphics/Canvas;)V

    .line 64
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 65
    iget-object v0, p0, Lus/zoom/zrc/base/widget/RoundedListView;->mCornerClipper:Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;->restore(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 57
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 58
    iget-object p3, p0, Lus/zoom/zrc/base/widget/RoundedListView;->mCornerClipper:Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;

    invoke-virtual {p3, p1, p2}, Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;->onSizeChanged(II)V

    return-void
.end method
