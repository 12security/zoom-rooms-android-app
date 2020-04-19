.class public Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;
.super Ljava/lang/Object;
.source "ZRCMeetingVideoLayoutStyleHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canSwitchFloatingShareContent()Z
    .locals 2

    .line 134
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 137
    :cond_0
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isSwitchFloatingShareContentSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isCanSwitchFloatingShareContent()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static canSwitchShareOnAllScreens()Z
    .locals 1

    .line 155
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 158
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isCanSwitchShareOnAllScreens()Z

    move-result v0

    return v0
.end method

.method public static canSwitchSpeakerView()Z
    .locals 1

    .line 169
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 172
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isCanSwitchSpeakerview()Z

    move-result v0

    return v0
.end method

.method public static canVideoControlShowInAdjustingVideoSupported()Z
    .locals 1

    .line 65
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isFloatingVideoStripSupported()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->canVideoControlShowInSingleScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static canVideoControlShowInFloatingVideoStrip()Z
    .locals 1

    .line 69
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isInFloatingVideoStrip()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->canVideoControlShowInSingleScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static canVideoControlShowInFloatingVideoStripSupported()Z
    .locals 1

    .line 82
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isFloatingVideoStripSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->canVideoControlShowInSingleScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static canVideoControlShowInFloatingVideoStripSupported(ZZ)Z
    .locals 1

    .line 77
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isFloatingVideoStripSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->canVideoControlShowInSingleScreen(ZZ)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static canVideoControlShowInSingleScreen()Z
    .locals 2

    .line 87
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isInWallView()Z

    move-result v0

    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isInFloatingVideoStrip()Z

    move-result v1

    invoke-static {v0, v1}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->canVideoControlShowInSingleScreen(ZZ)Z

    move-result v0

    return v0
.end method

.method public static canVideoControlShowInSingleScreen(ZZ)Z
    .locals 3

    .line 48
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isFloatingVideoStripSupported()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 49
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getZrcFeatureListInfo()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    if-nez p0, :cond_5

    if-eqz p1, :cond_2

    .line 52
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p0

    invoke-virtual {p0}, Lus/zoom/zrc/model/AppModel;->getZrcFeatureListInfo()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object p0

    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsShareForFloatingAndContentOnly()Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isOnlyOnePageForFloatingVideoStrip()Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    .line 54
    :cond_2
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p0

    invoke-virtual {p0}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object p0

    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isCanAdjustFloatingVideo()Z

    move-result v2

    goto :goto_1

    .line 58
    :cond_3
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p0

    invoke-virtual {p0}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object p0

    if-nez p0, :cond_4

    return v2

    .line 59
    :cond_4
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p0

    invoke-virtual {p0}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object p0

    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->isSupported()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isSharing()Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 v2, 0x1

    :cond_5
    :goto_1
    return v2
.end method

.method public static canVideoControlShowInSpeaker()Z
    .locals 1

    .line 73
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isInFloatingVideoStrip()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->canVideoControlShowInSingleScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static canVideoLayoutPopoverShowInFloatingVideoStripSupported()Z
    .locals 4

    .line 177
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isFloatingVideoStripSupported()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 179
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isWallViewSupported()Z

    move-result v0

    add-int/2addr v0, v2

    .line 180
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->canSwitchSpeakerView()Z

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-le v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static canVideoLayoutPopoverShowInShareOnAllScreensSupported()Z
    .locals 3

    .line 187
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isShareOnAllScreensSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 188
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->canSwitchShareOnAllScreens()Z

    move-result v0

    .line 189
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isWallViewSupported()Z

    move-result v2

    add-int/2addr v0, v2

    .line 190
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->canSwitchSpeakerView()Z

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isFirstPageForFloatingVideoStrip()Z
    .locals 1

    .line 105
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->getPageStatus()Lus/zoom/zrcsdk/model/VideoPageStatus;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 108
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->getPageStatus()Lus/zoom/zrcsdk/model/VideoPageStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/VideoPageStatus;->isInFirstPage()Z

    move-result v0

    return v0
.end method

.method public static isFirstPageForWallView()Z
    .locals 1

    .line 91
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoPageStatus()Lus/zoom/zrcsdk/model/VideoPageStatus;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 94
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoPageStatus()Lus/zoom/zrcsdk/model/VideoPageStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/VideoPageStatus;->isInFirstPage()Z

    move-result v0

    return v0
.end method

.method public static isFloatingVideoStripSupported()Z
    .locals 3

    .line 21
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 23
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->getPageStatus()Lus/zoom/zrcsdk/model/VideoPageStatus;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isInFloatingShareContent()Z
    .locals 1

    .line 141
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 144
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isInFloatingShareContent()Z

    move-result v0

    return v0
.end method

.method public static isInFloatingVideoStrip()Z
    .locals 1

    .line 33
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 35
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isInFloatingVideoStrip()Z

    move-result v0

    return v0
.end method

.method public static isInShareOnAllScreens()Z
    .locals 1

    .line 162
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 165
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isInShareOnAllScreens()Z

    move-result v0

    return v0
.end method

.method public static isInWallView()Z
    .locals 1

    .line 27
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 29
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isInWallview()Z

    move-result v0

    return v0
.end method

.method public static isLastPageForFloatingVideoStrip()Z
    .locals 1

    .line 112
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->getPageStatus()Lus/zoom/zrcsdk/model/VideoPageStatus;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 115
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->getPageStatus()Lus/zoom/zrcsdk/model/VideoPageStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/VideoPageStatus;->isInLastPage()Z

    move-result v0

    return v0
.end method

.method public static isLastPageForWallView()Z
    .locals 1

    .line 98
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoPageStatus()Lus/zoom/zrcsdk/model/VideoPageStatus;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 101
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoPageStatus()Lus/zoom/zrcsdk/model/VideoPageStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/VideoPageStatus;->isInLastPage()Z

    move-result v0

    return v0
.end method

.method public static isOnlyOnePageForFloatingVideoStrip()Z
    .locals 1

    .line 123
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isFirstPageForFloatingVideoStrip()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isLastPageForFloatingVideoStrip()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isOnlyOnePageForWallView()Z
    .locals 1

    .line 119
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isFirstPageForWallView()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isLastPageForWallView()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isShareOnAllScreensSupported()Z
    .locals 2

    .line 148
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getZrcFeatureListInfo()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getZrcFeatureListInfo()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsShareForFloatingAndContentOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->isSupported()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method public static isSharing()Z
    .locals 3

    .line 39
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getMeetingSharingStatus()Lus/zoom/zrcsdk/model/ZRCSharingStatus;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 41
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSharingStatus;->getSharingState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static isSwitchFloatingShareContentSupported()Z
    .locals 1

    .line 127
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getZrcFeatureListInfo()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 130
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getZrcFeatureListInfo()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsShareForFloatingAndContentOnly()Z

    move-result v0

    return v0
.end method

.method public static isWallViewSupported()Z
    .locals 1

    .line 14
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 16
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isCanSwitchWallview()Z

    move-result v0

    return v0
.end method
