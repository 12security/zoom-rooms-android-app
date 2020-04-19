.class public Lus/zoom/androidlib/widget/ZMFlowLayout;
.super Landroid/view/ViewGroup;
.source "ZMFlowLayout.java"


# static fields
.field private static final CENTER:I = 0x0

.field private static final LEFT:I = -0x1

.field private static final RIGHT:I = 0x1


# instance fields
.field private lineMargin:I

.field private lineViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mAllViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mGravity:I

.field protected mLineHeight:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mLineWidth:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lus/zoom/androidlib/widget/ZMFlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lus/zoom/androidlib/widget/ZMFlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lus/zoom/androidlib/widget/ZMFlowLayout;->mAllViews:Ljava/util/List;

    .line 23
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lus/zoom/androidlib/widget/ZMFlowLayout;->mLineHeight:Ljava/util/List;

    .line 24
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lus/zoom/androidlib/widget/ZMFlowLayout;->mLineWidth:Ljava/util/List;

    const/4 p2, -0x1

    .line 25
    iput p2, p0, Lus/zoom/androidlib/widget/ZMFlowLayout;->mGravity:I

    .line 26
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lus/zoom/androidlib/widget/ZMFlowLayout;->lineViews:Ljava/util/List;

    .line 31
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-static {p3}, Landroidx/core/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 33
    iget p3, p0, Lus/zoom/androidlib/widget/ZMFlowLayout;->mGravity:I

    if-ne p3, p2, :cond_0

    .line 34
    iput v0, p0, Lus/zoom/androidlib/widget/ZMFlowLayout;->mGravity:I

    goto :goto_0

    .line 36
    :cond_0
    iput p2, p0, Lus/zoom/androidlib/widget/ZMFlowLayout;->mGravity:I

    :cond_1
    :goto_0
    const/high16 p2, 0x40c00000    # 6.0f

    .line 39
    invoke-static {p1, p2}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lus/zoom/androidlib/widget/ZMFlowLayout;->lineMargin:I

    return-void
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 205
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 200
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMFlowLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 210
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    .line 109
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMFlowLayout;->mAllViews:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 110
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMFlowLayout;->mLineHeight:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 111
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMFlowLayout;->mLineWidth:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 112
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMFlowLayout;->lineViews:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 114
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMFlowLayout;->getWidth()I

    move-result p1

    .line 119
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMFlowLayout;->getChildCount()I

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x0

    const/4 p5, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge p4, p2, :cond_3

    .line 122
    invoke-virtual {p0, p4}, Lus/zoom/androidlib/widget/ZMFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 123
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v1, :cond_0

    goto :goto_2

    .line 125
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 127
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 128
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int v5, v3, v0

    .line 130
    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMFlowLayout;->getPaddingLeft()I

    move-result v6

    sub-int v6, p1, v6

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMFlowLayout;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_2

    .line 131
    iget-object v5, p0, Lus/zoom/androidlib/widget/ZMFlowLayout;->mLineHeight:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    iget v6, p0, Lus/zoom/androidlib/widget/ZMFlowLayout;->lineMargin:I

    add-int/2addr p5, v6

    :goto_1
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {v5, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object p5, p0, Lus/zoom/androidlib/widget/ZMFlowLayout;->mAllViews:Ljava/util/List;

    iget-object v5, p0, Lus/zoom/androidlib/widget/ZMFlowLayout;->lineViews:Ljava/util/List;

    invoke-interface {p5, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object p5, p0, Lus/zoom/androidlib/widget/ZMFlowLayout;->mLineWidth:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget p5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p5, v4

    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p5, v0

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/widget/ZMFlowLayout;->lineViews:Ljava/util/List;

    const/4 v0, 0x0

    .line 139
    :cond_2
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    .line 140
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v3

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v1

    invoke-static {p5, v4}, Ljava/lang/Math;->max(II)I

    move-result p5

    .line 142
    iget-object v1, p0, Lus/zoom/androidlib/widget/ZMFlowLayout;->lineViews:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 145
    :cond_3
    iget-object p2, p0, Lus/zoom/androidlib/widget/ZMFlowLayout;->mLineHeight:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_4

    goto :goto_3

    :cond_4
    iget p4, p0, Lus/zoom/androidlib/widget/ZMFlowLayout;->lineMargin:I

    add-int/2addr p5, p4

    :goto_3
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object p2, p0, Lus/zoom/androidlib/widget/ZMFlowLayout;->mLineWidth:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object p2, p0, Lus/zoom/androidlib/widget/ZMFlowLayout;->mAllViews:Ljava/util/List;

    iget-object p4, p0, Lus/zoom/androidlib/widget/ZMFlowLayout;->lineViews:Ljava/util/List;

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMFlowLayout;->getPaddingLeft()I

    move-result p2

    .line 151
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMFlowLayout;->getPaddingTop()I

    move-result p4

    .line 153
    iget-object p5, p0, Lus/zoom/androidlib/widget/ZMFlowLayout;->mAllViews:Ljava/util/List;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p5

    move v0, p4

    move p4, p2

    const/4 p2, 0x0

    :goto_4
    if-ge p2, p5, :cond_a

    .line 156
    iget-object v2, p0, Lus/zoom/androidlib/widget/ZMFlowLayout;->mAllViews:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput-object v2, p0, Lus/zoom/androidlib/widget/ZMFlowLayout;->lineViews:Ljava/util/List;

    .line 157
    iget-object v2, p0, Lus/zoom/androidlib/widget/ZMFlowLayout;->mLineHeight:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 160
    iget-object v3, p0, Lus/zoom/androidlib/widget/ZMFlowLayout;->mLineWidth:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 161
    iget v4, p0, Lus/zoom/androidlib/widget/ZMFlowLayout;->mGravity:I

    packed-switch v4, :pswitch_data_0

    goto :goto_5

    .line 169
    :pswitch_0
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMFlowLayout;->getPaddingLeft()I

    move-result p4

    add-int/2addr v3, p4

    sub-int p4, p1, v3

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMFlowLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr p4, v3

    .line 170
    iget-object v3, p0, Lus/zoom/androidlib/widget/ZMFlowLayout;->lineViews:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_5

    :pswitch_1
    sub-int p4, p1, v3

    .line 166
    div-int/lit8 p4, p4, 0x2

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMFlowLayout;->getPaddingLeft()I

    move-result v3

    add-int/2addr p4, v3

    goto :goto_5

    .line 163
    :pswitch_2
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMFlowLayout;->getPaddingLeft()I

    move-result p4

    :goto_5
    move v3, p4

    const/4 p4, 0x0

    .line 174
    :goto_6
    iget-object v4, p0, Lus/zoom/androidlib/widget/ZMFlowLayout;->lineViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p4, v4, :cond_9

    .line 175
    iget-object v4, p0, Lus/zoom/androidlib/widget/ZMFlowLayout;->lineViews:Ljava/util/List;

    invoke-interface {v4, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 176
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v1, :cond_5

    goto :goto_a

    .line 181
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-lez p4, :cond_6

    .line 183
    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_7

    :cond_6
    const/4 v6, 0x0

    :goto_7
    add-int/2addr v6, v3

    .line 184
    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v7, v0

    if-lez p2, :cond_7

    iget v8, p0, Lus/zoom/androidlib/widget/ZMFlowLayout;->lineMargin:I

    goto :goto_8

    :cond_7
    const/4 v8, 0x0

    :goto_8
    add-int/2addr v7, v8

    .line 185
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v6

    .line 186
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v7

    .line 188
    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 190
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lez p4, :cond_8

    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_9

    :cond_8
    const/4 v6, 0x0

    :goto_9
    add-int/2addr v4, v6

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    :goto_a
    add-int/lit8 p4, p4, 0x1

    goto :goto_6

    :cond_9
    add-int/2addr v0, v2

    add-int/lit8 p2, p2, 0x1

    move p4, v3

    goto/16 :goto_4

    :cond_a
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 18

    move-object/from16 v0, p0

    .line 52
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 53
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 54
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 55
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 64
    invoke-virtual/range {p0 .. p0}, Lus/zoom/androidlib/widget/ZMFlowLayout;->getChildCount()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v7, v5, :cond_5

    .line 67
    invoke-virtual {v0, v7}, Lus/zoom/androidlib/widget/ZMFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 68
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_1

    add-int/lit8 v12, v5, -0x1

    if-ne v7, v12, :cond_0

    .line 70
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 71
    iget v12, v0, Lus/zoom/androidlib/widget/ZMFlowLayout;->lineMargin:I

    add-int/2addr v12, v10

    add-int/2addr v11, v12

    move/from16 v13, p1

    move/from16 v14, p2

    goto :goto_3

    :cond_0
    move/from16 v13, p1

    move/from16 v14, p2

    goto :goto_3

    :cond_1
    move/from16 v13, p1

    move/from16 v14, p2

    .line 75
    invoke-virtual {v0, v12, v13, v14}, Lus/zoom/androidlib/widget/ZMFlowLayout;->measureChild(Landroid/view/View;II)V

    .line 77
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 79
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    iget v6, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v16, v16, v6

    iget v6, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v16, v16, v6

    .line 81
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget v12, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v6, v12

    iget v12, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v6, v12

    add-int v12, v9, v16

    .line 84
    invoke-virtual/range {p0 .. p0}, Lus/zoom/androidlib/widget/ZMFlowLayout;->getPaddingLeft()I

    move-result v15

    sub-int v15, v1, v15

    invoke-virtual/range {p0 .. p0}, Lus/zoom/androidlib/widget/ZMFlowLayout;->getPaddingRight()I

    move-result v17

    sub-int v15, v15, v17

    if-le v12, v15, :cond_3

    .line 85
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    if-lez v11, :cond_2

    .line 87
    iget v9, v0, Lus/zoom/androidlib/widget/ZMFlowLayout;->lineMargin:I

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    add-int/2addr v10, v9

    add-int/2addr v11, v10

    move/from16 v12, v16

    goto :goto_2

    .line 91
    :cond_3
    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    :goto_2
    add-int/lit8 v9, v5, -0x1

    if-ne v7, v9, :cond_4

    .line 94
    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 95
    iget v9, v0, Lus/zoom/androidlib/widget/ZMFlowLayout;->lineMargin:I

    add-int/2addr v9, v6

    add-int/2addr v11, v9

    move v10, v6

    move v9, v12

    goto :goto_3

    :cond_4
    move v10, v6

    move v9, v12

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    const/high16 v5, 0x40000000    # 2.0f

    if-ne v2, v5, :cond_6

    goto :goto_4

    .line 100
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lus/zoom/androidlib/widget/ZMFlowLayout;->getPaddingLeft()I

    move-result v1

    add-int/2addr v8, v1

    invoke-virtual/range {p0 .. p0}, Lus/zoom/androidlib/widget/ZMFlowLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v8

    :goto_4
    if-ne v4, v5, :cond_7

    goto :goto_5

    .line 101
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lus/zoom/androidlib/widget/ZMFlowLayout;->getPaddingTop()I

    move-result v2

    add-int/2addr v11, v2

    invoke-virtual/range {p0 .. p0}, Lus/zoom/androidlib/widget/ZMFlowLayout;->getPaddingBottom()I

    move-result v2

    add-int v3, v11, v2

    .line 98
    :goto_5
    invoke-virtual {v0, v1, v3}, Lus/zoom/androidlib/widget/ZMFlowLayout;->setMeasuredDimension(II)V

    return-void
.end method
