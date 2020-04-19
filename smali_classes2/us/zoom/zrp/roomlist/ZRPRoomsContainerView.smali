.class public Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;
.super Landroid/widget/FrameLayout;
.source "ZRPRoomsContainerView.java"

# interfaces
.implements Lus/zoom/zrp/roomlist/IZRPRoomsView;


# instance fields
.field private context:Landroid/content/Context;

.field private emptyRoomListWrapper:Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;

.field private hiddenView:Lus/zoom/zrp/roomlist/IZRPRoomsView;

.field private roomListView:Lus/zoom/zrp/roomlist/ZRPRoomListView;

.field private roomMapView:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

.field private shownView:Lus/zoom/zrp/roomlist/IZRPRoomsView;

.field private tvRoomsEmpty:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->context:Landroid/content/Context;

    .line 40
    new-instance p1, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;

    invoke-direct {p1}, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;-><init>()V

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->emptyRoomListWrapper:Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;

    return-void
.end method

.method private updateRoomsEmptyView(Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;)V
    .locals 5

    .line 97
    invoke-virtual {p1}, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->isShowWithRoomMap()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->getOtherReservableRooms()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->tvRoomsEmpty:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->roomListView:Lus/zoom/zrp/roomlist/ZRPRoomListView;

    invoke-virtual {v0, v1}, Lus/zoom/zrp/roomlist/ZRPRoomListView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->roomMapView:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-virtual {v0, v1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->setVisibility(I)V

    .line 104
    invoke-virtual {p1}, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->getRoomMapInfo()Lus/zoom/zrcsdk/model/ZRCLocationInfo;

    move-result-object p1

    if-nez p1, :cond_1

    .line 106
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->tvRoomsEmpty:Landroid/widget/TextView;

    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->context:Landroid/content/Context;

    sget v1, Lus/zoom/zrcbox/R$string;->no_reservable_rooms:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 108
    :cond_1
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->tvRoomsEmpty:Landroid/widget/TextView;

    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->context:Landroid/content/Context;

    sget v3, Lus/zoom/zrcbox/R$string;->no_reservable_rooms_on_location:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->getLocationName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 98
    :cond_2
    :goto_0
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->tvRoomsEmpty:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->tvRoomsEmpty:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 45
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 47
    sget v0, Lus/zoom/zrcbox/R$id;->rv_rooms:I

    invoke-virtual {p0, v0}, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/zrp/roomlist/ZRPRoomListView;

    iput-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->roomListView:Lus/zoom/zrp/roomlist/ZRPRoomListView;

    .line 48
    sget v0, Lus/zoom/zrcbox/R$id;->location_map:I

    invoke-virtual {p0, v0}, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    iput-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->roomMapView:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    .line 49
    sget v0, Lus/zoom/zrcbox/R$id;->tv_rooms_empty:I

    invoke-virtual {p0, v0}, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->tvRoomsEmpty:Landroid/widget/TextView;

    return-void
.end method

.method public onSlideInScreen()V
    .locals 1

    .line 60
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->shownView:Lus/zoom/zrp/roomlist/IZRPRoomsView;

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0}, Lus/zoom/zrp/roomlist/IZRPRoomsView;->onSlideInScreen()V

    :cond_0
    return-void
.end method

.method public onSlideOutScreen()V
    .locals 1

    .line 67
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->shownView:Lus/zoom/zrp/roomlist/IZRPRoomsView;

    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0}, Lus/zoom/zrp/roomlist/IZRPRoomsView;->onSlideOutScreen()V

    :cond_0
    return-void
.end method

.method public setOnRoomClickListener(Lus/zoom/zrp/roomlist/OnRoomClickListener;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->roomListView:Lus/zoom/zrp/roomlist/ZRPRoomListView;

    invoke-virtual {v0, p1}, Lus/zoom/zrp/roomlist/ZRPRoomListView;->setOnRoomClickListener(Lus/zoom/zrp/roomlist/OnRoomClickListener;)V

    .line 55
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->roomMapView:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-virtual {v0, p1}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->setOnRoomClickListener(Lus/zoom/zrp/roomlist/OnRoomClickListener;)V

    return-void
.end method

.method public showMyLocation()V
    .locals 1

    .line 129
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->shownView:Lus/zoom/zrp/roomlist/IZRPRoomsView;

    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v0}, Lus/zoom/zrp/roomlist/IZRPRoomsView;->showMyLocation()V

    :cond_0
    return-void
.end method

.method public updateRoomList(Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;)V
    .locals 2

    .line 79
    invoke-virtual {p1}, Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;->isShowWithRoomMap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->roomMapView:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    iput-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->shownView:Lus/zoom/zrp/roomlist/IZRPRoomsView;

    .line 81
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->roomListView:Lus/zoom/zrp/roomlist/ZRPRoomListView;

    iput-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->hiddenView:Lus/zoom/zrp/roomlist/IZRPRoomsView;

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->roomListView:Lus/zoom/zrp/roomlist/ZRPRoomListView;

    iput-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->shownView:Lus/zoom/zrp/roomlist/IZRPRoomsView;

    .line 84
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->roomMapView:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    iput-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->hiddenView:Lus/zoom/zrp/roomlist/IZRPRoomsView;

    .line 87
    :goto_0
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->shownView:Lus/zoom/zrp/roomlist/IZRPRoomsView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lus/zoom/zrp/roomlist/IZRPRoomsView;->updateVisibility(I)V

    .line 88
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->hiddenView:Lus/zoom/zrp/roomlist/IZRPRoomsView;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lus/zoom/zrp/roomlist/IZRPRoomsView;->updateVisibility(I)V

    .line 90
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->shownView:Lus/zoom/zrp/roomlist/IZRPRoomsView;

    invoke-interface {v0, p1}, Lus/zoom/zrp/roomlist/IZRPRoomsView;->updateRoomList(Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;)V

    .line 91
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->hiddenView:Lus/zoom/zrp/roomlist/IZRPRoomsView;

    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->emptyRoomListWrapper:Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;

    invoke-interface {v0, v1}, Lus/zoom/zrp/roomlist/IZRPRoomsView;->updateRoomList(Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;)V

    .line 93
    invoke-direct {p0, p1}, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->updateRoomsEmptyView(Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;)V

    return-void
.end method

.method public updateRoomsMeetings(Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->shownView:Lus/zoom/zrp/roomlist/IZRPRoomsView;

    if-eqz v0, :cond_0

    .line 116
    invoke-interface {v0, p1}, Lus/zoom/zrp/roomlist/IZRPRoomsView;->updateRoomsMeetings(Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;)V

    :cond_0
    return-void
.end method

.method public updateTimeBlock(Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomsContainerView;->shownView:Lus/zoom/zrp/roomlist/IZRPRoomsView;

    if-eqz v0, :cond_0

    .line 123
    invoke-interface {v0, p1}, Lus/zoom/zrp/roomlist/IZRPRoomsView;->updateTimeBlock(Lus/zoom/zrp/model/ZRPRoomInfoListWrapper;)V

    :cond_0
    return-void
.end method

.method public updateVisibility(I)V
    .locals 0

    return-void
.end method
