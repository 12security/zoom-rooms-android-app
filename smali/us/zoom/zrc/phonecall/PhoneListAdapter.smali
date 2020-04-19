.class public abstract Lus/zoom/zrc/phonecall/PhoneListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PhoneListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lus/zoom/zrc/phonecall/CallerViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field private final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrc/phonecall/PhoneListItemData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrc/phonecall/PhoneListItemData;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 14
    iput-object p1, p0, Lus/zoom/zrc/phonecall/PhoneListAdapter;->data:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 30
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneListAdapter;->data:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 33
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 10
    check-cast p1, Lus/zoom/zrc/phonecall/CallerViewHolder;

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/phonecall/PhoneListAdapter;->onBindViewHolder(Lus/zoom/zrc/phonecall/CallerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lus/zoom/zrc/phonecall/CallerViewHolder;I)V
    .locals 1
    .param p1    # Lus/zoom/zrc/phonecall/CallerViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneListAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/phonecall/PhoneListItemData;

    invoke-virtual {p1, p2}, Lus/zoom/zrc/phonecall/CallerViewHolder;->bindData(Lus/zoom/zrc/phonecall/PhoneListItemData;)V

    return-void
.end method

.method public update(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrc/phonecall/PhoneListItemData;",
            ">;)V"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneListAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 19
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneListAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneListAdapter;->notifyDataSetChanged()V

    return-void
.end method
