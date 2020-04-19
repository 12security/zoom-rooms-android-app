.class public Lus/zoom/zrp/roomlist/ZRPRoomListView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "ZRPRoomListView.java"

# interfaces
.implements Lus/zoom/zrp/roomlist/IZRPRoomsView;


# instance fields
.field private adapter:Lus/zoom/zrp/view/ZRPRoomsAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, v0}, Lus/zoom/zrp/roomlist/ZRPRoomListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2, v0}, Lus/zoom/zrp/roomlist/ZRPRoomListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lus/zoom/zrp/roomlist/ZRPRoomListView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 31
    new-instance p2, Lus/zoom/zrp/view/ZRPRoomsAdapter;

    invoke-direct {p2, p1}, Lus/zoom/zrp/view/ZRPRoomsAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lus/zoom/zrp/roomlist/ZRPRoomListView;->adapter:Lus/zoom/zrp/view/ZRPRoomsAdapter;

    .line 32
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomListView;->adapter:Lus/zoom/zrp/view/ZRPRoomsAdapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lus/zoom/zrp/view/ZRPRoomsAdapter;->setHasStableIds(Z)V

    .line 33
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomListView;->adapter:Lus/zoom/zrp/view/ZRPRoomsAdapter;

    invoke-virtual {p0, p1}, Lus/zoom/zrp/roomlist/ZRPRoomListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private updateRoomsState(Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;)V
    .locals 2

    .line 82
    invoke-virtual {p1}, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->getAvailabilityChangedRoomIndexInAllRoomList()Ljava/util/List;

    move-result-object v0

    .line 83
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 84
    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomListView;->adapter:Lus/zoom/zrp/view/ZRPRoomsAdapter;

    invoke-virtual {p1}, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->getOtherReservableRooms()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lus/zoom/zrp/view/ZRPRoomsAdapter;->updateDataSource(Ljava/util/List;)V

    .line 85
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomListView;->adapter:Lus/zoom/zrp/view/ZRPRoomsAdapter;

    invoke-virtual {p1}, Lus/zoom/zrp/view/ZRPRoomsAdapter;->notifyDataSetChanged()V

    .line 86
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onSlideInScreen()V
    .locals 0

    return-void
.end method

.method public onSlideOutScreen()V
    .locals 0

    return-void
.end method

.method public setOnRoomClickListener(Lus/zoom/zrp/roomlist/OnRoomClickListener;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomListView;->adapter:Lus/zoom/zrp/view/ZRPRoomsAdapter;

    invoke-virtual {v0, p1}, Lus/zoom/zrp/view/ZRPRoomsAdapter;->setOnRoomClickListener(Lus/zoom/zrp/roomlist/OnRoomClickListener;)V

    return-void
.end method

.method public showMyLocation()V
    .locals 0

    return-void
.end method

.method public updateRoomList(Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomListView;->adapter:Lus/zoom/zrp/view/ZRPRoomsAdapter;

    invoke-virtual {p1}, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->getOtherReservableRooms()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lus/zoom/zrp/view/ZRPRoomsAdapter;->updateDataSource(Ljava/util/List;)V

    .line 59
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomListView;->adapter:Lus/zoom/zrp/view/ZRPRoomsAdapter;

    invoke-virtual {p1}, Lus/zoom/zrp/view/ZRPRoomsAdapter;->notifyDataSetChanged()V

    .line 61
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomListView;->adapter:Lus/zoom/zrp/view/ZRPRoomsAdapter;

    invoke-virtual {p1}, Lus/zoom/zrp/view/ZRPRoomsAdapter;->getItemCount()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 62
    invoke-virtual {p0, p1}, Lus/zoom/zrp/roomlist/ZRPRoomListView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public updateRoomsMeetings(Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lus/zoom/zrp/roomlist/ZRPRoomListView;->updateRoomsState(Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;)V

    return-void
.end method

.method public updateTimeBlock(Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lus/zoom/zrp/roomlist/ZRPRoomListView;->updateRoomsState(Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;)V

    return-void
.end method

.method public updateVisibility(I)V
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lus/zoom/zrp/roomlist/ZRPRoomListView;->setVisibility(I)V

    return-void
.end method
