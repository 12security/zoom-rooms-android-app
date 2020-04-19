.class public Lus/zoom/zrc/view/InviteInMeetingDialogFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "InviteInMeetingDialogFragment.java"

# interfaces
.implements Lus/zoom/zrc/view/TabBar$OnSelectedTabListener;
.implements Landroid/view/View$OnClickListener;
.implements Lus/zoom/zrc/view/IMAddrBookListFragment$OnClickMeetingNowBtnListener;
.implements Lus/zoom/zrc/view/InviteByEmailFragment$OnClickSendInvitationEmailListener;


# static fields
.field public static final SHOW_TAG:Ljava/lang/String; = "us.zoom.zrc.view.InviteInMeetingDialogFragment"


# instance fields
.field private inCallMode:Z

.field private isTablet:Z

.field private mAddrBookListPhoneFragment:Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;

.field private mDialFragment:Lus/zoom/zrc/view/DialFragment;

.field private mFragmentList:[Landroidx/fragment/app/Fragment;

.field private mInviteByContactsFragment:Lus/zoom/zrc/view/InviteByContactsFragment;

.field private mInviteByEmailFragment:Lus/zoom/zrc/view/InviteByEmailFragment;

.field private mInviteRoomSystemFragment:Lus/zoom/zrc/view/InviteRoomSystemFragment;

.field private mIvBack:Landroid/widget/ImageView;

.field private mSelectedFragment:Landroidx/fragment/app/Fragment;

.field private mTabBar:Lus/zoom/zrc/view/TabBar;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/InviteInMeetingDialogFragment;)Lus/zoom/zrc/view/TabBar;
    .locals 0

    .line 41
    iget-object p0, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mTabBar:Lus/zoom/zrc/view/TabBar;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/InviteInMeetingDialogFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 41
    iget-object p0, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mIvBack:Landroid/widget/ImageView;

    return-object p0
.end method

