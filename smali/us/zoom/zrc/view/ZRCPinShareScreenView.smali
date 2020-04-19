.class public Lus/zoom/zrc/view/ZRCPinShareScreenView;
.super Landroid/widget/LinearLayout;
.source "ZRCPinShareScreenView.java"


# instance fields
.field private alertDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

.field private currentScreenStatus:Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

.field private divider:Lus/zoom/zrc/view/RecyclerViewDivider;

.field private onPinShareScreenStatusChanged:Landroidx/databinding/Observable$OnPropertyChangedCallback;

.field private rvSharingList:Landroidx/recyclerview/widget/RecyclerView;

.field private screenIndex:I

.field private sharingListAdapter:Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;

.field private tvAudioControl:Landroid/widget/TextView;

.field private tvScreenIndex:Landroid/widget/TextView;

.field private tvScreenIndexMask:Landroid/widget/TextView;

.field private tvWarningMessage:Landroid/widget/TextView;

.field private zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getPinUserManager()Lus/zoom/zrc/model/ZRCPinUserManager;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    const/4 p1, -0x1

    .line 43
    iput p1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->screenIndex:I

    .line 56
    new-instance p1, Lus/zoom/zrc/view/ZRCPinShareScreenView$1;

    invoke-direct {p1, p0}, Lus/zoom/zrc/view/ZRCPinShareScreenView$1;-><init>(Lus/zoom/zrc/view/ZRCPinShareScreenView;)V

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->onPinShareScreenStatusChanged:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getPinUserManager()Lus/zoom/zrc/model/ZRCPinUserManager;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    const/4 p1, -0x1

    .line 43
    iput p1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->screenIndex:I

    .line 56
    new-instance p1, Lus/zoom/zrc/view/ZRCPinShareScreenView$1;

    invoke-direct {p1, p0}, Lus/zoom/zrc/view/ZRCPinShareScreenView$1;-><init>(Lus/zoom/zrc/view/ZRCPinShareScreenView;)V

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->onPinShareScreenStatusChanged:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getPinUserManager()Lus/zoom/zrc/model/ZRCPinUserManager;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    const/4 p1, -0x1

    .line 43
    iput p1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->screenIndex:I

    .line 56
    new-instance p1, Lus/zoom/zrc/view/ZRCPinShareScreenView$1;

    invoke-direct {p1, p0}, Lus/zoom/zrc/view/ZRCPinShareScreenView$1;-><init>(Lus/zoom/zrc/view/ZRCPinShareScreenView;)V

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->onPinShareScreenStatusChanged:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/ZRCPinShareScreenView;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->updateScreenStatusByIndex()V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/ZRCPinShareScreenView;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->updateScreenView()V

    return-void
.end method

.method static synthetic access$200(Lus/zoom/zrc/view/ZRCPinShareScreenView;)Lus/zoom/zrc/model/ZRCPinUserManager;
    .locals 0

    .line 38
    iget-object p0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/zrc/view/ZRCPinShareScreenView;)I
    .locals 0

    .line 38
    iget p0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->screenIndex:I

    return p0
.end method

.method static synthetic access$400(Lus/zoom/zrc/view/ZRCPinShareScreenView;)Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;
    .locals 0

    .line 38
    iget-object p0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->currentScreenStatus:Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    return-object p0
.end method

.method static synthetic access$500(Lus/zoom/zrc/view/ZRCPinShareScreenView;II)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->pinShareSourceOnZR(II)V

    return-void
.end method

.method static synthetic access$600(Lus/zoom/zrc/view/ZRCPinShareScreenView;II)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->pinShareSourceOnZRW(II)V

    return-void
.end method

