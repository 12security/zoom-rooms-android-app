.class public Lus/zoom/androidlib/material/ZMContextMenuListAdapter;
.super Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter;
.source "ZMContextMenuListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lus/zoom/androidlib/widget/IZMMenuItem;",
        ">",
        "Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/androidlib/material/ZMContextMenuListAdapter;)Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter$OnRecyclerViewListener;
    .locals 0

    .line 14
    iget-object p0, p0, Lus/zoom/androidlib/material/ZMContextMenuListAdapter;->mListener:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter$OnRecyclerViewListener;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/androidlib/material/ZMContextMenuListAdapter;)Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter$OnRecyclerViewListener;
    .locals 0

    .line 14
    iget-object p0, p0, Lus/zoom/androidlib/material/ZMContextMenuListAdapter;->mListener:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter$OnRecyclerViewListener;

    return-object p0
.end method

.method private bind(Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter$BaseViewHolder;Lus/zoom/androidlib/widget/IZMMenuItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter$BaseViewHolder;",
            "TT;)V"
        }
    .end annotation

    .line 55
    iget-object v0, p1, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter$BaseViewHolder;->itemView:Landroid/view/View;

    sget v1, Lus/zoom/androidlib/R$id;->menu_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 57
    invoke-interface {p2}, Lus/zoom/androidlib/widget/IZMMenuItem;->getLabel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :cond_0
    iget-object p2, p1, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter$BaseViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lus/zoom/androidlib/material/ZMContextMenuListAdapter$1;

    invoke-direct {v0, p0, p1}, Lus/zoom/androidlib/material/ZMContextMenuListAdapter$1;-><init>(Lus/zoom/androidlib/material/ZMContextMenuListAdapter;Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter$BaseViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/material/ZMContextMenuListAdapter;->getItem(I)Lus/zoom/androidlib/widget/IZMMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lus/zoom/androidlib/widget/IZMMenuItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 51
    invoke-super {p0, p1}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/androidlib/widget/IZMMenuItem;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 46
    iget-object v0, p0, Lus/zoom/androidlib/material/ZMContextMenuListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 14
    check-cast p1, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter$BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lus/zoom/androidlib/material/ZMContextMenuListAdapter;->onBindViewHolder(Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter$BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter$BaseViewHolder;I)V
    .locals 2
    .param p1    # Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter$BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter$BaseViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0, p2}, Lus/zoom/androidlib/material/ZMContextMenuListAdapter;->getItem(I)Lus/zoom/androidlib/widget/IZMMenuItem;

    move-result-object p2

    .line 35
    invoke-direct {p0, p1, p2}, Lus/zoom/androidlib/material/ZMContextMenuListAdapter;->bind(Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter$BaseViewHolder;Lus/zoom/androidlib/widget/IZMMenuItem;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 14
    invoke-virtual {p0, p1, p2}, Lus/zoom/androidlib/material/ZMContextMenuListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter$BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter$BaseViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 24
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lus/zoom/androidlib/R$layout;->zm_context_menu_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 25
    new-instance p2, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter$BaseViewHolder;

    invoke-direct {p2, p1}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter$BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
