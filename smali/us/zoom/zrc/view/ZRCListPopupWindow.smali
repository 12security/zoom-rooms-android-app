.class public Lus/zoom/zrc/view/ZRCListPopupWindow;
.super Ljava/lang/Object;
.source "ZRCListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/ZRCListPopupWindow$PopupScrollListener;,
        Lus/zoom/zrc/view/ZRCListPopupWindow$ResizePopupRunnable;,
        Lus/zoom/zrc/view/ZRCListPopupWindow$PopupDataSetObserver;
    }
.end annotation


# static fields
.field public static final MATCH_PARENT:I = -0x1

.field private static final POSITION_PROMPT_ABOVE:I = 0x0

.field private static final POSITION_PROMPT_BELOW:I = 0x1

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private abovePromptView:Landroid/view/View;

.field private belowPromptView:Landroid/view/View;

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field private mDropDownList:Landroid/widget/ListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownVerticalOffsetSet:Z

.field private mDropDownWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mObserver:Landroid/database/DataSetObserver;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field private final mResizePopupRunnable:Lus/zoom/zrc/view/ZRCListPopupWindow$ResizePopupRunnable;

.field private final mScrollListener:Lus/zoom/zrc/view/ZRCListPopupWindow$PopupScrollListener;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 38
    iput v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownHeight:I

    .line 39
    iput v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownWidth:I

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mPromptPosition:I

    .line 55
    new-instance v1, Lus/zoom/zrc/view/ZRCListPopupWindow$ResizePopupRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lus/zoom/zrc/view/ZRCListPopupWindow$ResizePopupRunnable;-><init>(Lus/zoom/zrc/view/ZRCListPopupWindow;Lus/zoom/zrc/view/ZRCListPopupWindow$1;)V

    iput-object v1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mResizePopupRunnable:Lus/zoom/zrc/view/ZRCListPopupWindow$ResizePopupRunnable;

    .line 57
    new-instance v1, Lus/zoom/zrc/view/ZRCListPopupWindow$PopupScrollListener;

    invoke-direct {v1, p0, v2}, Lus/zoom/zrc/view/ZRCListPopupWindow$PopupScrollListener;-><init>(Lus/zoom/zrc/view/ZRCListPopupWindow;Lus/zoom/zrc/view/ZRCListPopupWindow$1;)V

    iput-object v1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mScrollListener:Lus/zoom/zrc/view/ZRCListPopupWindow$PopupScrollListener;

    .line 62
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 78
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mContext:Landroid/content/Context;

    .line 79
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 81
    sget-object v1, Lus/zoom/zrcbox/R$styleable;->ZRCListPopupWindow:[I

    invoke-virtual {p1, v2, v1, v0, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 83
    sget v3, Lus/zoom/zrcbox/R$styleable;->ZRCListPopupWindow_menuHorizontalOffset:I

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownHorizontalOffset:I

    .line 85
    sget v3, Lus/zoom/zrcbox/R$styleable;->ZRCListPopupWindow_menuVerticalOffset:I

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownVerticalOffset:I

    .line 87
    iget v3, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownVerticalOffset:I

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 88
    iput-boolean v4, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 90
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, p1, v2, v0, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 93
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method

.method static synthetic access$300(Lus/zoom/zrc/view/ZRCListPopupWindow;)Landroid/view/View;
    .locals 0

    .line 32
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lus/zoom/zrc/view/ZRCListPopupWindow;)Landroid/widget/ListView;
    .locals 0

    .line 32
    iget-object p0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownList:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$500(Lus/zoom/zrc/view/ZRCListPopupWindow;)Landroid/widget/PopupWindow;
    .locals 0

    .line 32
    iget-object p0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$600(Lus/zoom/zrc/view/ZRCListPopupWindow;)Z
    .locals 0

    .line 32
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCListPopupWindow;->isInputMethodNotNeeded()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lus/zoom/zrc/view/ZRCListPopupWindow;)Lus/zoom/zrc/view/ZRCListPopupWindow$ResizePopupRunnable;
    .locals 0

    .line 32
    iget-object p0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mResizePopupRunnable:Lus/zoom/zrc/view/ZRCListPopupWindow$ResizePopupRunnable;

    return-object p0
.end method

