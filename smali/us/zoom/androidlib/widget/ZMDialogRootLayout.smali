.class public Lus/zoom/androidlib/widget/ZMDialogRootLayout;
.super Landroid/widget/LinearLayout;
.source "ZMDialogRootLayout.java"


# static fields
.field private static MAX_TOTAL_WIDTH:I = 0x154

.field private static MIN_FRAME_WIDTH:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6

    .line 30
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 31
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMDialogRootLayout;->getMeasuredWidth()I

    move-result p1

    .line 32
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMDialogRootLayout;->getMeasuredHeight()I

    move-result v0

    .line 33
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMDialogRootLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lus/zoom/androidlib/util/UIUtil;->getDisplayWidth(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMDialogRootLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lus/zoom/androidlib/widget/ZMDialogRootLayout;->MIN_FRAME_WIDTH:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 34
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMDialogRootLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lus/zoom/androidlib/util/UIUtil;->getDisplayHeight(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMDialogRootLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lus/zoom/androidlib/widget/ZMDialogRootLayout;->MIN_FRAME_WIDTH:I

    int-to-float v4, v4

    invoke-static {v3, v4}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 36
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMDialogRootLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lus/zoom/androidlib/widget/ZMDialogRootLayout;->MAX_TOTAL_WIDTH:I

    int-to-float v4, v4

    invoke-static {v3, v4}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    if-le v1, v3, :cond_0

    move v1, v3

    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le p1, v1, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-le v0, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-nez v5, :cond_3

    if-eqz v3, :cond_7

    :cond_3
    if-eqz v5, :cond_4

    move p1, v1

    :cond_4
    if-eqz v3, :cond_5

    move v0, v2

    :cond_5
    const/high16 v1, 0x40000000    # 2.0f

    .line 45
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    if-eqz v3, :cond_6

    .line 46
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 45
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_7
    return-void
.end method
