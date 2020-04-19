.class public Lus/zoom/zrc/login/room/LoginLocationPickerFragment;
.super Lus/zoom/zrc/login/LoginBaseFragment;
.source "LoginLocationPickerFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "LoginLocationPickerFragment"


# instance fields
.field private mAutoSizeLinearLayout:Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;

.field private mListAdapter:Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;

.field private mListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

.field private mLocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCLocationTree;",
            ">;"
        }
    .end annotation
.end field

.field private mParent:Lus/zoom/zrcsdk/model/ZRCLocationTree;

.field private mTreeTitleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/login/room/LoginLocationPickerFragment;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->onSkipButtonClicked()V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/login/room/LoginLocationPickerFragment;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->onLocationSelected()V

    return-void
.end method

.method static synthetic access$200(Lus/zoom/zrc/login/room/LoginLocationPickerFragment;)Lus/zoom/zrc/login/LoginContract$IPresenter;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object p0

    return-object p0
.end method

.method private getSelectedPosition()I
    .locals 5

    .line 217
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->getUIState()Lus/zoom/zrc/login/LoginContract$IUICache;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IUICache;->getSelectedLocation()Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    .line 220
    :goto_0
    iget-object v3, p0, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->mListAdapter:Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;

    invoke-virtual {v3}, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 221
    iget-object v3, p0, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->mListAdapter:Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;

    invoke-virtual {v3, v2}, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;->getListItem(I)Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object v3

    if-ne v0, v3, :cond_1

    return v2

    .line 225
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v4

    invoke-interface {v4}, Lus/zoom/zrc/login/LoginContract$IPresenter;->getLocationHelper()Lus/zoom/zrc/login/LoginLocationHelper;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lus/zoom/zrc/login/LoginLocationHelper;->isParentToLocation(Lus/zoom/zrcsdk/model/ZRCLocationTree;Lus/zoom/zrcsdk/model/ZRCLocationTree;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static obtainInstance(Landroidx/fragment/app/FragmentManager;Lus/zoom/zrcsdk/model/ZRCLocationTree;)Lus/zoom/zrc/login/room/LoginLocationPickerFragment;
    .locals 2
    .param p0    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lus/zoom/zrcsdk/model/ZRCLocationTree;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 44
    sget-object v0, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->TAG:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getLocationID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;

    if-nez p0, :cond_1

    .line 50
    new-instance p0, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;

    invoke-direct {p0}, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;-><init>()V

    .line 51
    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->setParent(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V

    .line 52
    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->setDisplayTag(Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method private onLocationSelected()V
    .locals 3

    .line 196
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->hideSoftKeyboard()V

    .line 197
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->mListAdapter:Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;

    invoke-virtual {v0}, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCLocationTree;

    .line 198
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->isAssignable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v1

    invoke-interface {v1, v0}, Lus/zoom/zrc/login/LoginContract$IPresenter;->assignRoomLocation(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v1

    invoke-interface {v1, v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->onShowLocationPicker(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V

    .line 205
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->getUIState()Lus/zoom/zrc/login/LoginContract$IUICache;

    move-result-object v1

    invoke-interface {v1}, Lus/zoom/zrc/login/LoginContract$IUICache;->getSelectedLocation()Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 206
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v2

    invoke-interface {v2}, Lus/zoom/zrc/login/LoginContract$IPresenter;->getLocationHelper()Lus/zoom/zrc/login/LoginLocationHelper;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lus/zoom/zrc/login/LoginLocationHelper;->isParentToLocation(Lus/zoom/zrcsdk/model/ZRCLocationTree;Lus/zoom/zrcsdk/model/ZRCLocationTree;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 207
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->getUIState()Lus/zoom/zrc/login/LoginContract$IUICache;

    move-result-object v1

    invoke-interface {v1, v0}, Lus/zoom/zrc/login/LoginContract$IUICache;->selectLocation(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V

    :cond_2
    return-void
.end method

.method private onSkipButtonClicked()V
    .locals 2

    .line 213
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->mParent:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    invoke-interface {v0, v1}, Lus/zoom/zrc/login/LoginContract$IPresenter;->assignRoomLocation(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 63
    invoke-super {p0, p1}, Lus/zoom/zrc/login/LoginBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->getTag()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "_"

    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_"

    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 72
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->mParent:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 73
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IPresenter;->getLocationHelper()Lus/zoom/zrc/login/LoginLocationHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/login/LoginLocationHelper;->getLocation(Ljava/lang/String;)Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->mParent:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    .line 76
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->mParent:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    if-nez p1, :cond_2

    .line 77
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$IPresenter;->getLocationHelper()Lus/zoom/zrc/login/LoginLocationHelper;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/login/LoginLocationHelper;->getFirstDisplayItems()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->mLocations:Ljava/util/List;

    goto :goto_1

    .line 79
    :cond_2
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getChildren()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->mLocations:Ljava/util/List;

    :goto_1
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

    .line 87
    sget p3, Lus/zoom/zrcbox/R$layout;->login_fragment_location_picker:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onError(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)Z
    .locals 1

    .line 189
    sget-object v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->AssignRoomLocation:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    if-ne v0, p1, :cond_0

    .line 190
    sget p3, Lus/zoom/zrcbox/R$string;->assign_location_failed:I

    invoke-virtual {p0, p3}, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 192
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lus/zoom/zrc/login/LoginBaseFragment;->onError(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public onKeyboardClosed()V
    .locals 1

    .line 181
    invoke-super {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->onKeyboardClosed()V

    .line 182
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->mListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->mListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->isSearchFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->mListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->cancelSearch()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 124
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->mListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->onStart()V

    .line 126
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->showActionBar()Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->mParent:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    if-nez v1, :cond_2

    .line 129
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v1

    invoke-interface {v1}, Lus/zoom/zrc/login/LoginContract$IPresenter;->getCalendarHelper()Lus/zoom/zrc/login/LoginCalendarHelper;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/login/LoginCalendarHelper;->hasCalendarToDisplay()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->isLastForCalendarResourceInBackStack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    sget v1, Lus/zoom/zrcbox/R$string;->calendar_resource:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->setBackNavigation(I)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    goto :goto_0

    .line 133
    :cond_0
    sget v1, Lus/zoom/zrcbox/R$string;->calendar_service:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->setBackNavigation(I)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    goto :goto_0

    .line 136
    :cond_1
    sget v1, Lus/zoom/zrcbox/R$string;->room_name:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->setBackNavigation(I)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    .line 138
    :goto_0
    iget-object v1, p0, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->mTreeTitleView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    iget-object v1, p0, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->mListAdapter:Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;->setShowLocationTree(Z)V

    goto :goto_1

    .line 141
    :cond_2
    sget v1, Lus/zoom/zrcbox/R$string;->back:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->setBackNavigation(I)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    .line 142
    iget-object v1, p0, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->mTreeTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v2

    invoke-interface {v2}, Lus/zoom/zrc/login/LoginContract$IPresenter;->getLocationHelper()Lus/zoom/zrc/login/LoginLocationHelper;

    move-result-object v2

    iget-object v3, p0, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->mLocations:Ljava/util/List;

    invoke-virtual {v2, v3}, Lus/zoom/zrc/login/LoginLocationHelper;->getTreeTitle(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v1, p0, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->mListAdapter:Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;->setShowLocationTree(Z)V

    .line 146
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->setDisableAnnounceTitleForAccessibility()V

    .line 148
    :goto_1
    sget v1, Lus/zoom/zrcbox/R$string;->sign_out:I

    new-instance v2, Lus/zoom/zrc/login/room/LoginLocationPickerFragment$3;

    invoke-direct {v2, p0}, Lus/zoom/zrc/login/room/LoginLocationPickerFragment$3;-><init>(Lus/zoom/zrc/login/room/LoginLocationPickerFragment;)V

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->setRightAction(ILjava/lang/Runnable;)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    .line 155
    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->show()V

    .line 158
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->mListAdapter:Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;

    iget-object v1, p0, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->mLocations:Ljava/util/List;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;->updateLocationList(Ljava/util/List;)V

    .line 160
    invoke-direct {p0}, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->getSelectedPosition()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_3

    .line 162
    iget-object v1, p0, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->mListAdapter:Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;

    invoke-virtual {v1, v0}, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;->select(I)V

    .line 163
    iget-object v1, p0, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->mListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    invoke-virtual {v1, v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->scrollToPosition(I)V

    .line 166
    :cond_3
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/UIUtil;->isPortraitMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 167
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->mAutoSizeLinearLayout:Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;->compareListWidth()V

    .line 170
    :cond_4
    invoke-super {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 175
    invoke-super {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->onStop()V

    .line 176
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->mListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 92
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/login/LoginBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 93
    sget p2, Lus/zoom/zrcbox/R$id;->skip_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 94
    new-instance v0, Lus/zoom/zrc/login/room/LoginLocationPickerFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/login/room/LoginLocationPickerFragment$1;-><init>(Lus/zoom/zrc/login/room/LoginLocationPickerFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    sget p2, Lus/zoom/zrcbox/R$id;->location_tree_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->mTreeTitleView:Landroid/widget/TextView;

    .line 103
    sget p2, Lus/zoom/zrcbox/R$id;->search_box:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/login/widget/ZRCListSearchBox;

    .line 105
    sget v0, Lus/zoom/zrcbox/R$id;->location_picker_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    iput-object v0, p0, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->mListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    .line 106
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->mListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    new-instance v1, Lus/zoom/zrc/base/widget/GapDividerItemDecoration;

    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lus/zoom/zrc/base/widget/GapDividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 107
    new-instance v0, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;

    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v2

    invoke-interface {v2}, Lus/zoom/zrc/login/LoginContract$IPresenter;->getLocationHelper()Lus/zoom/zrc/login/LoginLocationHelper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;-><init>(Landroid/content/Context;Lus/zoom/zrc/login/LoginLocationHelper;)V

    iput-object v0, p0, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->mListAdapter:Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;

    .line 108
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->mListAdapter:Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;

    new-instance v1, Lus/zoom/zrc/login/room/LoginLocationPickerFragment$2;

    invoke-direct {v1, p0}, Lus/zoom/zrc/login/room/LoginLocationPickerFragment$2;-><init>(Lus/zoom/zrc/login/room/LoginLocationPickerFragment;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;->setOnItemSelectedListener(Lus/zoom/zrc/login/widget/ZRCRecyclerListView$IRecyclerItemSelectedListener;)V

    .line 114
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->mListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    invoke-virtual {v0, p2}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->setSearchBox(Lus/zoom/zrc/login/widget/ZRCListSearchBox;)V

    .line 116
    iget-object p2, p0, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->mListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->mListAdapter:Lus/zoom/zrc/login/room/LoginLocationPickerAdapter;

    invoke-virtual {p2, v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 118
    sget p2, Lus/zoom/zrcbox/R$id;->auto_size_linear_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;

    iput-object p1, p0, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->mAutoSizeLinearLayout:Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;

    .line 119
    iget-object p1, p0, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->mAutoSizeLinearLayout:Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;

    iget-object p2, p0, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->mListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    invoke-virtual {p1, p2}, Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;->setRecyclerListView(Lus/zoom/zrc/login/widget/ZRCRecyclerListView;)V

    return-void
.end method

.method public setParent(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V
    .locals 0
    .param p1    # Lus/zoom/zrcsdk/model/ZRCLocationTree;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 58
    iput-object p1, p0, Lus/zoom/zrc/login/room/LoginLocationPickerFragment;->mParent:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    return-void
.end method
