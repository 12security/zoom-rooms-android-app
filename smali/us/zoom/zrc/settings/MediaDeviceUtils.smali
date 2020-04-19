.class public Lus/zoom/zrc/settings/MediaDeviceUtils;
.super Ljava/lang/Object;
.source "MediaDeviceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ZRCMediaDeviceContains(Ljava/util/List;Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 143
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    .line 147
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v0
.end method

.method public static getNetworkDeviceCount(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 45
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isVirtualAudioDevice()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 46
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getVirtualAudioDeviceList()Ljava/util/HashMap;

    move-result-object v1

    .line 47
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_1

    return v0

    .line 51
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method static getSelectedAvailableNetworkDeviceCount(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 60
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isVirtualAudioDevice()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 61
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getVirtualAudioDeviceList()Ljava/util/HashMap;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    if-nez p0, :cond_1

    return v0

    .line 67
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;

    .line 68
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->isSelectedAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    return v0
.end method

.method public static getSelectedNetworkDeviceCount(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isVirtualAudioDevice()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 25
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getVirtualAudioDeviceList()Ljava/util/HashMap;

    move-result-object v0

    .line 26
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    if-nez p0, :cond_1

    return v0

    .line 31
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;

    .line 32
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    return v0
.end method

.method public static indexOfZRCNetworkDevice(Ljava/util/List;Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;",
            ">;",
            "Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;",
            ")I"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 129
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez p1, :cond_2

    :goto_0
    if-ge v2, v1, :cond_4

    .line 132
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge v2, v1, :cond_4

    .line 136
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;

    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return v0
.end method

.method public static isDeepEquals(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;",
            ">;",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    .line 158
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    .line 161
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 162
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    if-eqz v2, :cond_3

    .line 163
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isDeepEquals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_2
    return v0
.end method

.method public static isNetworkDeviceListEquals(Ljava/util/List;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;",
            ">;",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;",
            ">;)Z"
        }
    .end annotation

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 177
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 178
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 179
    invoke-static {v0, p0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static warningOfCombinedMicrophone()Z
    .locals 5

    .line 78
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 83
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSelectedMicrophone()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 84
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isCombinedDevice()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 85
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getConfirmedNumberOfCombinedMicrophones()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getConfirmedNumberOfCombinedMicrophones()I

    move-result v0

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getNumberOfCombinedDevices()I

    move-result v2

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public static warningOfVirtualAudioDevice()Z
    .locals 6

    .line 97
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 101
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSelectedMicrophone()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 102
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isVirtualAudioDevice()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 103
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getVirtualAudioDeviceList()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 105
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 110
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;

    .line 111
    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->isSelectedUnavailable()Z

    move-result v5

    if-eqz v5, :cond_3

    return v2

    .line 114
    :cond_3
    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-nez v3, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1

    :cond_6
    :goto_1
    return v2

    :cond_7
    return v1
.end method
