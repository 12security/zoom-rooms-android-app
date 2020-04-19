.class public Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;
.super Lus/zoom/zrc/login/LoginBaseFragment;
.source "LoginCalendarPickerFragment.java"

# interfaces
.implements Lus/zoom/zrc/login/LoginContract$IRefreshCalendarCallback;


# instance fields
.field private mAddResourceButton:Landroid/view/View;

.field private mAutoSizeLinearLayout:Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;

.field private mListAdapter:Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;

.field private mListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

.field private mSelectedService:Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

.field private mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->onListItemSelected()V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;)Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;
    .locals 0

    .line 31
    iget-object p0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mSelectedService:Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;)Lus/zoom/zrc/login/LoginContract$INavigator;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;)Lus/zoom/zrc/login/LoginContract$IPresenter;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->onSkipButtonClicked()V

    return-void
.end method

.method static synthetic access$500(Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;)Lus/zoom/zrc/login/LoginContract$IPresenter;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object p0

    return-object p0
.end method

.method private isSelectingCalendarService()Z
    .locals 1

    .line 211
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mSelectedService:Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static obtainInstance(Landroidx/fragment/app/FragmentManager;Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;
    .locals 2
    .param p0    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 44
    const-class v0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;->getServiceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;

    if-nez p0, :cond_1

    .line 50
    new-instance p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;

    invoke-direct {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;-><init>()V

    .line 51
    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->setSelectedCalendarService(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)V

    .line 52
    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->setDisplayTag(Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method private onListItemSelected()V
    .locals 3

    .line 215
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->hideSoftKeyboard()V

    .line 216
    invoke-direct {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->isSelectingCalendarService()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mListAdapter:Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;

    invoke-virtual {v0}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->getSelectedCalendarService()Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    move-result-object v0

    .line 218
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v1

    invoke-interface {v1}, Lus/zoom/zrc/login/LoginContract$IPresenter;->getCalendarHelper()Lus/zoom/zrc/login/LoginCalendarHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lus/zoom/zrc/login/LoginCalendarHelper;->isResourceCanCustomInput(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;->getResources()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;->getResources()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v1

    invoke-interface {v1, v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->onEnterCalendarResource(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)V

    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v1

    invoke-interface {v1, v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->onShowCalendarPicker(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)V

    .line 225
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->getUIState()Lus/zoom/zrc/login/LoginContract$IUICache;

    move-result-object v1

    invoke-interface {v1, v0}, Lus/zoom/zrc/login/LoginContract$IUICache;->selectCalendarService(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)V

    goto :goto_1

    .line 227
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mListAdapter:Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;

    invoke-virtual {v0}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->getSelectedCalendarResource()Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;

    move-result-object v0

    .line 228
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mSelectedService:Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    invoke-interface {v1, v2, v0}, Lus/zoom/zrc/login/LoginContract$IPresenter;->assignRoomCalendar(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;)V

    .line 229
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->getUIState()Lus/zoom/zrc/login/LoginContract$IUICache;

    move-result-object v1

    invoke-interface {v1, v0}, Lus/zoom/zrc/login/LoginContract$IUICache;->selectCalendarResource(Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;)V

    :goto_1
    return-void
.end method

.method private onSkipButtonClicked()V
    .locals 3

    .line 269
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mSelectedService:Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lus/zoom/zrc/login/LoginContract$IPresenter;->assignRoomCalendar(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;)V

    return-void
.end method


# virtual methods
.method public getSelectedCalendarService()Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;
    .locals 1

    .line 62
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mSelectedService:Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    return-object v0
.end method

.method public onCalendarRefreshResult(I)V
    .locals 2

    .line 236
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    if-eqz p1, :cond_0

    return-void

    .line 242
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->getUIState()Lus/zoom/zrc/login/LoginContract$IUICache;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$IUICache;->getSelectedCalendarService()Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    move-result-object p1

    .line 243
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->getUIState()Lus/zoom/zrc/login/LoginContract$IUICache;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IUICache;->getSelectedCalendarResource()Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;

    move-result-object v0

    .line 245
    invoke-direct {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->isSelectingCalendarService()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mListAdapter:Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getCalendarServiceList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->setCalendarServiceList(Ljava/util/List;)V

    .line 247
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mListAdapter:Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->selectCalendarService(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_3

    .line 251
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_2
    return-void

    .line 255
    :cond_3
    iput-object p1, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mSelectedService:Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    .line 256
    iget-object p1, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mListAdapter:Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;

    iget-object v1, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mSelectedService:Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    invoke-virtual {p1, v1}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->setCalendarResourceList(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)V

    .line 257
    iget-object p1, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mListAdapter:Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->selectCalendarResource(Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;)V

    .line 260
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mListAdapter:Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;

    invoke-virtual {p1}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->getSelectedPosition()I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_4

    .line 261
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->scrollToPosition(I)V

    .line 263
    :cond_4
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/androidlib/util/UIUtil;->isPortraitMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 264
    iget-object p1, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mAutoSizeLinearLayout:Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;

    invoke-virtual {p1}, Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;->compareListWidth()V

    :cond_5
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 67
    invoke-super {p0, p1}, Lus/zoom/zrc/login/LoginBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->getTag()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "_"

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_"

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 74
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mSelectedService:Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    if-nez v0, :cond_1

    .line 76
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IPresenter;->getCalendarHelper()Lus/zoom/zrc/login/LoginCalendarHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/login/LoginCalendarHelper;->getCalendarService(Ljava/lang/String;)Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mSelectedService:Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
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

    .line 83
    sget p3, Lus/zoom/zrcbox/R$layout;->login_fragment_calendar_picker:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onError(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)Z
    .locals 1

    .line 198
    sget-object v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->AssignRoomCalendar:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    if-ne v0, p1, :cond_2

    const/16 p3, 0xfa5

    if-ne p3, p2, :cond_0

    .line 200
    sget p3, Lus/zoom/zrcbox/R$string;->assign_calendar_failed_not_exit:I

    invoke-virtual {p0, p3}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->getUIState()Lus/zoom/zrc/login/LoginContract$IUICache;

    move-result-object p3

    invoke-interface {p3}, Lus/zoom/zrc/login/LoginContract$IUICache;->getSelectedCalendarResource()Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;

    move-result-object p3

    if-nez p3, :cond_1

    .line 202
    sget p3, Lus/zoom/zrcbox/R$string;->unassign_calendar_failed:I

    invoke-virtual {p0, p3}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 204
    :cond_1
    sget p3, Lus/zoom/zrcbox/R$string;->assign_calendar_failed:I

    invoke-virtual {p0, p3}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 207
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lus/zoom/zrc/login/LoginBaseFragment;->onError(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public onKeyboardClosed()V
    .locals 1

    .line 190
    invoke-super {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->onKeyboardClosed()V

    .line 191
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->isSearchFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->cancelSearch()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 137
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->onStart()V

    .line 139
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->showActionBar()Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    move-result-object v0

    .line 140
    invoke-direct {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->isSelectingCalendarService()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    .line 141
    sget v1, Lus/zoom/zrcbox/R$string;->room_name:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->setBackNavigation(I)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    .line 143
    iget-object v1, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mListAdapter:Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/AppModel;->getCalendarServiceList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->setCalendarServiceList(Ljava/util/List;)V

    .line 144
    iget-object v1, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mListAdapter:Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;

    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->getUIState()Lus/zoom/zrc/login/LoginContract$IUICache;

    move-result-object v3

    invoke-interface {v3}, Lus/zoom/zrc/login/LoginContract$IUICache;->getSelectedCalendarService()Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->selectCalendarService(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)V

    .line 146
    iget-object v1, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mTitleView:Landroid/widget/TextView;

    sget v3, Lus/zoom/zrcbox/R$string;->select_calendar_service:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 147
    iget-object v1, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mAddResourceButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 149
    :cond_0
    sget v1, Lus/zoom/zrcbox/R$string;->calendar_service:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->setBackNavigation(I)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    .line 150
    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->show()V

    .line 151
    iget-object v1, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mListAdapter:Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;

    iget-object v3, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mSelectedService:Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    invoke-virtual {v1, v3}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->setCalendarResourceList(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)V

    .line 152
    iget-object v1, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mListAdapter:Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;

    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->getUIState()Lus/zoom/zrc/login/LoginContract$IUICache;

    move-result-object v3

    invoke-interface {v3}, Lus/zoom/zrc/login/LoginContract$IUICache;->getSelectedCalendarResource()Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->selectCalendarResource(Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;)V

    .line 154
    iget-object v1, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mTitleView:Landroid/widget/TextView;

    sget v3, Lus/zoom/zrcbox/R$string;->select_calendar_resource:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 156
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v1

    invoke-interface {v1}, Lus/zoom/zrc/login/LoginContract$IPresenter;->getCalendarHelper()Lus/zoom/zrc/login/LoginCalendarHelper;

    move-result-object v1

    iget-object v3, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mSelectedService:Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    invoke-virtual {v1, v3}, Lus/zoom/zrc/login/LoginCalendarHelper;->isResourceCanCustomInput(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    iget-object v1, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mAddResourceButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 159
    :cond_1
    iget-object v1, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mAddResourceButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 163
    :goto_0
    sget v1, Lus/zoom/zrcbox/R$string;->sign_out:I

    new-instance v2, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment$5;

    invoke-direct {v2, p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment$5;-><init>(Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;)V

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->setRightAction(ILjava/lang/Runnable;)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    .line 170
    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->show()V

    .line 172
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mListAdapter:Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;

    invoke-virtual {v0}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->getSelectedPosition()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    .line 173
    iget-object v1, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    invoke-virtual {v1, v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->scrollToPosition(I)V

    .line 175
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/UIUtil;->isPortraitMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 176
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mAutoSizeLinearLayout:Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;->compareListWidth()V

    .line 179
    :cond_3
    invoke-super {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 184
    invoke-super {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->onStop()V

    .line 185
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

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

    .line 88
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/login/LoginBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 89
    sget p2, Lus/zoom/zrcbox/R$id;->search_box:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/login/widget/ZRCListSearchBox;

    .line 91
    sget v0, Lus/zoom/zrcbox/R$id;->login_fragment_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mTitleView:Landroid/widget/TextView;

    .line 93
    sget v0, Lus/zoom/zrcbox/R$id;->calendar_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    iput-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    .line 94
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    invoke-virtual {v0, p2}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->setSearchBox(Lus/zoom/zrc/login/widget/ZRCListSearchBox;)V

    .line 96
    iget-object p2, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    new-instance v0, Lus/zoom/zrc/base/widget/GapDividerItemDecoration;

    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lus/zoom/zrc/base/widget/GapDividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 97
    new-instance p2, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;

    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v1

    invoke-interface {v1}, Lus/zoom/zrc/login/LoginContract$IPresenter;->getCalendarHelper()Lus/zoom/zrc/login/LoginCalendarHelper;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;-><init>(Landroid/content/Context;Lus/zoom/zrc/login/LoginCalendarHelper;)V

    iput-object p2, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mListAdapter:Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;

    .line 98
    iget-object p2, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mListAdapter:Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;

    new-instance v0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment$1;-><init>(Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;)V

    invoke-virtual {p2, v0}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->setOnItemSelectedListener(Lus/zoom/zrc/login/widget/ZRCRecyclerListView$IRecyclerItemSelectedListener;)V

    .line 104
    iget-object p2, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mListAdapter:Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;

    invoke-virtual {p2, v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 106
    sget p2, Lus/zoom/zrcbox/R$id;->auto_size_linear_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;

    iput-object p2, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mAutoSizeLinearLayout:Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;

    .line 107
    iget-object p2, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mAutoSizeLinearLayout:Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;

    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    invoke-virtual {p2, v0}, Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;->setRecyclerListView(Lus/zoom/zrc/login/widget/ZRCRecyclerListView;)V

    .line 109
    sget p2, Lus/zoom/zrcbox/R$id;->manually_enter_resource:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mAddResourceButton:Landroid/view/View;

    .line 110
    iget-object p2, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mAddResourceButton:Landroid/view/View;

    new-instance v0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment$2;

    invoke-direct {v0, p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment$2;-><init>(Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    sget p2, Lus/zoom/zrcbox/R$id;->swipe_refresh_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p2, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 118
    iget-object p2, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment$3;

    invoke-direct {v0, p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment$3;-><init>(Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;)V

    invoke-virtual {p2, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 126
    sget p2, Lus/zoom/zrcbox/R$id;->skip_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 127
    new-instance p2, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment$4;

    invoke-direct {p2, p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment$4;-><init>(Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setSelectedCalendarService(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->mSelectedService:Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    return-void
.end method
