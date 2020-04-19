.class public Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;
.super Landroid/widget/LinearLayout;
.source "ZRCAutoSizeLinearLayout.java"


# instance fields
.field private mListView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lus/zoom/zrc/login/widget/ZRCRecyclerListView;",
            ">;"
        }
    .end annotation
.end field

.field private mWidthSizes:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    sget-object p3, Lus/zoom/zrcbox/R$styleable;->ZRCAutoSizeLinearLayout:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 43
    sget p2, Lus/zoom/zrcbox/R$styleable;->ZRCAutoSizeLinearLayout_autoSizeWidthSizes:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-lez p2, :cond_1

    .line 46
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 47
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;->mWidthSizes:[I

    const/4 v0, 0x0

    .line 48
    :goto_0
    iget-object v1, p0, Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;->mWidthSizes:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 49
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public compareListWidth()V
    .locals 8

    .line 63
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;->mListView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    if-nez v0, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;

    if-nez v1, :cond_1

    return-void

    .line 73
    :cond_1
    invoke-virtual {v1}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->getKeysForWidth()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 74
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_3

    .line 78
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 80
    new-instance v4, Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout$1;

    invoke-direct {v4, p0}, Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout$1;-><init>(Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v4, 0x0

    .line 89
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 90
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    return-void

    .line 94
    :cond_3
    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 96
    invoke-virtual {v1, v0, v4}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 97
    invoke-virtual {v1, v0, v2}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 98
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 99
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 98
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 100
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 102
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 103
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lus/zoom/androidlib/util/UIUtil;->getDisplayWidth(Landroid/content/Context;)I

    move-result v2

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v2, v3

    .line 106
    iget-object v3, p0, Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;->mWidthSizes:[I

    array-length v5, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_5

    aget v7, v3, v6

    if-le v7, v0, :cond_4

    if-gt v7, v2, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    const/4 v7, 0x0

    :goto_1
    if-nez v7, :cond_6

    .line 113
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;->mWidthSizes:[I

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget v0, v0, v3

    goto :goto_2

    :cond_6
    move v0, v7

    :goto_2
    if-le v0, v2, :cond_7

    .line 118
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v0, v3}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p0, v0, v4, v3, v4}, Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;->setPadding(IIII)V

    move v0, v2

    .line 121
    :cond_7
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-eq v0, v2, :cond_8

    .line 122
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 123
    invoke-virtual {p0, v1}, Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    return-void

    :cond_9
    :goto_3
    return-void
.end method

.method public setRecyclerListView(Lus/zoom/zrc/login/widget/ZRCRecyclerListView;)V
    .locals 1

    .line 58
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;->mListView:Ljava/lang/ref/WeakReference;

    return-void
.end method
