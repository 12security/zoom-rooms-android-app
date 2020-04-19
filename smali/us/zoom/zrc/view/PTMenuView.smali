.class public Lus/zoom/zrc/view/PTMenuView;
.super Landroid/widget/FrameLayout;
.source "PTMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/PTMenuView$IPTMenuViewSelected;
    }
.end annotation


# static fields
.field private static final TAB_CONTROL_SYSTEM:I = 0x6

.field private static final TAB_JOIN_MEETING:I = 0x2

.field private static final TAB_MEETING_LIST:I = 0x1

.field private static final TAB_MEET_NOW:I = 0x0

.field private static final TAB_PHONE:I = 0x4

.field private static final TAB_PRESENTATION:I = 0x3

.field private static final TAB_SETTINGS:I = 0x5


# instance fields
.field private lastSelectedView:Lus/zoom/zrc/view/PTMenuViewItem;

.field private listener:Lus/zoom/zrc/view/PTMenuView$IPTMenuViewSelected;

.field private mContext:Landroid/content/Context;

.field private mIvControlSystem:Lus/zoom/zrc/view/PTMenuViewItem;

.field private mIvJoin:Lus/zoom/zrc/view/PTMenuViewItem;

.field private mIvMeetingList:Lus/zoom/zrc/view/PTMenuViewItem;

.field private mIvMeetingNow:Lus/zoom/zrc/view/PTMenuViewItem;

.field private mIvPhone:Lus/zoom/zrc/view/PTMenuViewItem;

.field private mIvPresentation:Lus/zoom/zrc/view/PTMenuViewItem;

.field private mIvSetting:Lus/zoom/zrc/view/PTMenuViewItem;

.field private mSelectedIndex:I

.field private propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

.field private visibleMenuItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrc/view/PTMenuViewItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 169
    new-instance v0, Lus/zoom/zrc/view/PTMenuView$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/PTMenuView$1;-><init>(Lus/zoom/zrc/view/PTMenuView;)V

    iput-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    .line 65
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/PTMenuView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 169
    new-instance p2, Lus/zoom/zrc/view/PTMenuView$1;

    invoke-direct {p2, p0}, Lus/zoom/zrc/view/PTMenuView$1;-><init>(Lus/zoom/zrc/view/PTMenuView;)V

    iput-object p2, p0, Lus/zoom/zrc/view/PTMenuView;->propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    .line 75
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/PTMenuView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 169
    new-instance p2, Lus/zoom/zrc/view/PTMenuView$1;

    invoke-direct {p2, p0}, Lus/zoom/zrc/view/PTMenuView$1;-><init>(Lus/zoom/zrc/view/PTMenuView;)V

    iput-object p2, p0, Lus/zoom/zrc/view/PTMenuView;->propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    .line 70
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/PTMenuView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/PTMenuView;)Lus/zoom/zrc/view/PTMenuViewItem;
    .locals 0

    .line 25
    iget-object p0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvControlSystem:Lus/zoom/zrc/view/PTMenuViewItem;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/PTMenuView;)Lus/zoom/zrc/view/PTMenuViewItem;
    .locals 0

    .line 25
    iget-object p0, p0, Lus/zoom/zrc/view/PTMenuView;->lastSelectedView:Lus/zoom/zrc/view/PTMenuViewItem;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/view/PTMenuView;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lus/zoom/zrc/view/PTMenuView;->updateMenuItemContentDesc()V

    return-void
.end method

