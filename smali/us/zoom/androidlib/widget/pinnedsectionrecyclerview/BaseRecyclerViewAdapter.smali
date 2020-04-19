.class public abstract Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BaseRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter$OnRecyclerViewListener;,
        Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter$BaseViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter$BaseViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final VIEW_TYPE_EMPTY:I = 0x4

.field public static final VIEW_TYPE_FOOTER:I = 0x3

.field public static final VIEW_TYPE_HEADER:I = 0x1

.field public static final VIEW_TYPE_ITEM:I = 0x2


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected mListener:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter$OnRecyclerViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    iput-object p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter;->mContext:Landroid/content/Context;

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter;->mData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 78
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public addAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 53
    iget-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 54
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter;->mData:Ljava/util/List;

    return-object v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 29
    iget-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasFooter()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasHeader()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public remove(I)V
    .locals 1

    .line 59
    iget-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 64
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 68
    iget-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter;->mData:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter;->mData:Ljava/util/List;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter;->mData:Ljava/util/List;

    .line 44
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_1

    .line 46
    iget-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 47
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public setOnRecyclerViewListener(Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter$OnRecyclerViewListener;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter;->mListener:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter$OnRecyclerViewListener;

    return-void
.end method