.method static synthetic access$700(Lus/zoom/zrc/view/ZRCPinShareScreenView;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->tvAudioControl:Landroid/widget/TextView;

    return-object p0
.end method

.method private initScreen()V
    .locals 2

    .line 143
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getPinUserManager()Lus/zoom/zrc/model/ZRCPinUserManager;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCPinUserManager;->getAllPinStatusOfScreens()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->currentScreenStatus:Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->screenIndex:I

    .line 144
    iget v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->screenIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 147
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->updateScreenView()V

    return-void
.end method

.method private initSharingList()V
    .locals 4

    .line 151
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 152
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->rvSharingList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 154
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->divider:Lus/zoom/zrc/view/RecyclerViewDivider;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lus/zoom/zrc/view/RecyclerViewDivider;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lus/zoom/zrcbox/R$drawable;->mulit_share_list_divider:I

    invoke-direct {v0, v1, v2, v3}, Lus/zoom/zrc/view/RecyclerViewDivider;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->divider:Lus/zoom/zrc/view/RecyclerViewDivider;

    .line 157
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->rvSharingList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->divider:Lus/zoom/zrc/view/RecyclerViewDivider;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 160
    :cond_0
    new-instance v0, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->screenIndex:I

    invoke-direct {v0, v1, v2}, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->sharingListAdapter:Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;

    .line 161
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->rvSharingList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->sharingListAdapter:Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 163
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->sharingListAdapter:Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;

    new-instance v1, Lus/zoom/zrc/view/ZRCPinShareScreenView$2;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/ZRCPinShareScreenView$2;-><init>(Lus/zoom/zrc/view/ZRCPinShareScreenView;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;->setOnClickListener(Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$OnItemClickListener;)V

    return-void
.end method

.method private pinShareSourceOnZR(II)V
    .locals 5

    .line 193
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->currentScreenStatus:Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->isCanPinShare()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/Util;->areTwoUserIdsEqual(II)Z

    move-result p2

    if-nez p2, :cond_3

    .line 194
    iget-object p2, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    iget v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->screenIndex:I

    invoke-virtual {p2, v0}, Lus/zoom/zrc/model/ZRCPinUserManager;->hasPinnedShareMyself(I)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    .line 195
    invoke-virtual {p2}, Lus/zoom/zrc/model/ZRCPinUserManager;->getMeetingShareSettings()Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;->getShowWarningForSelfSharePinnedToViewerShare()I

    move-result p2

    if-ne p2, v1, :cond_0

    .line 196
    new-instance p2, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 197
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$string;->multi_share_stop_self_warning_title:I

    iget-object v3, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    iget-object v4, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->sharingListAdapter:Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;

    invoke-virtual {v4}, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;->getIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lus/zoom/zrc/model/ZRCPinUserManager;->getPinnedSharingParticipant(I)Lus/zoom/zrcsdk/model/ZRCParticipant;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lus/zoom/zrcsdk/util/StringUtil;->formatEnglishNameWithApostrophes(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setTitle(Ljava/lang/String;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    move-result-object p2

    .line 198
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$string;->multi_share_stop_self_warning_message:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setMessage(Ljava/lang/String;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    move-result-object p2

    sget v1, Lus/zoom/zrcbox/R$string;->zrc_continue:I

    new-instance v2, Lus/zoom/zrc/view/ZRCPinShareScreenView$3;

    invoke-direct {v2, p0, p1}, Lus/zoom/zrc/view/ZRCPinShareScreenView$3;-><init>(Lus/zoom/zrc/view/ZRCPinShareScreenView;I)V

    .line 199
    invoke-virtual {p2, v1, v2}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    move-result-object p1

    sget p2, Lus/zoom/zrcbox/R$string;->cancel:I

    .line 206
    invoke-virtual {p1, p2, v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    move-result-object p1

    .line 207
    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->create()Lus/zoom/zrc/base/app/ZRCAlertDialog;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->alertDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    .line 208
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->alertDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->show()V

    goto/16 :goto_0

    .line 209
    :cond_0
    iget-object p2, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->currentScreenStatus:Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getShareSourceType()I

    move-result p2

    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    iget-object p2, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    .line 210
    invoke-virtual {p2}, Lus/zoom/zrc/model/ZRCPinUserManager;->getMeetingShareSettings()Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;->getShowWarningForSelfSharePinnedToViewerShare()I

    move-result p2

    const/4 v3, 0x3

    if-ne p2, v3, :cond_1

    .line 211
    new-instance p2, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 212
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$string;->multi_share_stop_camera_share_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setMessage(Ljava/lang/String;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    move-result-object p2

    sget v1, Lus/zoom/zrcbox/R$string;->zrc_continue:I

    new-instance v2, Lus/zoom/zrc/view/ZRCPinShareScreenView$4;

    invoke-direct {v2, p0, p1}, Lus/zoom/zrc/view/ZRCPinShareScreenView$4;-><init>(Lus/zoom/zrc/view/ZRCPinShareScreenView;I)V

    .line 213
    invoke-virtual {p2, v1, v2}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    move-result-object p1

    sget p2, Lus/zoom/zrcbox/R$string;->cancel:I

    .line 220
    invoke-virtual {p1, p2, v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    move-result-object p1

    .line 221
    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->create()Lus/zoom/zrc/base/app/ZRCAlertDialog;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->alertDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    .line 222
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->alertDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->show()V

    goto :goto_0

    .line 223
    :cond_1
    iget-object p2, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->currentScreenStatus:Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getShareSourceType()I

    move-result p2

    const/4 v0, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    .line 224
    invoke-virtual {p2}, Lus/zoom/zrc/model/ZRCPinUserManager;->getMeetingShareSettings()Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;->getShowWarningForSelfSharePinnedToViewerShare()I

    move-result p2

    if-ne p2, v2, :cond_2

    .line 225
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->showSaveWhiteboardToast()V

    const-string p2, "show save whiteboard prompt, pin share source id=%d on zr screen=%d"

    .line 226
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->currentScreenStatus:Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getScreenIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {p2, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->currentScreenStatus:Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getScreenIndex()I

    move-result v0

    invoke-virtual {p2, v0, p1, v4}, Lus/zoom/zrc/model/Model;->pinShareSourceOnZRScreen(IIZ)Z

    goto :goto_0

    :cond_2
    const-string p2, "pin share source id=%d on zr screen=%d"

    .line 229
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->currentScreenStatus:Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getScreenIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {p2, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->currentScreenStatus:Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getScreenIndex()I

    move-result v0

    invoke-virtual {p2, v0, p1, v4}, Lus/zoom/zrc/model/Model;->pinShareSourceOnZRScreen(IIZ)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private pinShareSourceOnZRW(II)V
    .locals 4

    .line 236
    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/Util;->areTwoUserIdsEqual(II)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 239
    :cond_0
    iget-object p2, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->currentScreenStatus:Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->isCanPinShare()Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    const-string p2, "pin share source id=%d on zrw screen=%d"

    .line 240
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v3, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->currentScreenStatus:Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getScreenIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {p2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->currentScreenStatus:Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getScreenIndex()I

    move-result v0

    invoke-virtual {p2, v0, p1, v2}, Lus/zoom/zrc/model/Model;->pinShareSourceOnZRWScreen(IIZ)Z

    goto :goto_0

    :cond_1
    const-string p2, "pin share source id=%d on zrw screen=%d, but current screen cannot be pinned!"

    .line 243
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->currentScreenStatus:Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getScreenIndex()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {p2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private rearrangeScreenIndexTv(Z)V
    .locals 6

    .line 312
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->tvScreenIndex:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 315
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xa

    const/16 v2, 0x9

    const/16 v3, 0xd

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    .line 318
    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 319
    invoke-virtual {v0, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 320
    invoke-virtual {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 322
    :cond_1
    invoke-virtual {v0, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 323
    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 324
    invoke-virtual {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 327
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->tvScreenIndex:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private scrollToShowingPosition()V
    .locals 6

    .line 280
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->currentScreenStatus:Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->sharingListAdapter:Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;

    if-eqz v1, :cond_4

    .line 281
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getPinnedShareSourceId()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 283
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->currentScreenStatus:Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getPinnedShareSourceId()I

    move-result v0

    .line 285
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->sharingListAdapter:Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;

    invoke-virtual {v1}, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;->getSharingParticipants()Ljava/util/List;

    move-result-object v1

    .line 286
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lus/zoom/zrcsdk/model/ZRCParticipant;

    .line 287
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v5

    invoke-static {v0, v5}, Lus/zoom/zrcsdk/util/Util;->areTwoUserIdsEqual(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 288
    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    :goto_0
    if-eq v0, v4, :cond_3

    .line 293
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->rvSharingList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method private selectWarningMessage()V
    .locals 2

    .line 298
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->currentScreenStatus:Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getWhyCanNotPinShare()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 304
    :pswitch_0
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->tvWarningMessage:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->multi_share_hint_content_only:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 301
    :pswitch_1
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->tvWarningMessage:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->multi_share_hint_unknown:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setCurrentScreenStatus(Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;)V
    .locals 0
    .param p1    # Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 112
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->currentScreenStatus:Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    return-void
.end method

.method private showSaveWhiteboardToast()V
    .locals 4

    .line 392
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$string;->multi_share_stop_whiteboard_prompt:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 393
    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 394
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 395
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/high16 v3, 0x41a00000    # 20.0f

    .line 396
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    :cond_0
    const/high16 v3, 0x41800000    # 16.0f

    .line 398
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_0
    const/16 v3, 0x11

    .line 400
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 401
    invoke-virtual {v0, v3, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 402
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private updateScreenStatusByIndex()V
    .locals 3

    .line 116
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCPinUserManager;->getAllPinStatusOfScreens()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 117
    iget v1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->screenIndex:I

    if-ltz v1, :cond_3

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->currentScreenStatus:Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    if-nez v0, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCPinUserManager;->getAllPinStatusOfScreens()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->screenIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    if-nez v0, :cond_1

    return-void

    .line 127
    :cond_1
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->currentScreenStatus:Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getPinStatusOfScreenType()I

    move-result v1

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getPinStatusOfScreenType()I

    move-result v2

    if-eq v1, v2, :cond_2

    const-string v0, "weird case! screen index not aligned!"

    const/4 v1, 0x0

    .line 128
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 131
    :cond_2
    invoke-direct {p0, v0}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->setCurrentScreenStatus(Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;)V

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method private updateScreenView()V
    .locals 6

    .line 332
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->currentScreenStatus:Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    if-nez v0, :cond_0

    return-void

    .line 335
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getPinStatusOfScreenType()I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 337
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->tvScreenIndex:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lus/zoom/zrcbox/R$string;->zoom_whiteboard:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    invoke-direct {p0, v3}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->rearrangeScreenIndexTv(Z)V

    .line 339
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->tvAudioControl:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->tvScreenIndexMask:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$string;->zoom_whiteboard:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 344
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    iget-object v1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->currentScreenStatus:Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/ZRCPinUserManager;->canAdjustShareAudioOnScreen(Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;)Z

    move-result v0

    .line 345
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    iget-object v4, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->currentScreenStatus:Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    invoke-virtual {v1, v4}, Lus/zoom/zrc/model/ZRCPinUserManager;->isShareAudioMutedOnScreen(Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 348
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->tvAudioControl:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v1, :cond_2

    .line 350
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->tvAudioControl:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lus/zoom/zrcbox/R$drawable;->audio_share_state_mute:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 351
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->tvAudioControl:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v5, Lus/zoom/zrcbox/R$string;->unmute_current_share:I

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 353
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->tvAudioControl:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lus/zoom/zrcbox/R$drawable;->audio_share_state_unmute:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 354
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->tvAudioControl:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v5, Lus/zoom/zrcbox/R$string;->mute_current_share:I

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 356
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->tvAudioControl:Landroid/widget/TextView;

    new-instance v2, Lus/zoom/zrc/view/ZRCPinShareScreenView$5;

    invoke-direct {v2, p0, v1}, Lus/zoom/zrc/view/ZRCPinShareScreenView$5;-><init>(Lus/zoom/zrc/view/ZRCPinShareScreenView;Z)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 371
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->tvAudioControl:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 374
    :goto_1
    invoke-direct {p0, v4}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->rearrangeScreenIndexTv(Z)V

    .line 375
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCPinUserManager;->getZrPinStatusOfScreens()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 376
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->tvScreenIndex:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->tvScreenIndexMask:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 379
    :cond_4
    iget v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->screenIndex:I

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 380
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->tvScreenIndex:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->tvScreenIndexMask:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public dismissAlertDialog()V
    .locals 1

    .line 387
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->alertDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->alertDialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public init(Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;)V
    .locals 0
    .param p1    # Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 135
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->setCurrentScreenStatus(Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;)V

    .line 136
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->initScreen()V

    .line 137
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->initSharingList()V

    .line 138
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->updateListAndWarningMessage()V

    .line 139
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->scrollToShowingPosition()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 98
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 99
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    iget-object v1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->onPinShareScreenStatusChanged:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/ZRCPinUserManager;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 104
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    iget-object v1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->onPinShareScreenStatusChanged:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/ZRCPinUserManager;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 105
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->removeNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;)V

    .line 106
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->dismissAlertDialog()V

    .line 107
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 86
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 87
    sget v0, Lus/zoom/zrcbox/R$id;->pin_share_screen_index_mask:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->tvScreenIndexMask:Landroid/widget/TextView;

    .line 89
    sget v0, Lus/zoom/zrcbox/R$id;->pin_share_audio_mute_unmute_btn:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->tvAudioControl:Landroid/widget/TextView;

    .line 90
    sget v0, Lus/zoom/zrcbox/R$id;->pin_share_screen_index_tv:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->tvScreenIndex:Landroid/widget/TextView;

    .line 92
    sget v0, Lus/zoom/zrcbox/R$id;->rv_pin_share_source_list:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->rvSharingList:Landroidx/recyclerview/widget/RecyclerView;

    .line 93
    sget v0, Lus/zoom/zrcbox/R$id;->tv_why_can_not_pin_share_message:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->tvWarningMessage:Landroid/widget/TextView;

    return-void
.end method

.method public onShareListChanged()V
    .locals 2

    .line 265
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->currentScreenStatus:Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->sharingListAdapter:Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;

    if-nez v1, :cond_0

    goto :goto_1

    .line 267
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getPinStatusOfScreenType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 270
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCPinUserManager;->getAllShareParticipants()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 272
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCPinUserManager;->getZrwAllShareParticipants()Ljava/util/List;

    move-result-object v0

    .line 274
    :goto_0
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->sharingListAdapter:Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;

    invoke-virtual {v1, v0}, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;->updateSharingList(Ljava/util/List;)V

    .line 276
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->scrollToShowingPosition()V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public updateListAndWarningMessage()V
    .locals 4

    .line 248
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->currentScreenStatus:Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    if-nez v0, :cond_0

    return-void

    .line 252
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getScreenLayout()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 254
    :goto_0
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->currentScreenStatus:Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->isCanPinShare()Z

    move-result v1

    const/16 v3, 0x8

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_1

    .line 258
    :cond_2
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->selectWarningMessage()V

    .line 259
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->tvWarningMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->rvSharingList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_2

    .line 255
    :cond_3
    :goto_1
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->tvWarningMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView;->rvSharingList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :goto_2
    return-void
.end method
