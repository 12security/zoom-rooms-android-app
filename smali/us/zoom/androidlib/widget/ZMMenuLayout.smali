.class public Lus/zoom/androidlib/widget/ZMMenuLayout;
.super Landroid/view/ViewGroup;
.source "ZMMenuLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2

    .line 92
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMMenuLayout;->getChildCount()I

    move-result p1

    .line 94
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMMenuLayout;->getPaddingTop()I

    move-result p2

    .line 95
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMMenuLayout;->getPaddingLeft()I

    move-result p3

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p1, :cond_1

    .line 98
    invoke-virtual {p0, p4}, Lus/zoom/androidlib/widget/ZMMenuLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 99
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 103
    :cond_0
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p3

    .line 104
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p2

    .line 105
    invoke-virtual {p5, p3, p2, v0, v1}, Landroid/view/View;->layout(IIII)V

    move p2, v1

    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 19

    move-object/from16 v0, p0

    .line 25
    invoke-virtual/range {p0 .. p0}, Lus/zoom/androidlib/widget/ZMMenuLayout;->getPaddingLeft()I

    move-result v1

    .line 26
    invoke-virtual/range {p0 .. p0}, Lus/zoom/androidlib/widget/ZMMenuLayout;->getPaddingTop()I

    move-result v2

    .line 27
    invoke-virtual/range {p0 .. p0}, Lus/zoom/androidlib/widget/ZMMenuLayout;->getPaddingRight()I

    move-result v3

    .line 28
    invoke-virtual/range {p0 .. p0}, Lus/zoom/androidlib/widget/ZMMenuLayout;->getPaddingBottom()I

    move-result v4

    .line 30
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 31
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    sub-int/2addr v6, v1

    sub-int/2addr v6, v3

    .line 32
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 33
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    sub-int/2addr v8, v2

    sub-int/2addr v8, v4

    if-nez v8, :cond_0

    .line 38
    invoke-virtual/range {p0 .. p0}, Lus/zoom/androidlib/widget/ZMMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lus/zoom/androidlib/util/UIUtil;->getDisplayHeight(Landroid/content/Context;)I

    move-result v8

    .line 41
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lus/zoom/androidlib/widget/ZMMenuLayout;->getChildCount()I

    move-result v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    const/16 v13, 0x8

    if-ge v11, v9, :cond_7

    .line 46
    invoke-virtual {v0, v11}, Lus/zoom/androidlib/widget/ZMMenuLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 47
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-ne v10, v13, :cond_1

    move/from16 v18, v6

    goto :goto_3

    .line 50
    :cond_1
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 53
    iget v13, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v14, -0x2

    if-ne v13, v14, :cond_2

    const/high16 v13, -0x80000000

    .line 54
    invoke-static {v6, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    move/from16 v14, v16

    goto :goto_1

    .line 55
    :cond_2
    iget v13, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_3

    const/high16 v13, 0x40000000    # 2.0f

    .line 56
    invoke-static {v6, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    move/from16 v14, v17

    goto :goto_1

    :cond_3
    const/high16 v13, 0x40000000    # 2.0f

    .line 58
    iget v14, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 61
    :goto_1
    iget v13, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v18, v6

    const/4 v6, -0x2

    if-ne v13, v6, :cond_4

    const/high16 v6, -0x80000000

    .line 62
    invoke-static {v8, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_2

    .line 63
    :cond_4
    iget v6, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v13, -0x1

    if-ne v6, v13, :cond_5

    const/high16 v6, 0x40000000    # 2.0f

    .line 64
    invoke-static {v8, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_2

    :cond_5
    const/high16 v6, 0x40000000    # 2.0f

    .line 66
    iget v10, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v10, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 69
    :goto_2
    invoke-virtual {v0, v15, v14, v6}, Lus/zoom/androidlib/widget/ZMMenuLayout;->measureChild(Landroid/view/View;II)V

    .line 70
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-le v12, v6, :cond_6

    goto :goto_3

    :cond_6
    move v12, v6

    :goto_3
    add-int/lit8 v11, v11, 0x1

    move/from16 v6, v18

    goto :goto_0

    :cond_7
    move/from16 v18, v6

    const/4 v6, 0x0

    const/4 v10, 0x0

    :goto_4
    if-ge v6, v9, :cond_9

    .line 75
    invoke-virtual {v0, v6}, Lus/zoom/androidlib/widget/ZMMenuLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 76
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-ne v14, v13, :cond_8

    const/high16 v14, 0x40000000    # 2.0f

    goto :goto_5

    :cond_8
    const/high16 v14, 0x40000000    # 2.0f

    .line 79
    invoke-static {v12, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 80
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 79
    invoke-virtual {v11, v15, v13}, Landroid/view/View;->measure(II)V

    .line 82
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v10, v11

    :goto_5
    add-int/lit8 v6, v6, 0x1

    const/16 v13, 0x8

    goto :goto_4

    :cond_9
    const/high16 v14, 0x40000000    # 2.0f

    if-ne v5, v14, :cond_a

    goto :goto_6

    :cond_a
    move/from16 v18, v12

    :goto_6
    add-int v18, v18, v1

    add-int v1, v18, v3

    if-ne v7, v14, :cond_b

    goto :goto_7

    :cond_b
    move v8, v10

    :goto_7
    add-int/2addr v8, v2

    add-int/2addr v8, v4

    .line 86
    invoke-virtual {v0, v1, v8}, Lus/zoom/androidlib/widget/ZMMenuLayout;->setMeasuredDimension(II)V

    return-void
.end method