.method private cancelSelectedState(Lus/zoom/zrc/view/PTMenuViewItem;)V
    .locals 6

    if-eqz p1, :cond_8

    .line 336
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->lastSelectedView:Lus/zoom/zrc/view/PTMenuViewItem;

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 340
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvMeetingNow:Lus/zoom/zrc/view/PTMenuViewItem;

    if-ne p1, v0, :cond_1

    .line 341
    sget v1, Lus/zoom/zrcbox/R$drawable;->meet_now:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/PTMenuViewItem;->setImageResource(I)V

    goto :goto_0

    .line 342
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvMeetingList:Lus/zoom/zrc/view/PTMenuViewItem;

    if-ne p1, v0, :cond_2

    .line 343
    sget v1, Lus/zoom/zrcbox/R$drawable;->meeting_list:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/PTMenuViewItem;->setImageResource(I)V

    goto :goto_0

    .line 344
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvJoin:Lus/zoom/zrc/view/PTMenuViewItem;

    if-ne p1, v0, :cond_3

    .line 345
    sget v1, Lus/zoom/zrcbox/R$drawable;->join_meeting:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/PTMenuViewItem;->setImageResource(I)V

    goto :goto_0

    .line 346
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvPresentation:Lus/zoom/zrc/view/PTMenuViewItem;

    if-ne p1, v0, :cond_4

    .line 347
    sget v1, Lus/zoom/zrcbox/R$drawable;->menu_local_presentation:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/PTMenuViewItem;->setImageResource(I)V

    goto :goto_0

    .line 348
    :cond_4
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvPhone:Lus/zoom/zrc/view/PTMenuViewItem;

    if-ne p1, v0, :cond_5

    .line 349
    sget v1, Lus/zoom/zrcbox/R$drawable;->dial_out:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/PTMenuViewItem;->setImageResource(I)V

    goto :goto_0

    .line 350
    :cond_5
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvSetting:Lus/zoom/zrc/view/PTMenuViewItem;

    if-ne p1, v0, :cond_6

    .line 351
    sget v1, Lus/zoom/zrcbox/R$drawable;->menu_settings:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/PTMenuViewItem;->setImageResource(I)V

    goto :goto_0

    .line 352
    :cond_6
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvControlSystem:Lus/zoom/zrc/view/PTMenuViewItem;

    if-ne p1, v0, :cond_7

    .line 353
    sget v1, Lus/zoom/zrcbox/R$drawable;->control_system:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/PTMenuViewItem;->setImageResource(I)V

    .line 356
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/PTMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->zrc_accessibility_pt_menu_tab:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    .line 359
    invoke-virtual {p1}, Lus/zoom/zrc/view/PTMenuViewItem;->getMenuName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    iget-object v5, p0, Lus/zoom/zrc/view/PTMenuView;->visibleMenuItems:Ljava/util/ArrayList;

    .line 360
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lus/zoom/zrc/view/PTMenuView;->visibleMenuItems:Ljava/util/ArrayList;

    .line 361
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 356
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/view/PTMenuViewItem;->setContentDes(Ljava/lang/String;)V

    return-void

    :cond_8
    :goto_1
    return-void
.end method

.method private selectViewState(Lus/zoom/zrc/view/PTMenuViewItem;)V
    .locals 6

    if-eqz p1, :cond_8

    .line 307
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->lastSelectedView:Lus/zoom/zrc/view/PTMenuViewItem;

    if-ne p1, v0, :cond_0

    goto/16 :goto_1

    .line 308
    :cond_0
    invoke-direct {p0, v0}, Lus/zoom/zrc/view/PTMenuView;->cancelSelectedState(Lus/zoom/zrc/view/PTMenuViewItem;)V

    .line 309
    iput-object p1, p0, Lus/zoom/zrc/view/PTMenuView;->lastSelectedView:Lus/zoom/zrc/view/PTMenuViewItem;

    .line 311
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvMeetingNow:Lus/zoom/zrc/view/PTMenuViewItem;

    if-ne p1, v0, :cond_1

    .line 312
    sget v1, Lus/zoom/zrcbox/R$drawable;->meet_now_highlighted:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/PTMenuViewItem;->setImageResource(I)V

    goto :goto_0

    .line 313
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvMeetingList:Lus/zoom/zrc/view/PTMenuViewItem;

    if-ne p1, v0, :cond_2

    .line 314
    sget v1, Lus/zoom/zrcbox/R$drawable;->meeting_list_highlighted:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/PTMenuViewItem;->setImageResource(I)V

    goto :goto_0

    .line 315
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvJoin:Lus/zoom/zrc/view/PTMenuViewItem;

    if-ne p1, v0, :cond_3

    .line 316
    sget v1, Lus/zoom/zrcbox/R$drawable;->join_meeting_highlighted:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/PTMenuViewItem;->setImageResource(I)V

    goto :goto_0

    .line 317
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvPresentation:Lus/zoom/zrc/view/PTMenuViewItem;

    if-ne p1, v0, :cond_4

    .line 318
    sget v1, Lus/zoom/zrcbox/R$drawable;->menu_local_presentation_highlighted:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/PTMenuViewItem;->setImageResource(I)V

    goto :goto_0

    .line 319
    :cond_4
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvPhone:Lus/zoom/zrc/view/PTMenuViewItem;

    if-ne p1, v0, :cond_5

    .line 320
    sget v1, Lus/zoom/zrcbox/R$drawable;->dial_out_highlighted:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/PTMenuViewItem;->setImageResource(I)V

    goto :goto_0

    .line 321
    :cond_5
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvSetting:Lus/zoom/zrc/view/PTMenuViewItem;

    if-ne p1, v0, :cond_6

    .line 322
    sget v1, Lus/zoom/zrcbox/R$drawable;->menu_settings_highlighted:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/PTMenuViewItem;->setImageResource(I)V

    goto :goto_0

    .line 323
    :cond_6
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvControlSystem:Lus/zoom/zrc/view/PTMenuViewItem;

    if-ne p1, v0, :cond_7

    .line 324
    sget v1, Lus/zoom/zrcbox/R$drawable;->control_system_highlighted:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/PTMenuViewItem;->setImageResource(I)V

    .line 327
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/PTMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->zrc_accessibility_pt_menu_tab:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 329
    invoke-virtual {p0}, Lus/zoom/zrc/view/PTMenuView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lus/zoom/zrcbox/R$string;->selected:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 330
    invoke-virtual {p1}, Lus/zoom/zrc/view/PTMenuViewItem;->getMenuName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    iget-object v5, p0, Lus/zoom/zrc/view/PTMenuView;->visibleMenuItems:Ljava/util/ArrayList;

    .line 331
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lus/zoom/zrc/view/PTMenuView;->visibleMenuItems:Ljava/util/ArrayList;

    .line 332
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 327
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/view/PTMenuViewItem;->setContentDes(Ljava/lang/String;)V

    return-void

    :cond_8
    :goto_1
    return-void
