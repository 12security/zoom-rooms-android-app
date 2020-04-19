.class public Lus/zoom/zrc/login/widget/ZRCRecyclerListView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "ZRCRecyclerListView.java"

# interfaces
.implements Lus/zoom/zrc/login/widget/ZRCListSearchBox$LoginSearchListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/login/widget/ZRCRecyclerListView$ShadowOnItemTouchListener;,
        Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;,
        Lus/zoom/zrc/login/widget/ZRCRecyclerListView$IRecyclerItemSelectedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ZRCRecyclerListView"


# instance fields
.field private mAdapter:Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;

.field private mCornerClipper:Lus/zoom/zrc/base/widget/RoundedCornerClipper;

.field private mDisableCornerBottom:Z

.field private mDisableHideSearchBox:Z

.field private mExpectedHeight:I

.field private mInWindowFrame:Landroid/graphics/Rect;

.field private mOriginHeight:I

.field private mSearchBox:Lus/zoom/zrc/login/widget/ZRCListSearchBox;

.field private mSearchPos:I

.field private mShadowDecoration:Lus/zoom/zrc/login/widget/SearchShadowDecoration;

.field private mVisibleWindowFrame:Landroid/graphics/Rect;

.field private shadowOnItemTouchListener:Lus/zoom/zrc/login/widget/ZRCRecyclerListView$ShadowOnItemTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 55
    iput p2, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mSearchPos:I

    .line 57
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mInWindowFrame:Landroid/graphics/Rect;

    .line 58
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mVisibleWindowFrame:Landroid/graphics/Rect;

    .line 75
    new-instance p2, Lus/zoom/zrc/base/widget/RoundedCornerClipper;

    invoke-direct {p2, p0}, Lus/zoom/zrc/base/widget/RoundedCornerClipper;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mCornerClipper:Lus/zoom/zrc/base/widget/RoundedCornerClipper;

    .line 76
    new-instance p2, Lus/zoom/zrc/login/widget/SearchShadowDecoration;

    invoke-direct {p2, p0}, Lus/zoom/zrc/login/widget/SearchShadowDecoration;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object p2, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mShadowDecoration:Lus/zoom/zrc/login/widget/SearchShadowDecoration;

    .line 77
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-direct {p2, p1, p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p0, p2}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 78
    iget-object p1, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mShadowDecoration:Lus/zoom/zrc/login/widget/SearchShadowDecoration;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method static synthetic access$500(Lus/zoom/zrc/login/widget/ZRCRecyclerListView;)Lus/zoom/zrc/login/widget/ZRCListSearchBox;
    .locals 0

    .line 42
    iget-object p0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mSearchBox:Lus/zoom/zrc/login/widget/ZRCListSearchBox;

    return-object p0
.end method

.method private checkNeedShowSearchBox()V
    .locals 4

    .line 209
    iget-boolean v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mDisableHideSearchBox:Z

    if-eqz v0, :cond_0

    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mSearchBox:Lus/zoom/zrc/login/widget/ZRCListSearchBox;

    if-nez v0, :cond_1

    return-void

    .line 217
    :cond_1
    iget-object v1, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mAdapter:Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 218
    sget-object v0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->TAG:Ljava/lang/String;

    const-string v1, "WEIRD CASE: when check need to show search box, adapter is null!!!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 222
    :cond_2
    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 226
    :cond_3
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 227
    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v1, :cond_4

    return-void

    .line 232
    :cond_4
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 233
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    const/4 v3, 0x1

    add-int/2addr v1, v3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    sub-int/2addr v1, v0

    .line 234
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mAdapter:Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->getItemCount()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 235
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mSearchBox:Lus/zoom/zrc/login/widget/ZRCListSearchBox;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    .line 236
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mSearchBox:Lus/zoom/zrc/login/widget/ZRCListSearchBox;

    invoke-virtual {v0, v2}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->setVisibility(I)V

    const/4 v2, 0x1

    .line 240
    :cond_5
    iget-boolean v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mDisableCornerBottom:Z

    if-eqz v0, :cond_8

    .line 241
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mCornerClipper:Lus/zoom/zrc/base/widget/RoundedCornerClipper;

    if-eqz v0, :cond_6

    .line 242
    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/RoundedCornerClipper;->disableClipBottomCorner()V

    .line 244
    :cond_6
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mShadowDecoration:Lus/zoom/zrc/login/widget/SearchShadowDecoration;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/SearchShadowDecoration;->disableClipBottomCorner()V

    goto :goto_0

    .line 247
    :cond_7
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mSearchBox:Lus/zoom/zrc/login/widget/ZRCListSearchBox;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_8

    .line 248
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mSearchBox:Lus/zoom/zrc/login/widget/ZRCListSearchBox;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->setVisibility(I)V

    const/4 v2, 0x1

    :cond_8
    :goto_0
    if-eqz v2, :cond_9

    .line 255
    new-instance v0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$1;-><init>(Lus/zoom/zrc/login/widget/ZRCRecyclerListView;)V

    const-wide/16 v1, 0x28

    invoke-virtual {p0, v0, v1, v2}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    return-void
