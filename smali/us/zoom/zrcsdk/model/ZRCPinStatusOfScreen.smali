.class public Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;
.super Ljava/lang/Object;
.source "ZRCPinStatusOfScreen.java"


# static fields
.field public static final ZRCCanNotPinShareDueToNotContentOnly:I = 0x2

.field public static final ZRCCanNotPinShareDueToReasons:I = 0x1

.field public static final ZRCCanNotPinShareNone:I = 0x0

.field public static final ZRCPinShareWarningDueToAnnotation:I = 0x2

.field public static final ZRCPinShareWarningDueToCameraShare:I = 0x3

.field public static final ZRCPinShareWarningDueToWhiteboard:I = 0x4

.field public static final ZRCPinStatusOfScreenTypeZR:I = 0x1

.field public static final ZRCPinStatusOfScreenTypeZRW:I = 0x2

.field public static final ZRCScreenLayout4LocalView:I = 0x7

.field public static final ZRCScreenLayout4PinActiveVideo:I = 0x0

.field public static final ZRCScreenLayout4PinBackground:I = 0x6

.field public static final ZRCScreenLayout4PinGallery:I = 0x4

.field public static final ZRCScreenLayout4PinPinnedVideo:I = 0x2

.field public static final ZRCScreenLayout4PinSelfVideo:I = 0x1

.field public static final ZRCScreenLayout4PinSharedContent:I = 0x5

.field public static final ZRCScreenLayout4PinSpotlight:I = 0x3

.field public static final ZRCShareSourceTypeAirHost:I = 0x3

.field public static final ZRCShareSourceTypeBlackMagic:I = 0x2

.field public static final ZRCShareSourceTypeNone:I = 0x0

.field public static final ZRCShareSourceTypeShareCamera:I = 0x4

.field public static final ZRCShareSourceTypeViewer:I = 0x1

.field public static final ZRCShareSourceTypeWhiteBoard:I = 0x5

.field public static final ZRCShareSourceTypeWhiteBoardCamera:I = 0x6


# instance fields
.field private canBePinned:Z

.field private canPinShare:Z

.field private pinStatusOfScreenType:I

.field private pinnedShareSourceId:I

.field private pinnedUserId:I

.field private screenIndex:I

.field private screenLayout:I

.field private shareSourceType:I

.field private whyCanNotPinShare:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 50
    iput v0, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->pinStatusOfScreenType:I

    return-void
.end method

.method public constructor <init>(IZII)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 50
    iput v0, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->pinStatusOfScreenType:I

    .line 57
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->screenIndex:I

    .line 58
    iput-boolean p2, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->canBePinned:Z

    .line 59
    iput p3, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->pinnedUserId:I

    .line 60
    iput p4, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->screenLayout:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 146
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    .line 147
    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->screenIndex:I

    iget v3, p1, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->screenIndex:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->canBePinned:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->canBePinned:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->pinnedUserId:I

    iget v3, p1, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->pinnedUserId:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->screenLayout:I

    iget v3, p1, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->screenLayout:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->pinnedShareSourceId:I

    iget v3, p1, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->pinnedShareSourceId:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->shareSourceType:I

    iget v3, p1, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->shareSourceType:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->canPinShare:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->canPinShare:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->whyCanNotPinShare:I

    iget v3, p1, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->whyCanNotPinShare:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->pinStatusOfScreenType:I

    iget p1, p1, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->pinStatusOfScreenType:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getPinStatusOfScreenType()I
    .locals 1

    .line 135
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->pinStatusOfScreenType:I

    return v0
.end method

.method public getPinnedShareSourceId()I
    .locals 1

    .line 103
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->pinnedShareSourceId:I

    return v0
.end method

.method public getPinnedUserId()I
    .locals 1

    .line 87
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->pinnedUserId:I

    return v0
.end method

.method public getScreenIndex()I
    .locals 1

    .line 71
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->screenIndex:I

    return v0
.end method

.method public getScreenLayout()I
    .locals 1

    .line 95
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->screenLayout:I

    return v0
.end method

.method public getShareSourceType()I
    .locals 1

    .line 111
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->shareSourceType:I

    return v0
.end method

.method public getWhyCanNotPinShare()I
    .locals 1

    .line 127
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->whyCanNotPinShare:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x9

    .line 160
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->screenIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->canBePinned:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->pinnedUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->screenLayout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->pinnedShareSourceId:I

    .line 161
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->shareSourceType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->canPinShare:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->whyCanNotPinShare:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->pinStatusOfScreenType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 160
    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isCanBePinned()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->canBePinned:Z

    return v0
.end method

.method public isCanPinShare()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->canPinShare:Z

    return v0
.end method

.method public setCanBePinned(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->canBePinned:Z

    return-void
.end method

.method public setCanPinShare(Z)V
    .locals 0

    .line 123
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->canPinShare:Z

    return-void
.end method

.method public setPinStatusOfScreenType(I)V
    .locals 0

    .line 139
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->pinStatusOfScreenType:I

    return-void
.end method

.method public setPinnedShareSourceId(I)V
    .locals 0

    .line 107
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->pinnedShareSourceId:I

    return-void
.end method

.method public setPinnedUserId(I)V
    .locals 0

    .line 91
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->pinnedUserId:I

    return-void
.end method

.method public setScreenIndex(I)V
    .locals 0

    .line 75
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->screenIndex:I

    return-void
.end method

.method public setScreenLayout(I)V
    .locals 0

    .line 99
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->screenLayout:I

    return-void
.end method

.method public setShareSourceType(I)V
    .locals 0

    .line 115
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->shareSourceType:I

    return-void
.end method

.method public setShareStatus(ZIII)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->canPinShare:Z

    .line 65
    iput p2, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->pinnedShareSourceId:I

    .line 66
    iput p3, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->shareSourceType:I

    .line 67
    iput p4, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->whyCanNotPinShare:I

    return-void
.end method

.method public setWhyCanNotPinShare(I)V
    .locals 0

    .line 131
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->whyCanNotPinShare:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZRCPinStatusOfScreen{screenIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->screenIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", canBePinned="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->canBePinned:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", pinnedUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->pinnedUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", screenLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->screenLayout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pinnedShareSourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->pinnedShareSourceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", shareSourceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->shareSourceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", canPinShare="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->canPinShare:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", whyCanNotPinShare="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->whyCanNotPinShare:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pinStatusOfScreenType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->pinStatusOfScreenType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