.end method

.method private updateMenuItemContentDesc()V
    .locals 12

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x7

    new-array v1, v1, [Lus/zoom/zrc/view/PTMenuViewItem;

    iget-object v2, p0, Lus/zoom/zrc/view/PTMenuView;->mIvMeetingNow:Lus/zoom/zrc/view/PTMenuViewItem;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lus/zoom/zrc/view/PTMenuView;->mIvMeetingList:Lus/zoom/zrc/view/PTMenuViewItem;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lus/zoom/zrc/view/PTMenuView;->mIvJoin:Lus/zoom/zrc/view/PTMenuViewItem;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget-object v2, p0, Lus/zoom/zrc/view/PTMenuView;->mIvPresentation:Lus/zoom/zrc/view/PTMenuViewItem;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    iget-object v2, p0, Lus/zoom/zrc/view/PTMenuView;->mIvPhone:Lus/zoom/zrc/view/PTMenuViewItem;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    iget-object v2, p0, Lus/zoom/zrc/view/PTMenuView;->mIvControlSystem:Lus/zoom/zrc/view/PTMenuViewItem;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    iget-object v2, p0, Lus/zoom/zrc/view/PTMenuView;->mIvSetting:Lus/zoom/zrc/view/PTMenuViewItem;

    const/4 v8, 0x6

    aput-object v2, v1, v8

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 200
    iget-object v1, p0, Lus/zoom/zrc/view/PTMenuView;->visibleMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 201
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/view/PTMenuViewItem;

    .line 202
    invoke-virtual {v1}, Lus/zoom/zrc/view/PTMenuViewItem;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 203
    iget-object v2, p0, Lus/zoom/zrc/view/PTMenuView;->visibleMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 206
    :goto_1
    iget-object v1, p0, Lus/zoom/zrc/view/PTMenuView;->visibleMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 207
    iget-object v1, p0, Lus/zoom/zrc/view/PTMenuView;->visibleMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/view/PTMenuViewItem;

    .line 208
    invoke-virtual {p0}, Lus/zoom/zrc/view/PTMenuView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v8, Lus/zoom/zrcbox/R$string;->zrc_accessibility_pt_menu_tab:I

    new-array v9, v7, [Ljava/lang/Object;

    .line 210
    invoke-virtual {v1}, Lus/zoom/zrc/view/PTMenuViewItem;->isSelected()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {p0}, Lus/zoom/zrc/view/PTMenuView;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lus/zoom/zrcbox/R$string;->selected:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_2
    const-string v10, ""

    :goto_2
    aput-object v10, v9, v3

    .line 211
    invoke-virtual {v1}, Lus/zoom/zrc/view/PTMenuViewItem;->getMenuName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    add-int/lit8 v0, v0, 0x1

    .line 212
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    iget-object v10, p0, Lus/zoom/zrc/view/PTMenuView;->visibleMenuItems:Ljava/util/ArrayList;

    .line 213
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    .line 208
    invoke-virtual {v2, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lus/zoom/zrc/view/PTMenuViewItem;->setContentDes(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public autoRollBackToProperTab()V
    .locals 3

    .line 384
    invoke-virtual {p0}, Lus/zoom/zrc/view/PTMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 386
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 393
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isPublicRoomEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isStandaloneDigitalSignage()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 396
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getCalendarType()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 399
    :cond_2
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingList()Lus/zoom/zrc/model/MeetingList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/MeetingList;->upcomingMeetingList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x2

    .line 407
    :cond_4
    :goto_1
    iget v0, p0, Lus/zoom/zrc/view/PTMenuView;->mSelectedIndex:I

    if-eq v2, v0, :cond_5

    .line 408
    invoke-virtual {p0, v2}, Lus/zoom/zrc/view/PTMenuView;->selectViewByIndex(I)V

    :cond_5
    return-void

    :cond_6
    :goto_2
    const-string v0, "auto roll back wrong! PT activity is in wrong state"

    .line 387
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getSelectedIndex()I
    .locals 1

    .line 222
    iget v0, p0, Lus/zoom/zrc/view/PTMenuView;->mSelectedIndex:I

    return v0
.end method

.method public getSelectedView()Lus/zoom/zrc/view/PTMenuViewItem;
    .locals 2

    .line 226
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->lastSelectedView:Lus/zoom/zrc/view/PTMenuViewItem;

    if-nez v0, :cond_0

    new-instance v0, Lus/zoom/zrc/view/PTMenuViewItem;

    invoke-virtual {p0}, Lus/zoom/zrc/view/PTMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lus/zoom/zrc/view/PTMenuViewItem;-><init>(Landroid/content/Context;)V

    :cond_0
    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 4

    .line 79
    iput-object p1, p0, Lus/zoom/zrc/view/PTMenuView;->mContext:Landroid/content/Context;

    .line 80
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 81
    sget v0, Lus/zoom/zrcbox/R$layout;->pt_menu_view:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 82
    sget v0, Lus/zoom/zrcbox/R$id;->iv_meeting_now:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/PTMenuViewItem;

    iput-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvMeetingNow:Lus/zoom/zrc/view/PTMenuViewItem;

    .line 83
    sget v0, Lus/zoom/zrcbox/R$id;->iv_meeting_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/PTMenuViewItem;

    iput-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvMeetingList:Lus/zoom/zrc/view/PTMenuViewItem;

    .line 84
    sget v0, Lus/zoom/zrcbox/R$id;->iv_join:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/PTMenuViewItem;

    iput-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvJoin:Lus/zoom/zrc/view/PTMenuViewItem;

    .line 85
    sget v0, Lus/zoom/zrcbox/R$id;->iv_presentation:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/PTMenuViewItem;

    iput-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvPresentation:Lus/zoom/zrc/view/PTMenuViewItem;

    .line 86
    sget v0, Lus/zoom/zrcbox/R$id;->iv_phone:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/PTMenuViewItem;

    iput-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvPhone:Lus/zoom/zrc/view/PTMenuViewItem;

    .line 87
    sget v0, Lus/zoom/zrcbox/R$id;->iv_setting:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/PTMenuViewItem;

    iput-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvSetting:Lus/zoom/zrc/view/PTMenuViewItem;

    .line 88
    sget v0, Lus/zoom/zrcbox/R$id;->iv_control_system:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/view/PTMenuViewItem;

    iput-object p1, p0, Lus/zoom/zrc/view/PTMenuView;->mIvControlSystem:Lus/zoom/zrc/view/PTMenuViewItem;

    .line 90
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/view/PTMenuView;->visibleMenuItems:Ljava/util/ArrayList;

    .line 92
    iget-object p1, p0, Lus/zoom/zrc/view/PTMenuView;->mIvMeetingNow:Lus/zoom/zrc/view/PTMenuViewItem;

    sget v0, Lus/zoom/zrcbox/R$drawable;->meet_now:I

    invoke-virtual {p1, v0}, Lus/zoom/zrc/view/PTMenuViewItem;->setImageResource(I)V

    .line 93
    iget-object p1, p0, Lus/zoom/zrc/view/PTMenuView;->mIvMeetingNow:Lus/zoom/zrc/view/PTMenuViewItem;

    invoke-virtual {p0}, Lus/zoom/zrc/view/PTMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lus/zoom/zrcbox/R$string;->meet_now:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/view/PTMenuViewItem;->setText(Ljava/lang/String;)V

    .line 94
    iget-object p1, p0, Lus/zoom/zrc/view/PTMenuView;->mIvMeetingList:Lus/zoom/zrc/view/PTMenuViewItem;

    sget v0, Lus/zoom/zrcbox/R$drawable;->meeting_list:I

    invoke-virtual {p1, v0}, Lus/zoom/zrc/view/PTMenuViewItem;->setImageResource(I)V

    .line 95
    iget-object p1, p0, Lus/zoom/zrc/view/PTMenuView;->mIvMeetingList:Lus/zoom/zrc/view/PTMenuViewItem;

    invoke-virtual {p0}, Lus/zoom/zrc/view/PTMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lus/zoom/zrcbox/R$string;->meeting_list:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/view/PTMenuViewItem;->setText(Ljava/lang/String;)V

    .line 96
    iget-object p1, p0, Lus/zoom/zrc/view/PTMenuView;->mIvJoin:Lus/zoom/zrc/view/PTMenuViewItem;

    sget v0, Lus/zoom/zrcbox/R$drawable;->join_meeting:I

    invoke-virtual {p1, v0}, Lus/zoom/zrc/view/PTMenuViewItem;->setImageResource(I)V

    .line 97
    iget-object p1, p0, Lus/zoom/zrc/view/PTMenuView;->mIvJoin:Lus/zoom/zrc/view/PTMenuViewItem;

    invoke-virtual {p0}, Lus/zoom/zrc/view/PTMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lus/zoom/zrcbox/R$string;->join_meeting:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/view/PTMenuViewItem;->setText(Ljava/lang/String;)V

    .line 98
    iget-object p1, p0, Lus/zoom/zrc/view/PTMenuView;->mIvPresentation:Lus/zoom/zrc/view/PTMenuViewItem;

    sget v0, Lus/zoom/zrcbox/R$drawable;->menu_local_presentation:I

    invoke-virtual {p1, v0}, Lus/zoom/zrc/view/PTMenuViewItem;->setImageResource(I)V

    .line 99
    iget-object p1, p0, Lus/zoom/zrc/view/PTMenuView;->mIvPresentation:Lus/zoom/zrc/view/PTMenuViewItem;

    invoke-virtual {p0}, Lus/zoom/zrc/view/PTMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lus/zoom/zrcbox/R$string;->local_share:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/view/PTMenuViewItem;->setText(Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Lus/zoom/zrc/view/PTMenuView;->mIvPhone:Lus/zoom/zrc/view/PTMenuViewItem;

    sget v0, Lus/zoom/zrcbox/R$drawable;->dial_out:I

    invoke-virtual {p1, v0}, Lus/zoom/zrc/view/PTMenuViewItem;->setImageResource(I)V

    .line 101
    iget-object p1, p0, Lus/zoom/zrc/view/PTMenuView;->mIvPhone:Lus/zoom/zrc/view/PTMenuViewItem;

    invoke-virtual {p0}, Lus/zoom/zrc/view/PTMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lus/zoom/zrcbox/R$string;->dial_out:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/view/PTMenuViewItem;->setText(Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lus/zoom/zrc/view/PTMenuView;->mIvSetting:Lus/zoom/zrc/view/PTMenuViewItem;

    sget v0, Lus/zoom/zrcbox/R$drawable;->menu_settings:I

    invoke-virtual {p1, v0}, Lus/zoom/zrc/view/PTMenuViewItem;->setImageResource(I)V

    .line 103
    iget-object p1, p0, Lus/zoom/zrc/view/PTMenuView;->mIvSetting:Lus/zoom/zrc/view/PTMenuViewItem;

    invoke-virtual {p0}, Lus/zoom/zrc/view/PTMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lus/zoom/zrcbox/R$string;->settings:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/view/PTMenuViewItem;->setText(Ljava/lang/String;)V

    .line 104
    iget-object p1, p0, Lus/zoom/zrc/view/PTMenuView;->mIvControlSystem:Lus/zoom/zrc/view/PTMenuViewItem;

    sget v0, Lus/zoom/zrcbox/R$drawable;->control_system:I

    invoke-virtual {p1, v0}, Lus/zoom/zrc/view/PTMenuViewItem;->setImageResource(I)V

    .line 105
    iget-object p1, p0, Lus/zoom/zrc/view/PTMenuView;->mIvControlSystem:Lus/zoom/zrc/view/PTMenuViewItem;

    invoke-virtual {p0}, Lus/zoom/zrc/view/PTMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lus/zoom/zrcbox/R$string;->control_system:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/view/PTMenuViewItem;->setText(Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getLoginInfo()Lus/zoom/zrcsdk/model/LoginInfo;

    move-result-object p1

    .line 113
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->isPairedWithoutLogin()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->isPublicRoomEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->isStandaloneDigitalSignage()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/16 v3, 0x8

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvMeetingNow:Lus/zoom/zrc/view/PTMenuViewItem;

    invoke-virtual {v0, v2}, Lus/zoom/zrc/view/PTMenuViewItem;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvMeetingNow:Lus/zoom/zrc/view/PTMenuViewItem;

    invoke-virtual {v0, p0}, Lus/zoom/zrc/view/PTMenuViewItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 119
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvMeetingNow:Lus/zoom/zrc/view/PTMenuViewItem;

    invoke-virtual {v0, v3}, Lus/zoom/zrc/view/PTMenuViewItem;->setVisibility(I)V

    .line 126
    :goto_2
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->isPairedWithoutLogin()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->isPublicRoomEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v0, 0x1

    :goto_4
    if-eqz v0, :cond_5

    .line 128
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvMeetingList:Lus/zoom/zrc/view/PTMenuViewItem;

    invoke-virtual {v0, v2}, Lus/zoom/zrc/view/PTMenuViewItem;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvMeetingList:Lus/zoom/zrc/view/PTMenuViewItem;

    invoke-virtual {v0, p0}, Lus/zoom/zrc/view/PTMenuViewItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 131
    :cond_5
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvMeetingList:Lus/zoom/zrc/view/PTMenuViewItem;

    invoke-virtual {v0, v3}, Lus/zoom/zrc/view/PTMenuViewItem;->setVisibility(I)V

    .line 137
    :goto_5
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvJoin:Lus/zoom/zrc/view/PTMenuViewItem;

    invoke-virtual {v0, p0}, Lus/zoom/zrc/view/PTMenuViewItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvPresentation:Lus/zoom/zrc/view/PTMenuViewItem;

    invoke-virtual {v0, p0}, Lus/zoom/zrc/view/PTMenuViewItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_7

    .line 144
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->isStandaloneDigitalSignage()Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_6

    :cond_6
    const/4 p1, 0x0

    goto :goto_7

    :cond_7
    :goto_6
    const/4 p1, 0x1

    :goto_7
    if-eqz p1, :cond_8

    .line 146
    iget-object p1, p0, Lus/zoom/zrc/view/PTMenuView;->mIvPhone:Lus/zoom/zrc/view/PTMenuViewItem;

    invoke-virtual {p1, v2}, Lus/zoom/zrc/view/PTMenuViewItem;->setVisibility(I)V

    .line 147
    iget-object p1, p0, Lus/zoom/zrc/view/PTMenuView;->mIvPhone:Lus/zoom/zrc/view/PTMenuViewItem;

    invoke-virtual {p1, p0}, Lus/zoom/zrc/view/PTMenuViewItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8

    .line 149
    :cond_8
    iget-object p1, p0, Lus/zoom/zrc/view/PTMenuView;->mIvPhone:Lus/zoom/zrc/view/PTMenuViewItem;

    invoke-virtual {p1, v3}, Lus/zoom/zrc/view/PTMenuViewItem;->setVisibility(I)V

    .line 155
    :goto_8
    iget-object p1, p0, Lus/zoom/zrc/view/PTMenuView;->mIvSetting:Lus/zoom/zrc/view/PTMenuViewItem;

    invoke-virtual {p1, p0}, Lus/zoom/zrc/view/PTMenuViewItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object p1, p0, Lus/zoom/zrc/view/PTMenuView;->mIvControlSystem:Lus/zoom/zrc/view/PTMenuViewItem;

    invoke-virtual {p1, p0}, Lus/zoom/zrc/view/PTMenuViewItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getControlSystemDevices()Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;

    move-result-object p1

    if-eqz p1, :cond_9

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    :goto_9
    if-eqz v1, :cond_a

    .line 161
    iget-object p1, p0, Lus/zoom/zrc/view/PTMenuView;->mIvControlSystem:Lus/zoom/zrc/view/PTMenuViewItem;

    invoke-virtual {p1, v2}, Lus/zoom/zrc/view/PTMenuViewItem;->setVisibility(I)V

    goto :goto_a

    .line 163
    :cond_a
    iget-object p1, p0, Lus/zoom/zrc/view/PTMenuView;->mIvControlSystem:Lus/zoom/zrc/view/PTMenuViewItem;

    invoke-virtual {p1, v3}, Lus/zoom/zrc/view/PTMenuViewItem;->setVisibility(I)V

    .line 166
    :goto_a
    invoke-direct {p0}, Lus/zoom/zrc/view/PTMenuView;->updateMenuItemContentDesc()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 188
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 189
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/PTMenuView;->propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 366
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvMeetingNow:Lus/zoom/zrc/view/PTMenuViewItem;

    if-ne p1, v0, :cond_0

    .line 367
    invoke-virtual {p0}, Lus/zoom/zrc/view/PTMenuView;->selectMeetingNowView()V

    goto :goto_0

    .line 368
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvMeetingList:Lus/zoom/zrc/view/PTMenuViewItem;

    if-ne p1, v0, :cond_1

    .line 369
    invoke-virtual {p0}, Lus/zoom/zrc/view/PTMenuView;->selectMeetingListView()V

    goto :goto_0

    .line 370
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvJoin:Lus/zoom/zrc/view/PTMenuViewItem;

    if-ne p1, v0, :cond_2

    .line 371
    invoke-virtual {p0}, Lus/zoom/zrc/view/PTMenuView;->selectJoinMeetingView()V

    goto :goto_0

    .line 372
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvPresentation:Lus/zoom/zrc/view/PTMenuViewItem;

    if-ne p1, v0, :cond_3

    .line 373
    invoke-virtual {p0}, Lus/zoom/zrc/view/PTMenuView;->selectPresentationView()V

    goto :goto_0

    .line 374
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvPhone:Lus/zoom/zrc/view/PTMenuViewItem;

    if-ne p1, v0, :cond_4

    .line 375
    invoke-virtual {p0}, Lus/zoom/zrc/view/PTMenuView;->selectPhoneView()V

    goto :goto_0

    .line 376
    :cond_4
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvSetting:Lus/zoom/zrc/view/PTMenuViewItem;

    if-ne p1, v0, :cond_5

    .line 377
    invoke-virtual {p0}, Lus/zoom/zrc/view/PTMenuView;->selectSettingView()V

    goto :goto_0

    .line 378
    :cond_5
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvControlSystem:Lus/zoom/zrc/view/PTMenuViewItem;

    if-ne p1, v0, :cond_6

    .line 379
    invoke-virtual {p0}, Lus/zoom/zrc/view/PTMenuView;->selectControlSystemView()V

    :cond_6
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 194
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 195
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/PTMenuView;->propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    return-void
.end method

.method public selectControlSystemView()V
    .locals 1

    const/4 v0, 0x6

    .line 300
    iput v0, p0, Lus/zoom/zrc/view/PTMenuView;->mSelectedIndex:I

    .line 301
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvControlSystem:Lus/zoom/zrc/view/PTMenuViewItem;

    invoke-direct {p0, v0}, Lus/zoom/zrc/view/PTMenuView;->selectViewState(Lus/zoom/zrc/view/PTMenuViewItem;)V

    .line 302
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->listener:Lus/zoom/zrc/view/PTMenuView$IPTMenuViewSelected;

    if-eqz v0, :cond_0

    .line 303
    invoke-interface {v0}, Lus/zoom/zrc/view/PTMenuView$IPTMenuViewSelected;->onControlSystemViewSelected()V

    :cond_0
    return-void
.end method

.method public selectJoinMeetingView()V
    .locals 1

    const/4 v0, 0x2

    .line 272
    iput v0, p0, Lus/zoom/zrc/view/PTMenuView;->mSelectedIndex:I

    .line 273
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvJoin:Lus/zoom/zrc/view/PTMenuViewItem;

    invoke-direct {p0, v0}, Lus/zoom/zrc/view/PTMenuView;->selectViewState(Lus/zoom/zrc/view/PTMenuViewItem;)V

    .line 274
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->listener:Lus/zoom/zrc/view/PTMenuView$IPTMenuViewSelected;

    if-eqz v0, :cond_0

    .line 275
    invoke-interface {v0}, Lus/zoom/zrc/view/PTMenuView$IPTMenuViewSelected;->onJoinMeetingViewSelected()V

    :cond_0
    return-void
.end method

.method public selectMeetingListView()V
    .locals 1

    const/4 v0, 0x1

    .line 265
    iput v0, p0, Lus/zoom/zrc/view/PTMenuView;->mSelectedIndex:I

    .line 266
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvMeetingList:Lus/zoom/zrc/view/PTMenuViewItem;

    invoke-direct {p0, v0}, Lus/zoom/zrc/view/PTMenuView;->selectViewState(Lus/zoom/zrc/view/PTMenuViewItem;)V

    .line 267
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->listener:Lus/zoom/zrc/view/PTMenuView$IPTMenuViewSelected;

    if-eqz v0, :cond_0

    .line 268
    invoke-interface {v0}, Lus/zoom/zrc/view/PTMenuView$IPTMenuViewSelected;->onMeetingListViewSelected()V

    :cond_0
    return-void
.end method

.method public selectMeetingNowView()V
    .locals 1

    const/4 v0, 0x0

    .line 258
    iput v0, p0, Lus/zoom/zrc/view/PTMenuView;->mSelectedIndex:I

    .line 259
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvMeetingNow:Lus/zoom/zrc/view/PTMenuViewItem;

    invoke-direct {p0, v0}, Lus/zoom/zrc/view/PTMenuView;->selectViewState(Lus/zoom/zrc/view/PTMenuViewItem;)V

    .line 260
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->listener:Lus/zoom/zrc/view/PTMenuView$IPTMenuViewSelected;

    if-eqz v0, :cond_0

    .line 261
    invoke-interface {v0}, Lus/zoom/zrc/view/PTMenuView$IPTMenuViewSelected;->onMeetingNowViewSelected()V

    :cond_0
    return-void
.end method

.method public selectPhoneView()V
    .locals 1

    const/4 v0, 0x4

    .line 286
    iput v0, p0, Lus/zoom/zrc/view/PTMenuView;->mSelectedIndex:I

    .line 287
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvPhone:Lus/zoom/zrc/view/PTMenuViewItem;

    invoke-direct {p0, v0}, Lus/zoom/zrc/view/PTMenuView;->selectViewState(Lus/zoom/zrc/view/PTMenuViewItem;)V

    .line 288
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->listener:Lus/zoom/zrc/view/PTMenuView$IPTMenuViewSelected;

    if-eqz v0, :cond_0

    .line 289
    invoke-interface {v0}, Lus/zoom/zrc/view/PTMenuView$IPTMenuViewSelected;->onPhoneViewSelected()V

    :cond_0
    return-void
.end method

.method public selectPresentationView()V
    .locals 1

    const/4 v0, 0x3

    .line 279
    iput v0, p0, Lus/zoom/zrc/view/PTMenuView;->mSelectedIndex:I

    .line 280
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvPresentation:Lus/zoom/zrc/view/PTMenuViewItem;

    invoke-direct {p0, v0}, Lus/zoom/zrc/view/PTMenuView;->selectViewState(Lus/zoom/zrc/view/PTMenuViewItem;)V

    .line 281
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->listener:Lus/zoom/zrc/view/PTMenuView$IPTMenuViewSelected;

    if-eqz v0, :cond_0

    .line 282
    invoke-interface {v0}, Lus/zoom/zrc/view/PTMenuView$IPTMenuViewSelected;->onPresentationViewSelected()V

    :cond_0
    return-void
.end method

.method public selectSettingView()V
    .locals 1

    const/4 v0, 0x5

    .line 293
    iput v0, p0, Lus/zoom/zrc/view/PTMenuView;->mSelectedIndex:I

    .line 294
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->mIvSetting:Lus/zoom/zrc/view/PTMenuViewItem;

    invoke-direct {p0, v0}, Lus/zoom/zrc/view/PTMenuView;->selectViewState(Lus/zoom/zrc/view/PTMenuViewItem;)V

    .line 295
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuView;->listener:Lus/zoom/zrc/view/PTMenuView$IPTMenuViewSelected;

    if-eqz v0, :cond_0

    .line 296
    invoke-interface {v0}, Lus/zoom/zrc/view/PTMenuView$IPTMenuViewSelected;->onSettingViewSelected()V

    :cond_0
    return-void
.end method

.method public selectViewByIndex(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 250
    :pswitch_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/PTMenuView;->selectControlSystemView()V

    goto :goto_0

    .line 247
    :pswitch_1
    invoke-virtual {p0}, Lus/zoom/zrc/view/PTMenuView;->selectSettingView()V

    goto :goto_0

    .line 244
    :pswitch_2
    invoke-virtual {p0}, Lus/zoom/zrc/view/PTMenuView;->selectPhoneView()V

    goto :goto_0

    .line 241
    :pswitch_3
    invoke-virtual {p0}, Lus/zoom/zrc/view/PTMenuView;->selectPresentationView()V

    goto :goto_0

    .line 238
    :pswitch_4
    invoke-virtual {p0}, Lus/zoom/zrc/view/PTMenuView;->selectJoinMeetingView()V

    goto :goto_0

    .line 235
    :pswitch_5
    invoke-virtual {p0}, Lus/zoom/zrc/view/PTMenuView;->selectMeetingListView()V

    goto :goto_0

    .line 232
    :pswitch_6
    invoke-virtual {p0}, Lus/zoom/zrc/view/PTMenuView;->selectMeetingNowView()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setOnSelectListener(Lus/zoom/zrc/view/PTMenuView$IPTMenuViewSelected;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lus/zoom/zrc/view/PTMenuView;->listener:Lus/zoom/zrc/view/PTMenuView$IPTMenuViewSelected;

    return-void
.end method
