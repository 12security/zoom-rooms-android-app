.class public Lus/zoom/androidlib/widget/ZMVerticalFlowLayout;
.super Landroid/widget/LinearLayout;
.source "ZMVerticalFlowLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ZMVerticalFlowLayout"


# instance fields
.field private mColumnWidths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGravityHolder:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMVerticalFlowLayout;->mColumnWidths:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMVerticalFlowLayout;->mColumnWidths:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMVerticalFlowLayout;->mColumnWidths:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMVerticalFlowLayout;->mColumnWidths:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getGravity()I
    .locals 1

    .line 61
    iget v0, p0, Lus/zoom/androidlib/widget/ZMVerticalFlowLayout;->mGravityHolder:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 20

    move-object/from16 v0, p0

    .line 142
    invoke-virtual/range {p0 .. p0}, Lus/zoom/androidlib/widget/ZMVerticalFlowLayout;->getGravity()I

    move-result v1

    .line 144
    invoke-virtual/range {p0 .. p0}, Lus/zoom/androidlib/widget/ZMVerticalFlowLayout;->getPaddingLeft()I

    move-result v2

    .line 145
    invoke-virtual/range {p0 .. p0}, Lus/zoom/androidlib/widget/ZMVerticalFlowLayout;->getPaddingTop()I

    move-result v3

    .line 147
    invoke-virtual/range {p0 .. p0}, Lus/zoom/androidlib/widget/ZMVerticalFlowLayout;->getPaddingBottom()I

    move-result v4

    sub-int v5, p5, p3

    sub-int/2addr v5, v3

    sub-int/2addr v5, v4

    .line 158
    invoke-virtual/range {p0 .. p0}, Lus/zoom/androidlib/widget/ZMVerticalFlowLayout;->getChildCount()I

    move-result v4

    move v9, v2

    move v12, v3

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v2, v4, :cond_7

    .line 162
    invoke-virtual {v0, v2}, Lus/zoom/androidlib/widget/ZMVerticalFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 163
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_0

    move/from16 v18, v1

    move/from16 p2, v3

    move/from16 p3, v4

    move/from16 p4, v5

    goto/16 :goto_5

    .line 166
    :cond_0
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v14, :cond_1

    .line 172
    iget v15, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 173
    iget v6, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move/from16 p2, v3

    .line 174
    iget v3, v14, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 175
    iget v14, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_1
    move/from16 p2, v3

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 178
    :goto_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 179
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    add-int v18, v15, v16

    move/from16 p3, v4

    add-int v4, v18, v3

    add-int v18, v6, v17

    add-int v14, v18, v14

    move/from16 p4, v12

    sub-int v12, v5, v7

    if-ge v12, v14, :cond_2

    if-lez v8, :cond_2

    add-int/2addr v9, v10

    add-int/lit8 v11, v11, 0x1

    move/from16 v7, p2

    move/from16 p4, v5

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    goto :goto_2

    :cond_2
    move v12, v7

    move/from16 v7, p4

    move/from16 p4, v5

    :goto_2
    const/4 v5, 0x1

    add-int/2addr v8, v5

    .line 199
    iget-object v5, v0, Lus/zoom/androidlib/widget/ZMVerticalFlowLayout;->mColumnWidths:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v11, :cond_5

    invoke-static {}, Lus/zoom/androidlib/util/OsUtil;->isAtLeastJB_MR1()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 200
    iget-object v5, v0, Lus/zoom/androidlib/widget/ZMVerticalFlowLayout;->mColumnWidths:Ljava/util/ArrayList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const v18, 0x800007

    and-int v0, v1, v18

    move/from16 v18, v1

    .line 203
    invoke-virtual/range {p0 .. p0}, Lus/zoom/androidlib/widget/ZMVerticalFlowLayout;->getLayoutDirection()I

    move-result v1

    .line 204
    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    add-int/2addr v15, v9

    goto :goto_3

    :cond_3
    add-int/2addr v5, v9

    sub-int/2addr v5, v3

    sub-int v15, v5, v16

    goto :goto_3

    :cond_4
    add-int v0, v9, v15

    sub-int/2addr v5, v15

    sub-int/2addr v5, v3

    sub-int v5, v5, v16

    .line 210
    div-int/lit8 v5, v5, 0x2

    add-int v15, v0, v5

    goto :goto_3

    :cond_5
    move/from16 v18, v1

    add-int/2addr v15, v9

    :goto_3
    add-int/2addr v6, v7

    add-int v0, v15, v16

    add-int v1, v6, v17

    .line 222
    invoke-virtual {v13, v15, v6, v0, v1}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v7, v14

    if-le v10, v4, :cond_6

    goto :goto_4

    :cond_6
    move v10, v4

    :goto_4
    add-int/2addr v12, v14

    move/from16 v19, v12

    move v12, v7

    move/from16 v7, v19

    :goto_5
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v1, v18

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method protected onMeasure(II)V
    .locals 21

    move-object/from16 v0, p0

    .line 66
    invoke-virtual/range {p0 .. p0}, Lus/zoom/androidlib/widget/ZMVerticalFlowLayout;->getPaddingLeft()I

    move-result v1

    .line 67
    invoke-virtual/range {p0 .. p0}, Lus/zoom/androidlib/widget/ZMVerticalFlowLayout;->getPaddingTop()I

    move-result v2

    .line 68
    invoke-virtual/range {p0 .. p0}, Lus/zoom/androidlib/widget/ZMVerticalFlowLayout;->getPaddingRight()I

    move-result v3

    .line 69
    invoke-virtual/range {p0 .. p0}, Lus/zoom/androidlib/widget/ZMVerticalFlowLayout;->getPaddingBottom()I

    move-result v4

    .line 71
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 72
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    sub-int/2addr v6, v1

    sub-int/2addr v6, v3

    .line 73
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 74
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    sub-int/2addr v8, v2

    sub-int/2addr v8, v4

    .line 82
    invoke-virtual/range {p0 .. p0}, Lus/zoom/androidlib/widget/ZMVerticalFlowLayout;->getChildCount()I

    move-result v9

    .line 84
    iget-object v10, v0, Lus/zoom/androidlib/widget/ZMVerticalFlowLayout;->mColumnWidths:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_0
    if-ge v11, v9, :cond_5

    .line 87
    invoke-virtual {v0, v11}, Lus/zoom/androidlib/widget/ZMVerticalFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move/from16 p2, v9

    .line 88
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v9

    move/from16 v17, v4

    const/16 v4, 0x8

    if-ne v9, v4, :cond_0

    move/from16 v18, v6

    goto :goto_4

    :cond_0
    const/high16 v4, -0x80000000

    .line 92
    :try_start_0
    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 93
    invoke-static {v8, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 92
    invoke-virtual {v0, v10, v9, v4}, Lus/zoom/androidlib/widget/ZMVerticalFlowLayout;->measureChild(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :catch_0
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v4, :cond_1

    .line 105
    iget v9, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move/from16 v18, v6

    .line 106
    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move/from16 v19, v6

    .line 107
    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 108
    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_1
    move/from16 v18, v6

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/16 v19, 0x0

    .line 111
    :goto_1
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    add-int v20, v20, v9

    add-int v6, v20, v6

    .line 112
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int v9, v9, v19

    add-int/2addr v9, v4

    sub-int v4, v8, v13

    if-ge v4, v9, :cond_3

    if-lez v16, :cond_3

    if-le v12, v13, :cond_2

    goto :goto_2

    :cond_2
    move v12, v13

    :goto_2
    add-int/2addr v14, v15

    .line 119
    iget-object v4, v0, Lus/zoom/androidlib/widget/ZMVerticalFlowLayout;->mColumnWidths:Ljava/util/ArrayList;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :cond_3
    add-int/lit8 v16, v16, 0x1

    if-le v15, v6, :cond_4

    goto :goto_3

    :cond_4
    move v15, v6

    :goto_3
    add-int/2addr v13, v9

    :goto_4
    add-int/lit8 v11, v11, 0x1

    move/from16 v9, p2

    move/from16 v4, v17

    move/from16 v6, v18

    goto :goto_0

    :cond_5
    move/from16 v17, v4

    move/from16 v18, v6

    if-le v12, v13, :cond_6

    move v13, v12

    :cond_6
    add-int v6, v14, v15

    .line 134
    iget-object v4, v0, Lus/zoom/androidlib/widget/ZMVerticalFlowLayout;->mColumnWidths:Ljava/util/ArrayList;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v5, v4, :cond_7

    goto :goto_5

    :cond_7
    move/from16 v18, v6

    :goto_5
    add-int v18, v18, v1

    add-int v1, v18, v3

    if-ne v7, v4, :cond_8

    move v13, v8

    :cond_8
    add-int/2addr v13, v2

    add-int v13, v13, v17

    .line 136
    invoke-virtual {v0, v1, v13}, Lus/zoom/androidlib/widget/ZMVerticalFlowLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 47
    iget v0, p0, Lus/zoom/androidlib/widget/ZMVerticalFlowLayout;->mGravityHolder:I

    if-eq v0, p1, :cond_2

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    or-int/lit8 p1, p1, 0x30

    .line 56
    :cond_1
    iput p1, p0, Lus/zoom/androidlib/widget/ZMVerticalFlowLayout;->mGravityHolder:I

    :cond_2
    return-void
.end method
