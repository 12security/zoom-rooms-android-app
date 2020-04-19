.class public Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;
.super Lus/zoom/zrc/base/app/ZRCFragment;
.source "IMAddrBookListPhoneFragment.java"

# interfaces
.implements Lus/zoom/zrc/model/AppEngine$IZRIMEvent;
.implements Lus/zoom/zrc/view/ISelectedMeetingListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private context:Landroid/content/Context;

.field private firstVisiblePosition:I

.field private lastKeyword:Ljava/lang/String;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrc/model/ZRCContactImData;",
            ">;"
        }
    .end annotation
.end field

.field private mBack:Landroid/widget/ImageView;

.field private mDynamicImListView:Lus/zoom/zrc/view/DynamicIMContactListView;

.field private mDynamicSearchListView:Lus/zoom/zrc/view/DynamicImContactSearchListView;

.field private mHandler:Landroid/os/Handler;

.field private mInviteSend:Landroid/widget/ImageView;

.field private mInviteSendLayout:Landroid/view/View;

.field private mList:Landroid/widget/ExpandableListView;

.field private mListAdapter:Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;

.field private mMeetingNow:Landroid/widget/TextView;

.field private mRunnableFilter:Ljava/lang/Runnable;

.field private mSearchList:Landroid/widget/ListView;

.field private mSearchView:Lus/zoom/zrc/view/ZRCSearchView;

.field private mSelectImView:Landroidx/recyclerview/widget/RecyclerView;

.field private mZmListLayout:Landroid/view/View;

.field private onClickMeetingNowBtnListener:Lus/zoom/zrc/view/IMAddrBookListFragment$OnClickMeetingNowBtnListener;

.field private searchCloudView:Landroid/view/View;

.field private searchListAdapter:Lus/zoom/zrc/view/adapter/SearchListAdapter;

.field private selectedContactListAdapter:Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCFragment;-><init>()V

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mHandler:Landroid/os/Handler;

    .line 80
    new-instance v0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$1;-><init>(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mRunnableFilter:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;)Lus/zoom/zrc/view/ZRCSearchView;
    .locals 0

    .line 61
    iget-object p0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mSearchView:Lus/zoom/zrc/view/ZRCSearchView;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;)Landroid/widget/ExpandableListView;
    .locals 0

    .line 61
    iget-object p0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mList:Landroid/widget/ExpandableListView;

    return-object p0
.end method

.method static synthetic access$1000(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;)I
    .locals 0

    .line 61
    iget p0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->firstVisiblePosition:I

    return p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;)Landroid/view/View;
    .locals 0

    .line 61
    iget-object p0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mZmListLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;)Lus/zoom/zrc/view/adapter/SearchListAdapter;
    .locals 0

    .line 61
    iget-object p0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->searchListAdapter:Lus/zoom/zrc/view/adapter/SearchListAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;)Landroid/widget/ListView;
    .locals 0

    .line 61
    iget-object p0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mSearchList:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$500(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->lastKeyword:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 61
    iput-object p1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->lastKeyword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;)Lus/zoom/zrc/view/DynamicImContactSearchListView;
    .locals 0

    .line 61
    iget-object p0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mDynamicSearchListView:Lus/zoom/zrc/view/DynamicImContactSearchListView;

    return-object p0
.end method

.method static synthetic access$700(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;)Lus/zoom/zrc/view/DynamicIMContactListView;
    .locals 0

    .line 61
    iget-object p0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mDynamicImListView:Lus/zoom/zrc/view/DynamicIMContactListView;

    return-object p0
.end method

