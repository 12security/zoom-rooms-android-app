.class public Lus/zoom/zrc/view/IMAddrBookListFragment;
.super Lus/zoom/zrc/base/app/ZRCFragment;
.source "IMAddrBookListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lus/zoom/zrc/view/ISelectedMeetingListener;
.implements Lus/zoom/zrc/model/AppEngine$IZRIMEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/IMAddrBookListFragment$OnClickMeetingNowBtnListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private contactListContent:Landroid/view/View;

.field private duration:I

.field private dynamicSearchListView:Lus/zoom/zrc/view/DynamicImContactSearchListView;

.field private firstVisiblePosition:I

.field private hasSelectedContactsFromSearch:Z

.field private lastKeyword:Ljava/lang/String;

.field private layoutBottomMenu:Landroid/view/View;

.field private layoutCallRoomSystem:Landroid/view/View;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrc/model/ZRCContactImData;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDurationLabel:Landroid/widget/TextView;

.field private mDurationLayout:Landroid/view/View;

.field private mEdtSearch:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mList:Landroid/widget/ExpandableListView;

.field private mListAdapter:Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;

.field mMeetingNow:Landroid/widget/Button;

.field private mRunnableFilter:Ljava/lang/Runnable;

.field private mTvNoOneInvited:Landroid/widget/TextView;

.field private mZmDynamicList:Landroid/widget/ListView;

.field private mZmListLayout:Landroid/view/View;

.field private onClickMeetingNowBtnListener:Lus/zoom/zrc/view/IMAddrBookListFragment$OnClickMeetingNowBtnListener;

.field private parent:Landroid/view/View;

.field private searchCloudView:Landroid/view/View;

.field private searchListAdapter:Lus/zoom/zrc/view/adapter/SearchListAdapter;

.field private searchListView:Landroid/widget/ListView;

.field selectedAdapter:Lus/zoom/zrc/view/adapter/SlectedContactListAdapter;

.field private selectedContactListContent:Landroid/view/View;

.field private seletedListView:Lus/zoom/zrc/view/MaxHeightListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCFragment;-><init>()V

    .line 74
    const-class v0, Lus/zoom/zrc/view/IMAddrBookListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->TAG:Ljava/lang/String;

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mHandler:Landroid/os/Handler;

    .line 120
    new-instance v0, Lus/zoom/zrc/view/IMAddrBookListFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/IMAddrBookListFragment$1;-><init>(Lus/zoom/zrc/view/IMAddrBookListFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mRunnableFilter:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/IMAddrBookListFragment;)Landroid/widget/EditText;
    .locals 0

    .line 73
    iget-object p0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mEdtSearch:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/IMAddrBookListFragment;)Landroid/widget/ExpandableListView;
    .locals 0

    .line 73
    iget-object p0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mList:Landroid/widget/ExpandableListView;

    return-object p0
.end method

.method static synthetic access$1000(Lus/zoom/zrc/view/IMAddrBookListFragment;)Lus/zoom/zrc/view/IMAddrBookListFragment$OnClickMeetingNowBtnListener;
    .locals 0

    .line 73
    iget-object p0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->onClickMeetingNowBtnListener:Lus/zoom/zrc/view/IMAddrBookListFragment$OnClickMeetingNowBtnListener;

    return-object p0
.end method

.method static synthetic access$1100(Lus/zoom/zrc/view/IMAddrBookListFragment;)I
    .locals 0

    .line 73
    iget p0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->firstVisiblePosition:I

    return p0
.end method

