.class public Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;
.super Ljava/lang/Object;
.source "ZRCUltrasoundWhiteList.java"

# interfaces
.implements Lus/zoom/zrc/model/AppEngine$IUltrasoundWhiteListListener;
.implements Lus/zoom/zrc/model/AppStateMonitor$AppStateListener;


# static fields
.field private static final HARD_CODE_SUPPORTED_DEVICES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;",
            ">;"
        }
    .end annotation
.end field

.field static final ME:Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;

.field private static sInstance:Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;


# instance fields
.field private mRequestedReleaseNote:Z

.field private mWhiteLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;",
            ">;"
        }
    .end annotation
.end field

.field private propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 35
    new-instance v0, Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;

    sget-object v1, Lus/zoom/zrc/utils/DeviceInfoUtils;->MODEL:Ljava/lang/String;

    sget-object v2, Lus/zoom/zrc/utils/DeviceInfoUtils;->BRAND:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;->ME:Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;->HARD_CODE_SUPPORTED_DEVICES:Ljava/util/List;

    .line 41
    sget-object v0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;->HARD_CODE_SUPPORTED_DEVICES:Ljava/util/List;

    new-instance v1, Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;

    const-string v2, "SM-T580"

    const-string v3, "samsung"

    invoke-direct {v1, v2, v3}, Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;->HARD_CODE_SUPPORTED_DEVICES:Ljava/util/List;

    new-instance v1, Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;

    const-string v2, "SM-T350"

    const-string v3, "samsung"

    invoke-direct {v1, v2, v3}, Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;->mWhiteLists:Ljava/util/List;

    .line 58
    new-instance v0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList$1;-><init>(Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;)V

    iput-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;->propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;->onUpdateMeetingInfo()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;
    .locals 2

    const-class v0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;->sInstance:Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;

    invoke-direct {v1}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;-><init>()V

    sput-object v1, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;->sInstance:Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;

    .line 51
    :cond_0
    sget-object v1, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;->sInstance:Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private initUltrasoundWhiteList()V
    .locals 4

    .line 168
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->getUltrasoundWhiteListJsonData()Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v0, ""

    const-string v1, "initUltrasoundWhiteList: nothing saved"

    .line 170
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 173
    :cond_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 174
    new-instance v3, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList$2;

    invoke-direct {v3, p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList$2;-><init>(Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;)V

    .line 175
    invoke-virtual {v3}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 176
    invoke-virtual {v1, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 177
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;->mWhiteLists:Ljava/util/List;

    .line 178
    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 179
    iput-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;->mWhiteLists:Ljava/util/List;

    :cond_1
    const-string v0, ""

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initUltrasoundWhiteList: mWhiteList="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;->mWhiteLists:Ljava/util/List;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    invoke-virtual {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;->isSupportedDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init: it\'s supported device: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;->ME:Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private onUpdateMeetingInfo()V
    .locals 0

    .line 84
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;->requestReleaseNoteForWhiteList()V

    return-void
.end method

.method private requestReleaseNoteForWhiteList()V
    .locals 2

    .line 88
    iget-boolean v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;->mRequestedReleaseNote:Z

    if-nez v0, :cond_0

    .line 89
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isConnectedToZoomRoom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getRoomInfo()Lus/zoom/zrcsdk/model/ZRCRoomInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->isNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getUserProfile()Lus/zoom/zrc/model/ZRCUserProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "get release note for ultrasonic white list......"

    const/4 v1, 0x0

    .line 92
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->requestGetReleaseNote()V

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;->mRequestedReleaseNote:Z

    :cond_0
    return-void
.end method

.method private saveUltrasoundWhiteList()V
    .locals 2

    .line 189
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;->mWhiteLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 191
    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;->mWhiteLists:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->saveUltrasoundWhiteList(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public isSupportedDevice()Z
    .locals 3

    .line 154
    invoke-static {}, Lus/zoom/zrcsdk/util/ZRCNativeBuildConfig;->buildForUltrasoundPlayerStressTest()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 158
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;->mWhiteLists:Ljava/util/List;

    sget-object v2, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;->ME:Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 161
    :cond_1
    sget-object v0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;->HARD_CODE_SUPPORTED_DEVICES:Ljava/util/List;

    sget-object v2, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;->ME:Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onAppStateChanged(II)V
    .locals 0

    if-eqz p1, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 102
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;->requestReleaseNoteForWhiteList()V

    goto :goto_0

    :cond_1
    :pswitch_0
    const/4 p1, 0x0

    .line 107
    iput-boolean p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;->mRequestedReleaseNote:Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onUltrasoundWhiteListUpdated([Ljava/lang/String;)V
    .locals 11

    if-eqz p1, :cond_5

    .line 114
    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 115
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;->mWhiteLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 117
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 118
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, p1, v3

    .line 119
    invoke-static {v4}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 124
    :cond_1
    :try_start_0
    const-class v5, Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;

    .line 125
    invoke-virtual {v5}, Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;->getOsVersion()I

    move-result v6

    .line 126
    invoke-virtual {v5}, Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;->getZrcVersion()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    .line 127
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "data="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-lez v6, :cond_2

    .line 129
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v8, v6, :cond_2

    goto :goto_1

    .line 134
    :cond_2
    invoke-static {v7}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 135
    invoke-static {v7}, Lus/zoom/zrc/utils/Util;->isNewerZRCVersion(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    .line 140
    :cond_3
    iget-object v6, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;->mWhiteLists:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v5, ""

    .line 142
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "illegal ultrasound white list data:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5, v4, v6}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const-string p1, ""

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUltrasoundWhiteListUpdated: mWhiteList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;->mWhiteLists:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;->saveUltrasoundWhiteList()V

    .line 150
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p1

    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->UpdateUltrasoundWhiteList:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;)V

    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method release()V
    .locals 2

    .line 78
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;->propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 79
    invoke-static {}, Lus/zoom/zrc/model/AppStateMonitor;->getInstance()Lus/zoom/zrc/model/AppStateMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppStateMonitor;->removeAppStateListener(Lus/zoom/zrc/model/AppStateMonitor$AppStateListener;)V

    .line 80
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->removeUltrasoundWhiteListListener(Lus/zoom/zrc/model/AppEngine$IUltrasoundWhiteListListener;)V

    return-void
.end method

.method setup()V
    .locals 2

    .line 71
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;->propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 72
    invoke-static {}, Lus/zoom/zrc/model/AppStateMonitor;->getInstance()Lus/zoom/zrc/model/AppStateMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppStateMonitor;->addAppStateListener(Lus/zoom/zrc/model/AppStateMonitor$AppStateListener;)V

    .line 73
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/AppEngine;->addUltrasoundWhiteListListener(Lus/zoom/zrc/model/AppEngine$IUltrasoundWhiteListListener;)V

    .line 74
    invoke-direct {p0}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;->initUltrasoundWhiteList()V

    return-void
.end method