.method static synthetic access$800(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->searchLocalContact(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;)Landroid/content/Context;
    .locals 0

    .line 61
    iget-object p0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->context:Landroid/content/Context;

    return-object p0
.end method

.method private clickInviteNow()V
    .locals 7

    .line 552
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->selectedContactListAdapter:Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter;

    invoke-virtual {v0}, Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_3

    .line 553
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getSeletedContacts()Ljava/util/List;

    move-result-object v0

    .line 554
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 555
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 556
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 557
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lus/zoom/zrcsdk/model/ZRCContact;

    .line 558
    invoke-virtual {v5}, Lus/zoom/zrcsdk/model/ZRCContact;->getJid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 559
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 561
    :cond_0
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 563
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 564
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/ConfApp;->inviteAttendees(Ljava/util/List;)I

    move-result v0

    move v1, v0

    .line 565
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 566
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, v3}, Lus/zoom/zrcsdk/PTApp;->inviteLegacyRoomSystems(Ljava/util/List;)I

    move-result v1

    .line 569
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->onClickMeetingNowBtnListener:Lus/zoom/zrc/view/IMAddrBookListFragment$OnClickMeetingNowBtnListener;

    if-eqz v0, :cond_4

    .line 570
    invoke-interface {v0, v1}, Lus/zoom/zrc/view/IMAddrBookListFragment$OnClickMeetingNowBtnListener;->OnClickMeetingNowBtn(I)V

    :cond_4
    return-void
.end method

.method private clickMeetingNow()V
    .locals 7

    .line 576
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->setMeetingType(I)V

    .line 577
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getSeletedContacts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x1e

    if-nez v0, :cond_0

    .line 578
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/PTApp;->startInstantMeeting(I)I

    move-result v0

    goto :goto_3

    .line 580
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getSeletedContacts()Ljava/util/List;

    move-result-object v0

    .line 581
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 582
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 583
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 584
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lus/zoom/zrcsdk/model/ZRCContact;

    .line 585
    invoke-virtual {v5}, Lus/zoom/zrcsdk/model/ZRCContact;->getJid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 586
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 588
    :cond_1
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 590
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 591
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/PTApp;->startInstantMeeting(I)I

    goto :goto_2

    .line 593
    :cond_3
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lus/zoom/zrcsdk/PTApp;->meetWithIMUsers(Ljava/util/List;I)I

    .line 595
    :goto_2
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, v4}, Lus/zoom/zrcsdk/PTApp;->inviteLegacyRoomSystems(Ljava/util/List;)I

    move-result v0

    :goto_3
    if-nez v0, :cond_4

    .line 598
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 599
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    .line 602
    :cond_4
    iget-object v1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->onClickMeetingNowBtnListener:Lus/zoom/zrc/view/IMAddrBookListFragment$OnClickMeetingNowBtnListener;

    if-eqz v1, :cond_5

    .line 603
    invoke-interface {v1, v0}, Lus/zoom/zrc/view/IMAddrBookListFragment$OnClickMeetingNowBtnListener;->OnClickMeetingNowBtn(I)V

    :cond_5
    return-void
.end method

.method private expandGroup()V
    .locals 2

    const/4 v0, 0x0

    .line 292
    :goto_0
    iget-object v1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mListAdapter:Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;

    invoke-virtual {v1}, Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;->getGroupCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 293
    iget-object v1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mList:Landroid/widget/ExpandableListView;

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

    .line 468
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCContact;

    .line 469
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

.method private onClickBtnClearSearchView()V
    .locals 2

    .line 353
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mSearchView:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCSearchView;->getSearch_content()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->context:Landroid/content/Context;

    iget-object v1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mSearchView:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-virtual {v1}, Lus/zoom/zrc/view/ZRCSearchView;->getSearch_content()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lus/zoom/androidlib/util/UIUtil;->closeSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 355
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mSearchList:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mDynamicSearchListView:Lus/zoom/zrc/view/DynamicImContactSearchListView;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/DynamicImContactSearchListView;->setVisibility(I)V

    .line 357
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getDynamicContactList()Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->searchFinished()V

    return-void
.end method

.method private onUpdateHideContactList()V
    .locals 1

    .line 622
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isHideContactList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->clearSelectedContacts()V

    .line 626
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mBack:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 627
    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    :cond_0
    return-void
.end method

