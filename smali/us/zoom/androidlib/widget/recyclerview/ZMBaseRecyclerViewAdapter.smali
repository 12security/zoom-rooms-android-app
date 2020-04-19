.class public abstract Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ZMBaseRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$OnItemClickListener;,
        Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$OnItemLongClickListener;,
        Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$OnItemChildLongClickListener;,
        Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$OnItemChildClickListener;,
        Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$SpanSizeLookup;,
        Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$UpFetchListener;,
        Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$AnimationType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TK;>;"
    }
.end annotation


# static fields
.field public static final ALPHAIN:I = 0x1

.field public static final EMPTY_VIEW:I = 0x555

.field public static final FOOTER_VIEW:I = 0x333

.field public static final HEADER_VIEW:I = 0x111

.field public static final SCALEIN:I = 0x2

.field public static final SLIDEIN_BOTTOM:I = 0x3

.field public static final SLIDEIN_LEFT:I = 0x4

.field public static final SLIDEIN_RIGHT:I = 0x5

.field protected static final TAG:Ljava/lang/String; = "ZMBaseRecyclerViewAdapter"


# instance fields
.field private footerViewAsFlow:Z

.field private headerViewAsFlow:Z

.field protected mContext:Landroid/content/Context;

.field protected mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mDuration:I

.field private mEmptyLayout:Landroid/widget/FrameLayout;

.field private mFirstOnlyEnable:Z

.field private mFootAndEmptyEnable:Z

.field private mFooterLayout:Landroid/widget/LinearLayout;

.field private mHeadAndEmptyEnable:Z

.field private mHeaderLayout:Landroid/widget/LinearLayout;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsUseEmpty:Z

.field private mLastPosition:I

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field protected mLayoutResId:I

.field private mOnItemChildClickListener:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$OnItemChildClickListener;

.field private mOnItemChildLongClickListener:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$OnItemChildLongClickListener;

.field private mOnItemClickListener:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$OnItemClickListener;

.field private mOnItemLongClickListener:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$OnItemLongClickListener;

.field private mOpenAnimationEnable:Z

.field private mPreLoadNumber:I

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSpanSizeLookup:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$SpanSizeLookup;

.field private mStartUpFetchPosition:I

.field private mUpFetchEnable:Z

.field private mUpFetchListener:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$UpFetchListener;

.field private mUpFetching:Z

