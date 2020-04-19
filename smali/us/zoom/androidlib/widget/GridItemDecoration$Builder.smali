.class public Lus/zoom/androidlib/widget/GridItemDecoration$Builder;
.super Ljava/lang/Object;
.source "GridItemDecoration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/widget/GridItemDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mColor:I

.field private mContext:Landroid/content/Context;

.field private mHorizonSpan:I

.field private mResources:Landroid/content/res/Resources;

.field private mShowLastLine:Z

.field private mVerticalSpan:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lus/zoom/androidlib/widget/GridItemDecoration$Builder;->mContext:Landroid/content/Context;

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/androidlib/widget/GridItemDecoration$Builder;->mResources:Landroid/content/res/Resources;

    const/4 p1, 0x1

    .line 165
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/GridItemDecoration$Builder;->mShowLastLine:Z

    const/4 p1, 0x0

    .line 166
    iput p1, p0, Lus/zoom/androidlib/widget/GridItemDecoration$Builder;->mHorizonSpan:I

    .line 167
    iput p1, p0, Lus/zoom/androidlib/widget/GridItemDecoration$Builder;->mVerticalSpan:I

    const/4 p1, -0x1

    .line 168
    iput p1, p0, Lus/zoom/androidlib/widget/GridItemDecoration$Builder;->mColor:I

    return-void
.end method


# virtual methods
.method public build()Lus/zoom/androidlib/widget/GridItemDecoration;
    .locals 7

    .line 207
    new-instance v6, Lus/zoom/androidlib/widget/GridItemDecoration;

    iget v1, p0, Lus/zoom/androidlib/widget/GridItemDecoration$Builder;->mHorizonSpan:I

    iget v2, p0, Lus/zoom/androidlib/widget/GridItemDecoration$Builder;->mVerticalSpan:I

    iget v3, p0, Lus/zoom/androidlib/widget/GridItemDecoration$Builder;->mColor:I

    iget-boolean v4, p0, Lus/zoom/androidlib/widget/GridItemDecoration$Builder;->mShowLastLine:Z

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lus/zoom/androidlib/widget/GridItemDecoration;-><init>(IIIZLus/zoom/androidlib/widget/GridItemDecoration$1;)V

    return-object v6
.end method

.method public setColor(I)Lus/zoom/androidlib/widget/GridItemDecoration$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 177
    iput p1, p0, Lus/zoom/androidlib/widget/GridItemDecoration$Builder;->mColor:I

    return-object p0
.end method

.method public setColorResource(I)Lus/zoom/androidlib/widget/GridItemDecoration$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 172
    iget-object v0, p0, Lus/zoom/androidlib/widget/GridItemDecoration$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/GridItemDecoration$Builder;->setColor(I)Lus/zoom/androidlib/widget/GridItemDecoration$Builder;

    return-object p0
.end method

.method public setHorizontalSpan(F)Lus/zoom/androidlib/widget/GridItemDecoration$Builder;
    .locals 2

    .line 197
    iget-object v0, p0, Lus/zoom/androidlib/widget/GridItemDecoration$Builder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lus/zoom/androidlib/widget/GridItemDecoration$Builder;->mHorizonSpan:I

    return-object p0
.end method

.method public setHorizontalSpan(I)Lus/zoom/androidlib/widget/GridItemDecoration$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 192
    iget-object v0, p0, Lus/zoom/androidlib/widget/GridItemDecoration$Builder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lus/zoom/androidlib/widget/GridItemDecoration$Builder;->mHorizonSpan:I

    return-object p0
.end method

.method public setShowLastLine(Z)Lus/zoom/androidlib/widget/GridItemDecoration$Builder;
    .locals 0

    .line 202
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/GridItemDecoration$Builder;->mShowLastLine:Z

    return-object p0
.end method

.method public setVerticalSpan(F)Lus/zoom/androidlib/widget/GridItemDecoration$Builder;
    .locals 2

    .line 187
    iget-object v0, p0, Lus/zoom/androidlib/widget/GridItemDecoration$Builder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lus/zoom/androidlib/widget/GridItemDecoration$Builder;->mVerticalSpan:I

    return-object p0
.end method

.method public setVerticalSpan(I)Lus/zoom/androidlib/widget/GridItemDecoration$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 182
    iget-object v0, p0, Lus/zoom/androidlib/widget/GridItemDecoration$Builder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lus/zoom/androidlib/widget/GridItemDecoration$Builder;->mVerticalSpan:I

    return-object p0
.end method
