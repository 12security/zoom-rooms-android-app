.class public Lus/zoom/androidlib/widget/ZMToolbarLayout;
.super Landroid/view/ViewGroup;
.source "ZMToolbarLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ZMToolbarLayout"


# instance fields
.field showChildNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lus/zoom/androidlib/widget/ZMToolbarLayout;->showChildNumber:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lus/zoom/androidlib/widget/ZMToolbarLayout;->showChildNumber:I

    .line 23
    invoke-direct {p0, p1, p2}, Lus/zoom/androidlib/widget/ZMToolbarLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 14
    iput p3, p0, Lus/zoom/androidlib/widget/ZMToolbarLayout;->showChildNumber:I

    .line 18
    invoke-direct {p0, p1, p2}, Lus/zoom/androidlib/widget/ZMToolbarLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 31
    sget-object v0, Lus/zoom/androidlib/R$styleable;->ZMToolbarLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 32
    sget p2, Lus/zoom/androidlib/R$styleable;->ZMToolbarLayout_zm_show_child_number:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lus/zoom/androidlib/widget/ZMToolbarLayout;->showChildNumber:I

    .line 33
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6

    .line 155
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMToolbarLayout;->getChildCount()I

    move-result p1

    .line 157
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMToolbarLayout;->getPaddingLeft()I

    move-result p2

    .line 158
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMToolbarLayout;->getPaddingTop()I

    move-result p3

    .line 159
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMToolbarLayout;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMToolbarLayout;->getPaddingRight()I

    move-result p5

    sub-int/2addr p4, p5

    add-int/lit8 p5, p1, -0x1

    :goto_0
    const/16 v0, 0x8

    if-ltz p5, :cond_1

    .line 162
    invoke-virtual {p0, p5}, Lus/zoom/androidlib/widget/ZMToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 163
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p5, p5, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, p1, :cond_4

    .line 167
    invoke-virtual {p0, v1}, Lus/zoom/androidlib/widget/ZMToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 168
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v0, :cond_2

    goto :goto_4

    .line 171
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, p2

    .line 172
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, p3

    if-ne p5, v1, :cond_3

    move v5, p4

    goto :goto_3

    :cond_3
    move v5, v3

    .line 173
    :goto_3
    invoke-virtual {v2, p2, p3, v5, v4}, Landroid/view/View;->layout(IIII)V

    move p2, v3

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 18

    move-object/from16 v0, p0

    .line 38
    invoke-virtual/range {p0 .. p0}, Lus/zoom/androidlib/widget/ZMToolbarLayout;->getPaddingLeft()I

    move-result v1

    .line 39
    invoke-virtual/range {p0 .. p0}, Lus/zoom/androidlib/widget/ZMToolbarLayout;->getPaddingTop()I

    move-result v2

    .line 40
    invoke-virtual/range {p0 .. p0}, Lus/zoom/androidlib/widget/ZMToolbarLayout;->getPaddingRight()I

    move-result v3

    .line 41
    invoke-virtual/range {p0 .. p0}, Lus/zoom/androidlib/widget/ZMToolbarLayout;->getPaddingBottom()I

    move-result v4

    .line 43
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 44
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    sub-int/2addr v6, v1

    sub-int/2addr v6, v3

    .line 45
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 46
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    sub-int/2addr v8, v2

    sub-int/2addr v8, v4

    .line 48
    invoke-virtual/range {p0 .. p0}, Lus/zoom/androidlib/widget/ZMToolbarLayout;->getChildCount()I

    move-result v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    const/16 v13, 0x8

    if-ge v11, v9, :cond_1

    .line 54
    invoke-virtual {v0, v11}, Lus/zoom/androidlib/widget/ZMToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 55
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v13, :cond_0

    add-int/lit8 v12, v12, 0x1

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 60
    :cond_1
    iget v11, v0, Lus/zoom/androidlib/widget/ZMToolbarLayout;->showChildNumber:I

    if-lez v11, :cond_b

    if-nez v6, :cond_2

    .line 63
    invoke-virtual/range {p0 .. p0}, Lus/zoom/androidlib/widget/ZMToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 64
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    .line 67
    :cond_2
    div-int v11, v6, v12

    .line 68
    iget v15, v0, Lus/zoom/androidlib/widget/ZMToolbarLayout;->showChildNumber:I

    if-lez v15, :cond_3

    if-le v12, v15, :cond_3

    int-to-double v10, v6

    int-to-double v14, v15

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    .line 69
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    add-double v14, v14, v16

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v10, v14

    double-to-int v11, v10

    :cond_3
    const/4 v10, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    if-ge v10, v9, :cond_8

    move/from16 v16, v6

    .line 76
    invoke-virtual {v0, v10}, Lus/zoom/androidlib/widget/ZMToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move/from16 v17, v4

    .line 77
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v4, v13, :cond_4

    goto :goto_4

    :cond_4
    if-eqz v11, :cond_5

    const/high16 v4, 0x40000000    # 2.0f

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    .line 81
    :goto_2
    :try_start_0
    invoke-static {v11, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 82
    invoke-static {v8, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 81
    invoke-virtual {v0, v6, v4, v13}, Lus/zoom/androidlib/widget/ZMToolbarLayout;->measureChild(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :catch_0
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 88
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-le v14, v4, :cond_6

    goto :goto_3

    :cond_6
    move v14, v4

    :goto_3
    if-le v15, v6, :cond_7

    goto :goto_4

    :cond_7
    move v15, v6

    :goto_4
    add-int/lit8 v10, v10, 0x1

    move/from16 v6, v16

    move/from16 v4, v17

    const/16 v13, 0x8

    goto :goto_1

    :cond_8
    move/from16 v17, v4

    move/from16 v16, v6

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v5, v4, :cond_9

    goto :goto_5

    :cond_9
    move v14, v11

    :goto_5
    if-eq v7, v4, :cond_a

    goto :goto_6

    :cond_a
    move v15, v8

    :goto_6
    move v13, v15

    const/high16 v6, 0x40000000    # 2.0f

    goto :goto_c

    :cond_b
    move/from16 v17, v4

    if-eqz v12, :cond_c

    .line 103
    div-int v4, v6, v12

    goto :goto_7

    :cond_c
    move v4, v6

    :goto_7
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_8
    if-ge v10, v9, :cond_10

    .line 110
    invoke-virtual {v0, v10}, Lus/zoom/androidlib/widget/ZMToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 111
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    move/from16 v16, v6

    const/16 v6, 0x8

    if-ne v15, v6, :cond_d

    goto :goto_a

    .line 115
    :cond_d
    :try_start_1
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 116
    invoke-static {v8, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 115
    invoke-virtual {v0, v14, v6, v15}, Lus/zoom/androidlib/widget/ZMToolbarLayout;->measureChild(Landroid/view/View;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    :catch_1
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 123
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    if-le v11, v6, :cond_e

    move v6, v11

    :cond_e
    if-le v13, v14, :cond_f

    goto :goto_9

    :cond_f
    move v13, v14

    :goto_9
    move v11, v6

    :goto_a
    add-int/lit8 v10, v10, 0x1

    move/from16 v6, v16

    goto :goto_8

    :cond_10
    move/from16 v16, v6

    const/high16 v6, 0x40000000    # 2.0f

    if-eq v5, v6, :cond_11

    move v14, v11

    goto :goto_b

    :cond_11
    move v14, v4

    :goto_b
    if-eq v7, v6, :cond_12

    goto :goto_c

    :cond_12
    move v13, v8

    :goto_c
    const/4 v4, 0x0

    :goto_d
    if-ge v4, v9, :cond_14

    .line 136
    invoke-virtual {v0, v4}, Lus/zoom/androidlib/widget/ZMToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 137
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v15, 0x8

    if-ne v11, v15, :cond_13

    goto :goto_e

    .line 141
    :cond_13
    :try_start_2
    invoke-static {v14, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 142
    invoke-static {v13, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 141
    invoke-virtual {v10, v11, v15}, Landroid/view/View;->measure(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :goto_e
    add-int/lit8 v4, v4, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    goto :goto_d

    :cond_14
    const/high16 v4, 0x40000000    # 2.0f

    if-ne v5, v4, :cond_15

    goto :goto_f

    :cond_15
    mul-int v16, v14, v12

    :goto_f
    add-int v16, v16, v1

    add-int v1, v16, v3

    if-ne v7, v4, :cond_16

    move v13, v8

    :cond_16
    add-int/2addr v13, v2

    add-int v13, v13, v17

    .line 149
    invoke-virtual {v0, v1, v13}, Lus/zoom/androidlib/widget/ZMToolbarLayout;->setMeasuredDimension(II)V

    return-void
.end method