.field private mZMMultiTypeDelegate:Lus/zoom/androidlib/widget/recyclerview/ZMMultiTypeDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lus/zoom/androidlib/widget/recyclerview/ZMMultiTypeDelegate<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 230
    invoke-direct {p0, p1, v0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 218
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mFirstOnlyEnable:Z

    const/4 v1, 0x0

    .line 74
    iput-boolean v1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mOpenAnimationEnable:Z

    .line 75
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mInterpolator:Landroid/view/animation/Interpolator;

    const/16 v1, 0x12c

    .line 76
    iput v1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mDuration:I

    const/4 v1, -0x1

    .line 77
    iput v1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mLastPosition:I

    .line 84
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mIsUseEmpty:Z

    .line 155
    iput v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mStartUpFetchPosition:I

    .line 1124
    iput v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mPreLoadNumber:I

    if-nez p2, :cond_0

    .line 219
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p2, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mData:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 221
    iput p1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mLayoutResId:I

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 226
    invoke-direct {p0, v0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$SpanSizeLookup;
    .locals 0

    .line 41
    iget-object p0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mSpanSizeLookup:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$SpanSizeLookup;

    return-object p0
.end method

.method private autoUpFetch(I)V
    .locals 1

    .line 162
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->isUpFetchEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->isUpFetching()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    iget v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mStartUpFetchPosition:I

    if-gt p1, v0, :cond_1

    iget-object p1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mUpFetchListener:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$UpFetchListener;

    if-eqz p1, :cond_1

    .line 166
    invoke-interface {p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$UpFetchListener;->onUpFetch()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private bindViewClickListener(Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 653
    :cond_0
    iget-object v0, p1, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->itemView:Landroid/view/View;

    .line 654
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getOnItemClickListener()Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$OnItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 655
    new-instance v1, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$2;

    invoke-direct {v1, p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$2;-><init>(Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 662
    :cond_1
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getOnItemLongClickListener()Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$OnItemLongClickListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 663
    new-instance v1, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$3;

    invoke-direct {v1, p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$3;-><init>(Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_2
    return-void
.end method

.method private checkNotNull()V
    .locals 2

    .line 108
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "please bind recyclerView first!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private compatibilityDataSizeChanged(I)V
    .locals 1

    .line 342
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mData:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ne v0, p1, :cond_1

    .line 344
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method private createGenericKInstance(Ljava/lang/Class;Landroid/view/View;)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Landroid/view/View;",
            ")TK;"
        }
    .end annotation

    .line 749
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 750
    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v1

    const-class v4, Landroid/view/View;

    aput-object v4, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 751
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 752
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    aput-object p2, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;

    return-object p1

    .line 754
    :cond_0
    new-array v0, v2, [Ljava/lang/Class;

    const-class v3, Landroid/view/View;

    aput-object v3, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 755
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 756
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 765
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 763
    invoke-virtual {p1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 761
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 759
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getFooterViewPosition()I
    .locals 2

    .line 1025
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getEmptyViewCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1027
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mHeadAndEmptyEnable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getHeaderLayoutCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 1030
    :cond_0
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mFootAndEmptyEnable:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, -0x1

    return v0

    .line 1034
    :cond_2
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getHeaderLayoutCount()I

    move-result v0

    iget-object v1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getHeaderViewPosition()I
    .locals 3

    .line 1013
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getEmptyViewCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1014
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mHeadAndEmptyEnable:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, -0x1

    return v0

    :cond_1
    return v1
.end method

.method private getInstancedGenericKClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 4

    .line 777
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p1

    .line 778
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2

    .line 779
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    .line 780
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 781
    instance-of v3, v2, Ljava/lang/Class;

    if-eqz v3, :cond_0

    .line 782
    check-cast v2, Ljava/lang/Class;

    .line 783
    const-class v3, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .line 786
    :cond_0
    instance-of v3, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_1

    .line 787
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 788
    instance-of v3, v2, Ljava/lang/Class;

    if-eqz v3, :cond_1

    const-class v3, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1226
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method private getTheBiggestNumber([I)I
    .locals 4

    const/4 v0, -0x1

    if-eqz p1, :cond_3

    .line 126
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 129
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p1, v2

    if-le v3, v0, :cond_1

    move v0, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_1
    return v0
.end method

.method private setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 254
    invoke-virtual {p0, p1, p2}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->addData(ILjava/lang/Object;)V

    return-void
.end method

.method public addData(ILjava/lang/Object;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 264
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getHeaderLayoutCount()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->notifyItemInserted(I)V

    const/4 p1, 0x1

    .line 265
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->compatibilityDataSizeChanged(I)V

    return-void
.end method

.method public addData(ILjava/util/Collection;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TT;>;)V"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 306
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getHeaderLayoutCount()I

    move-result v0

    add-int/2addr p1, v0

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->notifyItemRangeInserted(II)V

    .line 307
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->compatibilityDataSizeChanged(I)V

    return-void
.end method

.method public addData(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object p1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getHeaderLayoutCount()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->notifyItemInserted(I)V

    const/4 p1, 0x1

    .line 274
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->compatibilityDataSizeChanged(I)V

    return-void
.end method

.method public addData(Ljava/util/Collection;)V
    .locals 2
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)V"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 317
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getHeaderLayoutCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->notifyItemRangeInserted(II)V

    .line 318
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->compatibilityDataSizeChanged(I)V

    return-void
.end method

.method public addFooterView(Landroid/view/View;)I
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 889
    invoke-virtual {p0, p1, v0, v1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->addFooterView(Landroid/view/View;II)I

    move-result p1

    return p1
.end method

.method public addFooterView(Landroid/view/View;I)I
    .locals 1

    const/4 v0, 0x1

    .line 893
    invoke-virtual {p0, p1, p2, v0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->addFooterView(Landroid/view/View;II)I

    move-result p1

    return p1
.end method

.method public addFooterView(Landroid/view/View;II)I
    .locals 4

    .line 907
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 908
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    const/4 v0, -0x2

    if-ne p3, v2, :cond_0

    .line 910
    iget-object p3, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 911
    iget-object p3, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    new-instance v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 913
    :cond_0
    iget-object p3, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 914
    iget-object p3, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    new-instance v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v3, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 917
    :cond_1
    :goto_0
    iget-object p3, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p3

    if-ltz p2, :cond_2

    if-le p2, p3, :cond_3

    :cond_2
    move p2, p3

    .line 921
    :cond_3
    iget-object p3, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 922
    iget-object p1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 923
    invoke-direct {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getFooterViewPosition()I

    move-result p1

    if-eq p1, v1, :cond_4

    .line 925
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->notifyItemInserted(I)V

    :cond_4
    return p2
.end method

.method public addHeaderView(Landroid/view/View;)I
    .locals 1

    const/4 v0, -0x1

    .line 818
    invoke-virtual {p0, p1, v0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->addHeaderView(Landroid/view/View;I)I

    move-result p1

    return p1
.end method

.method public addHeaderView(Landroid/view/View;I)I
    .locals 1

    const/4 v0, 0x1

    .line 832
    invoke-virtual {p0, p1, p2, v0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->addHeaderView(Landroid/view/View;II)I

    move-result p1

    return p1
.end method

.method public addHeaderView(Landroid/view/View;II)I
    .locals 4

    .line 841
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 842
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    const/4 v0, -0x2

    if-ne p3, v2, :cond_0

    .line 844
    iget-object p3, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 845
    iget-object p3, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    new-instance v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 847
    :cond_0
    iget-object p3, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 848
    iget-object p3, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    new-instance v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v3, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 851
    :cond_1
    :goto_0
    iget-object p3, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p3

    if-ltz p2, :cond_2

    if-le p2, p3, :cond_3

    :cond_2
    move p2, p3

    .line 855
    :cond_3
    iget-object p3, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 856
    iget-object p1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 857
    invoke-direct {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getHeaderViewPosition()I

    move-result p1

    if-eq p1, v1, :cond_4

    .line 859
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->notifyItemInserted(I)V

    :cond_4
    return p2
.end method

.method public bindToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 117
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 120
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 121
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void

    .line 118
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Don\'t bind twice"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public closeLoadAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 1170
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mOpenAnimationEnable:Z

    return-void
.end method

.method protected abstract convert(Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TT;)V"
        }
    .end annotation
.end method

.method protected createBaseViewHolder(Landroid/view/View;)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TK;"
        }
    .end annotation

    .line 722
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 725
    invoke-direct {p0, v0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getInstancedGenericKClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 726
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 730
    new-instance v0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;

    invoke-direct {v0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;-><init>(Landroid/view/View;)V

    goto :goto_1

    .line 732
    :cond_1
    invoke-direct {p0, v1, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->createGenericKInstance(Ljava/lang/Class;Landroid/view/View;)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 734
    :cond_2
    new-instance v0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;

    invoke-direct {v0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;-><init>(Landroid/view/View;)V

    :goto_2
    return-object v0
.end method

.method protected createBaseViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TK;"
        }
    .end annotation

    .line 710
    invoke-virtual {p0, p2, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->createBaseViewHolder(Landroid/view/View;)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;

    move-result-object p1

    return-object p1
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mData:Ljava/util/List;

    return-object v0
.end method

.method protected getDefItemViewType(I)I
    .locals 2

    .line 488
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mZMMultiTypeDelegate:Lus/zoom/androidlib/widget/recyclerview/ZMMultiTypeDelegate;

    if-eqz v0, :cond_0

    .line 489
    iget-object v1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMMultiTypeDelegate;->getDefItemViewType(Ljava/util/List;I)I

    move-result p1

    return p1

    .line 491
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .line 1121
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mEmptyLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getEmptyViewCount()I
    .locals 2

    .line 421
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mEmptyLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 424
    :cond_0
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mIsUseEmpty:Z

    if-nez v0, :cond_1

    return v1

    .line 427
    :cond_1
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public getFooterLayout()Landroid/widget/LinearLayout;
    .locals 1

    .line 809
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getFooterLayoutCount()I
    .locals 1

    .line 409
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 392
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getFooterLayoutCount()I

    move-result v0

    return v0
.end method

.method public getHeaderLayout()Landroid/widget/LinearLayout;
    .locals 1

    .line 802
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getHeaderLayoutCount()I
    .locals 1

    .line 399
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 381
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getHeaderLayoutCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 367
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 368
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 2

    .line 436
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getEmptyViewCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 438
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mHeadAndEmptyEnable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getHeaderLayoutCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 441
    :cond_0
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mFootAndEmptyEnable:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getFooterLayoutCount()I

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 445
    :cond_1
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getHeaderLayoutCount()I

    move-result v0

    iget-object v1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getFooterLayoutCount()I

    move-result v1

    add-int/2addr v1, v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method protected getItemView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 1156
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getItemViewType(I)I
    .locals 4

    .line 452
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getEmptyViewCount()I

    move-result v0

    const/16 v1, 0x111

    const/4 v2, 0x1

    const/16 v3, 0x333

    if-ne v0, v2, :cond_3

    .line 453
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mHeadAndEmptyEnable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getHeaderLayoutCount()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/16 v0, 0x555

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    return v3

    :pswitch_1
    if-eqz v2, :cond_1

    return v0

    :cond_1
    return v3

    :pswitch_2
    if-eqz v2, :cond_2

    return v1

    :cond_2
    return v0

    .line 473
    :cond_3
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getHeaderLayoutCount()I

    move-result v0

    if-ge p1, v0, :cond_4

    return v1

    :cond_4
    sub-int/2addr p1, v0

    .line 478
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    .line 480
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getDefItemViewType(I)I

    move-result p1

    return p1

    :cond_5
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMultiTypeDelegate()Lus/zoom/androidlib/widget/recyclerview/ZMMultiTypeDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lus/zoom/androidlib/widget/recyclerview/ZMMultiTypeDelegate<",
            "TT;>;"
        }
    .end annotation

    .line 698
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mZMMultiTypeDelegate:Lus/zoom/androidlib/widget/recyclerview/ZMMultiTypeDelegate;

    return-object v0
.end method

.method public final getOnItemChildClickListener()Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$OnItemChildClickListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1361
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mOnItemChildClickListener:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$OnItemChildClickListener;

    return-object v0
.end method

.method public final getOnItemChildLongClickListener()Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$OnItemChildLongClickListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1370
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mOnItemChildLongClickListener:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$OnItemChildLongClickListener;

    return-object v0
.end method

.method public final getOnItemClickListener()Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$OnItemClickListener;
    .locals 1

    .line 1352
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mOnItemClickListener:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$OnItemLongClickListener;
    .locals 1

    .line 1344
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mOnItemLongClickListener:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$OnItemLongClickListener;

    return-object v0
.end method

.method protected getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 100
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public getViewByPosition(II)Landroid/view/View;
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1199
    invoke-direct {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->checkNotNull()V

    .line 1200
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getViewByPosition(Landroidx/recyclerview/widget/RecyclerView;II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewByPosition(Landroidx/recyclerview/widget/RecyclerView;II)Landroid/view/View;
    .locals 1
    .param p3    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1208
    :cond_0
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;

    if-nez p1, :cond_1

    return-object v0

    .line 1212
    :cond_1
    invoke-virtual {p1, p3}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public isFirstOnly(Z)V
    .locals 0

    .line 1179
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mFirstOnlyEnable:Z

    return-void
.end method

.method protected isFixedViewType(I)Z
    .locals 1

    const/16 v0, 0x555

    if-eq p1, v0, :cond_1

    const/16 v0, 0x111

    if-eq p1, v0, :cond_1

    const/16 v0, 0x333

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isFooterViewAsFlow()Z
    .locals 1

    .line 604
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->footerViewAsFlow:Z

    return v0
.end method

.method public isHeaderViewAsFlow()Z
    .locals 1

    .line 596
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->headerViewAsFlow:Z

    return v0
.end method

.method public isUpFetchEnable()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mUpFetchEnable:Z

    return v0
.end method

.method public isUpFetching()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mUpFetching:Z

    return v0
.end method

.method public isUseEmpty(Z)V
    .locals 0

    .line 1110
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mIsUseEmpty:Z

    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 554
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 555
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 556
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 557
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 558
    new-instance v0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$1;

    invoke-direct {v0, p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$1;-><init>(Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;Landroidx/recyclerview/widget/GridLayoutManager;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 41
    check-cast p1, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;

    invoke-virtual {p0, p1, p2}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->onBindViewHolder(Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;I)V
    .locals 2
    .param p1    # Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    .line 630
    invoke-direct {p0, p2}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->autoUpFetch(I)V

    .line 631
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->getItemViewType()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x111

    if-eq v0, v1, :cond_1

    const/16 v1, 0x333

    if-eq v0, v1, :cond_1

    const/16 v1, 0x555

    if-eq v0, v1, :cond_1

    .line 644
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getHeaderLayoutCount()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p2}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->convert(Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;Ljava/lang/Object;)V

    goto :goto_0

    .line 635
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getHeaderLayoutCount()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p2}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->convert(Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TK;"
        }
    .end annotation

    .line 702
    iget v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mLayoutResId:I

    .line 703
    iget-object v1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mZMMultiTypeDelegate:Lus/zoom/androidlib/widget/recyclerview/ZMMultiTypeDelegate;

    if-eqz v1, :cond_0

    .line 704
    invoke-virtual {v1, p2}, Lus/zoom/androidlib/widget/recyclerview/ZMMultiTypeDelegate;->getLayoutId(I)I

    move-result v0

    .line 706
    :cond_0
    invoke-virtual {p0, p1, v0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->createBaseViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 41
    invoke-virtual {p0, p1, p2}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TK;"
        }
    .end annotation

    .line 498
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mContext:Landroid/content/Context;

    .line 499
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/16 v0, 0x111

    if-eq p2, v0, :cond_2

    const/16 v0, 0x333

    if-eq p2, v0, :cond_1

    const/16 v0, 0x555

    if-eq p2, v0, :cond_0

    .line 511
    invoke-virtual {p0, p1, p2}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;

    move-result-object p1

    .line 512
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->bindViewClickListener(Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;)V

    goto :goto_0

    .line 505
    :cond_0
    iget-object p1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mEmptyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->createBaseViewHolder(Landroid/view/View;)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;

    move-result-object p1

    goto :goto_0

    .line 508
    :cond_1
    iget-object p1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->createBaseViewHolder(Landroid/view/View;)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;

    move-result-object p1

    goto :goto_0

    .line 502
    :cond_2
    iget-object p1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->createBaseViewHolder(Landroid/view/View;)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;

    move-result-object p1

    .line 514
    :goto_0
    invoke-virtual {p1, p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->setAdapter(Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;

    return-object p1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 41
    check-cast p1, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->onViewAttachedToWindow(Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;)V
    .locals 2
    .param p1    # Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 529
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 530
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0x555

    if-eq v0, v1, :cond_0

    const/16 v1, 0x111

    if-eq v0, v1, :cond_0

    const/16 v1, 0x333

    if-ne v0, v1, :cond_1

    .line 532
    :cond_0
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->setFullSpan(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_1
    return-void
.end method

.method public openLoadAnimation()V
    .locals 1

    const/4 v0, 0x1

    .line 1164
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mOpenAnimationEnable:Z

    return-void
.end method

.method public final refreshNotifyItemChanged(I)V
    .locals 1

    .line 209
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getHeaderLayoutCount()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public remove(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 283
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 284
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getHeaderLayoutCount()I

    move-result v0

    add-int/2addr p1, v0

    .line 285
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->notifyItemRemoved(I)V

    const/4 v0, 0x0

    .line 286
    invoke-direct {p0, v0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->compatibilityDataSizeChanged(I)V

    .line 287
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public removeAllFooterView()V
    .locals 2

    .line 1002
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getFooterLayoutCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1004
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1005
    invoke-direct {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getFooterViewPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1007
    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->notifyItemRemoved(I)V

    :cond_1
    return-void
.end method

.method public removeAllHeaderView()V
    .locals 2

    .line 989
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getHeaderLayoutCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 991
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 992
    invoke-direct {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getHeaderViewPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 994
    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->notifyItemRemoved(I)V

    :cond_1
    return-void
.end method

.method public removeFooterView(Landroid/view/View;)V
    .locals 1

    .line 974
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getFooterLayoutCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 976
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 977
    iget-object p1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-nez p1, :cond_1

    .line 978
    invoke-direct {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getFooterViewPosition()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 980
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->notifyItemRemoved(I)V

    :cond_1
    return-void
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 1

    .line 956
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getHeaderLayoutCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 958
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 959
    iget-object p1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-nez p1, :cond_1

    .line 960
    invoke-direct {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getHeaderViewPosition()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 962
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->notifyItemRemoved(I)V

    :cond_1
    return-void
.end method

.method public replaceData(Ljava/util/Collection;)V
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)V"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mData:Ljava/util/List;

    if-eq p1, v0, :cond_0

    .line 330
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 331
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 333
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setAutoLoadMoreSize(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1128
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->setPreLoadNumber(I)V

    return-void
.end method

.method public setData(ILjava/lang/Object;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 295
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getHeaderLayoutCount()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 200
    iput p1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mDuration:I

    return-void
.end method

.method public setEmptyView(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1052
    invoke-direct {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->checkNotNull()V

    .line 1053
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->setEmptyView(ILandroid/view/ViewGroup;)V

    return-void
.end method

.method public setEmptyView(ILandroid/view/ViewGroup;)V
    .locals 2

    .line 1040
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 1041
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 5

    .line 1058
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mEmptyLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 1059
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mEmptyLayout:Landroid/widget/FrameLayout;

    .line 1060
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 1061
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1063
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->width:I

    .line 1064
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v3, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->height:I

    .line 1066
    :cond_0
    iget-object v3, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mEmptyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1069
    :goto_0
    iget-object v3, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mEmptyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1070
    iget-object v3, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mEmptyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1071
    iput-boolean v2, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mIsUseEmpty:Z

    if-eqz v0, :cond_3

    .line 1073
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getEmptyViewCount()I

    move-result p1

    if-ne p1, v2, :cond_3

    .line 1075
    iget-boolean p1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mHeadAndEmptyEnable:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getHeaderLayoutCount()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    .line 1078
    :cond_2
    invoke-virtual {p0, v1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->notifyItemInserted(I)V

    :cond_3
    return-void
.end method

.method public setFooterView(Landroid/view/View;)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 932
    invoke-virtual {p0, p1, v0, v1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->setFooterView(Landroid/view/View;II)I

    move-result p1

    return p1
.end method

.method public setFooterView(Landroid/view/View;I)I
    .locals 1

    const/4 v0, 0x1

    .line 936
    invoke-virtual {p0, p1, p2, v0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->setFooterView(Landroid/view/View;II)I

    move-result p1

    return p1
.end method

.method public setFooterView(Landroid/view/View;II)I
    .locals 1

    .line 940
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-gt v0, p2, :cond_0

    goto :goto_0

    .line 943
    :cond_0
    iget-object p3, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 944
    iget-object p3, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    return p2

    .line 941
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->addFooterView(Landroid/view/View;II)I

    move-result p1

    return p1
.end method

.method public setFooterViewAsFlow(Z)V
    .locals 0

    .line 600
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->footerViewAsFlow:Z

    return-void
.end method

.method protected setFullSpan(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 545
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 546
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 547
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 v0, 0x1

    .line 548
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    :cond_0
    return-void
.end method

.method public setHeaderAndEmpty(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1089
    invoke-virtual {p0, p1, v0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->setHeaderFooterEmpty(ZZ)V

    return-void
.end method

.method public setHeaderFooterEmpty(ZZ)V
    .locals 0

    .line 1100
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mHeadAndEmptyEnable:Z

    .line 1101
    iput-boolean p2, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mFootAndEmptyEnable:Z

    return-void
.end method

.method public setHeaderView(Landroid/view/View;)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 866
    invoke-virtual {p0, p1, v0, v1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->setHeaderView(Landroid/view/View;II)I

    move-result p1

    return p1
.end method

.method public setHeaderView(Landroid/view/View;I)I
    .locals 1

    const/4 v0, 0x1

    .line 870
    invoke-virtual {p0, p1, p2, v0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->setHeaderView(Landroid/view/View;II)I

    move-result p1

    return p1
.end method

.method public setHeaderView(Landroid/view/View;II)I
    .locals 1

    .line 874
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-gt v0, p2, :cond_0

    goto :goto_0

    .line 877
    :cond_0
    iget-object p3, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 878
    iget-object p3, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    return p2

    .line 875
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->addHeaderView(Landroid/view/View;II)I

    move-result p1

    return p1
.end method

.method public setHeaderViewAsFlow(Z)V
    .locals 0

    .line 592
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->headerViewAsFlow:Z

    return-void
.end method

.method public setMultiTypeDelegate(Lus/zoom/androidlib/widget/recyclerview/ZMMultiTypeDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lus/zoom/androidlib/widget/recyclerview/ZMMultiTypeDelegate<",
            "TT;>;)V"
        }
    .end annotation

    .line 694
    iput-object p1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mZMMultiTypeDelegate:Lus/zoom/androidlib/widget/recyclerview/ZMMultiTypeDelegate;

    return-void
.end method

.method public setNewData(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 239
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mData:Ljava/util/List;

    const/4 p1, -0x1

    .line 240
    iput p1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mLastPosition:I

    .line 241
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setNotDoAnimationCount(I)V
    .locals 0

    .line 190
    iput p1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mLastPosition:I

    return-void
.end method

.method public setOnItemChildClickListener(Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$OnItemChildClickListener;)V
    .locals 0

    .line 1315
    iput-object p1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mOnItemChildClickListener:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$OnItemChildClickListener;

    return-void
.end method

.method public setOnItemChildLongClickListener(Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$OnItemChildLongClickListener;)V
    .locals 0

    .line 1335
    iput-object p1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mOnItemChildLongClickListener:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$OnItemChildLongClickListener;

    return-void
.end method

.method public setOnItemClick(Landroid/view/View;I)V
    .locals 1

    .line 678
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getOnItemClickListener()Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$OnItemClickListener;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$OnItemClickListener;->onItemClick(Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public setOnItemClickListener(Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$OnItemClickListener;)V
    .locals 0
    .param p1    # Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$OnItemClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1305
    iput-object p1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mOnItemClickListener:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$OnItemClickListener;

    return-void
.end method

.method public setOnItemLongClick(Landroid/view/View;I)Z
    .locals 1

    .line 688
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getOnItemLongClickListener()Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$OnItemLongClickListener;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$OnItemLongClickListener;->onItemLongClick(Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public setOnItemLongClickListener(Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$OnItemLongClickListener;)V
    .locals 0

    .line 1325
    iput-object p1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mOnItemLongClickListener:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$OnItemLongClickListener;

    return-void
.end method

.method public setPreLoadNumber(I)V
    .locals 1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 1133
    iput p1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mPreLoadNumber:I

    :cond_0
    return-void
.end method

.method public setSpanSizeLookup(Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$SpanSizeLookup;)V
    .locals 0

    .line 617
    iput-object p1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mSpanSizeLookup:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$SpanSizeLookup;

    return-void
.end method

.method public setStartUpFetchPosition(I)V
    .locals 0

    .line 158
    iput p1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mStartUpFetchPosition:I

    return-void
.end method

.method public setUpFetchEnable(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mUpFetchEnable:Z

    return-void
.end method

.method public setUpFetchListener(Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$UpFetchListener;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mUpFetchListener:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter$UpFetchListener;

    return-void
.end method

.method public setUpFetching(Z)V
    .locals 0

    .line 175
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mUpFetching:Z

    return-void
.end method

.method protected startAnim(Landroid/animation/Animator;I)V
    .locals 2

    .line 1144
    iget p2, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mDuration:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/animation/Animator;->start()V

    .line 1145
    iget-object p2, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method
