.class public Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "ZRCChangeContentPhoneDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$ZRCChangeContentPhoneViewPagerTransformer;,
        Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$ZRCChangeContentPhoneScreenPageAdapter;
    }
.end annotation


# static fields
.field private static final MAX_SCREEN_COUNT:I = 0x4

.field public static final TAG:Ljava/lang/String; = "ZRCChangeContentPhoneDialogFragment"


# instance fields
.field private SCREEN_COUNT:I

.field private btnNext:Landroid/widget/Button;

.field private btnPrev:Landroid/widget/Button;

.field private ctvContentOnly:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

.field private curPos:I

.field private dismissBtn:Landroid/view/View;

.field private pageAdapter:Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$ZRCChangeContentPhoneScreenPageAdapter;

.field private screenPageFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;",
            ">;"
        }
    .end annotation
.end field

.field private viewPager:Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;

.field private zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    .line 48
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getPinUserManager()Lus/zoom/zrc/model/ZRCPinUserManager;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    .line 49
    iget-object v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCPinUserManager;->getAllPinStatusOfScreens()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->SCREEN_COUNT:I

    const/4 v0, -0x1

    .line 61
    iput v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->curPos:I

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;Z)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->onCheckedChangedForContentOnly(Z)V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->updateDetail()V

    return-void
.end method

.method static synthetic access$300(Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;)I
    .locals 0

    .line 43
    iget p0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->curPos:I

    return p0
.end method