.end method


# virtual methods
.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 500
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mSearchBox:Lus/zoom/zrc/login/widget/ZRCListSearchBox;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->isSearchFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->isShadowEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "addChildrenForAccessibility return"

    const/4 v0, 0x0

    .line 501
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 504
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    return-void
.end method

.method public addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V
    .locals 0

    .line 145
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    return-void
.end method

.method public cancelSearch()V
    .locals 1

    .line 99
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mSearchBox:Lus/zoom/zrc/login/widget/ZRCListSearchBox;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->cancelSearch()V

    return-void
.end method

.method public disableShadowCorner()V
    .locals 1

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mCornerClipper:Lus/zoom/zrc/base/widget/RoundedCornerClipper;

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 199
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mCornerClipper:Lus/zoom/zrc/base/widget/RoundedCornerClipper;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/widget/RoundedCornerClipper;->clipCorner(Landroid/graphics/Canvas;)V

    .line 202
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 203
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mCornerClipper:Lus/zoom/zrc/base/widget/RoundedCornerClipper;

    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/widget/RoundedCornerClipper;->restore(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public isSearchFailed()Z
    .locals 2

    .line 95
    iget v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mSearchPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSearchMode()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mSearchBox:Lus/zoom/zrc/login/widget/ZRCListSearchBox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShadowEnable()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 127
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->getItemDecorationCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 128
    invoke-virtual {p0, v1}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object v2

    instance-of v2, v2, Lus/zoom/zrc/login/widget/SearchShadowDecoration;

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 153
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    .line 154
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 155
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->isShadowEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$ShadowOnItemTouchListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$ShadowOnItemTouchListener;-><init>(Lus/zoom/zrc/login/widget/ZRCRecyclerListView;Lus/zoom/zrc/login/widget/ZRCRecyclerListView$1;)V

    iput-object v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->shadowOnItemTouchListener:Lus/zoom/zrc/login/widget/ZRCRecyclerListView$ShadowOnItemTouchListener;

    .line 157
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->shadowOnItemTouchListener:Lus/zoom/zrc/login/widget/ZRCRecyclerListView$ShadowOnItemTouchListener;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 163
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    .line 164
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 165
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 170
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mSearchBox:Lus/zoom/zrc/login/widget/ZRCListSearchBox;

    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {v0, p0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->removeListener(Lus/zoom/zrc/login/widget/ZRCListSearchBox$LoginSearchListener;)V

    .line 173
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->shadowOnItemTouchListener:Lus/zoom/zrc/login/widget/ZRCRecyclerListView$ShadowOnItemTouchListener;

    if-eqz v0, :cond_2

    .line 174
    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    :cond_2
    return-void
.end method

.method public onGlobalLayout()V
    .locals 2

    .line 319
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mVisibleWindowFrame:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 324
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mInWindowFrame:Landroid/graphics/Rect;

    invoke-static {p0, v0}, Lus/zoom/zrc/login/util/LoginUIUtils;->getFrameInWindow(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 325
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mVisibleWindowFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 326
    iget-object v1, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mInWindowFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-le v0, v1, :cond_1

    sub-int/2addr v0, v1

    .line 328
    iget v1, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mOriginHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 329
    iget v1, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mExpectedHeight:I

    if-eq v1, v0, :cond_1

    .line 330
    iput v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mExpectedHeight:I

    .line 331
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->requestLayout()V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 180
    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/RecyclerView;->onLayout(ZIIII)V

    .line 181
    invoke-direct {p0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->checkNeedShowSearchBox()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 338
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget v1, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mExpectedHeight:I

    if-lez v1, :cond_0

    const/high16 p2, 0x40000000    # 2.0f

    .line 340
    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 343
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onMeasure(II)V

    if-nez v0, :cond_1

    .line 346
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mOriginHeight:I

    :cond_1
    return-void
.end method

.method public onSearchCancelled()V
    .locals 2

    const/4 v0, -0x1

    .line 300
    iput v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mSearchPos:I

    .line 301
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mAdapter:Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->search(Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mShadowDecoration:Lus/zoom/zrc/login/widget/SearchShadowDecoration;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/zoom/zrc/login/widget/SearchShadowDecoration;->showShadow(Z)V

    .line 303
    iput v1, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mExpectedHeight:I

    .line 304
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mAdapter:Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->getSelectedPosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 306
    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->scrollToPosition(I)V

    .line 308
    :cond_0
    iget-boolean v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mDisableCornerBottom:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mCornerClipper:Lus/zoom/zrc/base/widget/RoundedCornerClipper;

    if-eqz v0, :cond_1

    .line 309
    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/RoundedCornerClipper;->enableClipBottomCorner()V

    .line 311
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->requestLayout()V

    return-void
.end method

.method public onSearchInput(Ljava/lang/String;)V
    .locals 4

    .line 277
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v0, :cond_0

    return-void

    .line 279
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mAdapter:Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;

    if-nez v1, :cond_1

    return-void

    .line 281
    :cond_1
    invoke-virtual {v1, p1}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->search(Ljava/lang/String;)I

    move-result p1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le p1, v1, :cond_2

    .line 283
    iget-object v1, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mShadowDecoration:Lus/zoom/zrc/login/widget/SearchShadowDecoration;

    invoke-virtual {v1, v2}, Lus/zoom/zrc/login/widget/SearchShadowDecoration;->showShadow(Z)V

    goto :goto_0

    .line 285
    :cond_2
    iget-object v1, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mShadowDecoration:Lus/zoom/zrc/login/widget/SearchShadowDecoration;

    invoke-virtual {v1, v3}, Lus/zoom/zrc/login/widget/SearchShadowDecoration;->showShadow(Z)V

    .line 288
    :goto_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v1

    if-gt v1, p1, :cond_3

    .line 289
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    if-lt v0, p1, :cond_3

    const/4 v2, 0x1

    :cond_3
    if-nez v2, :cond_4

    .line 292
    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->scrollToPosition(I)V

    .line 295
    :cond_4
    iput p1, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mSearchPos:I

    return-void
.end method

.method public onSearchStarted()V
    .locals 2

    const/4 v0, -0x1

    .line 268
    iput v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mSearchPos:I

    .line 269
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mShadowDecoration:Lus/zoom/zrc/login/widget/SearchShadowDecoration;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/login/widget/SearchShadowDecoration;->showShadow(Z)V

    .line 270
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mCornerClipper:Lus/zoom/zrc/base/widget/RoundedCornerClipper;

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/RoundedCornerClipper;->disableClipBottomCorner()V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 186
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->onSizeChanged(IIII)V

    .line 187
    iget-object p3, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mCornerClipper:Lus/zoom/zrc/base/widget/RoundedCornerClipper;

    if-eqz p3, :cond_0

    .line 188
    invoke-virtual {p3, p1, p2}, Lus/zoom/zrc/base/widget/RoundedCornerClipper;->onSizeChanged(II)V

    .line 189
    iget-object p3, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mShadowDecoration:Lus/zoom/zrc/login/widget/SearchShadowDecoration;

    iget-object p4, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mCornerClipper:Lus/zoom/zrc/base/widget/RoundedCornerClipper;

    invoke-virtual {p4}, Lus/zoom/zrc/base/widget/RoundedCornerClipper;->getCornerRadius()F

    move-result p4

    invoke-virtual {p3, p1, p2, p4}, Lus/zoom/zrc/login/widget/SearchShadowDecoration;->setShadowSize(IIF)V

    goto :goto_0

    .line 191
    :cond_0
    iget-object p3, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mShadowDecoration:Lus/zoom/zrc/login/widget/SearchShadowDecoration;

    const/4 p4, 0x0

    invoke-virtual {p3, p1, p2, p4}, Lus/zoom/zrc/login/widget/SearchShadowDecoration;->setShadowSize(IIF)V

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 103
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mSearchBox:Lus/zoom/zrc/login/widget/ZRCListSearchBox;

    if-eqz v0, :cond_0

    .line 104
    iget-object v1, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mShadowDecoration:Lus/zoom/zrc/login/widget/SearchShadowDecoration;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->isSearching()Z

    move-result v0

    invoke-virtual {v1, v0}, Lus/zoom/zrc/login/widget/SearchShadowDecoration;->showShadow(Z)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 109
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mSearchBox:Lus/zoom/zrc/login/widget/ZRCListSearchBox;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->cancelSearch()V

    :cond_0
    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 137
    instance-of v0, p1, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;

    if-eqz v0, :cond_0

    .line 138
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 139
    check-cast p1, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;

    iput-object p1, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mAdapter:Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;

    :cond_0
    return-void
.end method

.method public setDisableCornerBottom()V
    .locals 1

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mDisableCornerBottom:Z

    return-void
.end method

.method public setDisableHideSearchBox()V
    .locals 1

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mDisableHideSearchBox:Z

    return-void
.end method

.method public setDisableShadow()V
    .locals 1

    .line 123
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mShadowDecoration:Lus/zoom/zrc/login/widget/SearchShadowDecoration;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public setSearchBox(Lus/zoom/zrc/login/widget/ZRCListSearchBox;)V
    .locals 0

    .line 82
    invoke-virtual {p1, p0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->addListener(Lus/zoom/zrc/login/widget/ZRCListSearchBox$LoginSearchListener;)V

    .line 83
    iput-object p1, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->mSearchBox:Lus/zoom/zrc/login/widget/ZRCListSearchBox;

    return-void
.end method
