.class public Lus/zoom/zrc/model/ZRCPinUserManager;
.super Landroidx/databinding/BaseObservable;
.source "ZRCPinUserManager.java"


# static fields
.field public static final SHARE_SOURCE_ID_NOT_FOUND:I = -0x1


# instance fields
.field private allPinStatusOfScreens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;",
            ">;"
        }
    .end annotation
.end field

.field private allShareParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private allShareSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCShareSource;",
            ">;"
        }
    .end annotation
.end field

.field private meetingShareSettings:Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;

.field private zrPinStatusOfScreens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;",
            ">;"
        }
    .end annotation
.end field

.field private zrwAllShareParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private zrwPinStatusOfScreen:Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

.field private zrwShareSourcesId:[I

.field private zrwUserId:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroidx/databinding/BaseObservable;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->zrwUserId:I

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->zrPinStatusOfScreens:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->allPinStatusOfScreens:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->allShareSources:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->allShareParticipants:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->zrwAllShareParticipants:Ljava/util/List;

    return-void
.end method

.method private canBePinnedOnScreen(I)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    .line 340
    iget-object v1, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->zrPinStatusOfScreens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->zrPinStatusOfScreens:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    if-eqz p1, :cond_1

    .line 345
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->isCanBePinned()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method private clearZRWPinStatusOfScreen()V
    .locals 1

    const/4 v0, 0x0

    .line 168
    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/ZRCPinUserManager;->onZrwPinStatusOfScreenUpdate(Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;)V

    return-void
.end method

.method private getShareParticipantsByShareSources(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCShareSource;",
            ">;",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCParticipant;",
            ">;)",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCParticipant;",
            ">;"
        }
    .end annotation

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 273
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCShareSource;

    if-nez v1, :cond_1

    goto :goto_0

    .line 277
    :cond_1
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCShareSource;->getShareSourceId()I

    move-result v1

    .line 278
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lus/zoom/zrcsdk/model/ZRCParticipant;

    .line 279
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v4

    invoke-static {v4, v1}, Lus/zoom/zrcsdk/util/Util;->areTwoUserIdsEqual(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 280
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method private getShareParticipantsByShareSources([ILjava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCParticipant;",
            ">;)",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCParticipant;",
            ">;"
        }
    .end annotation

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 289
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p1, v2

    .line 290
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lus/zoom/zrcsdk/model/ZRCParticipant;

    .line 291
    invoke-virtual {v5}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v6

    invoke-static {v6, v3}, Lus/zoom/zrcsdk/util/Util;->areTwoUserIdsEqual(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 292
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getZRCShareSourceById(I)Lus/zoom/zrcsdk/model/ZRCShareSource;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 549
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->allShareSources:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 553
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCShareSource;

    if-nez v2, :cond_2

    goto :goto_0

    .line 557
    :cond_2
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCShareSource;->getShareSourceId()I

    move-result v3

    invoke-static {v3, p1}, Lus/zoom/zrcsdk/util/Util;->areTwoUserIdsEqual(II)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_3
    return-object v1
.end method

.method private getZRCShareSourceByScreen(Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;)Lus/zoom/zrcsdk/model/ZRCShareSource;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 540
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getPinnedShareSourceId()I

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    .line 544
    :cond_1
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/ZRCPinUserManager;->getZRCShareSourceById(I)Lus/zoom/zrcsdk/model/ZRCShareSource;

    move-result-object p1

    return-object p1
.end method

.method private initZRWPinStatusOfScreen()V
    .locals 2

    .line 162
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->zrwPinStatusOfScreen:Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    .line 163
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->zrwPinStatusOfScreen:Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->setPinStatusOfScreenType(I)V

    return-void
.end method

.method private isAnyZRScreenCanPinShare()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 367
    :goto_0
    iget-object v2, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->zrPinStatusOfScreens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 368
    invoke-direct {p0, v1}, Lus/zoom/zrc/model/ZRCPinUserManager;->isZRScreenCanPinShare(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private isAnyZRScreenPinnedShare()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 376
    :goto_0
    iget-object v2, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->zrPinStatusOfScreens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 377
    iget-object v2, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->zrPinStatusOfScreens:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    if-nez v2, :cond_0

    goto :goto_1

    .line 381
    :cond_0
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getScreenLayout()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private isExistShareWithAudio()Z
    .locals 4

    .line 497
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->allShareSources:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 501
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCShareSource;

    if-nez v2, :cond_2

    goto :goto_0

    .line 507
    :cond_2
    invoke-direct {p0, v2}, Lus/zoom/zrc/model/ZRCPinUserManager;->isSelfShareSource(Lus/zoom/zrcsdk/model/ZRCShareSource;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 511
    :cond_3
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCShareSource;->isSharingAudio()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_4
    return v1
.end method

.method private isSelfShareSource(Lus/zoom/zrcsdk/model/ZRCShareSource;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 523
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 528
    :cond_1
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getMyUserId()I

    move-result v0

    .line 529
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCShareSource;->getShareSourceId()I

    move-result p1

    .line 531
    invoke-static {v0, p1}, Lus/zoom/zrcsdk/util/Util;->areTwoUserIdsEqual(II)Z

    move-result p1

    return p1
.end method

.method private isZRScreenCanPinShare(I)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    .line 358
    iget-object v1, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->zrPinStatusOfScreens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 362
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->zrPinStatusOfScreens:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    if-eqz p1, :cond_1

    .line 363
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->isCanPinShare()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method private isZRWInMeeting()Z
    .locals 1

    .line 441
    iget v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->zrwUserId:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isZRWScreenCanPinShare()Z
    .locals 1

    .line 389
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->zrwPinStatusOfScreen:Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->isCanPinShare()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setAllShareParticipants(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCParticipant;",
            ">;)V"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->allShareParticipants:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iput-object p1, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->allShareParticipants:Ljava/util/List;

    .line 95
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->allShareParticipants:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/ZRCPinUserManager;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setAllShareSources(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCShareSource;",
            ">;)V"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->allShareSources:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iput-object p1, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->allShareSources:Ljava/util/List;

    .line 138
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->allShareSources:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/ZRCPinUserManager;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setZrwAllShareParticipants(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCParticipant;",
            ">;)V"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->zrwAllShareParticipants:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iput-object p1, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->zrwAllShareParticipants:Ljava/util/List;

    .line 108
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->zrwAllShareParticipants:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/ZRCPinUserManager;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public canAdjustShareAudioOnScreen(Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;)Z
    .locals 4

    .line 470
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->zrPinStatusOfScreens:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 473
    :cond_0
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/ZRCPinUserManager;->getZRCShareSourceByScreen(Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;)Lus/zoom/zrcsdk/model/ZRCShareSource;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 478
    :cond_1
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/ZRCPinUserManager;->isSelfShareSource(Lus/zoom/zrcsdk/model/ZRCShareSource;)Z

    move-result v0

    .line 480
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getRoomScreenInfo()Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;->getQuantityOfScreens()I

    move-result v2

    .line 482
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCShareSource;->isSharingAudio()Z

    move-result p1

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    if-le v2, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public canBePinnedOnAnyScreen()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 349
    :goto_0
    iget-object v2, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->zrPinStatusOfScreens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 350
    invoke-direct {p0, v1}, Lus/zoom/zrc/model/ZRCPinUserManager;->canBePinnedOnScreen(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public cleanUp()V
    .locals 1

    .line 309
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->zrPinStatusOfScreens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 310
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->allPinStatusOfScreens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 312
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->allShareSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 313
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->allShareParticipants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 314
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->zrwAllShareParticipants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 316
    invoke-direct {p0}, Lus/zoom/zrc/model/ZRCPinUserManager;->clearZRWPinStatusOfScreen()V

    return-void
.end method

.method public getAllPinStatusOfScreens()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->allPinStatusOfScreens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 80
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->allPinStatusOfScreens:Ljava/util/List;

    invoke-virtual {p0}, Lus/zoom/zrc/model/ZRCPinUserManager;->getZrPinStatusOfScreens()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 81
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->zrwPinStatusOfScreen:Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    if-eqz v0, :cond_0

    .line 82
    iget-object v1, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->allPinStatusOfScreens:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->allPinStatusOfScreens:Ljava/util/List;

    return-object v0
.end method

.method public getAllShareParticipants()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCParticipant;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->allShareParticipants:Ljava/util/List;

    return-object v0
.end method

.method public getAllShareSources()Ljava/util/List;
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCShareSource;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 132
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->allShareSources:Ljava/util/List;

    return-object v0
.end method

.method public getMeetingShareSettings()Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 115
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->meetingShareSettings:Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->meetingShareSettings:Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;

    .line 117
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->meetingShareSettings:Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;->setMultiShare(Z)V

    .line 118
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->meetingShareSettings:Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;->setShowWarningForSelfSharePinnedToViewerShare(I)V

    .line 120
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->meetingShareSettings:Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;

    return-object v0
.end method

.method public getPinnedSharingParticipant(I)Lus/zoom/zrcsdk/model/ZRCParticipant;
    .locals 4

    .line 394
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->allShareParticipants:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->zrPinStatusOfScreens:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-ltz p1, :cond_6

    .line 398
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 402
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->zrPinStatusOfScreens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    if-nez p1, :cond_2

    return-object v1

    .line 407
    :cond_2
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getPinnedShareSourceId()I

    move-result p1

    if-nez p1, :cond_3

    return-object v1

    .line 412
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->allShareParticipants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCParticipant;

    .line 413
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v3

    invoke-static {p1, v3}, Lus/zoom/zrcsdk/util/Util;->areTwoUserIdsEqual(II)Z

    move-result v3

    if-eqz v3, :cond_4

    return-object v2

    :cond_5
    return-object v1

    :cond_6
    :goto_0
    return-object v1

    :cond_7
    :goto_1
    return-object v1
.end method

.method public getShareSourceIdByUserId(I)I
    .locals 3

    .line 427
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->allShareSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCShareSource;

    if-nez v1, :cond_1

    goto :goto_0

    .line 431
    :cond_1
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCShareSource;->getShareSourceId()I

    move-result v1

    .line 432
    invoke-static {p1, v1}, Lus/zoom/zrcsdk/util/Util;->areTwoUserIdsEqual(II)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method public getZrPinStatusOfScreens()Ljava/util/List;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;",
            ">;"
        }
    .end annotation

    .line 68
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getRoomScreenInfo()Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;->getQuantityOfScreens()I

    move-result v0

    if-lez v0, :cond_1

    .line 70
    iget-object v1, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->zrPinStatusOfScreens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->zrPinStatusOfScreens:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 71
    :cond_1
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->zrPinStatusOfScreens:Ljava/util/List;

    return-object v0
.end method

.method public getZrwAllShareParticipants()Ljava/util/List;
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCParticipant;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 102
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->zrwAllShareParticipants:Ljava/util/List;

    return-object v0
.end method

.method public getZrwPinStatusOfScreen()Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 126
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->zrwPinStatusOfScreen:Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    return-object v0
.end method

.method public hasPinnedShareMyself(I)Z
    .locals 0

    .line 421
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/ZRCPinUserManager;->getPinnedSharingParticipant(I)Lus/zoom/zrcsdk/model/ZRCParticipant;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 422
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isMyself()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isAnyScreenFreeForUser(I)Z
    .locals 3

    .line 320
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->zrPinStatusOfScreens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    .line 321
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->isCanBePinned()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getPinnedUserId()I

    move-result v1

    invoke-static {p1, v1}, Lus/zoom/zrcsdk/util/Util;->areTwoUserIdsEqual(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isShareAudioMutedOnScreen(Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;)Z
    .locals 2

    .line 486
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->zrPinStatusOfScreens:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 489
    :cond_0
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/ZRCPinUserManager;->getZRCShareSourceByScreen(Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;)Lus/zoom/zrcsdk/model/ZRCShareSource;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 493
    :cond_1
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCShareSource;->isSharingAudio()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCShareSource;->isAudioMuted()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isUserPinned(I)Z
    .locals 4

    .line 330
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->zrPinStatusOfScreens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    .line 331
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getPinnedUserId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getPinnedUserId()I

    move-result v1

    invoke-static {p1, v1}, Lus/zoom/zrcsdk/util/Util;->areTwoUserIdsEqual(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method onPinStatusOfScreenChanged(Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;)V
    .locals 4

    const/4 v0, 0x1

    .line 182
    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->setPinStatusOfScreenType(I)V

    .line 184
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getScreenIndex()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported screen count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 189
    :cond_0
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->zrPinStatusOfScreens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v1, 0x1

    if-ge v0, v2, :cond_1

    .line 190
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->zrPinStatusOfScreens:Ljava/util/List;

    new-instance v2, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    invoke-direct {v2}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->zrPinStatusOfScreens:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    .line 193
    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 194
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getScreenIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->setScreenIndex(I)V

    .line 195
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->isCanBePinned()Z

    move-result v1

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->setCanBePinned(Z)V

    .line 197
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getPinnedUserId()I

    move-result v1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getPinnedUserId()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 198
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v1

    sget-object v2, Lus/zoom/zrc/base/notification/ModelEvent;->PinVideoUserChanged:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;)V

    .line 201
    :cond_2
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getPinnedUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->setPinnedUserId(I)V

    .line 202
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getScreenLayout()I

    move-result v1

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->setScreenLayout(I)V

    .line 203
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->isCanPinShare()Z

    move-result v1

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->setCanPinShare(Z)V

    .line 204
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getPinnedShareSourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->setPinnedShareSourceId(I)V

    .line 205
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getShareSourceType()I

    move-result v1

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->setShareSourceType(I)V

    .line 206
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getWhyCanNotPinShare()I

    move-result p1

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->setWhyCanNotPinShare(I)V

    .line 207
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->zrPinStatusOfScreens:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/ZRCPinUserManager;->notifyPropertyChanged(I)V

    :cond_3
    return-void
.end method

.method onUpdateMeetingAllShares(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCShareSource;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 225
    :cond_0
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/ZRCPinUserManager;->setAllShareSources(Ljava/util/List;)V

    .line 228
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getParticipantList()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 230
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 234
    :cond_1
    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/model/ZRCPinUserManager;->getShareParticipantsByShareSources(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 235
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/ZRCPinUserManager;->setAllShareParticipants(Ljava/util/List;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method onUpdateMeetingShareSettings(Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;)V
    .locals 1

    .line 300
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->meetingShareSettings:Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;->isMultiShare()Z

    move-result p1

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;->setMultiShare(Z)V

    goto :goto_0

    .line 303
    :cond_0
    iput-object p1, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->meetingShareSettings:Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;

    .line 305
    :goto_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->meetingShareSettings:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/ZRCPinUserManager;->notifyPropertyChanged(I)V

    return-void
.end method

.method onUpdateParticipants(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCParticipant;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->allShareSources:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->allShareSources:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lus/zoom/zrc/model/ZRCPinUserManager;->getShareParticipantsByShareSources(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 262
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/ZRCPinUserManager;->setAllShareParticipants(Ljava/util/List;)V

    .line 265
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->zrwShareSourcesId:[I

    if-eqz v0, :cond_2

    array-length v1, v0

    if-eqz v1, :cond_2

    .line 266
    invoke-direct {p0, v0, p1}, Lus/zoom/zrc/model/ZRCPinUserManager;->getShareParticipantsByShareSources([ILjava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 267
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/ZRCPinUserManager;->setZrwAllShareParticipants(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method onUpdateShowWarningForSelfSharePinnedToViewerShare(I)V
    .locals 1

    .line 212
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->meetingShareSettings:Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->meetingShareSettings:Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;

    .line 214
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->meetingShareSettings:Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;->setShowWarningForSelfSharePinnedToViewerShare(I)V

    .line 215
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->meetingShareSettings:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/ZRCPinUserManager;->notifyPropertyChanged(I)V

    return-void
.end method

.method onUpdateZrwAllShares([I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 242
    :cond_0
    iput-object p1, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->zrwShareSourcesId:[I

    .line 244
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getParticipantList()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 246
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 250
    :cond_1
    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/model/ZRCPinUserManager;->getShareParticipantsByShareSources([ILjava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 251
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/ZRCPinUserManager;->setZrwAllShareParticipants(Ljava/util/List;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method onZRWUserChanged(II)V
    .locals 1

    .line 145
    iput p2, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->zrwUserId:I

    if-nez p1, :cond_0

    .line 149
    invoke-virtual {p0}, Lus/zoom/zrc/model/ZRCPinUserManager;->getZrwPinStatusOfScreen()Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    move-result-object p2

    if-nez p2, :cond_1

    .line 150
    invoke-direct {p0}, Lus/zoom/zrc/model/ZRCPinUserManager;->initZRWPinStatusOfScreen()V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 153
    invoke-virtual {p0}, Lus/zoom/zrc/model/ZRCPinUserManager;->getZrwPinStatusOfScreen()Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 154
    invoke-direct {p0}, Lus/zoom/zrc/model/ZRCPinUserManager;->clearZRWPinStatusOfScreen()V

    .line 157
    :cond_1
    :goto_0
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p2

    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnZrwUserChange:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method onZrwPinStatusOfScreenUpdate(Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 173
    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->setPinStatusOfScreenType(I)V

    .line 175
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->zrwPinStatusOfScreen:Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    iput-object p1, p0, Lus/zoom/zrc/model/ZRCPinUserManager;->zrwPinStatusOfScreen:Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    .line 177
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->zrwPinStatusOfScreen:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/ZRCPinUserManager;->notifyPropertyChanged(I)V

    :cond_1
    return-void
.end method

.method public shouldAutoDismissChangeContent()Z
    .locals 1

    .line 465
    invoke-direct {p0}, Lus/zoom/zrc/model/ZRCPinUserManager;->isAnyZRScreenPinnedShare()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public shouldShowChangeContent()Z
    .locals 5

    .line 446
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsMultiShare()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {p0}, Lus/zoom/zrc/model/ZRCPinUserManager;->getMeetingShareSettings()Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;->isMultiShare()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    invoke-direct {p0}, Lus/zoom/zrc/model/ZRCPinUserManager;->isAnyZRScreenCanPinShare()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    invoke-virtual {p0}, Lus/zoom/zrc/model/ZRCPinUserManager;->getAllShareSources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 452
    :goto_0
    invoke-direct {p0}, Lus/zoom/zrc/model/ZRCPinUserManager;->isZRWInMeeting()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 453
    invoke-direct {p0}, Lus/zoom/zrc/model/ZRCPinUserManager;->isZRWScreenCanPinShare()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 454
    invoke-virtual {p0}, Lus/zoom/zrc/model/ZRCPinUserManager;->getAllShareSources()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 457
    :goto_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrc/model/Model;->getRoomScreenInfo()Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;->getQuantityOfScreens()I

    move-result v4

    if-le v4, v2, :cond_2

    .line 459
    invoke-direct {p0}, Lus/zoom/zrc/model/ZRCPinUserManager;->isExistShareWithAudio()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-nez v0, :cond_3

    if-nez v3, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method