.method static synthetic access$800(Lus/zoom/zrc/view/ZRCListPopupWindow;)Landroid/os/Handler;
    .locals 0

    .line 32
    iget-object p0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private buildDropDown()I
    .locals 10

    .line 348
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownList:Landroid/widget/ListView;

    const/high16 v1, -0x80000000

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_3

    .line 349
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mContext:Landroid/content/Context;

    .line 351
    new-instance v4, Lus/zoom/zrc/view/ZRCListPopupWindow$1;

    invoke-direct {v4, p0}, Lus/zoom/zrc/view/ZRCListPopupWindow$1;-><init>(Lus/zoom/zrc/view/ZRCListPopupWindow;)V

    iput-object v4, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    .line 361
    invoke-direct {p0, v0}, Lus/zoom/zrc/view/ZRCListPopupWindow;->createDropDownListView(Landroid/content/Context;)Landroid/widget/ListView;

    move-result-object v4

    iput-object v4, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownList:Landroid/widget/ListView;

    .line 362
    iget-object v4, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 363
    iget-object v5, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownList:Landroid/widget/ListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 365
    :cond_0
    iget-object v4, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownList:Landroid/widget/ListView;

    iget-object v5, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 366
    iget-object v4, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownList:Landroid/widget/ListView;

    iget-object v5, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 367
    iget-object v4, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownList:Landroid/widget/ListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 368
    iget-object v4, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownList:Landroid/widget/ListView;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 369
    iget-object v4, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownList:Landroid/widget/ListView;

    iget-object v6, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mScrollListener:Lus/zoom/zrc/view/ZRCListPopupWindow$PopupScrollListener;

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 370
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    iget-object v6, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lus/zoom/zrcbox/R$color;->zrc_gray4:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v4, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 371
    iget-object v6, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownList:Landroid/widget/ListView;

    invoke-virtual {v6, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 372
    iget-object v4, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownList:Landroid/widget/ListView;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 374
    iget-object v4, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownList:Landroid/widget/ListView;

    .line 376
    iget-object v6, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v6, :cond_2

    .line 380
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 381
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 383
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v2, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 387
    new-instance v8, Lus/zoom/zrc/base/widget/RoundedLinearLayout;

    invoke-direct {v8, v0}, Lus/zoom/zrc/base/widget/RoundedLinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x41000000    # 8.0f

    .line 388
    invoke-virtual {v8, v0}, Lus/zoom/zrc/base/widget/RoundedLinearLayout;->setCornerRadius(F)V

    .line 389
    sget v0, Lus/zoom/zrcbox/R$drawable;->zrc_round_dialog_bg:I

    invoke-virtual {v8, v0}, Lus/zoom/zrc/base/widget/RoundedLinearLayout;->setBackgroundResource(I)V

    .line 390
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v0, v2, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 393
    invoke-virtual {v8, v4, v0}, Lus/zoom/zrc/base/widget/RoundedLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    iget v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mPromptPosition:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 397
    :pswitch_0
    invoke-virtual {v7, v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 402
    :pswitch_1
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 403
    invoke-virtual {v7, v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    :goto_0
    iget v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownWidth:I

    if-ltz v0, :cond_1

    const/high16 v4, -0x80000000

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 422
    :goto_1
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 424
    invoke-virtual {v6, v0, v3}, Landroid/view/View;->measure(II)V

    .line 426
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 427
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v4

    move-object v4, v7

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 433
    :goto_2
    iget-object v5, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v4}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_3

    .line 435
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 438
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 439
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v5

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    .line 445
    :goto_3
    iget-object v4, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 447
    iget-object v5, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 448
    iget-object v4, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    .line 450
    iget-boolean v5, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v5, :cond_6

    .line 451
    iget-object v5, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    iput v5, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownVerticalOffset:I

    goto :goto_4

    .line 454
    :cond_5
    iget-object v4, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v4, 0x0

    .line 460
    :cond_6
    :goto_4
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_7

    goto :goto_5

    .line 463
    :cond_7
    iget-object v3, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v5

    iget v6, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownVerticalOffset:I

    invoke-virtual {v3, v5, v6}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v3

    .line 466
    :goto_5
    iget v5, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownHeight:I

    if-ne v5, v2, :cond_8

    add-int/2addr v3, v4

    return v3

    .line 471
    :cond_8
    iget v2, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownWidth:I

    const/high16 v3, 0x40000000    # 2.0f

    packed-switch v2, :pswitch_data_1

    .line 485
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_6

    .line 479
    :pswitch_2
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mContext:Landroid/content/Context;

    .line 480
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v5

    sub-int/2addr v1, v2

    .line 479
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_6

    .line 473
    :pswitch_3
    iget-object v2, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mContext:Landroid/content/Context;

    .line 474
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v5

    sub-int/2addr v2, v3

    .line 473
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 489
    :goto_6
    invoke-direct {p0, v1}, Lus/zoom/zrc/view/ZRCListPopupWindow;->measureWrapContentHeight(I)I

    move-result v1

    if-lez v1, :cond_9

    .line 491
    iget-object v2, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownList:Landroid/widget/ListView;

    .line 492
    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v4, v2

    add-int/2addr v0, v4

    :cond_9
    add-int/2addr v1, v0

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private createDropDownListView(Landroid/content/Context;)Landroid/widget/ListView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 341
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getAnchorView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 135
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    return-object v0
.end method

.method private getTextView()Landroid/widget/TextView;
    .locals 3

    .line 570
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mContext:Landroid/content/Context;

    sget v1, Lus/zoom/zrcbox/R$layout;->camera_long_click_popup_item:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020014

    .line 571
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private isInputMethodNotNeeded()Z
    .locals 2

    .line 331
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private measureWrapContentHeight(I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 557
    :goto_0
    iget-object v3, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 558
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCListPopupWindow;->getTextView()Landroid/widget/TextView;

    move-result-object v3

    .line 559
    invoke-virtual {v3, p1, v0}, Landroid/widget/TextView;->measure(II)V

    .line 560
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    if-lez v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private removePromptView()V
    .locals 2

    .line 317
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 319
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 320
    check-cast v0, Landroid/view/ViewGroup;

    .line 321
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 305
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 306
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCListPopupWindow;->removePromptView()V

    .line 307
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 308
    iput-object v1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownList:Landroid/widget/ListView;

    .line 309
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mResizePopupRunnable:Lus/zoom/zrc/view/ZRCListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 126
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 161
    iget v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownHeight:I

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 336
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownList:Landroid/widget/ListView;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 143
    iget v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownWidth:I

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 327
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public measureWrapContentWidth(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 541
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 542
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 543
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 544
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCListPopupWindow;->getTextView()Landroid/widget/TextView;

    move-result-object v4

    .line 545
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    invoke-virtual {v4, v1, v2}, Landroid/widget/TextView;->measure(II)V

    .line 547
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    if-le v3, v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_1
    return v0
.end method

.method public postShow()V
    .locals 2

    .line 196
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAbovePromptView(Landroid/view/View;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->abovePromptView:Landroid/view/View;

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1    # Landroid/widget/ListAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 97
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lus/zoom/zrc/view/ZRCListPopupWindow$PopupDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lus/zoom/zrc/view/ZRCListPopupWindow$PopupDataSetObserver;-><init>(Lus/zoom/zrc/view/ZRCListPopupWindow;Lus/zoom/zrc/view/ZRCListPopupWindow$1;)V

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    goto :goto_0

    .line 99
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 100
    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 102
    :cond_1
    :goto_0
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 103
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 107
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownList:Landroid/widget/ListView;

    if-eqz p1, :cond_3

    .line 108
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_3
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 139
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 130
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBelowPromptView(Landroid/view/View;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->belowPromptView:Landroid/view/View;

    return-void
.end method

.method public setContentWidth(I)V
    .locals 2

    .line 151
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 154
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownWidth:I

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ZRCListPopupWindow;->setWidth(I)V

    :goto_0
    return-void
.end method

.method public setHeight(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 v0, -0x2

    if-eq v0, p1, :cond_0

    const/4 v0, -0x1

    if-eq v0, p1, :cond_0

    return-void

    .line 169
    :cond_0
    iput p1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownHeight:I

    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setModal(Z)V
    .locals 1

    .line 117
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1
    .param p1    # Landroid/widget/PopupWindow$OnDismissListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 313
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1    # Landroid/widget/AdapterView$OnItemClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 181
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setPromptPosition(I)V
    .locals 0

    .line 113
    iput p1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mPromptPosition:I

    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 185
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCListPopupWindow;->removePromptView()V

    .line 189
    :cond_0
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 191
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCListPopupWindow;->show()V

    :cond_1
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 147
    iput p1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownWidth:I

    return-void
.end method

.method public show()V
    .locals 12

    .line 200
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCListPopupWindow;->buildDropDown()I

    move-result v0

    .line 201
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 204
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v1

    .line 206
    iget-object v2, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    const/4 v3, -0x2

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v2, :cond_b

    .line 208
    iget v2, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownWidth:I

    if-ne v2, v5, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    if-ne v2, v3, :cond_2

    .line 213
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 219
    :cond_2
    :goto_0
    iget v6, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownHeight:I

    if-ne v6, v5, :cond_7

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    :goto_1
    if-eqz v1, :cond_5

    .line 224
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v3, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownWidth:I

    if-ne v3, v5, :cond_4

    const/4 v3, -0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 226
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_3

    .line 228
    :cond_5
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v3, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownWidth:I

    if-ne v3, v5, :cond_6

    const/4 v4, -0x1

    :cond_6
    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 230
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_3

    :cond_7
    if-ne v6, v3, :cond_8

    goto :goto_3

    :cond_8
    move v0, v6

    .line 238
    :goto_3
    iget-object v6, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v7

    iget v8, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownHorizontalOffset:I

    iget v9, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownVerticalOffset:I

    if-gez v2, :cond_9

    const/4 v10, -0x1

    goto :goto_4

    :cond_9
    move v10, v2

    :goto_4
    if-gez v0, :cond_a

    const/4 v11, -0x1

    goto :goto_5

    :cond_a
    move v11, v0

    :goto_5
    invoke-virtual/range {v6 .. v11}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 241
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_15

    .line 242
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->restoreDefaultFocus()Z

    goto/16 :goto_9

    .line 246
    :cond_b
    iget v1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownWidth:I

    if-ne v1, v5, :cond_c

    const/4 v1, -0x1

    goto :goto_6

    :cond_c
    if-ne v1, v3, :cond_d

    .line 250
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 257
    :cond_d
    :goto_6
    iget v2, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownHeight:I

    if-ne v2, v5, :cond_e

    const/4 v2, -0x1

    goto :goto_7

    :cond_e
    if-ne v2, v3, :cond_f

    move v2, v0

    .line 266
    :cond_f
    :goto_7
    iget-object v3, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 267
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 269
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 270
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    const/4 v2, 0x2

    .line 273
    new-array v2, v2, [I

    .line 274
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v3, 0x1

    .line 275
    aget v2, v2, v3

    .line 276
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCListPopupWindow;->removePromptView()V

    .line 277
    iget-object v6, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 278
    iput-object v7, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownList:Landroid/widget/ListView;

    .line 279
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v2, v0

    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v2, v0

    const/16 v0, 0x8

    if-ge v1, v2, :cond_12

    .line 280
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->abovePromptView:Landroid/view/View;

    if-eqz v1, :cond_10

    .line 281
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 283
    :cond_10
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->belowPromptView:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 284
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 286
    :cond_11
    invoke-virtual {p0, v3}, Lus/zoom/zrc/view/ZRCListPopupWindow;->setPromptPosition(I)V

    .line 287
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCListPopupWindow;->buildDropDown()I

    .line 288
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownHorizontalOffset:I

    iget v3, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownVerticalOffset:I

    invoke-static {v0, v1, v2, v3}, Lus/zoom/zrc/login/util/ZRCPopupWindowUtils;->showAtTop(Landroid/widget/PopupWindow;Landroid/view/View;II)V

    goto :goto_8

    .line 290
    :cond_12
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->abovePromptView:Landroid/view/View;

    if-eqz v1, :cond_13

    .line 291
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 293
    :cond_13
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->belowPromptView:Landroid/view/View;

    if-eqz v1, :cond_14

    .line 294
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 296
    :cond_14
    invoke-virtual {p0, v4}, Lus/zoom/zrc/view/ZRCListPopupWindow;->setPromptPosition(I)V

    .line 297
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCListPopupWindow;->buildDropDown()I

    .line 298
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownHorizontalOffset:I

    iget v3, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownVerticalOffset:I

    invoke-static {v0, v1, v2, v3}, Lus/zoom/zrc/login/util/ZRCPopupWindowUtils;->showAtBottom(Landroid/widget/PopupWindow;Landroid/view/View;II)V

    .line 300
    :goto_8
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCListPopupWindow;->mDropDownList:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setSelection(I)V

    :cond_15
    :goto_9
    return-void
.end method
