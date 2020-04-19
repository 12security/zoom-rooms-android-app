.class public Lus/zoom/zrc/login/room/LoginRoomPickerFragment;
.super Lus/zoom/zrc/login/LoginBaseFragment;
.source "LoginRoomPickerFragment.java"


# instance fields
.field private mAutoSizeLinearLayout:Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;

.field private mListAdapter:Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;

.field private mListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

.field private mScrollCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/login/room/LoginRoomPickerFragment;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->onSelectRoom()V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/login/room/LoginRoomPickerFragment;)Lus/zoom/zrc/login/LoginContract$IPresenter;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/login/room/LoginRoomPickerFragment;)Lus/zoom/zrc/login/LoginContract$INavigator;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$308(Lus/zoom/zrc/login/room/LoginRoomPickerFragment;)I
    .locals 2

    .line 31
    iget v0, p0, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->mScrollCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->mScrollCount:I

    return v0
.end method

.method public static obtainInstance(Landroidx/fragment/app/FragmentManager;)Lus/zoom/zrc/login/room/LoginRoomPickerFragment;
    .locals 1
    .param p0    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 40
    const-class v0, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;

    if-nez p0, :cond_0

    .line 42
    new-instance p0, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;

    invoke-direct {p0}, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;-><init>()V

    :cond_0
    return-object p0
.end method

.method private onSelectRoom()V
    .locals 4

    .line 125
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->mListAdapter:Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;

    invoke-virtual {v0}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/RoomInfo;

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->hideSoftKeyboard()V

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User select room: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v1

    invoke-interface {v1, v0}, Lus/zoom/zrc/login/LoginContract$IPresenter;->selectZoomRoom(Lus/zoom/zrcsdk/model/RoomInfo;)V

    .line 131
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getZrList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :cond_0
    iget v0, p0, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->mScrollCount:I

    invoke-static {v2, v0}, Lus/zoom/zrc/login/LoginUsageTrack;->sendSelectRoom(II)V

    :cond_1
    return-void
.end method

.method private setupListScrollListener()V
    .locals 2

    const/4 v0, 0x0

    .line 137
    iput v0, p0, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->mScrollCount:I

    .line 138
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->mListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    new-instance v1, Lus/zoom/zrc/login/room/LoginRoomPickerFragment$4;

    invoke-direct {v1, p0}, Lus/zoom/zrc/login/room/LoginRoomPickerFragment$4;-><init>(Lus/zoom/zrc/login/room/LoginRoomPickerFragment;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 50
    sget p3, Lus/zoom/zrcbox/R$layout;->login_fragment_room_picker:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onKeyboardClosed()V
    .locals 1

    .line 118
    invoke-super {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->onKeyboardClosed()V

    .line 119
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->mListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->mListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->isSearchFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->mListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->cancelSearch()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 79
    invoke-super {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->onStart()V

    .line 80
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->showActionBar()Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    move-result-object v0

    .line 81
    sget v1, Lus/zoom/zrcbox/R$string;->sign_out:I

    new-instance v2, Lus/zoom/zrc/login/room/LoginRoomPickerFragment$2;

    invoke-direct {v2, p0}, Lus/zoom/zrc/login/room/LoginRoomPickerFragment$2;-><init>(Lus/zoom/zrc/login/room/LoginRoomPickerFragment;)V

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->setLeftAction(ILjava/lang/Runnable;)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    .line 88
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->getUIState()Lus/zoom/zrc/login/LoginContract$IUICache;

    move-result-object v1

    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-interface {v1, v2}, Lus/zoom/zrc/login/LoginContract$IUICache;->canCreateRoom(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    sget v1, Lus/zoom/zrcbox/R$string;->add_new_room:I

    new-instance v2, Lus/zoom/zrc/login/room/LoginRoomPickerFragment$3;

    invoke-direct {v2, p0}, Lus/zoom/zrc/login/room/LoginRoomPickerFragment$3;-><init>(Lus/zoom/zrc/login/room/LoginRoomPickerFragment;)V

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->setRightAction(ILjava/lang/Runnable;)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    .line 97
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->show()V

    .line 98
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lus/zoom/zrc/login/LoginContract$INavigator;->setShowFooter(Z)V

    .line 100
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->mListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->onStart()V

    .line 101
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->mListAdapter:Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getZrList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->updateRoomList(Ljava/util/List;)V

    .line 103
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/UIUtil;->isPortraitMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->mAutoSizeLinearLayout:Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;->compareListWidth()V

    .line 107
    :cond_1
    invoke-direct {p0}, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->setupListScrollListener()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 112
    invoke-super {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->onStop()V

    .line 113
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->mListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 55
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/login/LoginBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 56
    sget p2, Lus/zoom/zrcbox/R$id;->search_box:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/login/widget/ZRCListSearchBox;

    .line 58
    new-instance v0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;

    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->mListAdapter:Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;

    .line 59
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->mListAdapter:Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;

    new-instance v1, Lus/zoom/zrc/login/room/LoginRoomPickerFragment$1;

    invoke-direct {v1, p0}, Lus/zoom/zrc/login/room/LoginRoomPickerFragment$1;-><init>(Lus/zoom/zrc/login/room/LoginRoomPickerFragment;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;->setOnItemSelectedListener(Lus/zoom/zrc/login/widget/ZRCRecyclerListView$IRecyclerItemSelectedListener;)V

    .line 66
    sget v0, Lus/zoom/zrcbox/R$id;->zoom_rooms_list_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    iput-object v0, p0, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->mListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    .line 67
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->mListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    invoke-virtual {v0, p2}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->setSearchBox(Lus/zoom/zrc/login/widget/ZRCListSearchBox;)V

    .line 69
    iget-object p2, p0, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->mListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    invoke-virtual {p2}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->setDisableCornerBottom()V

    .line 70
    iget-object p2, p0, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->mListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    new-instance v0, Lus/zoom/zrc/base/widget/GapDividerItemDecoration;

    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lus/zoom/zrc/base/widget/GapDividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 71
    iget-object p2, p0, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->mListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->mListAdapter:Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;

    invoke-virtual {p2, v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 73
    sget p2, Lus/zoom/zrcbox/R$id;->auto_size_linear_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;

    iput-object p1, p0, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->mAutoSizeLinearLayout:Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;

    .line 74
    iget-object p1, p0, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->mAutoSizeLinearLayout:Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;

    iget-object p2, p0, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->mListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    invoke-virtual {p1, p2}, Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;->setRecyclerListView(Lus/zoom/zrc/login/widget/ZRCRecyclerListView;)V

    return-void
.end method