.method private searchLocalContact(Ljava/lang/String;)V
    .locals 4

    .line 270
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mRunnableFilter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 271
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mRunnableFilter:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 272
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    .line 273
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->searchCloudView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 274
    iget-object v2, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mSearchList:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 276
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->context:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$layout;->search_more_cloud:I

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->searchCloudView:Landroid/view/View;

    .line 277
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->searchCloudView:Landroid/view/View;

    new-instance v1, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$7;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$7;-><init>(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object p1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mSearchList:Landroid/widget/ListView;

    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->searchCloudView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    goto :goto_0

    .line 285
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->searchCloudView:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 286
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mSearchList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 287
    iput-object v1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->searchCloudView:Landroid/view/View;

    :cond_2
    :goto_0
    return-void
.end method

.method private showInviteSendLayout()V
    .locals 3

    .line 262
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lus/zoom/zrc/MeetingActivity;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mInviteSendLayout:Landroid/view/View;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/AppModel;->getSeletedContacts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 265
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mInviteSendLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
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

    .line 362
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 366
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 367
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 368
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 370
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

    .line 373
    invoke-virtual {v1}, Lus/zoom/zrc/model/ZRCContactImData;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 374
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

    .line 363
    :cond_3
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private updateImContactListByFeatureList()V
    .locals 3

    .line 633
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getZrcFeatureListInfo()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getZrcFeatureListInfo()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsLoadingContactsDynamically()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mDynamicImListView:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/DynamicIMContactListView;->setVisibility(I)V

    .line 635
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mZmListLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 637
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mDynamicImListView:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-virtual {v0, v2}, Lus/zoom/zrc/view/DynamicIMContactListView;->setVisibility(I)V

    .line 638
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mZmListLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onAddLegacyRoom(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 100
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCFragment;->onAttach(Landroid/content/Context;)V

    .line 101
    iput-object p1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->context:Landroid/content/Context;

    return-void
.end method

.method public onClear()V
    .locals 2

    .line 526
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->selectedContactListAdapter:Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter;

    invoke-virtual {v0}, Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter;->notifyDataSetChanged()V

    .line 527
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mListAdapter:Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;

    invoke-virtual {v0}, Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;->notifyDataSetChanged()V

    .line 528
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->showInviteSendLayout()V

    .line 529
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getSeletedContacts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lus/zoom/zrcbox/R$string;->ok:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getSeletedContacts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 531
    iget-object v1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mMeetingNow:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 533
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mMeetingNow:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->ok:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 539
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mBack:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 540
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 541
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 543
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mMeetingNow:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 544
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->clickMeetingNow()V

    goto :goto_0

    .line 545
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mInviteSend:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 546
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->clickInviteNow()V

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

    .line 106
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCFragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
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

    .line 113
    sget p3, Lus/zoom/zrcbox/R$layout;->zm_addrbook_im_phone_list:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 114
    sget p2, Lus/zoom/zrcbox/R$id;->invite_send_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mInviteSendLayout:Landroid/view/View;

    .line 115
    sget p2, Lus/zoom/zrcbox/R$id;->invite_send:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mInviteSend:Landroid/widget/ImageView;

    .line 116
    sget p2, Lus/zoom/zrcbox/R$id;->zm_im_selected:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mSelectImView:Landroidx/recyclerview/widget/RecyclerView;

    .line 117
    sget p2, Lus/zoom/zrcbox/R$id;->zrc_meeting_now:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mMeetingNow:Landroid/widget/TextView;

    .line 118
    sget p2, Lus/zoom/zrcbox/R$id;->zm_im_search:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/view/ZRCSearchView;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mSearchView:Lus/zoom/zrc/view/ZRCSearchView;

    .line 119
    sget p2, Lus/zoom/zrcbox/R$id;->side:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/view/SideBar;

    .line 120
    sget p3, Lus/zoom/zrcbox/R$id;->zm_addrbook_im_list_layout:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mZmListLayout:Landroid/view/View;

    .line 121
    sget p3, Lus/zoom/zrcbox/R$id;->dynamic_zm_im_list:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lus/zoom/zrc/view/DynamicIMContactListView;

    iput-object p3, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mDynamicImListView:Lus/zoom/zrc/view/DynamicIMContactListView;

    .line 122
    sget p3, Lus/zoom/zrcbox/R$id;->dynamic_searchlistview:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lus/zoom/zrc/view/DynamicImContactSearchListView;

    iput-object p3, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mDynamicSearchListView:Lus/zoom/zrc/view/DynamicImContactSearchListView;

    .line 123
    sget p3, Lus/zoom/zrcbox/R$id;->im_list:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ExpandableListView;

    iput-object p3, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mList:Landroid/widget/ExpandableListView;

    .line 124
    sget p3, Lus/zoom/zrcbox/R$id;->zrc_back:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mBack:Landroid/widget/ImageView;

    .line 125
    sget p3, Lus/zoom/zrcbox/R$id;->title:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 126
    sget v1, Lus/zoom/zrcbox/R$id;->txtSearchChar:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 127
    sget v2, Lus/zoom/zrcbox/R$id;->searchlistview:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mSearchList:Landroid/widget/ListView;

    .line 128
    iget-object v2, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->context:Landroid/content/Context;

    sget v3, Lus/zoom/zrcbox/R$layout;->search_more_cloud:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->searchCloudView:Landroid/view/View;

    .line 129
    iget-object v2, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mList:Landroid/widget/ExpandableListView;

    new-instance v3, Lus/zoom/zrc/utils/PauseOnScrollListener;

    invoke-static {}, Lus/zoom/zrc/utils/AvatarLoader;->getInstance()Lus/zoom/zrc/utils/AvatarLoader;

    move-result-object v4

    invoke-direct {v3, v4, v0, v0}, Lus/zoom/zrc/utils/PauseOnScrollListener;-><init>(Lus/zoom/zrc/utils/AvatarLoader;ZZ)V

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 130
    iget-object v2, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->searchCloudView:Landroid/view/View;

    new-instance v3, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$2;

    invoke-direct {v3, p0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$2;-><init>(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v2, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mBack:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v2, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mMeetingNow:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v2, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mInviteSend:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->list:Ljava/util/List;

    .line 141
    iget-object v2, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->list:Ljava/util/List;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/AppModel;->getZrcContactIm()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 142
    new-instance v2, Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;

    iget-object v3, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->context:Landroid/content/Context;

    iget-object v4, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->list:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mListAdapter:Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;

    .line 143
    iget-object v2, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mList:Landroid/widget/ExpandableListView;

    iget-object v3, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mListAdapter:Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 144
    new-instance v2, Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter;

    iget-object v3, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->selectedContactListAdapter:Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter;

    .line 145
    iget-object v2, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->selectedContactListAdapter:Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter;->setHasStableIds(Z)V

    .line 146
    iget-object v2, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mSelectImView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->selectedContactListAdapter:Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter;

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 147
    iget-object v2, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mSelectImView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 148
    iget-object v2, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mSelectImView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v4, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->context:Landroid/content/Context;

    invoke-direct {v3, v4, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 149
    new-instance v2, Lus/zoom/zrc/view/adapter/SearchListAdapter;

    iget-object v3, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lus/zoom/zrc/view/adapter/SearchListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->searchListAdapter:Lus/zoom/zrc/view/adapter/SearchListAdapter;

    .line 150
    iget-object v2, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mSearchList:Landroid/widget/ListView;

    iget-object v3, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->searchCloudView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 151
    iget-object v2, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mSearchList:Landroid/widget/ListView;

    iget-object v3, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->searchListAdapter:Lus/zoom/zrc/view/adapter/SearchListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    iget-object v2, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mSearchList:Landroid/widget/ListView;

    iget-object v3, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->searchCloudView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 153
    iget-object v2, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mSearchView:Lus/zoom/zrc/view/ZRCSearchView;

    new-instance v3, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$3;

    invoke-direct {v3, p0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$3;-><init>(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;)V

    invoke-virtual {v2, v3}, Lus/zoom/zrc/view/ZRCSearchView;->setZRCSearchViewSearchListener(Lus/zoom/zrc/view/ZRCSearchView$ZRCSearchViewSearchListener;)V

    .line 189
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->expandGroup()V

    .line 191
    new-instance v2, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$4;

    invoke-direct {v2, p0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$4;-><init>(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;)V

    invoke-virtual {p2, v2}, Lus/zoom/zrc/view/SideBar;->setOnTouchingLetterChangedListener(Lus/zoom/zrc/view/SideBar$OnTouchingLetterChangedListener;)V

    .line 217
    invoke-virtual {p2, v1}, Lus/zoom/zrc/view/SideBar;->setTextView(Landroid/widget/TextView;)V

    .line 219
    iget-object p2, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mList:Landroid/widget/ExpandableListView;

    new-instance v1, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$5;

    invoke-direct {v1, p0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$5;-><init>(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;)V

    invoke-virtual {p2, v1}, Landroid/widget/ExpandableListView;->setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V

    .line 226
    iget-object p2, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mList:Landroid/widget/ExpandableListView;

    new-instance v1, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$6;

    invoke-direct {v1, p0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$6;-><init>(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;)V

    invoke-virtual {p2, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 251
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->updateImContactListByFeatureList()V

    .line 252
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    instance-of p2, p2, Lus/zoom/zrc/MeetingActivity;

    if-eqz p2, :cond_0

    const/16 p2, 0x8

    .line 253
    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 257
    :goto_0
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->showInviteSendLayout()V

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

.method public onFinishRebuildContactData()V
    .locals 2

    .line 426
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mListAdapter:Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;

    if-nez v0, :cond_0

    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 431
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->list:Ljava/util/List;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getZrcContactIm()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    .line 433
    :goto_0
    iget-object v1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 434
    iget-object v1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 437
    :cond_1
    iget-object v1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 441
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mListAdapter:Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;

    iget-object v1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->list:Ljava/util/List;

    invoke-static {v1}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->sort(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;->refreshList(Ljava/util/List;)V

    .line 442
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->searchListAdapter:Lus/zoom/zrc/view/adapter/SearchListAdapter;

    invoke-virtual {v0}, Lus/zoom/zrc/view/adapter/SearchListAdapter;->notifyDataSetChanged()V

    .line 443
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->expandGroup()V

    return-void
.end method

.method public onFinishReceivingLegacyRoomList(Z)V
    .locals 0

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

.method public onPause()V
    .locals 1

    .line 332
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->onPause()V

    .line 333
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->firstVisiblePosition:I

    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 613
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 614
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->hideContactList:I

    if-ne p1, p2, :cond_0

    .line 615
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->onUpdateHideContactList()V

    goto :goto_0

    .line 616
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->featureList:I

    if-ne p1, p2, :cond_1

    .line 617
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->updateImContactListByFeatureList()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRemove(Lus/zoom/zrcsdk/model/ZRCContact;)V
    .locals 1

    .line 513
    iget-object p1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->selectedContactListAdapter:Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter;

    invoke-virtual {p1}, Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter;->notifyDataSetChanged()V

    .line 514
    iget-object p1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mListAdapter:Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;

    invoke-virtual {p1}, Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;->notifyDataSetChanged()V

    .line 515
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->showInviteSendLayout()V

    .line 516
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getSeletedContacts()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 517
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Lus/zoom/zrcbox/R$string;->ok:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getSeletedContacts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 518
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mMeetingNow:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 520
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mMeetingNow:Landroid/widget/TextView;

    sget v0, Lus/zoom/zrcbox/R$string;->ok:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 299
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->onResume()V

    .line 300
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->showInviteSendLayout()V

    .line 301
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 302
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->list:Ljava/util/List;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getZrcContactIm()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    .line 304
    :goto_0
    iget-object v1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 305
    iget-object v1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 312
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mListAdapter:Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;

    iget-object v1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->list:Ljava/util/List;

    invoke-static {v1}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->sort(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;->refreshList(Ljava/util/List;)V

    .line 313
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->searchListAdapter:Lus/zoom/zrc/view/adapter/SearchListAdapter;

    invoke-virtual {v0}, Lus/zoom/zrc/view/adapter/SearchListAdapter;->notifyDataSetChanged()V

    .line 314
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->expandGroup()V

    .line 315
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mBack:Landroid/widget/ImageView;

    new-instance v1, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$8;

    invoke-direct {v1, p0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$8;-><init>(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 322
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getSeletedContacts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lus/zoom/zrcbox/R$string;->ok:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getSeletedContacts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    iget-object v1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mMeetingNow:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 326
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mMeetingNow:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->ok:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

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

    .line 448
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mSearchList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 449
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->searchListAdapter:Lus/zoom/zrc/view/adapter/SearchListAdapter;

    invoke-virtual {v0}, Lus/zoom/zrc/view/adapter/SearchListAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 450
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 451
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCContact;

    .line 452
    invoke-direct {p0, v2, v0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->isContact(Lus/zoom/zrcsdk/model/ZRCContact;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 455
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 458
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->dismissWaitingDialog()V

    .line 459
    iget-object p1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->searchListAdapter:Lus/zoom/zrc/view/adapter/SearchListAdapter;

    invoke-virtual {p1}, Lus/zoom/zrc/view/adapter/SearchListAdapter;->notifyDataSetChanged()V

    .line 460
    iget-object p1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mSearchList:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result p1

    if-eqz p1, :cond_2

    .line 461
    iget-object p1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mSearchList:Landroid/widget/ListView;

    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->searchCloudView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    const/4 p1, 0x0

    .line 462
    iput-object p1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->searchCloudView:Landroid/view/View;

    :cond_2
    return-void
.end method

.method public onSelected(Lus/zoom/zrcsdk/model/ZRCContact;)V
    .locals 1

    .line 496
    iget-object p1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->selectedContactListAdapter:Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter;

    invoke-virtual {p1}, Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter;->notifyDataSetChanged()V

    .line 497
    iget-object p1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mSelectImView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 499
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getSeletedContacts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 501
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mListAdapter:Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;

    invoke-virtual {p1}, Lus/zoom/zrc/view/adapter/ZRCContactImAdapter;->notifyDataSetChanged()V

    .line 502
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->showInviteSendLayout()V

    .line 503
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getSeletedContacts()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 504
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Lus/zoom/zrcbox/R$string;->ok:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getSeletedContacts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 505
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mMeetingNow:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 507
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->mMeetingNow:Landroid/widget/TextView;

    sget v0, Lus/zoom/zrcbox/R$string;->ok:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 338
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->addZRIMEventListener(Lus/zoom/zrc/model/AppEngine$IZRIMEvent;)V

    .line 339
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppModel;->addSelectedListener(Lus/zoom/zrc/view/ISelectedMeetingListener;)V

    .line 340
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->onStart()V

    return-void
.end method

.method public onStartReceivingLegacyRoomList(Z)V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 345
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->removeZRIMEventListener(Lus/zoom/zrc/model/AppEngine$IZRIMEvent;)V

    .line 346
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppModel;->removeSlectedListener(Lus/zoom/zrc/view/ISelectedMeetingListener;)V

    .line 347
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->onClickBtnClearSearchView()V

    .line 348
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->clearSelectedContacts()V

    .line 349
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->onStop()V

    return-void
.end method

.method public setOnClickMeetingNowBtnListener(Lus/zoom/zrc/view/IMAddrBookListFragment$OnClickMeetingNowBtnListener;)V
    .locals 0

    .line 607
    iput-object p1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->onClickMeetingNowBtnListener:Lus/zoom/zrc/view/IMAddrBookListFragment$OnClickMeetingNowBtnListener;

    return-void
.end method
