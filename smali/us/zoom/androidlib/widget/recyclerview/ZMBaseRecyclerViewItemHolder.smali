.class public Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ZMBaseRecyclerViewItemHolder.java"


# instance fields
.field private adapter:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;

.field associatedObject:Ljava/lang/Object;

.field private final childClickViewIds:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public convertView:Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final itemChildLongClickViewIds:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final nestViews:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final views:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 64
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 65
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->views:Landroid/util/SparseArray;

    .line 66
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->childClickViewIds:Ljava/util/LinkedHashSet;

    .line 67
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->itemChildLongClickViewIds:Ljava/util/LinkedHashSet;

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->nestViews:Ljava/util/HashSet;

    .line 69
    iput-object p1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->convertView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;
    .locals 0

    .line 34
    iget-object p0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->adapter:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;)I
    .locals 0

    .line 34
    invoke-direct {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->getClickPosition()I

    move-result p0

    return p0
.end method

.method private getClickPosition()I
    .locals 2

    .line 75
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->getLayoutPosition()I

    move-result v0

    iget-object v1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->adapter:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;

    invoke-virtual {v1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getHeaderLayoutCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 76
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->getLayoutPosition()I

    move-result v0

    iget-object v1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->adapter:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;

    invoke-virtual {v1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;->getHeaderLayoutCount()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addOnClickListener(I)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 357
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->childClickViewIds:Ljava/util/LinkedHashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 358
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 360
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 361
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 363
    :cond_0
    new-instance v0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder$1;

    invoke-direct {v0, p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder$1;-><init>(Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-object p0
.end method

.method public addOnLongClickListener(I)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 401
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->itemChildLongClickViewIds:Ljava/util/LinkedHashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 404
    invoke-virtual {p1}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 405
    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 407
    :cond_0
    new-instance v0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder$2;

    invoke-direct {v0, p0}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder$2;-><init>(Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    return-object p0
.end method

.method public getAssociatedObject()Ljava/lang/Object;
    .locals 1

    .line 584
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->associatedObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getChildClickViewIds()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->childClickViewIds:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public getConvertView()Landroid/view/View;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 97
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->convertView:Landroid/view/View;

    return-object v0
.end method

.method public getItemChildLongClickViewIds()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->itemChildLongClickViewIds:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public getNestViews()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->nestViews:Ljava/util/HashSet;

    return-object v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 572
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->views:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    .line 574
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 575
    iget-object v1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->views:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public linkify(I)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 236
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/16 v0, 0xf

    .line 237
    invoke-static {p1, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    return-object p0
.end method

.method public setAdapter(ILandroid/widget/Adapter;)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 554
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/AdapterView;

    .line 555
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    return-object p0
.end method

.method protected setAdapter(Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
    .locals 0

    .line 566
    iput-object p1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->adapter:Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewAdapter;

    return-object p0
.end method

.method public setAlpha(IF)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 199
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-object p0
.end method

.method public setAssociatedObject(Ljava/lang/Object;)V
    .locals 0

    .line 591
    iput-object p1, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->associatedObject:Ljava/lang/Object;

    return-void
.end method

.method public setBackgroundColor(II)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 140
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 141
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p0
.end method

.method public setBackgroundRes(II)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 153
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 154
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    return-object p0
.end method

.method public setChecked(IZ)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 537
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 539
    instance-of v0, p1, Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 540
    check-cast p1, Landroid/widget/Checkable;

    invoke-interface {p1, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_0
    return-object p0
.end method

.method public setGone(IZ)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 211
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 212
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method

.method public setImageBitmap(ILandroid/graphics/Bitmap;)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 189
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 190
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method public setImageDrawable(ILandroid/graphics/drawable/Drawable;)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 180
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 181
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public setImageResource(II)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 127
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 128
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p0
.end method

.method public setMax(II)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 299
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    .line 300
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    return-object p0
.end method

.method public setNestView(I)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 384
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->addOnClickListener(I)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;

    .line 385
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->addOnLongClickListener(I)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;

    .line 386
    iget-object v0, p0, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->nestViews:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setOnCheckedChangeListener(ILandroid/widget/CompoundButton$OnCheckedChangeListener;)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 497
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CompoundButton;

    .line 498
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object p0
.end method

.method public setOnClickListener(ILandroid/view/View$OnClickListener;)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 341
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 342
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public setOnItemClickListener(ILandroid/widget/AdapterView$OnItemClickListener;)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 458
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/AdapterView;

    .line 459
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object p0
.end method

.method public setOnItemLongClickListener(ILandroid/widget/AdapterView$OnItemLongClickListener;)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 471
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/AdapterView;

    .line 472
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-object p0
.end method

.method public setOnItemSelectedClickListener(ILandroid/widget/AdapterView$OnItemSelectedListener;)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 484
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/AdapterView;

    .line 485
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-object p0
.end method

.method public setOnLongClickListener(ILandroid/view/View$OnLongClickListener;)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 443
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 444
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object p0
.end method

.method public setOnTouchListener(ILandroid/view/View$OnTouchListener;)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 428
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 429
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object p0
.end method

.method public setProgress(II)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 271
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    .line 272
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-object p0
.end method

.method public setProgress(III)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 285
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    .line 286
    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 287
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-object p0
.end method

.method public setRating(IF)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 312
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RatingBar;

    .line 313
    invoke-virtual {p1, p2}, Landroid/widget/RatingBar;->setRating(F)V

    return-object p0
.end method

.method public setRating(IFI)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 326
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RatingBar;

    .line 327
    invoke-virtual {p1, p3}, Landroid/widget/RatingBar;->setMax(I)V

    .line 328
    invoke-virtual {p1, p2}, Landroid/widget/RatingBar;->setRating(F)V

    return-object p0
.end method

.method public setTag(IILjava/lang/Object;)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 524
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 525
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setTag(ILjava/lang/Object;)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 510
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 511
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p0
.end method

.method public setText(II)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 114
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 115
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-object p0
.end method

.method public setText(ILjava/lang/CharSequence;)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 108
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 109
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setTextColor(II)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 166
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 167
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method

.method public setTypeface(ILandroid/graphics/Typeface;)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 245
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 246
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 247
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result p2

    or-int/lit16 p2, p2, 0x80

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setPaintFlags(I)V

    return-object p0
.end method

.method public varargs setTypeface(Landroid/graphics/Typeface;[I)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
    .locals 4

    .line 255
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p2, v1

    .line 256
    invoke-virtual {p0, v2}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 257
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 258
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v3

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPaintFlags(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setVisible(IZ)Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 224
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/recyclerview/ZMBaseRecyclerViewItemHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    .line 225
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method
