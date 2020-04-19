.class public Lus/zoom/zrcsdk/model/VideoLayoutStatus;
.super Ljava/lang/Object;
.source "VideoLayoutStatus.java"


# instance fields
.field private canAdjustFloatingVideo:Z

.field private canSwitchFloatingShareContent:Z

.field private canSwitchShareOnAllScreens:Z

.field private canSwitchSpeakerview:Z

.field private canSwitchWallview:Z

.field private inFloatingVideoStrip:Z

.field private isInFloatingShareContent:Z

.field private isInShareOnAllScreens:Z

.field private isInWallview:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 103
    :cond_0
    instance-of v1, p1, Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 106
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    .line 107
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->canSwitchWallview:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->canSwitchWallview:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isInWallview:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isInWallview:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->inFloatingVideoStrip:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->inFloatingVideoStrip:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->canAdjustFloatingVideo:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->canAdjustFloatingVideo:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isInFloatingShareContent:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isInFloatingShareContent:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->canSwitchShareOnAllScreens:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->canSwitchShareOnAllScreens:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isInShareOnAllScreens:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isInShareOnAllScreens:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->canSwitchSpeakerview:Z

    iget-boolean p1, p1, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->canSwitchSpeakerview:Z

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 87
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->canSwitchWallview:Z

    mul-int/lit8 v0, v0, 0x1f

    .line 88
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isInWallview:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 89
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->inFloatingVideoStrip:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 90
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->canAdjustFloatingVideo:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 91
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isInFloatingShareContent:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 92
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->canSwitchShareOnAllScreens:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 93
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isInShareOnAllScreens:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 94
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->canSwitchSpeakerview:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isCanAdjustFloatingVideo()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->canAdjustFloatingVideo:Z

    return v0
.end method

.method public isCanSwitchFloatingShareContent()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->canSwitchFloatingShareContent:Z

    return v0
.end method

.method public isCanSwitchShareOnAllScreens()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->canSwitchShareOnAllScreens:Z

    return v0
.end method

.method public isCanSwitchSpeakerview()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->canSwitchSpeakerview:Z

    return v0
.end method

.method public isCanSwitchWallview()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->canSwitchWallview:Z

    return v0
.end method

.method public isInFloatingShareContent()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isInFloatingShareContent:Z

    return v0
.end method

.method public isInFloatingVideoStrip()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->inFloatingVideoStrip:Z

    return v0
.end method

.method public isInShareOnAllScreens()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isInShareOnAllScreens:Z

    return v0
.end method

.method public isInWallview()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isInWallview:Z

    return v0
.end method

.method public setCanAdjustFloatingVideo(Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->canAdjustFloatingVideo:Z

    return-void
.end method

.method public setCanSwitchFloatingShareContent(Z)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->canSwitchFloatingShareContent:Z

    return-void
.end method

.method public setCanSwitchShareOnAllScreens(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->canSwitchShareOnAllScreens:Z

    return-void
.end method

.method public setCanSwitchSpeakerview(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->canSwitchSpeakerview:Z

    return-void
.end method

.method public setCanSwitchWallview(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->canSwitchWallview:Z

    return-void
.end method

.method public setInFloatingShareContent(Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isInFloatingShareContent:Z

    return-void
.end method

.method public setInFloatingVideoStrip(Z)V
    .locals 0

    .line 74
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->inFloatingVideoStrip:Z

    return-void
.end method

.method public setInShareOnAllScreens(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isInShareOnAllScreens:Z

    return-void
.end method

.method public setInWallview(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isInWallview:Z

    return-void
.end method
