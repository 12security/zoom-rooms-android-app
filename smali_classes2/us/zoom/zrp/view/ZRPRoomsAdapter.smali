.class public Lus/zoom/zrp/view/ZRPRoomsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ZRPRoomsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrp/view/ZRPRoomsAdapter$ZRPRoomViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lus/zoom/zrp/view/ZRPRoomsAdapter$ZRPRoomViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private onRoomClickListener:Lus/zoom/zrp/roomlist/OnRoomClickListener;

.field private reservableRoomList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrp/model/ZRPRoomInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 25
    iput-object p1, p0, Lus/zoom/zrp/view/ZRPRoomsAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrp/view/ZRPRoomsAdapter;)Lus/zoom/zrp/roomlist/OnRoomClickListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lus/zoom/zrp/view/ZRPRoomsAdapter;->onRoomClickListener:Lus/zoom/zrp/roomlist/OnRoomClickListener;

    return-object p0
.end method

.method private updateRoomBusyStateUI(ZLus/zoom/zrp/view/ZRPRoomsAdapter$ZRPRoomViewHolder;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 81
    invoke-static {p2}, Lus/zoom/zrp/view/ZRPRoomsAdapter$ZRPRoomViewHolder;->access$300(Lus/zoom/zrp/view/ZRPRoomsAdapter$ZRPRoomViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$string;->busy:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 82
    invoke-static {p2}, Lus/zoom/zrp/view/ZRPRoomsAdapter$ZRPRoomViewHolder;->access$300(Lus/zoom/zrp/view/ZRPRoomsAdapter$ZRPRoomViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrp/view/ZRPRoomsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$color;->zrp_reserve_status_red:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    invoke-static {p2}, Lus/zoom/zrp/view/ZRPRoomsAdapter$ZRPRoomViewHolder;->access$000(Lus/zoom/zrp/view/ZRPRoomsAdapter$ZRPRoomViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lus/zoom/zrp/view/ZRPRoomsAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lus/zoom/zrcbox/R$color;->zrp_reserve_status_red:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-static {p2}, Lus/zoom/zrp/view/ZRPRoomsAdapter$ZRPRoomViewHolder;->access$300(Lus/zoom/zrp/view/ZRPRoomsAdapter$ZRPRoomViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$string;->available:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 86
    invoke-static {p2}, Lus/zoom/zrp/view/ZRPRoomsAdapter$ZRPRoomViewHolder;->access$300(Lus/zoom/zrp/view/ZRPRoomsAdapter$ZRPRoomViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrp/view/ZRPRoomsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$color;->zrp_reserve_status_green:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    invoke-static {p2}, Lus/zoom/zrp/view/ZRPRoomsAdapter$ZRPRoomViewHolder;->access$000(Lus/zoom/zrp/view/ZRPRoomsAdapter$ZRPRoomViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lus/zoom/zrp/view/ZRPRoomsAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lus/zoom/zrcbox/R$color;->zrp_reserve_status_green:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 43
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPRoomsAdapter;->reservableRoomList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 18
    check-cast p1, Lus/zoom/zrp/view/ZRPRoomsAdapter$ZRPRoomViewHolder;

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrp/view/ZRPRoomsAdapter;->onBindViewHolder(Lus/zoom/zrp/view/ZRPRoomsAdapter$ZRPRoomViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lus/zoom/zrp/view/ZRPRoomsAdapter$ZRPRoomViewHolder;I)V
    .locals 2
    .param p1    # Lus/zoom/zrp/view/ZRPRoomsAdapter$ZRPRoomViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 55
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPRoomsAdapter;->reservableRoomList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lus/zoom/zrp/model/ZRPRoomInfo;

    .line 57
    invoke-static {p1}, Lus/zoom/zrp/view/ZRPRoomsAdapter$ZRPRoomViewHolder;->access$000(Lus/zoom/zrp/view/ZRPRoomsAdapter$ZRPRoomViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lus/zoom/zrp/model/ZRPRoomInfo;->getRoomName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p2}, Lus/zoom/zrp/model/ZRPRoomInfo;->isBusy()Z

    move-result v0

    invoke-direct {p0, v0, p1}, Lus/zoom/zrp/view/ZRPRoomsAdapter;->updateRoomBusyStateUI(ZLus/zoom/zrp/view/ZRPRoomsAdapter$ZRPRoomViewHolder;)V

    .line 60
    iget-object v0, p1, Lus/zoom/zrp/view/ZRPRoomsAdapter$ZRPRoomViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lus/zoom/zrp/view/ZRPRoomsAdapter$1;

    invoke-direct {v1, p0, p2}, Lus/zoom/zrp/view/ZRPRoomsAdapter$1;-><init>(Lus/zoom/zrp/view/ZRPRoomsAdapter;Lus/zoom/zrp/model/ZRPRoomInfo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-static {p1}, Lus/zoom/zrp/view/ZRPRoomsAdapter$ZRPRoomViewHolder;->access$200(Lus/zoom/zrp/view/ZRPRoomsAdapter$ZRPRoomViewHolder;)Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Lus/zoom/zrp/view/ZRPRoomsAdapter$2;

    invoke-direct {v0, p0, p2}, Lus/zoom/zrp/view/ZRPRoomsAdapter$2;-><init>(Lus/zoom/zrp/view/ZRPRoomsAdapter;Lus/zoom/zrp/model/ZRPRoomInfo;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    .line 18
    invoke-virtual {p0, p1, p2}, Lus/zoom/zrp/view/ZRPRoomsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrp/view/ZRPRoomsAdapter$ZRPRoomViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrp/view/ZRPRoomsAdapter$ZRPRoomViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 49
    iget-object p2, p0, Lus/zoom/zrp/view/ZRPRoomsAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lus/zoom/zrcbox/R$layout;->item_zrp_room:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 50
    new-instance p2, Lus/zoom/zrp/view/ZRPRoomsAdapter$ZRPRoomViewHolder;

    invoke-direct {p2, p0, p1}, Lus/zoom/zrp/view/ZRPRoomsAdapter$ZRPRoomViewHolder;-><init>(Lus/zoom/zrp/view/ZRPRoomsAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnRoomClickListener(Lus/zoom/zrp/roomlist/OnRoomClickListener;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lus/zoom/zrp/view/ZRPRoomsAdapter;->onRoomClickListener:Lus/zoom/zrp/roomlist/OnRoomClickListener;

    return-void
.end method

.method public updateDataSource(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrp/model/ZRPRoomInfo;",
            ">;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lus/zoom/zrp/view/ZRPRoomsAdapter;->reservableRoomList:Ljava/util/List;

    return-void
.end method
