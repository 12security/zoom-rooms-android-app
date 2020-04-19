.class public Lus/zoom/androidlib/widget/QuickSearchListView;
.super Landroid/widget/FrameLayout;
.source "QuickSearchListView.java"

# interfaces
.implements Lus/zoom/androidlib/widget/QuickSearchSideBar$IListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;
    }
.end annotation


# static fields
.field public static final LAST_GROUP_CATEGORY_CHAR:C = '\u7fff'

.field public static final ROBOT_GROUP_CATEGORY_CHAR:C = '\"'

.field protected static final SIDEBAR_DISPLAY_THRESHOLD:I = 0x5

.field public static final STARRED_GROUP_CATEGORY_CHAR:C = '!'


# instance fields
.field private mAdapter:Lus/zoom/androidlib/widget/QuickSearchListAdapter;

.field private mCategoryHintsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoryTitlesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Lus/zoom/androidlib/widget/PullDownRefreshListView;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mQuickSearchSideBar:Lus/zoom/androidlib/widget/QuickSearchSideBar;

.field private mTxtQuickSearchChar:Landroid/widget/TextView;

.field private mbQuickSearchEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 86
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mbQuickSearchEnabled:Z

    .line 87
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/QuickSearchListView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 70
    iput-boolean p2, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mbQuickSearchEnabled:Z

    .line 82
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/QuickSearchListView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 70
    iput-boolean p2, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mbQuickSearchEnabled:Z

    .line 77
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/QuickSearchListView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/androidlib/widget/QuickSearchListView;)Lus/zoom/androidlib/widget/PullDownRefreshListView;
    .locals 0

    .line 39
    iget-object p0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mListView:Lus/zoom/androidlib/widget/PullDownRefreshListView;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/androidlib/widget/QuickSearchListView;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/androidlib/widget/QuickSearchListView;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/androidlib/widget/QuickSearchListView;)Landroid/view/View$OnTouchListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method static synthetic access$400(Lus/zoom/androidlib/widget/QuickSearchListView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-object p0
.end method

.method private buildDefaultCategoryTitlesFromSideBar(Lus/zoom/androidlib/widget/QuickSearchSideBar;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lus/zoom/androidlib/widget/QuickSearchSideBar;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 208
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/QuickSearchSideBar;->getCategoryChars()Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/QuickSearchSideBar;->getDisplayCharsFullSize()Ljava/lang/String;

    move-result-object p1

    .line 210
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 212
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 213
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 214
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 215
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getCount()I
    .locals 1

    .line 286
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mAdapter:Lus/zoom/androidlib/widget/QuickSearchListAdapter;

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 2

    .line 119
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/QuickSearchListView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lus/zoom/androidlib/R$layout;->zm_quick_search_listview:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 121
    sget v0, Lus/zoom/androidlib/R$id;->listView:I

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/QuickSearchListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/androidlib/widget/PullDownRefreshListView;

    iput-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mListView:Lus/zoom/androidlib/widget/PullDownRefreshListView;

    .line 122
    sget v0, Lus/zoom/androidlib/R$id;->quickSearchSideBar:I

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/QuickSearchListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/androidlib/widget/QuickSearchSideBar;

    iput-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mQuickSearchSideBar:Lus/zoom/androidlib/widget/QuickSearchSideBar;

    .line 123
    sget v0, Lus/zoom/androidlib/R$id;->txtQuickSearchChar:I

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/QuickSearchListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mTxtQuickSearchChar:Landroid/widget/TextView;

    .line 125
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mQuickSearchSideBar:Lus/zoom/androidlib/widget/QuickSearchSideBar;

    invoke-direct {p0, v0}, Lus/zoom/androidlib/widget/QuickSearchListView;->buildDefaultCategoryTitlesFromSideBar(Lus/zoom/androidlib/widget/QuickSearchSideBar;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mCategoryTitlesMap:Ljava/util/HashMap;

    .line 126
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mQuickSearchSideBar:Lus/zoom/androidlib/widget/QuickSearchSideBar;

    invoke-direct {p0, v0}, Lus/zoom/androidlib/widget/QuickSearchListView;->buildDefaultCategoryTitlesFromSideBar(Lus/zoom/androidlib/widget/QuickSearchSideBar;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mCategoryHintsMap:Ljava/util/HashMap;

    .line 128
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mQuickSearchSideBar:Lus/zoom/androidlib/widget/QuickSearchSideBar;

    invoke-virtual {v0, p0}, Lus/zoom/androidlib/widget/QuickSearchSideBar;->setQuickSearchSideBarListener(Lus/zoom/androidlib/widget/QuickSearchSideBar$IListener;)V

    .line 130
    new-instance v0, Lus/zoom/androidlib/widget/QuickSearchListAdapter;

    invoke-direct {v0, p1, p0}, Lus/zoom/androidlib/widget/QuickSearchListAdapter;-><init>(Landroid/content/Context;Lus/zoom/androidlib/widget/QuickSearchListView;)V

    iput-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mAdapter:Lus/zoom/androidlib/widget/QuickSearchListAdapter;

    .line 131
    iget-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mAdapter:Lus/zoom/androidlib/widget/QuickSearchListAdapter;

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/QuickSearchListView;->isQuickSearchEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->setQuickSearchEnabled(Z)V

    .line 133
    iget-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mListView:Lus/zoom/androidlib/widget/PullDownRefreshListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->setPullDownRefreshEnabled(Z)V

    .line 135
    iget-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mListView:Lus/zoom/androidlib/widget/PullDownRefreshListView;

    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mAdapter:Lus/zoom/androidlib/widget/QuickSearchListAdapter;

    invoke-virtual {p1, v0}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    iget-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mListView:Lus/zoom/androidlib/widget/PullDownRefreshListView;

    new-instance v0, Lus/zoom/androidlib/widget/QuickSearchListView$1;

    invoke-direct {v0, p0}, Lus/zoom/androidlib/widget/QuickSearchListView$1;-><init>(Lus/zoom/androidlib/widget/QuickSearchListView;)V

    invoke-virtual {p1, v0}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 152
    iget-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mListView:Lus/zoom/androidlib/widget/PullDownRefreshListView;

    new-instance v0, Lus/zoom/androidlib/widget/QuickSearchListView$2;

    invoke-direct {v0, p0}, Lus/zoom/androidlib/widget/QuickSearchListView$2;-><init>(Lus/zoom/androidlib/widget/QuickSearchListView;)V

    invoke-virtual {p1, v0}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 168
    iget-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mListView:Lus/zoom/androidlib/widget/PullDownRefreshListView;

    new-instance v0, Lus/zoom/androidlib/widget/QuickSearchListView$3;

    invoke-direct {v0, p0}, Lus/zoom/androidlib/widget/QuickSearchListView$3;-><init>(Lus/zoom/androidlib/widget/QuickSearchListView;)V

    invoke-virtual {p1, v0}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 179
    iget-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mListView:Lus/zoom/androidlib/widget/PullDownRefreshListView;

    new-instance v0, Lus/zoom/androidlib/widget/QuickSearchListView$4;

    invoke-direct {v0, p0}, Lus/zoom/androidlib/widget/QuickSearchListView$4;-><init>(Lus/zoom/androidlib/widget/QuickSearchListView;)V

    invoke-virtual {p1, v0}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 193
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/QuickSearchListView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lus/zoom/androidlib/R$string;->zm_starred_list_head_txt_65147:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x21

    invoke-virtual {p0, v0, p1}, Lus/zoom/androidlib/widget/QuickSearchListView;->setCategoryTitle(CLjava/lang/String;)V

    const/16 p1, 0x7fff

    const/4 v0, 0x0

    .line 194
    invoke-virtual {p0, p1, v0}, Lus/zoom/androidlib/widget/QuickSearchListView;->setCategoryTitle(CLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCategoryHint(C)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 259
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mCategoryHintsMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 262
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getCategoryTitle(C)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 245
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mCategoryTitlesMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 248
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getDataItemCount()I
    .locals 1

    .line 290
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mAdapter:Lus/zoom/androidlib/widget/QuickSearchListAdapter;

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->getDataAdapter()Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 294
    :cond_0
    invoke-virtual {v0}, Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 298
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mListView:Lus/zoom/androidlib/widget/PullDownRefreshListView;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 301
    :cond_0
    instance-of v0, p1, Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItem;

    if-eqz v0, :cond_1

    .line 302
    check-cast p1, Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItem;

    iget-object p1, p1, Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItem;->data:Ljava/lang/Object;

    return-object p1

    .line 304
    :cond_1
    check-cast p1, Lus/zoom/androidlib/widget/QuickSearchListAdapter$GroupHeaderItem;

    iget-object p1, p1, Lus/zoom/androidlib/widget/QuickSearchListAdapter$GroupHeaderItem;->title:Ljava/lang/String;

    return-object p1
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 91
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mListView:Lus/zoom/androidlib/widget/PullDownRefreshListView;

    return-object v0
.end method

.method public getQuickSearchSideBar()Lus/zoom/androidlib/widget/QuickSearchSideBar;
    .locals 1

    .line 198
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mQuickSearchSideBar:Lus/zoom/androidlib/widget/QuickSearchSideBar;

    return-object v0
.end method

.method protected getmmListView()Landroid/widget/ListView;
    .locals 1

    .line 371
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mListView:Lus/zoom/androidlib/widget/PullDownRefreshListView;

    return-object v0
.end method

.method public isPullDownRefreshEnabled()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mListView:Lus/zoom/androidlib/widget/PullDownRefreshListView;

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->isPullDownRefreshEnabled()Z

    move-result v0

    return v0
.end method

.method public isQuickSearchEnabled()Z
    .locals 1

    .line 278
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mbQuickSearchEnabled:Z

    return v0
.end method

.method public isRefreshing()Z
    .locals 1

    .line 111
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mListView:Lus/zoom/androidlib/widget/PullDownRefreshListView;

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->isRefreshing()Z

    move-result v0

    return v0
.end method

.method public notifyRefreshDone()V
    .locals 1

    .line 115
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mListView:Lus/zoom/androidlib/widget/PullDownRefreshListView;

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->notifyRefreshDone()V

    return-void
.end method

.method protected onDataChanged()V
    .locals 3

    .line 375
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/QuickSearchListView;->getDataItemCount()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x5

    if-gt v0, v2, :cond_0

    .line 376
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mQuickSearchSideBar:Lus/zoom/androidlib/widget/QuickSearchSideBar;

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/widget/QuickSearchSideBar;->setVisibility(I)V

    goto :goto_0

    .line 378
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mQuickSearchSideBar:Lus/zoom/androidlib/widget/QuickSearchSideBar;

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/QuickSearchListView;->isQuickSearchEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v0, v1}, Lus/zoom/androidlib/widget/QuickSearchSideBar;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onQuickSearchCharPressed(C)V
    .locals 1

    .line 326
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/QuickSearchListView;->scrollToChar(C)V

    .line 328
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/QuickSearchListView;->getCategoryHint(C)Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-static {v0}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mTxtQuickSearchChar:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/QuickSearchListView;->getCategoryHint(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mTxtQuickSearchChar:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 333
    :cond_0
    iget-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mTxtQuickSearchChar:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onQuickSearchCharReleased(C)V
    .locals 1

    .line 339
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/QuickSearchListView;->scrollToChar(C)V

    .line 340
    iget-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mTxtQuickSearchChar:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 282
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mTxtQuickSearchChar:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public pointToPosition(II)I
    .locals 1

    .line 313
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mListView:Lus/zoom/androidlib/widget/PullDownRefreshListView;

    invoke-virtual {v0, p1, p2}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->pointToPosition(II)I

    move-result p1

    return p1
.end method

.method public scrollToChar(C)V
    .locals 1

    .line 344
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mAdapter:Lus/zoom/androidlib/widget/QuickSearchListAdapter;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->getFirstItemPosFromChar(C)I

    move-result p1

    .line 345
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mListView:Lus/zoom/androidlib/widget/PullDownRefreshListView;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->setSelection(I)V

    return-void
.end method

.method public setAdapter(Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;)V
    .locals 1

    .line 317
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mAdapter:Lus/zoom/androidlib/widget/QuickSearchListAdapter;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->setDataAdapter(Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;)V

    .line 319
    iget-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mListView:Lus/zoom/androidlib/widget/PullDownRefreshListView;

    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mAdapter:Lus/zoom/androidlib/widget/QuickSearchListAdapter;

    invoke-virtual {p1, v0}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 321
    iget-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mAdapter:Lus/zoom/androidlib/widget/QuickSearchListAdapter;

    invoke-virtual {p1}, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setCategoryChars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 222
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mQuickSearchSideBar:Lus/zoom/androidlib/widget/QuickSearchSideBar;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lus/zoom/androidlib/widget/QuickSearchSideBar;->setCategoryChars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mQuickSearchSideBar:Lus/zoom/androidlib/widget/QuickSearchSideBar;

    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/QuickSearchListView;->buildDefaultCategoryTitlesFromSideBar(Lus/zoom/androidlib/widget/QuickSearchSideBar;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mCategoryTitlesMap:Ljava/util/HashMap;

    .line 224
    iget-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mQuickSearchSideBar:Lus/zoom/androidlib/widget/QuickSearchSideBar;

    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/QuickSearchListView;->buildDefaultCategoryTitlesFromSideBar(Lus/zoom/androidlib/widget/QuickSearchSideBar;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mCategoryHintsMap:Ljava/util/HashMap;

    .line 226
    iget-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mAdapter:Lus/zoom/androidlib/widget/QuickSearchListAdapter;

    invoke-virtual {p1}, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->getDataAdapter()Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 228
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setCategoryHint(CLjava/lang/String;)V
    .locals 1

    .line 252
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mCategoryHintsMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    .line 255
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCategoryTitle(CLjava/lang/String;)V
    .locals 1

    .line 233
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mCategoryTitlesMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    .line 236
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mAdapter:Lus/zoom/androidlib/widget/QuickSearchListAdapter;

    invoke-virtual {p1}, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->getDataAdapter()Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 240
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 1

    .line 363
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mListView:Lus/zoom/androidlib/widget/PullDownRefreshListView;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->setFooterDividersEnabled(Z)V

    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 1

    .line 367
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mListView:Lus/zoom/androidlib/widget/PullDownRefreshListView;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->setHeaderDividersEnabled(Z)V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setPullDownRefreshEnabled(Z)V
    .locals 1

    .line 95
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mListView:Lus/zoom/androidlib/widget/PullDownRefreshListView;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->setPullDownRefreshEnabled(Z)V

    return-void
.end method

.method public setPullDownRefreshListener(Lus/zoom/androidlib/widget/PullDownRefreshListView$PullDownRefreshListener;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mListView:Lus/zoom/androidlib/widget/PullDownRefreshListView;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->setPullDownRefreshListener(Lus/zoom/androidlib/widget/PullDownRefreshListView$PullDownRefreshListener;)V

    return-void
.end method

.method public setPullDownRefreshTextResources(III)V
    .locals 1

    .line 202
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mListView:Lus/zoom/androidlib/widget/PullDownRefreshListView;

    invoke-virtual {v0, p1, p2, p3}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->setTextResources(III)V

    return-void
.end method

.method public setQuickSearchEnabled(Z)V
    .locals 2

    .line 266
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mbQuickSearchEnabled:Z

    .line 268
    invoke-direct {p0}, Lus/zoom/androidlib/widget/QuickSearchListView;->getCount()I

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 269
    iget-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mQuickSearchSideBar:Lus/zoom/androidlib/widget/QuickSearchSideBar;

    invoke-virtual {p1, v0}, Lus/zoom/androidlib/widget/QuickSearchSideBar;->setVisibility(I)V

    goto :goto_0

    .line 271
    :cond_0
    iget-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mQuickSearchSideBar:Lus/zoom/androidlib/widget/QuickSearchSideBar;

    iget-boolean v1, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mbQuickSearchEnabled:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p1, v0}, Lus/zoom/androidlib/widget/QuickSearchSideBar;->setVisibility(I)V

    .line 274
    :goto_0
    iget-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mAdapter:Lus/zoom/androidlib/widget/QuickSearchListAdapter;

    iget-boolean v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mbQuickSearchEnabled:Z

    invoke-virtual {p1, v0}, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->setQuickSearchEnabled(Z)V

    return-void
.end method

.method public setSelectionFromTop(II)V
    .locals 1

    .line 309
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mListView:Lus/zoom/androidlib/widget/PullDownRefreshListView;

    invoke-virtual {v0, p1, p2}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->setSelectionFromTop(II)V

    return-void
.end method

.method public setmOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public showRefreshing(Z)V
    .locals 1

    .line 107
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListView;->mListView:Lus/zoom/androidlib/widget/PullDownRefreshListView;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/PullDownRefreshListView;->showRefreshing(Z)V

    return-void
.end method