.method private fillTabBar()V
    .locals 8

    const/4 v0, 0x4

    .line 188
    new-array v1, v0, [Ljava/lang/String;

    .line 189
    iget-boolean v2, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->isTablet:Z

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    .line 190
    invoke-virtual {p0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v7, Lus/zoom/zrcbox/R$string;->invite_by_contacts:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 191
    invoke-virtual {p0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v7, Lus/zoom/zrcbox/R$string;->invite_by_email:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 192
    invoke-virtual {p0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v7, Lus/zoom/zrcbox/R$string;->invite_by_phone:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 193
    invoke-virtual {p0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v7, Lus/zoom/zrcbox/R$string;->invite_room_system:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v7, Lus/zoom/zrcbox/R$string;->contacts:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 196
    invoke-virtual {p0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v7, Lus/zoom/zrcbox/R$string;->email:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 197
    invoke-virtual {p0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v7, Lus/zoom/zrcbox/R$string;->phone_zrc_meeting_invite_by_phone:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 198
    invoke-virtual {p0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v7, Lus/zoom/zrcbox/R$string;->phone_zrc_meeting_invite_room_system:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 200
    :goto_0
    iget-object v2, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mTabBar:Lus/zoom/zrc/view/TabBar;

    invoke-virtual {v2, v1, v6}, Lus/zoom/zrc/view/TabBar;->addTabs([Ljava/lang/String;I)V

    .line 203
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getLoginInfo()Lus/zoom/zrcsdk/model/LoginInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 205
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/LoginInfo;->isPublicRoomEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 206
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/LoginInfo;->isStandaloneDigitalSignage()Z

    move-result v1

    if-nez v1, :cond_1

    .line 207
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->isHideContactList()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x8

    if-eqz v1, :cond_2

    .line 209
    iget-object v1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mTabBar:Lus/zoom/zrc/view/TabBar;

    invoke-virtual {v1, v6}, Lus/zoom/zrc/view/TabBar;->getTab(I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 211
    :cond_2
    iget-object v1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mTabBar:Lus/zoom/zrc/view/TabBar;

    invoke-virtual {v1, v6}, Lus/zoom/zrc/view/TabBar;->getTab(I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    :goto_2
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->isPairedWithoutLogin()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 215
    iget-object v1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mTabBar:Lus/zoom/zrc/view/TabBar;

    invoke-virtual {v1, v5}, Lus/zoom/zrc/view/TabBar;->getTab(I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 217
    :cond_3
    iget-object v1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mTabBar:Lus/zoom/zrc/view/TabBar;

    invoke-virtual {v1, v5}, Lus/zoom/zrc/view/TabBar;->getTab(I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    :goto_3
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 222
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getCalloutCountryCodeList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 223
    iget-object v1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mTabBar:Lus/zoom/zrc/view/TabBar;

    invoke-virtual {v1, v4}, Lus/zoom/zrc/view/TabBar;->getTab(I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 225
    :cond_4
    iget-object v1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mTabBar:Lus/zoom/zrc/view/TabBar;

    invoke-virtual {v1, v4}, Lus/zoom/zrc/view/TabBar;->getTab(I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    :goto_4
    invoke-static {}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->supportInviteRoomSystemInMeeting()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 230
    iget-object v1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mTabBar:Lus/zoom/zrc/view/TabBar;

    invoke-virtual {v1, v3}, Lus/zoom/zrc/view/TabBar;->getTab(I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 232
    :cond_5
    iget-object v1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mTabBar:Lus/zoom/zrc/view/TabBar;

    invoke-virtual {v1, v3}, Lus/zoom/zrc/view/TabBar;->getTab(I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 236
    :goto_6
    iget-object v3, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mTabBar:Lus/zoom/zrc/view/TabBar;

    invoke-virtual {v3}, Lus/zoom/zrc/view/TabBar;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 237
    iget-object v3, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mTabBar:Lus/zoom/zrc/view/TabBar;

    invoke-virtual {v3, v1}, Lus/zoom/zrc/view/TabBar;->getTab(I)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_6

    add-int/lit8 v2, v2, 0x1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_7
    if-gt v2, v5, :cond_8

    .line 242
    iget-object v1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mTabBar:Lus/zoom/zrc/view/TabBar;

    invoke-virtual {v1, v0}, Lus/zoom/zrc/view/TabBar;->setVisibility(I)V

    .line 245
    :cond_8
    invoke-virtual {p0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mTabBar:Lus/zoom/zrc/view/TabBar;

    if-eqz v0, :cond_9

    .line 247
    invoke-virtual {v0, v6}, Lus/zoom/zrc/view/TabBar;->getTab(I)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 248
    iget-object v0, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mTabBar:Lus/zoom/zrc/view/TabBar;

    invoke-virtual {v0, v6}, Lus/zoom/zrc/view/TabBar;->getTab(I)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/view/InviteInMeetingDialogFragment$1;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment$1;-><init>(Lus/zoom/zrc/view/InviteInMeetingDialogFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    return-void
.end method

.method private initSelectedTab()V
    .locals 2

    .line 154
    iget-object v0, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mTabBar:Lus/zoom/zrc/view/TabBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 155
    :goto_0
    iget-object v1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mTabBar:Lus/zoom/zrc/view/TabBar;

    invoke-virtual {v1}, Lus/zoom/zrc/view/TabBar;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 156
    iget-object v1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mTabBar:Lus/zoom/zrc/view/TabBar;

    invoke-virtual {v1, v0}, Lus/zoom/zrc/view/TabBar;->getTab(I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mTabBar:Lus/zoom/zrc/view/TabBar;

    .line 157
    invoke-virtual {v1, v0}, Lus/zoom/zrc/view/TabBar;->getTab(I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 158
    iget-object v1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mFragmentList:[Landroidx/fragment/app/Fragment;

    aget-object v0, v1, v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->initSelectedView(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private initSelectedView(Landroidx/fragment/app/Fragment;)V
    .locals 3

    const/4 v0, 0x0

    .line 265
    :goto_0
    iget-object v1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mFragmentList:[Landroidx/fragment/app/Fragment;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 266
    aget-object v2, v1, v0

    if-ne p1, v2, :cond_0

    .line 267
    iget-object v1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mTabBar:Lus/zoom/zrc/view/TabBar;

    invoke-virtual {v1, v0}, Lus/zoom/zrc/view/TabBar;->selectTabByIndex(I)V

    goto :goto_1

    .line 269
    :cond_0
    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 270
    invoke-virtual {p0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 271
    iget-object v2, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mFragmentList:[Landroidx/fragment/app/Fragment;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 272
    iget-object v2, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mFragmentList:[Landroidx/fragment/app/Fragment;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 274
    :cond_1
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private onSipCallInfosChanged()V
    .locals 3

    .line 165
    iget-object v0, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mTabBar:Lus/zoom/zrc/view/TabBar;

    invoke-virtual {v0}, Lus/zoom/zrc/view/TabBar;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mTabBar:Lus/zoom/zrc/view/TabBar;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/TabBar;->getTab(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    .line 169
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/SipCallInfoList;->isEmpty()Z

    move-result v2

    if-ne v0, v2, :cond_1

    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mTabBar:Lus/zoom/zrc/view/TabBar;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/TabBar;->getTab(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 174
    invoke-direct {p0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->initSelectedTab()V

    return-void
.end method

.method private onUpdateHideContactList()V
    .locals 0

    .line 420
    invoke-direct {p0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->fillTabBar()V

    return-void
.end method

.method private setInCallMode(Z)V
    .locals 2

    .line 178
    iput-boolean p1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->inCallMode:Z

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    .line 180
    iget-object p1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mFragmentList:[Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v1

    invoke-static {v1}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->obtainPstnInstance(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)Lus/zoom/zrc/phonecall/PhoneCallFragment;

    move-result-object v1

    aput-object v1, p1, v0

    goto :goto_0

    .line 182
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mFragmentList:[Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mDialFragment:Lus/zoom/zrc/view/DialFragment;

    aput-object v1, p1, v0

    :goto_0
    return-void
.end method

.method private switchSelectView(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eq p1, p2, :cond_3

    .line 285
    invoke-virtual {p0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 288
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 290
    :cond_1
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_2

    .line 292
    sget p1, Lus/zoom/zrcbox/R$id;->fl_content:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 293
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 295
    :cond_2
    invoke-virtual {v0, p2}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 297
    :goto_0
    iput-object p2, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mSelectedFragment:Landroidx/fragment/app/Fragment;

    :cond_3
    return-void
.end method


# virtual methods
.method public OnClickMeetingNowBtn(I)V
    .locals 0

    .line 380
    invoke-virtual {p0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->dismiss()V

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 425
    invoke-virtual {p0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getInstance(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)Lus/zoom/zrc/phonecall/PhoneCallFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {v0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->dismissImmediately()V

    .line 429
    :cond_0
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->dismiss()V

    return-void
.end method

.method public handleCallOutDismiss()V
    .locals 2

    const/4 v0, 0x0

    .line 396
    invoke-direct {p0, v0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->setInCallMode(Z)V

    .line 397
    iget-object v0, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mTabBar:Lus/zoom/zrc/view/TabBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/TabBar;->selectTabByIndex(I)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 106
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "inCallMode"

    .line 108
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->inCallMode:Z

    .line 109
    invoke-virtual {p0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-class v1, Lus/zoom/zrc/view/InviteByContactsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/view/InviteByContactsFragment;

    iput-object p1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mInviteByContactsFragment:Lus/zoom/zrc/view/InviteByContactsFragment;

    .line 110
    invoke-virtual {p0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-class v1, Lus/zoom/zrc/view/DialFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/view/DialFragment;

    iput-object p1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mDialFragment:Lus/zoom/zrc/view/DialFragment;

    .line 111
    invoke-virtual {p0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-class v1, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;

    iput-object p1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mAddrBookListPhoneFragment:Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;

    .line 112
    invoke-virtual {p0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-class v1, Lus/zoom/zrc/view/InviteByEmailFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/view/InviteByEmailFragment;

    iput-object p1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mInviteByEmailFragment:Lus/zoom/zrc/view/InviteByEmailFragment;

    .line 114
    invoke-virtual {p0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-class v1, Lus/zoom/zrc/view/InviteRoomSystemFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/view/InviteRoomSystemFragment;

    iput-object p1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mInviteRoomSystemFragment:Lus/zoom/zrc/view/InviteRoomSystemFragment;

    .line 117
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mInviteByContactsFragment:Lus/zoom/zrc/view/InviteByContactsFragment;

    if-nez p1, :cond_1

    .line 118
    new-instance p1, Lus/zoom/zrc/view/InviteByContactsFragment;

    invoke-direct {p1}, Lus/zoom/zrc/view/InviteByContactsFragment;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mInviteByContactsFragment:Lus/zoom/zrc/view/InviteByContactsFragment;

    .line 121
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mDialFragment:Lus/zoom/zrc/view/DialFragment;

    if-nez p1, :cond_2

    .line 122
    new-instance p1, Lus/zoom/zrc/view/DialFragment;

    invoke-direct {p1}, Lus/zoom/zrc/view/DialFragment;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mDialFragment:Lus/zoom/zrc/view/DialFragment;

    .line 125
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mInviteByEmailFragment:Lus/zoom/zrc/view/InviteByEmailFragment;

    if-nez p1, :cond_3

    .line 126
    new-instance p1, Lus/zoom/zrc/view/InviteByEmailFragment;

    invoke-direct {p1}, Lus/zoom/zrc/view/InviteByEmailFragment;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mInviteByEmailFragment:Lus/zoom/zrc/view/InviteByEmailFragment;

    .line 129
    :cond_3
    iget-object p1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mInviteRoomSystemFragment:Lus/zoom/zrc/view/InviteRoomSystemFragment;

    if-nez p1, :cond_4

    .line 130
    new-instance p1, Lus/zoom/zrc/view/InviteRoomSystemFragment;

    invoke-direct {p1}, Lus/zoom/zrc/view/InviteRoomSystemFragment;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mInviteRoomSystemFragment:Lus/zoom/zrc/view/InviteRoomSystemFragment;

    .line 133
    :cond_4
    iget-object p1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mAddrBookListPhoneFragment:Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;

    if-nez p1, :cond_5

    .line 134
    new-instance p1, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;

    invoke-direct {p1}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mAddrBookListPhoneFragment:Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;

    :cond_5
    const/4 p1, 0x4

    .line 136
    new-array p1, p1, [Landroidx/fragment/app/Fragment;

    iput-object p1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mFragmentList:[Landroidx/fragment/app/Fragment;

    .line 137
    iget-boolean p1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->isTablet:Z

    if-eqz p1, :cond_6

    .line 138
    iget-object p1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mFragmentList:[Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mInviteByContactsFragment:Lus/zoom/zrc/view/InviteByContactsFragment;

    aput-object v1, p1, v0

    goto :goto_0

    .line 140
    :cond_6
    iget-object p1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mFragmentList:[Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mAddrBookListPhoneFragment:Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;

    aput-object v1, p1, v0

    .line 142
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mFragmentList:[Landroidx/fragment/app/Fragment;

    const/4 v0, 0x1

    iget-object v1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mInviteByEmailFragment:Lus/zoom/zrc/view/InviteByEmailFragment;

    aput-object v1, p1, v0

    .line 143
    iget-boolean p1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->inCallMode:Z

    invoke-direct {p0, p1}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->setInCallMode(Z)V

    .line 144
    iget-object p1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mFragmentList:[Landroidx/fragment/app/Fragment;

    const/4 v0, 0x3

    iget-object v1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mInviteRoomSystemFragment:Lus/zoom/zrc/view/InviteRoomSystemFragment;

    aput-object v1, p1, v0

    .line 146
    iget-object p1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mInviteByContactsFragment:Lus/zoom/zrc/view/InviteByContactsFragment;

    invoke-virtual {p1, p0}, Lus/zoom/zrc/view/InviteByContactsFragment;->setOnClickMeetingNowBtnListener(Lus/zoom/zrc/view/IMAddrBookListFragment$OnClickMeetingNowBtnListener;)V

    .line 147
    iget-object p1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mAddrBookListPhoneFragment:Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;

    invoke-virtual {p1, p0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->setOnClickMeetingNowBtnListener(Lus/zoom/zrc/view/IMAddrBookListFragment$OnClickMeetingNowBtnListener;)V

    .line 148
    iget-object p1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mInviteByEmailFragment:Lus/zoom/zrc/view/InviteByEmailFragment;

    invoke-virtual {p1, p0}, Lus/zoom/zrc/view/InviteByEmailFragment;->setOnClickSendInvitationEmailListener(Lus/zoom/zrc/view/InviteByEmailFragment$OnClickSendInvitationEmailListener;)V

    .line 150
    invoke-direct {p0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->initSelectedTab()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 64
    invoke-static {p1}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->isTablet:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 373
    iget-object v0, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mIvBack:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 374
    invoke-virtual {p0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public onClickSendInvitationEmail(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 387
    invoke-virtual {p0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->dismiss()V

    .line 388
    invoke-virtual {p0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v1, Lus/zoom/zrcbox/R$string;->succeed_in_sending_invitation_email:I

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 390
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v1, Lus/zoom/zrcbox/R$string;->failed_to_send_invitation_email:I

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 391
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x2

    const v1, 0x1030007

    .line 69
    invoke-virtual {p0, v0, v1}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->setStyle(II)V

    .line 70
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    .line 72
    invoke-virtual {p0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    .line 73
    invoke-virtual {p0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lus/zoom/zrc/base/notification/NotificationEvent;

    sget-object v1, Lus/zoom/zrc/base/notification/UserEvent;->DialOutPstnCall:Lus/zoom/zrc/base/notification/UserEvent;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerNotification([Lus/zoom/zrc/base/notification/NotificationEvent;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 79
    invoke-virtual {p0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 80
    invoke-virtual {p0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const p3, 0x680081

    invoke-virtual {p2, p3}, Landroid/view/Window;->addFlags(I)V

    .line 86
    :cond_0
    new-instance p2, Lus/zoom/zrc/view/InviteMeetingFrameLayout;

    invoke-virtual {p0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lus/zoom/zrc/view/InviteMeetingFrameLayout;-><init>(Landroid/content/Context;)V

    .line 87
    sget p3, Lus/zoom/zrcbox/R$layout;->invite_in_meeting:I

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 88
    sget p3, Lus/zoom/zrcbox/R$id;->tabbar:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lus/zoom/zrc/view/TabBar;

    iput-object p3, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mTabBar:Lus/zoom/zrc/view/TabBar;

    .line 89
    iget-boolean p3, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->isTablet:Z

    if-eqz p3, :cond_1

    .line 90
    iget-object p3, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mTabBar:Lus/zoom/zrc/view/TabBar;

    sget v0, Lus/zoom/zrcbox/R$color;->zrc_invite_action_bar_color:I

    sget v1, Lus/zoom/zrcbox/R$color;->zrc_white:I

    sget v2, Lus/zoom/zrcbox/R$color;->zrc_white:I

    sget v3, Lus/zoom/zrcbox/R$color;->zrc_invite_action_bar_color:I

    invoke-virtual {p3, v0, v1, v2, v3}, Lus/zoom/zrc/view/TabBar;->setTabItemColors(IIII)V

    goto :goto_0

    .line 92
    :cond_1
    iget-object p3, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mTabBar:Lus/zoom/zrc/view/TabBar;

    sget v0, Lus/zoom/zrcbox/R$color;->zm_white:I

    sget v1, Lus/zoom/zrcbox/R$color;->zm_black:I

    sget v2, Lus/zoom/zrcbox/R$color;->zrc_invite_selected_bg:I

    sget v3, Lus/zoom/zrcbox/R$color;->zrc_white:I

    invoke-virtual {p3, v0, v1, v2, v3}, Lus/zoom/zrc/view/TabBar;->setTabItemColors(IIII)V

    .line 93
    iget-object p3, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mTabBar:Lus/zoom/zrc/view/TabBar;

    sget v0, Lus/zoom/zrcbox/R$color;->phone_tab_text_selected:I

    invoke-virtual {p3, v0}, Lus/zoom/zrc/view/TabBar;->setDisabledColor(I)V

    .line 95
    :goto_0
    sget p3, Lus/zoom/zrcbox/R$id;->btnLeft:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mIvBack:Landroid/widget/ImageView;

    .line 96
    invoke-direct {p0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->fillTabBar()V

    .line 98
    iget-object p1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mTabBar:Lus/zoom/zrc/view/TabBar;

    invoke-virtual {p1, p0}, Lus/zoom/zrc/view/TabBar;->setOnSelectedTabListener(Lus/zoom/zrc/view/TabBar$OnSelectedTabListener;)V

    .line 99
    iget-object p1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mIvBack:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x0

    .line 319
    iput-object v0, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mSelectedFragment:Landroidx/fragment/app/Fragment;

    .line 320
    iget-boolean v0, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->inCallMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 321
    invoke-direct {p0, v0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->setInCallMode(Z)V

    .line 323
    :cond_0
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 1

    .line 412
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    .line 413
    sget-object p2, Lus/zoom/zrc/base/notification/UserEvent;->DialOutPstnCall:Lus/zoom/zrc/base/notification/UserEvent;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    .line 414
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->setInCallMode(Z)V

    .line 415
    iget-object p1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mSelectedFragment:Landroidx/fragment/app/Fragment;

    iget-object p2, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mFragmentList:[Landroidx/fragment/app/Fragment;

    const/4 v0, 0x2

    aget-object p2, p2, v0

    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->switchSelectView(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    :cond_0
    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 402
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 403
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->hideContactList:I

    if-ne p1, p2, :cond_0

    .line 404
    invoke-direct {p0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->onUpdateHideContactList()V

    goto :goto_0

    .line 405
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->sipCallInfos:I

    if-ne p1, p2, :cond_1

    .line 406
    invoke-direct {p0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->onSipCallInfosChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "inCallMode"

    .line 303
    iget-boolean v1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->inCallMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 304
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSelectedTab(I)V
    .locals 2

    .line 328
    invoke-virtual {p0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 329
    invoke-virtual {p0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 330
    invoke-virtual {p0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/utils/Util;->collapseSoftInputMethod(Landroid/view/View;)V

    goto :goto_0

    .line 333
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 334
    invoke-virtual {p0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/utils/Util;->collapseSoftInputMethod(Landroid/view/View;)V

    :cond_1
    :goto_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 339
    iget-object v1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mFragmentList:[Landroidx/fragment/app/Fragment;

    aget-object v0, v1, v0

    if-eqz v0, :cond_2

    .line 340
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 341
    iget-object p1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mSelectedFragment:Landroidx/fragment/app/Fragment;

    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->switchSelectView(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    return-void

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 347
    iget-object v1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mFragmentList:[Landroidx/fragment/app/Fragment;

    aget-object v0, v1, v0

    if-eqz v0, :cond_3

    .line 348
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 349
    iget-object p1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mSelectedFragment:Landroidx/fragment/app/Fragment;

    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->switchSelectView(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    return-void

    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 355
    iget-object v0, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mInviteByEmailFragment:Lus/zoom/zrc/view/InviteByEmailFragment;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lus/zoom/zrc/view/InviteByEmailFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 356
    iget-object p1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mSelectedFragment:Landroidx/fragment/app/Fragment;

    iget-object v0, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mInviteByEmailFragment:Lus/zoom/zrc/view/InviteByEmailFragment;

    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->switchSelectView(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    return-void

    :cond_4
    if-nez p1, :cond_5

    .line 362
    iget-object v0, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mInviteByContactsFragment:Lus/zoom/zrc/view/InviteByContactsFragment;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lus/zoom/zrc/view/InviteByContactsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 363
    iget-object p1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mSelectedFragment:Landroidx/fragment/app/Fragment;

    iget-object v0, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mInviteByContactsFragment:Lus/zoom/zrc/view/InviteByContactsFragment;

    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->switchSelectView(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    return-void

    .line 368
    :cond_5
    iget-object v0, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mSelectedFragment:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->mFragmentList:[Landroidx/fragment/app/Fragment;

    aget-object p1, v1, p1

    invoke-direct {p0, v0, p1}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->switchSelectView(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 309
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onStart()V

    .line 310
    invoke-direct {p0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->onSipCallInfosChanged()V

    .line 312
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getCallOutNumberInCalling()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 313
    invoke-direct {p0, v0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->setInCallMode(Z)V

    :cond_0
    return-void
.end method