.method static synthetic access$400(Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->showArrow(I)V

    return-void
.end method

.method static synthetic access$500(Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->hideDetail()V

    return-void
.end method

.method static synthetic access$600(Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;)Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$ZRCChangeContentPhoneScreenPageAdapter;
    .locals 0

    .line 43
    iget-object p0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->pageAdapter:Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$ZRCChangeContentPhoneScreenPageAdapter;

    return-object p0
.end method

.method static synthetic access$700(Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;)Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;
    .locals 0

    .line 43
    iget-object p0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->viewPager:Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;

    return-object p0
.end method

.method static synthetic access$800(Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;)Ljava/util/List;
    .locals 0

    .line 43
    iget-object p0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->screenPageFragments:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;)I
    .locals 0

    .line 43
    iget p0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->SCREEN_COUNT:I

    return p0
.end method

.method private dismissAllAlerts()V
    .locals 2

    .line 380
    iget-object v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->screenPageFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;

    .line 381
    invoke-virtual {v1}, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;->dismissAlertDialog()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fakeDrag()V
    .locals 2

    .line 366
    iget-object v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->viewPager:Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;

    new-instance v1, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$4;

    invoke-direct {v1, p0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$4;-><init>(Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getItem(I)I
    .locals 1

    .line 362
    iget-object v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->viewPager:Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;

    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;->getCurrentItem()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private hideDetail()V
    .locals 2

    .line 348
    iget-object v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->screenPageFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;

    .line 349
    invoke-virtual {v1}, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;->hideDetail()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initViewPager()V
    .locals 4

    .line 295
    iget-object v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->viewPager:Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;->setOffscreenPageLimit(I)V

    .line 296
    iget-object v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->viewPager:Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;

    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/high16 v2, 0x434c0000    # 204.0f

    invoke-static {v1, v2}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;->setPageMargin(I)V

    .line 297
    iget-object v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->viewPager:Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;->setClipToPadding(Z)V

    .line 298
    iget-object v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->viewPager:Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;

    new-instance v2, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$ZRCChangeContentPhoneViewPagerTransformer;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$ZRCChangeContentPhoneViewPagerTransformer;-><init>(Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$1;)V

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V

    .line 299
    iget-object v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->viewPager:Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;

    iget-object v1, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->pageAdapter:Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$ZRCChangeContentPhoneScreenPageAdapter;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 300
    iget-object v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->viewPager:Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;

    new-instance v1, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$3;

    invoke-direct {v1, p0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$3;-><init>(Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private onCheckedChangedForContentOnly(Z)V
    .locals 4

    .line 191
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 195
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isInShareOnAllScreens()Z

    move-result v0

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    const-string v0, "show content only:%b "

    const/4 v1, 0x1

    .line 199
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v0

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    goto :goto_0

    :cond_2
    const/4 p1, 0x5

    :goto_0
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/ConfApp;->updateWallviewStyle(I)I

    return-void
.end method

.method private onZRWJoin(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 236
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->viewPager:Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->pageAdapter:Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$ZRCChangeContentPhoneScreenPageAdapter;

    if-nez p1, :cond_1

    goto :goto_1

    .line 239
    :cond_1
    invoke-virtual {p1}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$ZRCChangeContentPhoneScreenPageAdapter;->getCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_5

    .line 241
    iget-object v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->screenPageFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    goto :goto_0

    .line 245
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->screenPageFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;

    if-nez p1, :cond_3

    return-void

    .line 251
    :cond_3
    invoke-virtual {p1}, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;->getView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    const/4 v0, 0x0

    .line 257
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 259
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->fakeDrag()V

    return-void

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
    return-void
.end method

.method private onZRWUserChange(Z)V
    .locals 1

    .line 216
    iget-object v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCPinUserManager;->getAllPinStatusOfScreens()Ljava/util/List;

    move-result-object v0

    .line 219
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->SCREEN_COUNT:I

    .line 222
    iget-object v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->pageAdapter:Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$ZRCChangeContentPhoneScreenPageAdapter;

    invoke-virtual {v0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$ZRCChangeContentPhoneScreenPageAdapter;->notifyDataSetChanged()V

    .line 225
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->updateDetail()V

    .line 228
    invoke-direct {p0, p1}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->onZRWJoin(Z)V

    return-void
.end method

.method private safeSetCurrentItem(I)V
    .locals 2

    .line 354
    iget-object v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->pageAdapter:Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$ZRCChangeContentPhoneScreenPageAdapter;

    invoke-virtual {v0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$ZRCChangeContentPhoneScreenPageAdapter;->getCount()I

    move-result v0

    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 358
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->viewPager:Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;->setCurrentItem(IZ)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V
    .locals 2

    .line 282
    sget-object v0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 288
    new-instance v0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;

    invoke-direct {v0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;-><init>()V

    .line 291
    :cond_1
    sget-object v1, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Landroidx/fragment/app/DialogFragment;Ljava/lang/String;)V

    return-void
.end method

.method private showArrow(I)V
    .locals 4

    .line 341
    iget v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->SCREEN_COUNT:I

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 343
    :goto_1
    iget-object p1, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->btnPrev:Landroid/widget/Button;

    const/4 v1, 0x4

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    const/4 v2, 0x4

    :goto_2
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 344
    iget-object p1, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->btnNext:Landroid/widget/Button;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :cond_3
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private updateDetail()V
    .locals 1

    .line 329
    iget-object v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->viewPager:Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;

    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->curPos:I

    .line 330
    iget v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->curPos:I

    invoke-direct {p0, v0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->updateHoldersCurPos(I)V

    .line 331
    iget v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->curPos:I

    invoke-direct {p0, v0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->showArrow(I)V

    return-void
.end method

.method private updateHoldersCurPos(I)V
    .locals 2

    .line 335
    iget-object v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->screenPageFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;

    .line 336
    invoke-virtual {v1, p1}, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;->setCurPos(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateLocalShareInstruction()V
    .locals 4

    .line 265
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 270
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lus/zoom/zrc/PTActivity;

    .line 271
    iget-object v2, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {v2}, Lus/zoom/zrc/model/ZRCPinUserManager;->getZrwPinStatusOfScreen()Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 274
    sget v1, Lus/zoom/zrcbox/R$id;->share_source_not_same_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 276
    :cond_2
    sget v1, Lus/zoom/zrcbox/R$id;->share_source_not_same_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private updateShowContentOnlySwitchButton()V
    .locals 3

    .line 208
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v1, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->ctvContentOnly:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isInShareOnAllScreens()Z

    move-result v2

    invoke-virtual {v1, v2}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setCheckedOnlyForUI(Z)V

    .line 211
    iget-object v1, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->ctvContentOnly:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isCanSwitchShareOnAllScreens()Z

    move-result v0

    invoke-virtual {v1, v0}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 181
    iget-object v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->dismissBtn:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->getParentFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->dismissDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->btnPrev:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    .line 184
    invoke-direct {p0, p1}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->getItem(I)I

    move-result p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->safeSetCurrentItem(I)V

    goto :goto_0

    .line 185
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->btnNext:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    .line 186
    invoke-direct {p0, p1}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->getItem(I)I

    move-result p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->safeSetCurrentItem(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 66
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    .line 68
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    .line 69
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lus/zoom/zrc/base/notification/NotificationEvent;

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->OnZrwUserChange:Lus/zoom/zrc/base/notification/ModelEvent;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerNotification([Lus/zoom/zrc/base/notification/NotificationEvent;)V

    return-void
.end method

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

    const/4 p3, 0x1

    .line 99
    invoke-virtual {p0, p3}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->requestWindowFeature(I)V

    .line 100
    invoke-virtual {p0, p3}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->setCanceledOnTouchOutside(Z)V

    .line 102
    sget p3, Lus/zoom/zrcbox/R$layout;->pin_share_port_dialog_layout:I

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 104
    sget p2, Lus/zoom/zrcbox/R$id;->rl_content_only_check_phone:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    .line 105
    sget p3, Lus/zoom/zrcbox/R$id;->ctv_content_only_phone:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    iput-object p3, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->ctvContentOnly:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    .line 106
    sget p3, Lus/zoom/zrcbox/R$id;->btn_multi_share_dismiss_phone:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->dismissBtn:Landroid/view/View;

    .line 107
    sget p3, Lus/zoom/zrcbox/R$id;->next_screen:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    iput-object p3, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->btnNext:Landroid/widget/Button;

    .line 108
    sget p3, Lus/zoom/zrcbox/R$id;->prev_screen:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    iput-object p3, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->btnPrev:Landroid/widget/Button;

    .line 109
    iget-object p3, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->btnPrev:Landroid/widget/Button;

    invoke-virtual {p3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object p3, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->btnNext:Landroid/widget/Button;

    invoke-virtual {p3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object p3, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->dismissBtn:Landroid/view/View;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object p3, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->ctvContentOnly:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    new-instance v0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$1;-><init>(Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;)V

    invoke-virtual {p3, v0}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setOnSwitchChangedListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 119
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p3

    invoke-virtual {p3}, Lus/zoom/zrc/model/Model;->getMeetingType()I

    move-result p3

    if-nez p3, :cond_0

    .line 120
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isShareOnAllScreensSupported()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    .line 121
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 122
    sget p2, Lus/zoom/zrcbox/R$id;->content_only_divider:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 123
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->updateShowContentOnlySwitchButton()V

    goto :goto_0

    :cond_0
    const/16 p3, 0x8

    .line 125
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 126
    sget p2, Lus/zoom/zrcbox/R$id;->content_only_divider:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 129
    :goto_0
    iget-object p2, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {p2}, Lus/zoom/zrc/model/ZRCPinUserManager;->getAllPinStatusOfScreens()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iput p2, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->SCREEN_COUNT:I

    .line 130
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->screenPageFragments:Ljava/util/List;

    .line 132
    new-instance p2, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$ZRCChangeContentPhoneScreenPageAdapter;

    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$ZRCChangeContentPhoneScreenPageAdapter;-><init>(Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;Landroidx/fragment/app/FragmentManager;)V

    iput-object p2, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->pageAdapter:Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$ZRCChangeContentPhoneScreenPageAdapter;

    .line 133
    sget p2, Lus/zoom/zrcbox/R$id;->change_content_phone_screen_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->viewPager:Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;

    .line 134
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->initViewPager()V

    .line 136
    iget-object p2, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->viewPager:Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;

    new-instance p3, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$2;

    invoke-direct {p3, p0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$2;-><init>(Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;)V

    invoke-virtual {p2, p3}, Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;->post(Ljava/lang/Runnable;)Z

    return-object p1
.end method

.method public onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 1

    .line 168
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    .line 169
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnZrwUserChange:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_1

    .line 170
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 172
    :goto_0
    invoke-direct {p0, p1}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->onZRWUserChange(Z)V

    :cond_1
    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 150
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 151
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->allShareParticipants:I

    if-eq p2, p1, :cond_4

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->allShareSources:I

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->videoLayoutStatus:I

    if-ne p2, p1, :cond_1

    .line 154
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->updateShowContentOnlySwitchButton()V

    .line 155
    iget-object p1, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->viewPager:Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;

    invoke-virtual {p1}, Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;->getCurrentItem()I

    move-result p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->updateHoldersCurPos(I)V

    goto :goto_1

    .line 156
    :cond_1
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->meetingShareSettings:I

    if-eq p2, p1, :cond_2

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->zrPinStatusOfScreens:I

    if-eq p2, p1, :cond_2

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->zrwPinStatusOfScreen:I

    if-ne p2, p1, :cond_5

    .line 157
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->viewPager:Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;

    invoke-virtual {p1}, Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;->getCurrentItem()I

    move-result p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->updateHoldersCurPos(I)V

    .line 158
    iget-object p1, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {p1}, Lus/zoom/zrc/model/ZRCPinUserManager;->shouldAutoDismissChangeContent()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 159
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->dismissAllAlerts()V

    .line 160
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->getParentFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->dismissDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    .line 162
    :cond_3
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->updateLocalShareInstruction()V

    goto :goto_1

    .line 152
    :cond_4
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->viewPager:Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;

    invoke-virtual {p1}, Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;->getCurrentItem()I

    move-result p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->updateHoldersCurPos(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 74
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onStart()V

    .line 75
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lus/zoom/zrc/utils/Util;->getWidth(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lus/zoom/zrc/utils/Util;->getHeight(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 79
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCPinUserManager;->getZrPinStatusOfScreens()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 80
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ConfApp;->showPinShareSourceOnScreenInstruction(Z)I

    .line 83
    :cond_1
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->updateShowContentOnlySwitchButton()V

    .line 84
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->updateLocalShareInstruction()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 90
    iget-object v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->zrcPinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCPinUserManager;->getZrPinStatusOfScreens()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 91
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ConfApp;->showPinShareSourceOnScreenInstruction(Z)I

    .line 93
    :cond_0
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onStop()V

    return-void
.end method
