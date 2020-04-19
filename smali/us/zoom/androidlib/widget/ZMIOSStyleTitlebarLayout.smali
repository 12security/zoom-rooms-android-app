.class public Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;
.super Landroid/widget/LinearLayout;
.source "ZMIOSStyleTitlebarLayout.java"


# instance fields
.field private mLeftButton:I

.field private mRightButton:I

.field private mTitle:I

.field private mvLeftButton:Landroid/view/View;

.field private mvRightButton:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->mLeftButton:I

    .line 14
    iput v0, p0, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->mRightButton:I

    .line 15
    iput v0, p0, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->mTitle:I

    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->mvLeftButton:Landroid/view/View;

    .line 17
    iput-object v1, p0, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->mvRightButton:Landroid/view/View;

    .line 32
    invoke-direct {p0, p1, v1, v0}, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->mLeftButton:I

    .line 14
    iput v0, p0, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->mRightButton:I

    .line 15
    iput v0, p0, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->mTitle:I

    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->mvLeftButton:Landroid/view/View;

    .line 17
    iput-object v1, p0, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->mvRightButton:Landroid/view/View;

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->mLeftButton:I

    .line 14
    iput v0, p0, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->mRightButton:I

    .line 15
    iput v0, p0, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->mTitle:I

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->mvLeftButton:Landroid/view/View;

    .line 17
    iput-object v0, p0, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->mvRightButton:Landroid/view/View;

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    sget-object p3, Lus/zoom/androidlib/R$styleable;->ZMIOSStyleTitlebarLayout:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 41
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMIOSStyleTitlebarLayout_zm_leftButton:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->mLeftButton:I

    .line 42
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMIOSStyleTitlebarLayout_zm_rightButton:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->mRightButton:I

    .line 43
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMIOSStyleTitlebarLayout_zm_title:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->mTitle:I

    .line 45
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private layoutLeftButton(Landroid/view/View;IIII)V
    .locals 4

    .line 82
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->getPaddingLeft()I

    move-result p2

    .line 83
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->getPaddingTop()I

    move-result p4

    .line 84
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->getPaddingBottom()I

    move-result v0

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 87
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 88
    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 89
    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr p2, v2

    add-int v2, p4, v3

    sub-int/2addr p5, p3

    sub-int/2addr p5, p4

    sub-int/2addr p5, v3

    sub-int/2addr p5, v0

    sub-int/2addr p5, v1

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    sub-int/2addr p5, p3

    div-int/lit8 p5, p5, 0x2

    add-int/2addr v2, p5

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p4, v2

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private layoutOthers(Landroid/view/View;IIII)V
    .locals 0

    .line 112
    invoke-direct/range {p0 .. p5}, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->layoutTitle(Landroid/view/View;IIII)V

    return-void
.end method

.method private layoutRightButton(Landroid/view/View;IIII)V
    .locals 6

    .line 97
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->getPaddingTop()I

    move-result v0

    .line 98
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->getPaddingRight()I

    move-result v1

    .line 99
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->getPaddingBottom()I

    move-result v2

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 102
    iget v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 103
    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 104
    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr p4, p2

    sub-int/2addr p4, v1

    sub-int/2addr p4, v5

    add-int p2, v0, v4

    sub-int/2addr p5, p3

    sub-int/2addr p5, v0

    sub-int/2addr p5, v4

    sub-int/2addr p5, v2

    sub-int/2addr p5, v3

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    sub-int/2addr p5, p3

    div-int/lit8 p5, p5, 0x2

    add-int/2addr p2, p5

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int p3, p4, p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p5, p2

    invoke-virtual {p1, p3, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private layoutTitle(Landroid/view/View;IIII)V
    .locals 10

    .line 116
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->getPaddingLeft()I

    move-result v0

    .line 117
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->getPaddingTop()I

    move-result v1

    .line 118
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->getPaddingRight()I

    move-result v2

    .line 119
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->getPaddingBottom()I

    move-result v3

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 122
    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 123
    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 124
    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 125
    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 128
    iget-object v8, p0, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->mvLeftButton:Landroid/view/View;

    if-eqz v8, :cond_0

    .line 129
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    sub-int/2addr p4, p2

    .line 133
    iget-object p2, p0, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->mvRightButton:Landroid/view/View;

    if-eqz p2, :cond_1

    .line 134
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    goto :goto_1

    :cond_1
    move p2, p4

    :goto_1
    add-int v9, v0, v5

    sub-int/2addr p4, v0

    sub-int/2addr p4, v5

    sub-int/2addr p4, v2

    sub-int/2addr p4, v7

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p4, v0

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p4, v9

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p4

    add-int v2, v1, v6

    sub-int/2addr p5, p3

    sub-int/2addr p5, v1

    sub-int/2addr p5, v6

    sub-int/2addr p5, v3

    sub-int/2addr p5, v4

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    sub-int/2addr p5, p3

    div-int/lit8 p5, p5, 0x2

    add-int/2addr v2, p5

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p3, v2

    sub-int p5, p2, v8

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-lt p5, v1, :cond_4

    if-ge p4, v8, :cond_2

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p2, v8

    goto :goto_2

    :cond_2
    if-le v0, p2, :cond_3

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    sub-int v8, p2, p4

    goto :goto_2

    :cond_3
    move v8, p4

    move p2, v0

    .line 155
    :cond_4
    :goto_2
    invoke-virtual {p1, v8, v2, p2, p3}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 9

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->mvLeftButton:Landroid/view/View;

    .line 52
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->mvRightButton:Landroid/view/View;

    const/4 v0, 0x0

    move-object v2, p1

    .line 54
    :goto_0
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->getChildCount()I

    move-result p1

    if-ge v0, p1, :cond_7

    .line 55
    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 56
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result p1

    .line 57
    iget v1, p0, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->mLeftButton:I

    if-eq p1, v1, :cond_6

    .line 59
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    goto :goto_3

    .line 62
    :cond_0
    iget v1, p0, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->mRightButton:I

    if-eq p1, v1, :cond_5

    .line 64
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->isInEditMode()Z

    move-result v1

    const/4 v3, 0x3

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->getChildCount()I

    move-result v1

    if-lt v1, v3, :cond_1

    if-ne v0, v5, :cond_1

    goto :goto_2

    .line 67
    :cond_1
    iget v1, p0, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->mTitle:I

    if-eq p1, v1, :cond_4

    .line 69
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->getChildCount()I

    move-result p1

    if-lt p1, v3, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_4

    :cond_2
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->getChildCount()I

    move-result p1

    if-ge p1, v3, :cond_3

    if-ne v0, v5, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, p0

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    .line 72
    invoke-direct/range {v3 .. v8}, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->layoutOthers(Landroid/view/View;IIII)V

    goto :goto_4

    :cond_4
    :goto_1
    move-object v2, v4

    goto :goto_4

    .line 65
    :cond_5
    :goto_2
    iput-object v4, p0, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->mvRightButton:Landroid/view/View;

    move-object v3, p0

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    .line 66
    invoke-direct/range {v3 .. v8}, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->layoutRightButton(Landroid/view/View;IIII)V

    goto :goto_4

    .line 60
    :cond_6
    :goto_3
    iput-object v4, p0, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->mvLeftButton:Landroid/view/View;

    move-object v3, p0

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    .line 61
    invoke-direct/range {v3 .. v8}, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->layoutLeftButton(Landroid/view/View;IIII)V

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    if-eqz v2, :cond_8

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 77
    invoke-direct/range {v1 .. v6}, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->layoutTitle(Landroid/view/View;IIII)V

    :cond_8
    return-void
.end method