.method static synthetic access$1200(Lus/zoom/zrc/view/IMAddrBookListFragment;)Lus/zoom/zrc/view/MaxHeightListView;
    .locals 0

    .line 73
    iget-object p0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->seletedListView:Lus/zoom/zrc/view/MaxHeightListView;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/view/IMAddrBookListFragment;)Lus/zoom/zrc/view/adapter/SearchListAdapter;
    .locals 0

    .line 73
    iget-object p0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->searchListAdapter:Lus/zoom/zrc/view/adapter/SearchListAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/zrc/view/IMAddrBookListFragment;)Landroid/widget/ListView;
    .locals 0

    .line 73
    iget-object p0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->searchListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$400(Lus/zoom/zrc/view/IMAddrBookListFragment;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->setSelectedContactListViewMaxHeight()V

    return-void
.end method

.method static synthetic access$502(Lus/zoom/zrc/view/IMAddrBookListFragment;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->hasSelectedContactsFromSearch:Z

    return p1
.end method

.method static synthetic access$600(Lus/zoom/zrc/view/IMAddrBookListFragment;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->lastKeyword:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lus/zoom/zrc/view/IMAddrBookListFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 73
    iput-object p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->lastKeyword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lus/zoom/zrc/view/IMAddrBookListFragment;)Lus/zoom/zrc/view/DynamicImContactSearchListView;
    .locals 0

    .line 73
    iget-object p0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->dynamicSearchListView:Lus/zoom/zrc/view/DynamicImContactSearchListView;

    return-object p0
.end method

.method static synthetic access$800(Lus/zoom/zrc/view/IMAddrBookListFragment;Landroid/text/Editable;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/IMAddrBookListFragment;->searchLocalContact(Landroid/text/Editable;)V

    return-void
.end method

.method static synthetic access$900(Lus/zoom/zrc/view/IMAddrBookListFragment;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->onClickBtnClearSearchView()V

    return-void
.end method

.method private expandGroup()V
    .locals 2

    const/4 v0, 0x0

    .line 464
    :goto_0
    iget-object v1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mListAdapter:Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;

    invoke-virtual {v1}, Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;->getGroupCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 465
    iget-object v1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isContact(Lus/zoom/zrcsdk/model/ZRCContact;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;)Z"
        }
    .end annotation

    .line 800
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCContact;

    .line 801
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->getJid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCContact;->getJid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public static newInstance()Lus/zoom/zrc/view/IMAddrBookListFragment;
    .locals 2

    .line 190
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 191
    new-instance v1, Lus/zoom/zrc/view/IMAddrBookListFragment;

    invoke-direct {v1}, Lus/zoom/zrc/view/IMAddrBookListFragment;-><init>()V

    .line 192
    invoke-virtual {v1, v0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private onClickBtnClearSearchView()V
    .locals 2

    .line 569
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mEdtSearch:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 570
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mEdtSearch:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lus/zoom/androidlib/util/UIUtil;->closeSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 571
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->searchListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 572
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->dynamicSearchListView:Lus/zoom/zrc/view/DynamicImContactSearchListView;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/DynamicImContactSearchListView;->setVisibility(I)V

    .line 573
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getDynamicContactList()Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->searchFinished()V

    return-void
.end method

.method private onUpdateFeatureList()V
    .locals 0

    .line 844
    invoke-direct {p0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->updateImContactListByFeatureList()V

    .line 845
    invoke-direct {p0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->update3rdRoomSystemEntrance()V

    return-void
.end method

.method private onUpdateHideContactList()V
    .locals 2

    .line 832
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isHideContactList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 833
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->clearSelectedContacts()V

    .line 835
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->contactListContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 836
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->selectedContactListContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 838
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->contactListContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 839
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->selectedContactListContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private searchLocalContact(Landroid/text/Editable;)V
    .locals 4

    .line 440
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mRunnableFilter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 441
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mRunnableFilter:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 442
    invoke-direct {p0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->updateBtnClearSearchView()V

    .line 443
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    .line 444
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->searchCloudView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 445
    iget-object v2, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->searchListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 447
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mContext:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$layout;->search_more_cloud:I

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->searchCloudView:Landroid/view/View;

    .line 448
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->searchCloudView:Landroid/view/View;

    new-instance v1, Lus/zoom/zrc/view/IMAddrBookListFragment$13;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrc/view/IMAddrBookListFragment$13;-><init>(Lus/zoom/zrc/view/IMAddrBookListFragment;Landroid/text/Editable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    iget-object p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->searchListView:Landroid/widget/ListView;

    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->searchCloudView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    goto :goto_0

    .line 456
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->searchCloudView:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-ge p1, v2, :cond_2

    .line 457
    iget-object p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->searchListView:Landroid/widget/ListView;

    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->searchCloudView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 458
    iput-object v1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->searchCloudView:Landroid/view/View;

    :cond_2
    :goto_0
    return-void
.end method

.method private setSelectedContactListViewMaxHeight()V
    .locals 3

    .line 720
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mMeetingNow:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 721
    iget-object v1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->parent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->layoutBottomMenu:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mMeetingNow:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v1, v2

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    iget-object v1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mContext:Landroid/content/Context;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2, v1}, Lus/zoom/zrc/utils/Util;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 722
    iget-object v1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->seletedListView:Lus/zoom/zrc/view/MaxHeightListView;

    invoke-virtual {v1, v0}, Lus/zoom/zrc/view/MaxHeightListView;->setMaxHeight(I)V

    return-void
.end method

.method private showCallRoomDialog()V
    .locals 4

    .line 543
    invoke-static {}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getDefault()Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->newRoomSystemSession(I)V

    .line 544
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/UserEvent;->ClickStartRoomSystemMeeting:Lus/zoom/zrc/base/notification/UserEvent;

    const-string v2, "showInputDialog"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method private showMeetingSeekDurationBar()V
    .locals 4

    .line 548
    new-instance v0, Lus/zoom/zrc/view/MeetingSeekBarPopWindow;

    iget-object v1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mContext:Landroid/content/Context;

    iget v2, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->duration:I

    iget-object v3, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->parent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lus/zoom/zrc/view/MeetingSeekBarPopWindow;-><init>(Landroid/content/Context;II)V

    .line 549
    new-instance v1, Lus/zoom/zrc/view/IMAddrBookListFragment$14;

    invoke-direct {v1, p0, v0}, Lus/zoom/zrc/view/IMAddrBookListFragment$14;-><init>(Lus/zoom/zrc/view/IMAddrBookListFragment;Lus/zoom/zrc/view/MeetingSeekBarPopWindow;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/MeetingSeekBarPopWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 555
    iget-object v1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mDurationLayout:Landroid/view/View;

    const/4 v2, 0x0

    const/16 v3, 0x55

    invoke-virtual {v0, v1, v3, v2, v2}, Lus/zoom/zrc/view/MeetingSeekBarPopWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method private static sort(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrc/model/ZRCContactImData;",
            ">;)",
            "Ljava/util/List<",
            "Lus/zoom/zrc/model/ZRCContactImData;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 814
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 817
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 818
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 819
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 821
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/model/ZRCContactImData;

    if-eqz v1, :cond_1

    const-string v2, "Rooms"

    .line 824
    invoke-virtual {v1}, Lus/zoom/zrc/model/ZRCContactImData;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 825
    invoke-virtual {v1}, Lus/zoom/zrc/model/ZRCContactImData;->getData()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lus/zoom/zrc/view/model/ContactComparator;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, v3}, Lus/zoom/zrc/view/model/ContactComparator;-><init>(Ljava/util/Locale;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_2
    return-object v0

    .line 815
    :cond_3
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private update3rdRoomSystemEntrance()V
    .locals 3

    .line 433
    invoke-static {}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->supportInviteRoomSystemAndDialPreMeeting()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {p0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->hideDurationSeekBar()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 436
    :goto_0
    iget-object v2, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->layoutCallRoomSystem:Landroid/view/View;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateBtnClearSearchView()V
    .locals 0

    return-void
.end method

.method private updateImContactListByFeatureList()V
    .locals 3

    .line 849
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getZrcFeatureListInfo()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 850
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getZrcFeatureListInfo()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsLoadingContactsDynamically()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mZmDynamicList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 852
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mZmListLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 854
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mZmDynamicList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 855
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mZmListLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected clickMeetingNowBtn()I
    .locals 7

    .line 471
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->setMeetingType(I)V

    .line 472
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->selectedAdapter:Lus/zoom/zrc/view/adapter/SlectedContactListAdapter;

    invoke-virtual {v0}, Lus/zoom/zrc/view/adapter/SlectedContactListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 473
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    iget v2, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->duration:I

    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/PTApp;->startInstantMeeting(I)I

    move-result v0

    goto :goto_3

    .line 475
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->selectedAdapter:Lus/zoom/zrc/view/adapter/SlectedContactListAdapter;

    invoke-virtual {v0}, Lus/zoom/zrc/view/adapter/SlectedContactListAdapter;->getSelectContacts()Ljava/util/List;

    move-result-object v0

    .line 476
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 477
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 478
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 479
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lus/zoom/zrcsdk/model/ZRCContact;

    .line 480
    invoke-virtual {v5}, Lus/zoom/zrcsdk/model/ZRCContact;->getJid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 481
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 483
    :cond_1
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 485
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 486
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    iget v2, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->duration:I

    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/PTApp;->startInstantMeeting(I)I

    goto :goto_2

    .line 488
    :cond_3
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    iget v4, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->duration:I

    invoke-virtual {v0, v2, v4}, Lus/zoom/zrcsdk/PTApp;->meetWithIMUsers(Ljava/util/List;I)I

    .line 491
    :goto_2
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, v3}, Lus/zoom/zrcsdk/PTApp;->inviteLegacyRoomSystems(Ljava/util/List;)I

    move-result v0

    .line 493
    :goto_3
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 495
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/AppModel;->getZrcFeatureListInfo()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsLoadingContactsDynamically()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 496
    iget-object v3, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mZmDynamicList:Landroid/widget/ListView;

    goto :goto_4

    .line 498
    :cond_4
    iget-object v3, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mList:Landroid/widget/ExpandableListView;

    .line 500
    :goto_4
    sget-object v4, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_IS_SCROLL_CONTACT_LIST:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    .line 501
    invoke-static {v3, v5}, Landroidx/core/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "true"

    goto :goto_5

    :cond_5
    const-string v3, "false"

    .line 500
    :goto_5
    invoke-virtual {v2, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    sget-object v3, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_IS_SEARCH_CONTACT_LIST:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->hasSelectedContactsFromSearch:Z

    if-eqz v4, :cond_6

    const-string v4, "true"

    goto :goto_6

    :cond_6
    const-string v4, "false"

    :goto_6
    invoke-virtual {v2, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->getMeetingStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    sget-object v3, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_IN_MEETING:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    .line 505
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->getZoomRoomsLogLocation()I

    move-result v3

    goto :goto_7

    :cond_7
    sget-object v3, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_PRE_MEETING:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    .line 506
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->getZoomRoomsLogLocation()I

    move-result v3

    .line 507
    :goto_7
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v4

    sget-object v5, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_MEETING_NOW_SETUP:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    .line 508
    invoke-virtual {v5}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->getZoomRoomsLogEvent()I

    move-result v5

    sget-object v6, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_MEET_NOW:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    .line 509
    invoke-virtual {v6}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->getZoomRoomsLogSubevent()I

    move-result v6

    .line 510
    invoke-virtual {v2}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 507
    invoke-virtual {v4, v3, v5, v6, v2}, Lus/zoom/zrcsdk/PTApp;->sendUsageTrackWithLogType(IIILjava/lang/String;)I

    .line 511
    iput-boolean v1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->hasSelectedContactsFromSearch:Z

    return v0
.end method

.method protected getMeetingNowBtnText()Ljava/lang/String;
    .locals 2

    .line 516
    invoke-virtual {p0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->meet_now:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected hideDurationSeekBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAddLegacyRoom(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 137
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCFragment;->onAttach(Landroid/content/Context;)V

    .line 138
    iput-object p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onClear()V
    .locals 1

    const/4 v0, 0x0

    .line 715
    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->onRemove(Lus/zoom/zrcsdk/model/ZRCContact;)V

    const/4 v0, 0x0

    .line 716
    iput-boolean v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->hasSelectedContactsFromSearch:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 532
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 533
    sget v0, Lus/zoom/zrcbox/R$id;->btnClearSearchView:I

    if-ne p1, v0, :cond_0

    .line 534
    invoke-direct {p0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->onClickBtnClearSearchView()V

    goto :goto_0

    .line 535
    :cond_0
    sget v0, Lus/zoom/zrcbox/R$id;->tv_duration_layout:I

    if-ne p1, v0, :cond_1

    .line 536
    invoke-direct {p0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->showMeetingSeekDurationBar()V

    goto :goto_0

    .line 537
    :cond_1
    sget v0, Lus/zoom/zrcbox/R$id;->layout_call_room_system:I

    if-ne p1, v0, :cond_2

    .line 538
    invoke-direct {p0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->showCallRoomDialog()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 148
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCFragment;->onCreate(Landroid/os/Bundle;)V

    .line 149
    invoke-virtual {p0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 199
    iget-object p3, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onCreateView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p3, v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    sget p3, Lus/zoom/zrcbox/R$layout;->zm_addrbook_list:I

    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 202
    sget p2, Lus/zoom/zrcbox/R$id;->contact_list_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->contactListContent:Landroid/view/View;

    .line 203
    sget p2, Lus/zoom/zrcbox/R$id;->selected_contact_list_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->selectedContactListContent:Landroid/view/View;

    .line 205
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->list:Ljava/util/List;

    .line 206
    sget p2, Lus/zoom/zrcbox/R$id;->side:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/view/SideBar;

    .line 207
    sget p3, Lus/zoom/zrcbox/R$id;->txtSearchChar:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 208
    sget v0, Lus/zoom/zrcbox/R$id;->im_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mList:Landroid/widget/ExpandableListView;

    .line 210
    sget v0, Lus/zoom/zrcbox/R$id;->btm_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->layoutBottomMenu:Landroid/view/View;

    .line 211
    sget v0, Lus/zoom/zrcbox/R$id;->tv_duration_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mDurationLayout:Landroid/view/View;

    .line 212
    sget v0, Lus/zoom/zrcbox/R$id;->tv_duration:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mDurationLabel:Landroid/widget/TextView;

    .line 214
    sget v0, Lus/zoom/zrcbox/R$id;->layout_call_room_system:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->layoutCallRoomSystem:Landroid/view/View;

    .line 215
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->layoutCallRoomSystem:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    sget v0, Lus/zoom/zrcbox/R$id;->parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->parent:Landroid/view/View;

    .line 219
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mContext:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$layout;->search_more_cloud:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->searchCloudView:Landroid/view/View;

    .line 220
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->searchCloudView:Landroid/view/View;

    new-instance v2, Lus/zoom/zrc/view/IMAddrBookListFragment$3;

    invoke-direct {v2, p0}, Lus/zoom/zrc/view/IMAddrBookListFragment$3;-><init>(Lus/zoom/zrc/view/IMAddrBookListFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->list:Ljava/util/List;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/AppModel;->getZrcContactIm()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 228
    new-instance v0, Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;

    iget-object v2, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->list:Ljava/util/List;

    invoke-direct {v0, v2, v3}, Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mListAdapter:Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;

    .line 229
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mList:Landroid/widget/ExpandableListView;

    iget-object v2, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mListAdapter:Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 230
    invoke-direct {p0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->expandGroup()V

    .line 231
    new-instance v0, Lus/zoom/zrc/view/IMAddrBookListFragment$4;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/IMAddrBookListFragment$4;-><init>(Lus/zoom/zrc/view/IMAddrBookListFragment;)V

    invoke-virtual {p2, v0}, Lus/zoom/zrc/view/SideBar;->setOnTouchingLetterChangedListener(Lus/zoom/zrc/view/SideBar$OnTouchingLetterChangedListener;)V

    .line 253
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mList:Landroid/widget/ExpandableListView;

    new-instance v2, Lus/zoom/zrc/view/IMAddrBookListFragment$5;

    invoke-direct {v2, p0}, Lus/zoom/zrc/view/IMAddrBookListFragment$5;-><init>(Lus/zoom/zrc/view/IMAddrBookListFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V

    .line 259
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mList:Landroid/widget/ExpandableListView;

    new-instance v2, Lus/zoom/zrc/view/IMAddrBookListFragment$6;

    invoke-direct {v2, p0}, Lus/zoom/zrc/view/IMAddrBookListFragment$6;-><init>(Lus/zoom/zrc/view/IMAddrBookListFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 281
    invoke-virtual {p2, p3}, Lus/zoom/zrc/view/SideBar;->setTextView(Landroid/widget/TextView;)V

    .line 283
    sget p2, Lus/zoom/zrcbox/R$id;->searchlistview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->searchListView:Landroid/widget/ListView;

    .line 284
    sget p2, Lus/zoom/zrcbox/R$id;->dynamic_searchlistview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/view/DynamicImContactSearchListView;

    iput-object p2, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->dynamicSearchListView:Lus/zoom/zrc/view/DynamicImContactSearchListView;

    .line 285
    iget-object p2, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->dynamicSearchListView:Lus/zoom/zrc/view/DynamicImContactSearchListView;

    new-instance p3, Lus/zoom/zrc/view/IMAddrBookListFragment$7;

    invoke-direct {p3, p0}, Lus/zoom/zrc/view/IMAddrBookListFragment$7;-><init>(Lus/zoom/zrc/view/IMAddrBookListFragment;)V

    invoke-virtual {p2, p3}, Lus/zoom/zrc/view/DynamicImContactSearchListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 292
    new-instance p2, Lus/zoom/zrc/view/adapter/SearchListAdapter;

    iget-object p3, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Lus/zoom/zrc/view/adapter/SearchListAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->searchListAdapter:Lus/zoom/zrc/view/adapter/SearchListAdapter;

    .line 293
    iget-object p2, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->searchListView:Landroid/widget/ListView;

    iget-object p3, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->searchCloudView:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 294
    iget-object p2, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->searchListView:Landroid/widget/ListView;

    iget-object p3, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->searchListAdapter:Lus/zoom/zrc/view/adapter/SearchListAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 295
    iget-object p2, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->searchListView:Landroid/widget/ListView;

    iget-object p3, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->searchCloudView:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 296
    sget p2, Lus/zoom/zrcbox/R$id;->zm_addrbook_im_list_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mZmListLayout:Landroid/view/View;

    .line 297
    sget p2, Lus/zoom/zrcbox/R$id;->dynamic_zm_im_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mZmDynamicList:Landroid/widget/ListView;

    .line 299
    iget-object p2, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->searchListView:Landroid/widget/ListView;

    new-instance p3, Lus/zoom/zrc/view/IMAddrBookListFragment$8;

    invoke-direct {p3, p0}, Lus/zoom/zrc/view/IMAddrBookListFragment$8;-><init>(Lus/zoom/zrc/view/IMAddrBookListFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 325
    sget p2, Lus/zoom/zrcbox/R$id;->edtSearch:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/view/ZRCSearchView;

    .line 326
    invoke-virtual {p2}, Lus/zoom/zrc/view/ZRCSearchView;->getSearch_content()Landroid/widget/EditText;

    move-result-object p3

    iput-object p3, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mEdtSearch:Landroid/widget/EditText;

    .line 327
    sget p3, Lus/zoom/zrcbox/R$id;->btnClearSearchView:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageButton;

    .line 329
    sget v0, Lus/zoom/zrcbox/R$id;->selectedjoinlist:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/MaxHeightListView;

    iput-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->seletedListView:Lus/zoom/zrc/view/MaxHeightListView;

    .line 330
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->seletedListView:Lus/zoom/zrc/view/MaxHeightListView;

    new-instance v2, Lus/zoom/zrc/view/IMAddrBookListFragment$9;

    invoke-direct {v2, p0}, Lus/zoom/zrc/view/IMAddrBookListFragment$9;-><init>(Lus/zoom/zrc/view/IMAddrBookListFragment;)V

    invoke-virtual {v0, v2}, Lus/zoom/zrc/view/MaxHeightListView;->setOnDismissCallback(Lus/zoom/zrc/view/MaxHeightListView$OnDismissCallback;)V

    .line 338
    new-instance v0, Lus/zoom/zrc/view/adapter/SlectedContactListAdapter;

    iget-object v2, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lus/zoom/zrc/view/adapter/SlectedContactListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->selectedAdapter:Lus/zoom/zrc/view/adapter/SlectedContactListAdapter;

    .line 339
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->seletedListView:Lus/zoom/zrc/view/MaxHeightListView;

    iget-object v2, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->selectedAdapter:Lus/zoom/zrc/view/adapter/SlectedContactListAdapter;

    invoke-virtual {v0, v2}, Lus/zoom/zrc/view/MaxHeightListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 341
    sget v0, Lus/zoom/zrcbox/R$id;->tv_no_one_invited:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mTvNoOneInvited:Landroid/widget/TextView;

    .line 343
    invoke-virtual {p3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    iget-object p3, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mDurationLayout:Landroid/view/View;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    iget-object p3, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mEdtSearch:Landroid/widget/EditText;

    new-instance v0, Lus/zoom/zrc/view/IMAddrBookListFragment$10;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/IMAddrBookListFragment$10;-><init>(Lus/zoom/zrc/view/IMAddrBookListFragment;)V

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 375
    new-instance p3, Lus/zoom/zrc/view/IMAddrBookListFragment$11;

    invoke-direct {p3, p0}, Lus/zoom/zrc/view/IMAddrBookListFragment$11;-><init>(Lus/zoom/zrc/view/IMAddrBookListFragment;)V

    invoke-virtual {p2, p3}, Lus/zoom/zrc/view/ZRCSearchView;->setZRCSearchViewSearchListener(Lus/zoom/zrc/view/ZRCSearchView$ZRCSearchViewSearchListener;)V

    .line 388
    iget-object p2, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mEdtSearch:Landroid/widget/EditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const/16 p2, 0x1e

    .line 389
    invoke-virtual {p0, p2}, Lus/zoom/zrc/view/IMAddrBookListFragment;->setMeetingDuration(I)V

    .line 390
    invoke-virtual {p0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->hideDurationSeekBar()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 391
    iget-object p2, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mDurationLayout:Landroid/view/View;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 393
    :cond_0
    iget-object p2, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mDurationLayout:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 397
    :goto_0
    sget p2, Lus/zoom/zrcbox/R$id;->btn_meeting_now:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mMeetingNow:Landroid/widget/Button;

    .line 398
    iget-object p2, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mMeetingNow:Landroid/widget/Button;

    invoke-virtual {p0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->getMeetingNowBtnText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 400
    invoke-virtual {p0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->setMeetingNowBtnStatus()V

    .line 401
    iget-object p2, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mMeetingNow:Landroid/widget/Button;

    new-instance p3, Lus/zoom/zrc/view/IMAddrBookListFragment$12;

    invoke-direct {p3, p0}, Lus/zoom/zrc/view/IMAddrBookListFragment$12;-><init>(Lus/zoom/zrc/view/IMAddrBookListFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    invoke-direct {p0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->updateImContactListByFeatureList()V

    .line 414
    invoke-direct {p0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->update3rdRoomSystemEntrance()V

    .line 415
    invoke-virtual {p0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p2

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p3

    invoke-virtual {p2, p3}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    return-object p1
.end method

.method public onDynamicContactListNotification(Ljava/util/ArrayList;Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    return-void
.end method

.method public onDynamicContactsBasicInfoNotification(III)V
    .locals 0

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 561
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result p1

    sget p2, Lus/zoom/zrcbox/R$id;->edtSearch:I

    if-ne p1, p2, :cond_0

    .line 562
    iget-object p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mEdtSearch:Landroid/widget/EditText;

    invoke-static {p1, p2}, Lus/zoom/androidlib/util/UIUtil;->closeSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onFinishRebuildContactData()V
    .locals 4

    .line 736
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onFinishRebuildContactData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 739
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mListAdapter:Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;

    if-nez v0, :cond_0

    return-void

    .line 742
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 743
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->list:Ljava/util/List;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getZrcContactIm()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 745
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 746
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->list:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 749
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->list:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 753
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mListAdapter:Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;

    iget-object v1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->list:Ljava/util/List;

    invoke-static {v1}, Lus/zoom/zrc/view/IMAddrBookListFragment;->sort(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;->refreshList(Ljava/util/List;)V

    .line 754
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->selectedAdapter:Lus/zoom/zrc/view/adapter/SlectedContactListAdapter;

    invoke-virtual {v0}, Lus/zoom/zrc/view/adapter/SlectedContactListAdapter;->notifyDataSetChanged()V

    .line 755
    invoke-direct {p0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->expandGroup()V

    return-void
.end method

.method public onFinishReceivingLegacyRoomList(Z)V
    .locals 0

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 180
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->removeZRIMEventListener(Lus/zoom/zrc/model/AppEngine$IZRIMEvent;)V

    .line 181
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppModel;->removeSlectedListener(Lus/zoom/zrc/view/ISelectedMeetingListener;)V

    goto :goto_0

    .line 183
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->addZRIMEventListener(Lus/zoom/zrc/model/AppEngine$IZRIMEvent;)V

    .line 184
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppModel;->addSelectedListener(Lus/zoom/zrc/view/ISelectedMeetingListener;)V

    .line 186
    :goto_0
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCFragment;->onHiddenChanged(Z)V

    return-void
.end method

.method public onImAddContactNotification(Lus/zoom/zrcsdk/model/ZRCContact;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onImConnectingResultNotification(I)V
    .locals 0

    return-void
.end method

.method public onImFinishTransportingContactsNotification()V
    .locals 0

    return-void
.end method

.method public onImMyPresenceChangedNotification(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onImReconnectingNotification()V
    .locals 0

    return-void
.end method

.method public onImStartTransportingContactsNotification()V
    .locals 0

    return-void
.end method

.method public onImUpdateContactNotification(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onImUpdateContactNotification(Lus/zoom/zrcsdk/model/ZRCContact;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 660
    instance-of p4, p2, Lus/zoom/zrc/view/ZRCContactItemView;

    if-eqz p4, :cond_1

    .line 661
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCContact;

    .line 662
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->getAccountStatus()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    return-void

    .line 665
    :cond_0
    check-cast p2, Lus/zoom/zrc/view/ZRCContactItemView;

    invoke-virtual {p2}, Lus/zoom/zrc/view/ZRCContactItemView;->performClickCheckBox()V

    :cond_1
    return-void
.end method

.method public onKeyboardClosed()V
    .locals 2

    .line 577
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mEdtSearch:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    .line 579
    :cond_0
    sget v1, Lus/zoom/zrcbox/R$drawable;->zm_search_bg_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 618
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->onPause()V

    .line 619
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->firstVisiblePosition:I

    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 422
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 423
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->h323Enabled:I

    if-eq p1, p2, :cond_2

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->crcCalloutOnlyEnabled:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 425
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->hideContactList:I

    if-ne p1, p2, :cond_1

    .line 426
    invoke-direct {p0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->onUpdateHideContactList()V

    goto :goto_1

    .line 427
    :cond_1
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->featureList:I

    if-ne p1, p2, :cond_3

    .line 428
    invoke-direct {p0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->onUpdateFeatureList()V

    goto :goto_1

    .line 424
    :cond_2
    :goto_0
    invoke-direct {p0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->update3rdRoomSystemEntrance()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onRemove(Lus/zoom/zrcsdk/model/ZRCContact;)V
    .locals 3

    .line 692
    iget-object p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->selectedAdapter:Lus/zoom/zrc/view/adapter/SlectedContactListAdapter;

    invoke-virtual {p1}, Lus/zoom/zrc/view/adapter/SlectedContactListAdapter;->notifyDataSetChanged()V

    .line 693
    invoke-virtual {p0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->setMeetingNowBtnStatus()V

    .line 694
    iget-object p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->searchListAdapter:Lus/zoom/zrc/view/adapter/SearchListAdapter;

    invoke-virtual {p1}, Lus/zoom/zrc/view/adapter/SearchListAdapter;->notifyDataSetChanged()V

    .line 695
    iget-object p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mListAdapter:Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;

    invoke-virtual {p1}, Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;->notifyDataSetChanged()V

    .line 696
    iget-object p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->selectedAdapter:Lus/zoom/zrc/view/adapter/SlectedContactListAdapter;

    invoke-virtual {p1}, Lus/zoom/zrc/view/adapter/SlectedContactListAdapter;->getCount()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p1, :cond_0

    .line 697
    iget-object p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mTvNoOneInvited:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 698
    iget-object p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->seletedListView:Lus/zoom/zrc/view/MaxHeightListView;

    invoke-virtual {p1, v1}, Lus/zoom/zrc/view/MaxHeightListView;->setVisibility(I)V

    goto :goto_0

    .line 700
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mTvNoOneInvited:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 701
    iget-object p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->seletedListView:Lus/zoom/zrc/view/MaxHeightListView;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/view/MaxHeightListView;->setVisibility(I)V

    .line 702
    iget-object p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lus/zoom/zrc/view/IMAddrBookListFragment$17;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/IMAddrBookListFragment$17;-><init>(Lus/zoom/zrc/view/IMAddrBookListFragment;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 584
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->onResume()V

    .line 585
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 586
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->list:Ljava/util/List;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getZrcContactIm()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 588
    :goto_0
    iget-object v2, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 589
    iget-object v2, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 592
    :cond_0
    iget-object v2, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 596
    :cond_1
    iget-object v1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mListAdapter:Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;

    iget-object v2, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->list:Ljava/util/List;

    invoke-static {v2}, Lus/zoom/zrc/view/IMAddrBookListFragment;->sort(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;->refreshList(Ljava/util/List;)V

    .line 597
    invoke-direct {p0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->expandGroup()V

    .line 598
    iget-object v1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->parent:Landroid/view/View;

    new-instance v2, Lus/zoom/zrc/view/IMAddrBookListFragment$15;

    invoke-direct {v2, p0}, Lus/zoom/zrc/view/IMAddrBookListFragment$15;-><init>(Lus/zoom/zrc/view/IMAddrBookListFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 605
    iget-object v1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->selectedAdapter:Lus/zoom/zrc/view/adapter/SlectedContactListAdapter;

    invoke-virtual {v1}, Lus/zoom/zrc/view/adapter/SlectedContactListAdapter;->notifyDataSetChanged()V

    .line 606
    iget-object v1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->selectedAdapter:Lus/zoom/zrc/view/adapter/SlectedContactListAdapter;

    invoke-virtual {v1}, Lus/zoom/zrc/view/adapter/SlectedContactListAdapter;->getCount()I

    move-result v1

    const/16 v2, 0x8

    if-nez v1, :cond_2

    .line 607
    iget-object v1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mTvNoOneInvited:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 608
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->seletedListView:Lus/zoom/zrc/view/MaxHeightListView;

    invoke-virtual {v0, v2}, Lus/zoom/zrc/view/MaxHeightListView;->setVisibility(I)V

    goto :goto_1

    .line 610
    :cond_2
    iget-object v1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mTvNoOneInvited:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 611
    iget-object v1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->seletedListView:Lus/zoom/zrc/view/MaxHeightListView;

    invoke-virtual {v1, v0}, Lus/zoom/zrc/view/MaxHeightListView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public onSearchBuddyOnWebDidFinishWithResult(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;)V"
        }
    .end annotation

    .line 760
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->searchListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 761
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->searchListAdapter:Lus/zoom/zrc/view/adapter/SearchListAdapter;

    invoke-virtual {v0}, Lus/zoom/zrc/view/adapter/SearchListAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 762
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 763
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCContact;

    .line 764
    invoke-direct {p0, v2, v0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->isContact(Lus/zoom/zrcsdk/model/ZRCContact;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 767
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 770
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->dismissWaitingDialog()V

    .line 771
    iget-object p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->searchListAdapter:Lus/zoom/zrc/view/adapter/SearchListAdapter;

    invoke-virtual {p1}, Lus/zoom/zrc/view/adapter/SearchListAdapter;->notifyDataSetChanged()V

    .line 772
    iget-object p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->searchListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result p1

    if-eqz p1, :cond_2

    .line 773
    iget-object p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->searchListView:Landroid/widget/ListView;

    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->searchCloudView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    const/4 p1, 0x0

    .line 774
    iput-object p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->searchCloudView:Landroid/view/View;

    :cond_2
    return-void
.end method

.method public onSearchRequested()Z
    .locals 2

    .line 624
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mEdtSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 625
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mEdtSearch:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lus/zoom/androidlib/util/UIUtil;->openSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onSelected(Lus/zoom/zrcsdk/model/ZRCContact;)V
    .locals 5

    .line 672
    iget-object p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->selectedAdapter:Lus/zoom/zrc/view/adapter/SlectedContactListAdapter;

    invoke-virtual {p1}, Lus/zoom/zrc/view/adapter/SlectedContactListAdapter;->notifyDataSetChanged()V

    .line 673
    invoke-virtual {p0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->setMeetingNowBtnStatus()V

    .line 674
    iget-object p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->selectedAdapter:Lus/zoom/zrc/view/adapter/SlectedContactListAdapter;

    invoke-virtual {p1}, Lus/zoom/zrc/view/adapter/SlectedContactListAdapter;->getCount()I

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-lez p1, :cond_0

    .line 675
    iget-object p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mHandler:Landroid/os/Handler;

    new-instance v2, Lus/zoom/zrc/view/IMAddrBookListFragment$16;

    invoke-direct {v2, p0}, Lus/zoom/zrc/view/IMAddrBookListFragment$16;-><init>(Lus/zoom/zrc/view/IMAddrBookListFragment;)V

    const-wide/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 682
    iget-object p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mTvNoOneInvited:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 683
    iget-object p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->seletedListView:Lus/zoom/zrc/view/MaxHeightListView;

    invoke-virtual {p1, v1}, Lus/zoom/zrc/view/MaxHeightListView;->setVisibility(I)V

    goto :goto_0

    .line 685
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mTvNoOneInvited:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 686
    iget-object p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->seletedListView:Lus/zoom/zrc/view/MaxHeightListView;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/view/MaxHeightListView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 154
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->seletedListView:Lus/zoom/zrc/view/MaxHeightListView;

    new-instance v1, Lus/zoom/zrc/view/IMAddrBookListFragment$2;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/IMAddrBookListFragment$2;-><init>(Lus/zoom/zrc/view/IMAddrBookListFragment;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/MaxHeightListView;->post(Ljava/lang/Runnable;)Z

    .line 161
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->addZRIMEventListener(Lus/zoom/zrc/model/AppEngine$IZRIMEvent;)V

    .line 162
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppModel;->addSelectedListener(Lus/zoom/zrc/view/ISelectedMeetingListener;)V

    .line 164
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->onStart()V

    .line 166
    invoke-direct {p0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->onUpdateHideContactList()V

    return-void
.end method

.method public onStartReceivingLegacyRoomList(Z)V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 170
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->removeZRIMEventListener(Lus/zoom/zrc/model/AppEngine$IZRIMEvent;)V

    .line 171
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppModel;->removeSlectedListener(Lus/zoom/zrc/view/ISelectedMeetingListener;)V

    .line 172
    invoke-direct {p0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->onClickBtnClearSearchView()V

    .line 173
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->clearSelectedContacts()V

    .line 174
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->onStop()V

    return-void
.end method

.method public setMeetingDuration(I)V
    .locals 4

    .line 81
    iput p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->duration:I

    .line 82
    iget-object p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->mDurationLabel:Landroid/widget/TextView;

    sget v0, Lus/zoom/zrcbox/R$string;->zrc_meeting_duration:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->duration:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setMeetingNowBtnStatus()V
    .locals 0

    return-void
.end method

.method public setOnClickMeetingNowBtnListener(Lus/zoom/zrc/view/IMAddrBookListFragment$OnClickMeetingNowBtnListener;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment;->onClickMeetingNowBtnListener:Lus/zoom/zrc/view/IMAddrBookListFragment$OnClickMeetingNowBtnListener;

    return-void
.end method
