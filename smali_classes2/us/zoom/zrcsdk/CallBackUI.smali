.class Lus/zoom/zrcsdk/CallBackUI;
.super Ljava/lang/Object;
.source "CallBackUI.java"


# static fields
.field private static instance:Lus/zoom/zrcsdk/CallBackUI;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private calendarEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/ICalendarEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private cameraControlListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/CameraControlListener;",
            ">;"
        }
    .end annotation
.end field

.field private certItemVerifyFailedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/ICertItemVerifyFailedListener;",
            ">;"
        }
    .end annotation
.end field

.field private createRoomListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/ICreateRoomListener;",
            ">;"
        }
    .end annotation
.end field

.field private fileDownloadListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/IFileDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private googleListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/IGoogleEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/ILoginListener;",
            ">;"
        }
    .end annotation
.end field

.field private meetingEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/IMeetingEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private meetingShareEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/IMeetingShareEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private microphoneTestRecordingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/IMicrophoneTestRecordingListener;",
            ">;"
        }
    .end annotation
.end field

.field private ptListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/IPtEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private pushNotificationEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/IPushNotificationEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private reserveOtherRoomEventsListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/IReserveOtherRoomEventsListener;",
            ">;"
        }
    .end annotation
.end field

.field private roomLocationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/IRoomLocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private sendClientLogListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/ISendClientLogListener;",
            ">;"
        }
    .end annotation
.end field

.field private sipServiceListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/ISipServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field private ultrasoundWhiteListListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/IUltrasoundWhiteListListener;",
            ">;"
        }
    .end annotation
.end field

.field private webEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/IWebEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private webPullCallbackListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/IWebPullCallBackListener;",
            ">;"
        }
    .end annotation
.end field

.field private webinarListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/IWebinarRoleChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private zrConnectionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/IZRConnectionEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-class v0, Lus/zoom/zrcsdk/CallBackUI;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrcsdk/CallBackUI;)Ljava/util/List;
    .locals 0

    .line 81
    iget-object p0, p0, Lus/zoom/zrcsdk/CallBackUI;->listeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrcsdk/CallBackUI;)Ljava/util/List;
    .locals 0

    .line 81
    iget-object p0, p0, Lus/zoom/zrcsdk/CallBackUI;->ptListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lus/zoom/zrcsdk/CallBackUI;)Ljava/util/List;
    .locals 0

    .line 81
    iget-object p0, p0, Lus/zoom/zrcsdk/CallBackUI;->ultrasoundWhiteListListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1100(Lus/zoom/zrcsdk/CallBackUI;)Ljava/util/List;
    .locals 0

    .line 81
    iget-object p0, p0, Lus/zoom/zrcsdk/CallBackUI;->createRoomListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1200(Lus/zoom/zrcsdk/CallBackUI;)Ljava/util/List;
    .locals 0

    .line 81
    iget-object p0, p0, Lus/zoom/zrcsdk/CallBackUI;->sendClientLogListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1300(Lus/zoom/zrcsdk/CallBackUI;)Ljava/util/List;
    .locals 0

    .line 81
    iget-object p0, p0, Lus/zoom/zrcsdk/CallBackUI;->certItemVerifyFailedListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1400(Lus/zoom/zrcsdk/CallBackUI;)Ljava/util/List;
    .locals 0

    .line 81
    iget-object p0, p0, Lus/zoom/zrcsdk/CallBackUI;->meetingShareEventListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1500(Lus/zoom/zrcsdk/CallBackUI;)Ljava/util/List;
    .locals 0

    .line 81
    iget-object p0, p0, Lus/zoom/zrcsdk/CallBackUI;->microphoneTestRecordingListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1600(Lus/zoom/zrcsdk/CallBackUI;)Ljava/util/List;
    .locals 0

    .line 81
    iget-object p0, p0, Lus/zoom/zrcsdk/CallBackUI;->calendarEventListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1700(Lus/zoom/zrcsdk/CallBackUI;)Ljava/util/List;
    .locals 0

    .line 81
    iget-object p0, p0, Lus/zoom/zrcsdk/CallBackUI;->pushNotificationEventListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1800(Lus/zoom/zrcsdk/CallBackUI;)Ljava/util/List;
    .locals 0

    .line 81
    iget-object p0, p0, Lus/zoom/zrcsdk/CallBackUI;->roomLocationListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1900(Lus/zoom/zrcsdk/CallBackUI;)Ljava/util/List;
    .locals 0

    .line 81
    iget-object p0, p0, Lus/zoom/zrcsdk/CallBackUI;->reserveOtherRoomEventsListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrcsdk/CallBackUI;)Ljava/util/List;
    .locals 0

    .line 81
    iget-object p0, p0, Lus/zoom/zrcsdk/CallBackUI;->sipServiceListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2000(Lus/zoom/zrcsdk/CallBackUI;)Ljava/util/List;
    .locals 0

    .line 81
    iget-object p0, p0, Lus/zoom/zrcsdk/CallBackUI;->googleListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/zrcsdk/CallBackUI;)Ljava/util/List;
    .locals 0

    .line 81
    iget-object p0, p0, Lus/zoom/zrcsdk/CallBackUI;->zrConnectionListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lus/zoom/zrcsdk/CallBackUI;)Ljava/util/List;
    .locals 0

    .line 81
    iget-object p0, p0, Lus/zoom/zrcsdk/CallBackUI;->meetingEventListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lus/zoom/zrcsdk/CallBackUI;)Ljava/util/List;
    .locals 0

    .line 81
    iget-object p0, p0, Lus/zoom/zrcsdk/CallBackUI;->cameraControlListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lus/zoom/zrcsdk/CallBackUI;)Ljava/util/List;
    .locals 0

    .line 81
    iget-object p0, p0, Lus/zoom/zrcsdk/CallBackUI;->webEventListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lus/zoom/zrcsdk/CallBackUI;)Ljava/util/List;
    .locals 0

    .line 81
    iget-object p0, p0, Lus/zoom/zrcsdk/CallBackUI;->webinarListener:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Lus/zoom/zrcsdk/CallBackUI;)Ljava/util/List;
    .locals 0

    .line 81
    iget-object p0, p0, Lus/zoom/zrcsdk/CallBackUI;->webPullCallbackListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lus/zoom/zrcsdk/CallBackUI;)Ljava/util/List;
    .locals 0

    .line 81
    iget-object p0, p0, Lus/zoom/zrcsdk/CallBackUI;->fileDownloadListeners:Ljava/util/List;

    return-object p0
.end method

.method private dumpZRCLocationInfo(Lus/zoom/zrcsdk/model/ZRCLocationInfo;I)V
    .locals 4

    .line 3294
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    const-string v3, "  "

    .line 3296
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3298
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3299
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->getChildLocations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCLocationInfo;

    add-int/lit8 v1, p2, 0x1

    .line 3300
    invoke-direct {p0, v0, v1}, Lus/zoom/zrcsdk/CallBackUI;->dumpZRCLocationInfo(Lus/zoom/zrcsdk/model/ZRCLocationInfo;I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static declared-synchronized getInstance()Lus/zoom/zrcsdk/CallBackUI;
    .locals 2

    const-class v0, Lus/zoom/zrcsdk/CallBackUI;

    monitor-enter v0

    .line 111
    :try_start_0
    sget-object v1, Lus/zoom/zrcsdk/CallBackUI;->instance:Lus/zoom/zrcsdk/CallBackUI;

    if-nez v1, :cond_0

    .line 112
    new-instance v1, Lus/zoom/zrcsdk/CallBackUI;

    invoke-direct {v1}, Lus/zoom/zrcsdk/CallBackUI;-><init>()V

    sput-object v1, Lus/zoom/zrcsdk/CallBackUI;->instance:Lus/zoom/zrcsdk/CallBackUI;

    .line 113
    :cond_0
    sget-object v1, Lus/zoom/zrcsdk/CallBackUI;->instance:Lus/zoom/zrcsdk/CallBackUI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private native nativeInit(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private onGoogleAuthReturn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    const-string v0, "onGoogleAuthReturn accessToken=%s, refreshToken=%s, errorCode=%d, errorStr=%s"

    const/4 v1, 0x4

    .line 3367
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lus/zoom/zrcsdk/util/StringUtil;->logToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Lus/zoom/zrcsdk/util/StringUtil;->logToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3368
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v7, Lus/zoom/zrcsdk/CallBackUI$210;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lus/zoom/zrcsdk/CallBackUI$210;-><init>(Lus/zoom/zrcsdk/CallBackUI;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v7}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onUpdateZoomRoomCapability(Lus/zoom/zrcsdk/model/ZoomRoomCapability;)V
    .locals 3

    const-string v0, "onUpdateZoomRoomCapability zrCapability=%s"

    const/4 v1, 0x1

    .line 3423
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3424
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$213;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$213;-><init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZoomRoomCapability;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onUpgradeDeviceROMNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "onUpgradeDeviceROMNotification deviceId=%s.url=%s"

    const/4 v1, 0x2

    .line 3355
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3356
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$209;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$209;-><init>(Lus/zoom/zrcsdk/CallBackUI;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public AddTrustedCertForZPController(Lus/zoom/zrcsdk/model/ZRCCertItem;)V
    .locals 4

    const-string v0, ""

    .line 2480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AddTrustedCertForZPController "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2481
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->getContext()Lus/zoom/zrcsdk/ContextImp;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "zrc"

    .line 2483
    invoke-interface {v0, v1}, Lus/zoom/zrcsdk/ContextImp;->getSharedPreferences(Ljava/lang/String;)Lus/zoom/zrcsdk/SharedPreferencesImp;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2485
    iget-object p1, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v0, "AddTrustedCertForZPController: the sharedPreferences is null"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 2488
    :cond_0
    invoke-interface {v0}, Lus/zoom/zrcsdk/SharedPreferencesImp;->edit()Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2490
    iget-object p1, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v0, "AddTrustedCertForZPController: the editor is null"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v2, "cert_items"

    const-string v3, ""

    .line 2493
    invoke-interface {v0, v2, v3}, Lus/zoom/zrcsdk/SharedPreferencesImp;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2494
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2495
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2496
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lus/zoom/zrcsdk/CallBackUI$145;

    invoke-direct {v3, p0}, Lus/zoom/zrcsdk/CallBackUI$145;-><init>(Lus/zoom/zrcsdk/CallBackUI;)V

    .line 2497
    invoke-virtual {v3}, Lus/zoom/zrcsdk/CallBackUI$145;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 2496
    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    .line 2499
    :cond_2
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 2502
    :cond_3
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "cert_items"

    .line 2503
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2504
    invoke-interface {v1}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->commit()V

    :cond_4
    return-void
.end method

.method public OnSearchBuddyOnWebDidFinish(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;)V"
        }
    .end annotation

    .line 2044
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$113;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$113;-><init>(Lus/zoom/zrcsdk/CallBackUI;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public PromptToInputUserNamePasswordForProxyServer(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 1682
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lus/zoom/zrcsdk/ZRCSdkContext;->startProxyActivity(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public QueryAllTrustedCertsForZPController()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCCertItem;",
            ">;"
        }
    .end annotation

    .line 2509
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->getContext()Lus/zoom/zrcsdk/ContextImp;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "zrc"

    .line 2511
    invoke-interface {v0, v1}, Lus/zoom/zrcsdk/ContextImp;->getSharedPreferences(Ljava/lang/String;)Lus/zoom/zrcsdk/SharedPreferencesImp;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2513
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "QueryAllTrustedCertsForZPController: the sharedPreferences is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2514
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    const-string v1, "cert_items"

    const-string v2, ""

    .line 2518
    invoke-interface {v0, v1, v2}, Lus/zoom/zrcsdk/SharedPreferencesImp;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2519
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2520
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2521
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lus/zoom/zrcsdk/CallBackUI$146;

    invoke-direct {v2, p0}, Lus/zoom/zrcsdk/CallBackUI$146;-><init>(Lus/zoom/zrcsdk/CallBackUI;)V

    .line 2522
    invoke-virtual {v2}, Lus/zoom/zrcsdk/CallBackUI$146;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 2521
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    :cond_1
    return-object v1

    .line 2526
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public VTLS_NotifyCertItemVerifyFailed(Lus/zoom/zrcsdk/model/ZRCVerifyCertEvent;)V
    .locals 3

    .line 2468
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VTLS_NotifyCertItemVerifyFailed: ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2469
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$144;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$144;-><init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZRCVerifyCertEvent;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addCalendarEventListener(Lus/zoom/zrcsdk/ICalendarEventListener;)V
    .locals 1

    .line 395
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->calendarEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->calendarEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addCameraControlListener(Lus/zoom/zrcsdk/CameraControlListener;)V
    .locals 1

    .line 329
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->cameraControlListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 330
    :cond_0
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->cameraControlListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addCertItemVerifyFailedListener(Lus/zoom/zrcsdk/ICertItemVerifyFailedListener;)V
    .locals 1

    .line 377
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->certItemVerifyFailedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->certItemVerifyFailedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addCreateRoomListener(Lus/zoom/zrcsdk/ICreateRoomListener;)V
    .locals 1

    .line 345
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->createRoomListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->createRoomListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addFileDownloadListener(Lus/zoom/zrcsdk/IFileDownloadListener;)V
    .locals 1

    .line 298
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->fileDownloadListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addGoogleListener(Lus/zoom/zrcsdk/IGoogleEventListener;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->googleListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addLoginListener(Lus/zoom/zrcsdk/ILoginListener;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addMeetingShareEventListener(Lus/zoom/zrcsdk/IMeetingShareEventListener;)V
    .locals 1

    .line 404
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->meetingShareEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->meetingShareEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addMicrophoneTestRecordingListener(Lus/zoom/zrcsdk/IMicrophoneTestRecordingListener;)V
    .locals 1

    .line 386
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->microphoneTestRecordingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->microphoneTestRecordingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPtEventListener(Lus/zoom/zrcsdk/IPtEventListener;)V
    .locals 1

    .line 207
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->ptListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addPushNotificationEventListener(Lus/zoom/zrcsdk/IPushNotificationEventListener;)V
    .locals 1

    .line 413
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->pushNotificationEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->pushNotificationEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addReserveOtherRoomEventsListener(Lus/zoom/zrcsdk/IReserveOtherRoomEventsListener;)V
    .locals 1

    .line 432
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->reserveOtherRoomEventsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 434
    :cond_0
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->reserveOtherRoomEventsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addRoomLocationListener(Lus/zoom/zrcsdk/IRoomLocationListener;)V
    .locals 1

    .line 422
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->roomLocationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->roomLocationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSendClientLogListener(Lus/zoom/zrcsdk/ISendClientLogListener;)V
    .locals 1

    .line 361
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->sendClientLogListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->sendClientLogListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSipServiceListener(Lus/zoom/zrcsdk/ISipServiceListener;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->sipServiceListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addUltrasoundWhiteListListener(Lus/zoom/zrcsdk/IUltrasoundWhiteListListener;)V
    .locals 1

    .line 313
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->ultrasoundWhiteListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->ultrasoundWhiteListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addWebEventListener(Lus/zoom/zrcsdk/IWebEventListener;)V
    .locals 1

    .line 283
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->webEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addWebPullCallBackEventListener(Lus/zoom/zrcsdk/IWebPullCallBackListener;)V
    .locals 1

    .line 253
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->webPullCallbackListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addWebinarRoleChangedListener(Lus/zoom/zrcsdk/IWebinarRoleChangedListener;)V
    .locals 1

    .line 177
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->webinarListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addZRConnectionEventListener(Lus/zoom/zrcsdk/IZRConnectionEventListener;)V
    .locals 1

    .line 237
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->zrConnectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addZRMeetingEventListener(Lus/zoom/zrcsdk/IMeetingEventListener;)V
    .locals 1

    .line 268
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->meetingEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public init()V
    .locals 1

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->listeners:Ljava/util/List;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->ptListeners:Ljava/util/List;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->zrConnectionListeners:Ljava/util/List;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->meetingEventListeners:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->webEventListeners:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->googleListeners:Ljava/util/List;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->webinarListener:Ljava/util/List;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->webPullCallbackListeners:Ljava/util/List;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->sipServiceListeners:Ljava/util/List;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->fileDownloadListeners:Ljava/util/List;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->ultrasoundWhiteListListeners:Ljava/util/List;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->cameraControlListeners:Ljava/util/List;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->createRoomListeners:Ljava/util/List;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->sendClientLogListeners:Ljava/util/List;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->certItemVerifyFailedListeners:Ljava/util/List;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->microphoneTestRecordingListeners:Ljava/util/List;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->calendarEventListeners:Ljava/util/List;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->meetingShareEventListeners:Ljava/util/List;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->pushNotificationEventListeners:Ljava/util/List;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->roomLocationListeners:Ljava/util/List;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->reserveOtherRoomEventsListeners:Ljava/util/List;

    return-void
.end method

.method public initNative(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI;->nativeInit(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAddLegacyRoom(Ljava/lang/String;Z)V
    .locals 2

    .line 1573
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$77;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$77;-><init>(Lus/zoom/zrcsdk/CallBackUI;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAllowAttendeesUnmuteThemselvesNotification(Z)V
    .locals 4

    const-string v0, "onAllowAttendeesUnmuteThemselvesNotification can_attendees_unmute_themselves=%s"

    const/4 v1, 0x1

    .line 2699
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2700
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$160;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$160;-><init>(Lus/zoom/zrcsdk/CallBackUI;Z)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAllowRecordingNotification(IZZZ)V
    .locals 8

    const-string v0, "onAllowRecordingNotification, userId=%d, canRecord=%b, isRecording=%b"

    const/4 v1, 0x3

    .line 1237
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1238
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v7, Lus/zoom/zrcsdk/CallBackUI$55;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lus/zoom/zrcsdk/CallBackUI$55;-><init>(Lus/zoom/zrcsdk/CallBackUI;IZZZ)V

    invoke-virtual {v0, v7}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnswerHostRequestUnmuteAudioResult(Z)V
    .locals 4

    const-string v0, "onAnswerHostRequestUnmuteAudioResult result=%s"

    const/4 v1, 0x1

    .line 2974
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2975
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$182;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$182;-><init>(Lus/zoom/zrcsdk/CallBackUI;Z)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnswerHostRequestUnmuteVideoResult(Z)V
    .locals 4

    const-string v0, "onAnswerHostRequestUnmuteVideoResult result=%s"

    const/4 v1, 0x1

    .line 2961
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2962
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$181;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$181;-><init>(Lus/zoom/zrcsdk/CallBackUI;Z)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnswerIncomingSipCallResult(ILjava/lang/String;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Z)V
    .locals 8

    const-string v0, "onAnswerIncomingSipCallResult result=%s, requestId=%s, callInfo=%s, accepted=%s"

    const/4 v1, 0x4

    .line 3000
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3001
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v7, Lus/zoom/zrcsdk/CallBackUI$184;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lus/zoom/zrcsdk/CallBackUI$184;-><init>(Lus/zoom/zrcsdk/CallBackUI;ILjava/lang/String;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Z)V

    invoke-virtual {v0, v7}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnswerIncomingZoomCallResult(ILjava/lang/String;Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;Z)V
    .locals 8

    const-string v0, "onAnswerIncomingZoomCallResult result=%s, requestId=%s, callInfo=%s, accepted=%s"

    const/4 v1, 0x4

    .line 2987
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2988
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v7, Lus/zoom/zrcsdk/CallBackUI$183;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lus/zoom/zrcsdk/CallBackUI$183;-><init>(Lus/zoom/zrcsdk/CallBackUI;ILjava/lang/String;Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;Z)V

    invoke-virtual {v0, v7}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAskToJoinThirdPartyMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 3

    .line 2408
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The rcv third-party meeting is: %s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2409
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$142;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$142;-><init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAssignRoomCalendarResult(ILus/zoom/zrcsdk/model/ZRCCalendarResourceItem;)V
    .locals 3

    .line 2225
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAssignRoomCalendarResult result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",resource="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2226
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$127;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$127;-><init>(Lus/zoom/zrcsdk/CallBackUI;ILus/zoom/zrcsdk/model/ZRCCalendarResourceItem;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAssignRoomLocationResult(ILjava/lang/String;)V
    .locals 3

    .line 2237
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAssignRoomLocationResult result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", passCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lus/zoom/zrcsdk/util/StringUtil;->logPassword(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2238
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$128;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$128;-><init>(Lus/zoom/zrcsdk/CallBackUI;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAudioCheckupNotification(Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;)V
    .locals 3

    .line 2348
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioCheckupNotification "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2349
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$137;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$137;-><init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAudioRequestUnmuteByhostNotification(IZ)V
    .locals 3

    .line 1996
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the onAudioRequestUnmuteByhostNotification type= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is_show= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1997
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$109;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$109;-><init>(Lus/zoom/zrcsdk/CallBackUI;IZ)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAudioSystemFailureNotification(Z)V
    .locals 4

    .line 760
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onAudioSystemFailureNotification isDismiss=%b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onBatchUserChangedNotification(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onBatchUserChangedNotification, userChangedEntities=%s"

    const/4 v1, 0x1

    .line 2372
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2373
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$139;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$139;-><init>(Lus/zoom/zrcsdk/CallBackUI;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCalibrateScreenSequenceResult(IILjava/lang/String;I)V
    .locals 8

    .line 746
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onCalibrateScreenSequenceResult currentScreen=%d, quantityOfScreens=%d, requestId=%s, action=%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 747
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 746
    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 748
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v7, Lus/zoom/zrcsdk/CallBackUI$22;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lus/zoom/zrcsdk/CallBackUI$22;-><init>(Lus/zoom/zrcsdk/CallBackUI;IILjava/lang/String;I)V

    invoke-virtual {v0, v7}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCallStatus(I)V
    .locals 5

    .line 895
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onCallStatus meeting_status=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingStatus;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 896
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$32;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$32;-><init>(Lus/zoom/zrcsdk/CallBackUI;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCameraControlResult(ILjava/lang/String;IIIZLjava/lang/String;I)V
    .locals 12

    const-string v0, "onCameraControlResult, result=%s, requestId=%s, type=%s, action=%s, userId=%s, accept=%s, deviceId=%s, panTiltSpeedPercentage=%s"

    const/16 v1, 0x8

    .line 3095
    new-array v1, v1, [Ljava/lang/Object;

    .line 3096
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/4 v2, 0x6

    aput-object p7, v1, v2

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 3095
    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3097
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$191;

    move-object v3, v1

    move-object v4, p0

    move v5, p1

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v3 .. v11}, Lus/zoom/zrcsdk/CallBackUI$191;-><init>(Lus/zoom/zrcsdk/CallBackUI;IIIIZLjava/lang/String;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCameraIntelligentZoomFinished(Z)V
    .locals 2

    .line 2117
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$118;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$118;-><init>(Lus/zoom/zrcsdk/CallBackUI;Z)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCameraIntelligentZoomNotification(ZZ)V
    .locals 2

    .line 2640
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$155;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$155;-><init>(Lus/zoom/zrcsdk/CallBackUI;ZZ)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCameraPresetActionFinished(Z)V
    .locals 2

    .line 2079
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$115;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$115;-><init>(Lus/zoom/zrcsdk/CallBackUI;Z)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCameraPresetsChanged()V
    .locals 2

    .line 2094
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$116;

    invoke-direct {v1, p0}, Lus/zoom/zrcsdk/CallBackUI$116;-><init>(Lus/zoom/zrcsdk/CallBackUI;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onClaimHostNotification(I)V
    .locals 3

    .line 2297
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClaimHostNotification result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2298
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$133;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$133;-><init>(Lus/zoom/zrcsdk/CallBackUI;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCloseCaptionControlResult(ILjava/lang/String;ZI)V
    .locals 8

    const-string v0, "onCloseCaptionControlResult result=%s, requestId=%s, show=%s, fontSize=%s"

    const/4 v1, 0x4

    .line 3109
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3110
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v7, Lus/zoom/zrcsdk/CallBackUI$192;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lus/zoom/zrcsdk/CallBackUI$192;-><init>(Lus/zoom/zrcsdk/CallBackUI;ILjava/lang/String;ZI)V

    invoke-virtual {v0, v7}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCloseUpcomingMeetingAlertResult(ILjava/lang/String;)V
    .locals 4

    const-string v0, "onCloseUpcomingMeetingAlertResult result=%s, requestId=%s"

    const/4 v1, 0x2

    .line 3137
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3138
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object p2

    new-instance v0, Lus/zoom/zrcsdk/CallBackUI$194;

    invoke-direct {v0, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$194;-><init>(Lus/zoom/zrcsdk/CallBackUI;I)V

    invoke-virtual {p2, v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCloseWithReason(I)V
    .locals 5

    .line 941
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onCloseWithReason reason=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 942
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$35;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$35;-><init>(Lus/zoom/zrcsdk/CallBackUI;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onClosedCaptionNotification(Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;)V
    .locals 3

    .line 2020
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClosedCaptionNotification "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2021
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$111;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$111;-><init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onClosedCaptionResult(Z)V
    .locals 3

    .line 2032
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClosedCaptionResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2033
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$112;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$112;-><init>(Lus/zoom/zrcsdk/CallBackUI;Z)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onComDeviceListNotification(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCComDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 522
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onComDeviceListNotification,comDeviceInfos=%s,"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 524
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$6;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$6;-><init>(Lus/zoom/zrcsdk/CallBackUI;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConnect(I)V
    .locals 5

    .line 911
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onConnect reason=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 912
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$33;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$33;-><init>(Lus/zoom/zrcsdk/CallBackUI;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreateRoomResult(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 2201
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateRoomResult result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",roomEmail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",passCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lus/zoom/zrcsdk/util/StringUtil;->logPassword(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2202
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$125;

    invoke-direct {v1, p0, p1, p2, p3}, Lus/zoom/zrcsdk/CallBackUI$125;-><init>(Lus/zoom/zrcsdk/CallBackUI;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCurrentSelectedMicrophoneMuted(Z)V
    .locals 3

    .line 1948
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCurrentSelectedMicrophoneMuted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1949
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$105;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$105;-><init>(Lus/zoom/zrcsdk/CallBackUI;Z)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDeleteZoomRoomsFromWeb([Ljava/lang/String;)V
    .locals 4

    const-string v0, "onDeleteZoomRoomsFromWeb jid=%s"

    const/4 v1, 0x1

    .line 2771
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2772
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$166;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$166;-><init>(Lus/zoom/zrcsdk/CallBackUI;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDisplayTopBannerNotification(Z)V
    .locals 4

    const-string v0, "onDisplayTopBannerNotification is_display_top_banner=%s"

    const/4 v1, 0x1

    .line 2855
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2856
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$173;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$173;-><init>(Lus/zoom/zrcsdk/CallBackUI;Z)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDynamicContactListNotification(Ljava/util/ArrayList;Ljava/lang/String;IZZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;",
            "Ljava/lang/String;",
            "IZZ)V"
        }
    .end annotation

    .line 2140
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDynamicContactListNotification "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",total number is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",contact size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", filter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", searchOnCloudResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",searchSipContactResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2141
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v8, Lus/zoom/zrcsdk/CallBackUI$120;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lus/zoom/zrcsdk/CallBackUI$120;-><init>(Lus/zoom/zrcsdk/CallBackUI;Ljava/util/ArrayList;Ljava/lang/String;IZZ)V

    invoke-virtual {v0, v8}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDynamicContactsBasicInfoNotification(III)V
    .locals 5

    .line 2128
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onDynamicContactsBasicInfoNotification numberOfGroups:%d, numberOfContacts:%d numberOfZoomRooms:%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2129
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$119;

    invoke-direct {v1, p0, p1, p2, p3}, Lus/zoom/zrcsdk/CallBackUI$119;-><init>(Lus/zoom/zrcsdk/CallBackUI;III)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onEnableWaitingRoomOnEntryNotification(Z)V
    .locals 3

    .line 2628
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnableWaitingRoomOnEntryNotification is_enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2629
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$154;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$154;-><init>(Lus/zoom/zrcsdk/CallBackUI;Z)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onExitMeetingResult(Z)V
    .locals 4

    const-string v0, "onExitMeetingResult result=%s"

    const/4 v1, 0x1

    .line 3013
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3014
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$185;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$185;-><init>(Lus/zoom/zrcsdk/CallBackUI;Z)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFarEndCameraControlNotification(Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;)V
    .locals 2

    .line 1623
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$81;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$81;-><init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFinishRecievingLegacyRoomList(Z)V
    .locals 2

    .line 1584
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$78;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$78;-><init>(Lus/zoom/zrcsdk/CallBackUI;Z)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onGetAllRoomsResult(ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onGetAllRoomsResult, result=%s, size=%d"

    const/4 v1, 0x2

    .line 3220
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 3222
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    const-string v2, "onGetAllRoomsResult(%d): %s"

    .line 3223
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3226
    :cond_0
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$200;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$200;-><init>(Lus/zoom/zrcsdk/CallBackUI;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onGetLocationInfoResult(ILjava/lang/String;Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCLocationInfo;)V
    .locals 8

    const-string v0, "onGetLocationInfoResult, result=%s, errorMessage=%s, locationID=%s"

    const/4 v1, 0x3

    .line 3204
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3205
    invoke-static {}, Lus/zoom/zrcsdk/util/ZRCLog;->getLevel()I

    move-result v0

    if-gtz v0, :cond_0

    .line 3206
    invoke-direct {p0, p4, v3}, Lus/zoom/zrcsdk/CallBackUI;->dumpZRCLocationInfo(Lus/zoom/zrcsdk/model/ZRCLocationInfo;I)V

    .line 3208
    :cond_0
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v7, Lus/zoom/zrcsdk/CallBackUI$199;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lus/zoom/zrcsdk/CallBackUI$199;-><init>(Lus/zoom/zrcsdk/CallBackUI;ILjava/lang/String;Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCLocationInfo;)V

    invoke-virtual {v0, v7}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onGetRoomLocationIDResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "onGetRoomLocationIDResult, result=%s, errorMessage=%s, roomLocationID=%s, roomID=%s"

    const/4 v1, 0x4

    .line 3191
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3192
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v7, Lus/zoom/zrcsdk/CallBackUI$198;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lus/zoom/zrcsdk/CallBackUI$198;-><init>(Lus/zoom/zrcsdk/CallBackUI;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onGetSSLNeedVerify()Z
    .locals 1

    .line 2530
    invoke-static {}, Lus/zoom/zrcsdk/model/PolicyBlockUnknownSSLCert;->isSSLNeedVerify()Z

    move-result v0

    return v0
.end method

.method public onGoingToBeInMeetingNotification(IZ)V
    .locals 3

    .line 624
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGoingToBeInMeetingNotification meetingType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",isStarting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 625
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$13;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$13;-><init>(Lus/zoom/zrcsdk/CallBackUI;IZ)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onHostChangedNotification(IZ)V
    .locals 4

    const-string v0, "onHostChangedNotification, hostUserId=%d, amIHost=%b"

    const/4 v1, 0x2

    .line 1209
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1210
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$53;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$53;-><init>(Lus/zoom/zrcsdk/CallBackUI;IZ)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onImAddContactNotification(Lus/zoom/zrcsdk/model/ZRCContact;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .line 820
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImAddContactNotification contact:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",groupId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",groupName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",isZoomRoomsGroup:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 822
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v7, Lus/zoom/zrcsdk/CallBackUI$27;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lus/zoom/zrcsdk/CallBackUI$27;-><init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZRCContact;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v7}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onImConnectingResultNotification(I)V
    .locals 5

    .line 792
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onImConnectingResultNotification imConnectingResult=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 793
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$25;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$25;-><init>(Lus/zoom/zrcsdk/CallBackUI;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onImFinishTransportingContactsNotification()V
    .locals 3

    .line 880
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onImFinishTransportingContactsNotification"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 881
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$31;

    invoke-direct {v1, p0}, Lus/zoom/zrcsdk/CallBackUI$31;-><init>(Lus/zoom/zrcsdk/CallBackUI;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onImMyPresenceChangedNotification(ILjava/lang/String;)V
    .locals 5

    .line 852
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onImMyPresenceChangedNotification presence=%d, customMessage%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 853
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$29;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$29;-><init>(Lus/zoom/zrcsdk/CallBackUI;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onImReconnectingNotification()V
    .locals 3

    .line 806
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onImReconnectingNotification"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 807
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$26;

    invoke-direct {v1, p0}, Lus/zoom/zrcsdk/CallBackUI$26;-><init>(Lus/zoom/zrcsdk/CallBackUI;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onImStartTransportingContactsNotification()V
    .locals 3

    .line 866
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onImStartTransportingContactsNotification"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 867
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$30;

    invoke-direct {v1, p0}, Lus/zoom/zrcsdk/CallBackUI$30;-><init>(Lus/zoom/zrcsdk/CallBackUI;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onImUpdateContactNotification(Lus/zoom/zrcsdk/model/ZRCContact;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .line 836
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImUpdateContactNotification contact:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",groupId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",groupName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",isZoomRoomsGroup:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 839
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v7, Lus/zoom/zrcsdk/CallBackUI$28;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lus/zoom/zrcsdk/CallBackUI$28;-><init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZRCContact;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v7}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onImUpdateDynamicContactNotification(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;)V"
        }
    .end annotation

    .line 2152
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onImUpdateDynamicContactNotification :%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2153
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$121;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$121;-><init>(Lus/zoom/zrcsdk/CallBackUI;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInSilentModeNotification(Z)V
    .locals 3

    .line 2616
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInSilentModeNotification is_in_silent_mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2617
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$153;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$153;-><init>(Lus/zoom/zrcsdk/CallBackUI;Z)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onIncomingCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 3

    .line 779
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIncomingCallNotification sip "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 780
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$24;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$24;-><init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onIncomingCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;)V
    .locals 4

    .line 765
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onIncomingCallNotification incomingCall=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 766
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$23;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$23;-><init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInviteRoomSystemManuallyResult(ZLjava/lang/String;)V
    .locals 5

    .line 1338
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onInviteRoomSystemManuallyResult result=%b, requestId=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1339
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object p2

    new-instance v0, Lus/zoom/zrcsdk/CallBackUI$62;

    invoke-direct {v0, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$62;-><init>(Lus/zoom/zrcsdk/CallBackUI;Z)V

    invoke-virtual {p2, v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onJoinMeetingResult(ZLjava/lang/String;)V
    .locals 5

    .line 1400
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onJoinMeetingResult result=%b, requestId=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1401
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object p2

    new-instance v0, Lus/zoom/zrcsdk/CallBackUI$66;

    invoke-direct {v0, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$66;-><init>(Lus/zoom/zrcsdk/CallBackUI;Z)V

    invoke-virtual {p2, v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onJoinSipCallToMeetingResult(ILjava/lang/String;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 3

    .line 1778
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onJoinSipCallToMeetingResult() called with: result = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], requestId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], callInfo = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1780
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$91;

    invoke-direct {v1, p0, p1, p2, p3}, Lus/zoom/zrcsdk/CallBackUI$91;-><init>(Lus/zoom/zrcsdk/CallBackUI;ILjava/lang/String;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onJoinTestMeetingResult(ZLjava/lang/String;)V
    .locals 5

    .line 1427
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onJoinTestMeetingResult result=%b, requestId=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1428
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object p2

    new-instance v0, Lus/zoom/zrcsdk/CallBackUI$68;

    invoke-direct {v0, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$68;-><init>(Lus/zoom/zrcsdk/CallBackUI;Z)V

    invoke-virtual {p2, v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLaunchSharingMeetingResult(ILjava/lang/String;ZI)V
    .locals 8

    const-string v0, "onLaunchSharingMeetingResult result=%s, requestId=%s, for_share_laptop=%s, display_state=%s"

    const/4 v1, 0x4

    .line 3067
    new-array v1, v1, [Ljava/lang/Object;

    .line 3068
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 3067
    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3069
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v7, Lus/zoom/zrcsdk/CallBackUI$189;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lus/zoom/zrcsdk/CallBackUI$189;-><init>(Lus/zoom/zrcsdk/CallBackUI;ILjava/lang/String;ZI)V

    invoke-virtual {v0, v7}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onListMeetingParticipantNotification(I)V
    .locals 3

    .line 2663
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onListMeetingParticipantNotification user_count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2664
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$157;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$157;-><init>(Lus/zoom/zrcsdk/CallBackUI;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onListMeetingResult(I)V
    .locals 5

    .line 612
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onListMeetingResult, result=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 613
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$12;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$12;-><init>(Lus/zoom/zrcsdk/CallBackUI;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLoadEndPointsToDB(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 2433
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->getContext()Lus/zoom/zrcsdk/ContextImp;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "zrc"

    .line 2435
    invoke-interface {v0, v1}, Lus/zoom/zrcsdk/ContextImp;->getSharedPreferences(Ljava/lang/String;)Lus/zoom/zrcsdk/SharedPreferencesImp;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2437
    iget-object p1, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v0, "onLoadEndPointsToDB: the sharedPreferences is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, ""

    return-object p1

    .line 2441
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zrc.web."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Lus/zoom/zrcsdk/SharedPreferencesImp;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "EndPointsToDB"

    const-string v3, "load from DB: %s=%s"

    const/4 v4, 0x2

    .line 2442
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    const/4 p1, 0x1

    aput-object v0, v4, p1

    invoke-static {v2, v3, v4}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public onLoginPushNotificationServerResult(I)V
    .locals 4

    const-string v0, "onLoginPushNotificationServerResult result=%d"

    const/4 v1, 0x1

    .line 2747
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2748
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$164;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$164;-><init>(Lus/zoom/zrcsdk/CallBackUI;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMeetWithIMUsersResult(ZLjava/lang/String;)V
    .locals 5

    .line 1414
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onMeetWithIMUsersResult result=%b, requestId=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1415
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object p2

    new-instance v0, Lus/zoom/zrcsdk/CallBackUI$67;

    invoke-direct {v0, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$67;-><init>(Lus/zoom/zrcsdk/CallBackUI;Z)V

    invoke-virtual {p2, v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMeetingAllShareSourcesNotification(Ljava/util/List;[I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCShareSource;",
            ">;[I)V"
        }
    .end annotation

    const-string v0, "onMeetingAllShareSourcesNotification, allShareSources size=%d, zrwShareSources size=%d"

    const/4 v1, 0x2

    .line 2534
    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    array-length v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2536
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    const-string v2, "onMeetingAllShareSourcesNotification, allShareSources index=%d, item=%s"

    .line 2537
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2540
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_1

    const-string v2, "onMeetingAllShareSourcesNotification, zrwShareSources index=%d, item=%s"

    .line 2541
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    aget v6, p2, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2544
    :cond_1
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$147;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$147;-><init>(Lus/zoom/zrcsdk/CallBackUI;Ljava/util/List;[I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMeetingChatDisplaySettingsNotification(ZZ)V
    .locals 4

    const-string v0, "onMeetingChatDisplaySettingsNotification is_show_chat_notification_on_zr=%s, is_show_chat_list_on_zr=%s"

    const/4 v1, 0x2

    .line 2881
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2882
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$175;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$175;-><init>(Lus/zoom/zrcsdk/CallBackUI;ZZ)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMeetingChatMessageNotification(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onMeetingChatMessageNotification messages=%s"

    const/4 v1, 0x1

    .line 2868
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2869
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$174;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$174;-><init>(Lus/zoom/zrcsdk/CallBackUI;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMeetingCloudRecordingErrorNotification(I)V
    .locals 3

    .line 2285
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMeetingCloudRecordingErrorNotification error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2286
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$132;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$132;-><init>(Lus/zoom/zrcsdk/CallBackUI;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMeetingEndedNotification(ILjava/lang/String;)V
    .locals 5

    .line 666
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onMeetingEndedNotification, errorCode=%d, errorMessage=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 667
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$16;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$16;-><init>(Lus/zoom/zrcsdk/CallBackUI;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMeetingErrorNotification(ILjava/lang/String;)V
    .locals 5

    .line 652
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onMeetingErrorNotification, errorCode=%d, errorMessage=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 653
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$15;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$15;-><init>(Lus/zoom/zrcsdk/CallBackUI;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMeetingExitedNotification(I)V
    .locals 5

    .line 1223
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onMeetingExitedNotification result=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1224
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$54;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$54;-><init>(Lus/zoom/zrcsdk/CallBackUI;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMeetingNeedsPassword(ZZ)V
    .locals 5

    .line 956
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onMeetingNeedsPassword showPasswordDialog=%b, wrongAndRetry=%b"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 957
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$36;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$36;-><init>(Lus/zoom/zrcsdk/CallBackUI;ZZ)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMeetingShareSettingStatusNotification(Z)V
    .locals 3

    .line 2555
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMeetingShareSettingStatusNotification isMultiShare="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2556
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;-><init>()V

    .line 2557
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;->setMultiShare(Z)V

    .line 2558
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object p1

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$148;

    invoke-direct {v1, p0, v0}, Lus/zoom/zrcsdk/CallBackUI$148;-><init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;)V

    invoke-virtual {p1, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMessageEventNotification(I)V
    .locals 3

    .line 1887
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMessageEventNotification() called with: messageEvent = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1888
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$100;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$100;-><init>(Lus/zoom/zrcsdk/CallBackUI;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMicrophoneRecordingNotification(I)V
    .locals 3

    .line 2569
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMicrophoneRecordingNotification status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2570
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$149;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$149;-><init>(Lus/zoom/zrcsdk/CallBackUI;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMicrophoneTestingNotification(I)V
    .locals 2

    .line 709
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$19;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$19;-><init>(Lus/zoom/zrcsdk/CallBackUI;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMirrorVideoResult(ILjava/lang/String;ZLjava/lang/String;)V
    .locals 8

    const-string v0, "onMirrorVideoResult result=%s, requestId=%s, isMirrored=%s, deviceID=%s"

    const/4 v1, 0x4

    .line 2922
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2923
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v7, Lus/zoom/zrcsdk/CallBackUI$178;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lus/zoom/zrcsdk/CallBackUI$178;-><init>(Lus/zoom/zrcsdk/CallBackUI;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v7}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onNamedPresetsOfCurrentCameraChangedTo(Ljava/util/HashMap;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 2105
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onNamedPresetsOfCurrentCameraChangedTo, numberOfPresets=%d, default_camera_preset_index=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2106
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$117;

    invoke-direct {v1, p0, p1, p2, p3}, Lus/zoom/zrcsdk/CallBackUI$117;-><init>(Lus/zoom/zrcsdk/CallBackUI;Ljava/util/HashMap;II)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onNeedWaitForHost(ZI)V
    .locals 5

    .line 970
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onNeedWaitForHost needWait=%b, waitingType=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 971
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$37;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$37;-><init>(Lus/zoom/zrcsdk/CallBackUI;ZI)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOptimizeVideoSharingResult(Z)V
    .locals 4

    .line 1453
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onOptimizeVideoSharingResult result=%b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onOtherDeviceLoginNotification(IZ)V
    .locals 3

    .line 680
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOtherDeviceLoginNotification kickedOutReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isReachMaxConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 681
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$17;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$17;-><init>(Lus/zoom/zrcsdk/CallBackUI;IZ)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPSTNCallOutNotification(I)V
    .locals 5

    .line 1252
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onPSTNCallOutNotification status=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Lus/zoom/zrcsdk/model/ZRCPSTNCallOutStatus;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1253
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$56;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$56;-><init>(Lus/zoom/zrcsdk/CallBackUI;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPSTNCallOutResult(ILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 9

    const-string v0, "onPSTNCallOutResult result=%s, requestId=%s, phoneNumber=%s, isCancelCall=%s, isSwitchToNormalMeeting=%s"

    const/4 v1, 0x5

    .line 3081
    new-array v1, v1, [Ljava/lang/Object;

    .line 3082
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 3081
    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3083
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v8, Lus/zoom/zrcsdk/CallBackUI$190;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lus/zoom/zrcsdk/CallBackUI$190;-><init>(Lus/zoom/zrcsdk/CallBackUI;ILjava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v8}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPinStatusOfScreenNotification(Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;I)V
    .locals 3

    .line 1899
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1900
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$101;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$101;-><init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPushNotificationClosed(I)V
    .locals 4

    const-string v0, "onPushNotificationClosed reason=%d"

    const/4 v1, 0x1

    .line 2735
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2736
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$163;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$163;-><init>(Lus/zoom/zrcsdk/CallBackUI;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPushNotificationConnected(I)V
    .locals 4

    const-string v0, "onPushNotificationConnected reason=%d"

    const/4 v1, 0x1

    .line 2711
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2712
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$161;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$161;-><init>(Lus/zoom/zrcsdk/CallBackUI;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPushNotificationSendWithReason(I)V
    .locals 4

    const-string v0, "onPushNotificationSendWithReason reason=%d"

    const/4 v1, 0x1

    .line 2723
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2724
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$162;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$162;-><init>(Lus/zoom/zrcsdk/CallBackUI;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onQueryWithParingCodeResult(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 2164
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryWithParingCodeResult result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",roomAddress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",roomToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lus/zoom/zrcsdk/util/StringUtil;->logToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2165
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$122;

    invoke-direct {v1, p0, p1, p2, p3}, Lus/zoom/zrcsdk/CallBackUI$122;-><init>(Lus/zoom/zrcsdk/CallBackUI;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReceivedListCalendarResult(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;",
            ">;)V"
        }
    .end annotation

    .line 2176
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedListCalendarResult result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",list="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2177
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$123;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$123;-><init>(Lus/zoom/zrcsdk/CallBackUI;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReceivedListLocationResult(ILus/zoom/zrcsdk/model/ZRCLocationTree;)V
    .locals 3

    .line 2188
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedListLocationResult result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",location="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2190
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$124;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$124;-><init>(Lus/zoom/zrcsdk/CallBackUI;ILus/zoom/zrcsdk/model/ZRCLocationTree;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReceivedPushNotificationEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "onReceivedPushNotificationEvent eventType=%s, eventID=%s"

    const/4 v1, 0x2

    .line 2759
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2760
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$165;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$165;-><init>(Lus/zoom/zrcsdk/CallBackUI;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReceivedRoomList(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/RoomInfo;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 443
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onReceivedRoomList,roomList.size=%d, billingType=%s"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 445
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/RoomInfo;

    .line 447
    iget-object v3, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v4, "room name=%s, email=%s, dn=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/RoomInfo;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/RoomInfo;->getEmail()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/RoomInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v2

    invoke-static {v3, v4, v7}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 450
    :cond_0
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lus/zoom/zrcsdk/CallBackUI$1;-><init>(Lus/zoom/zrcsdk/CallBackUI;Ljava/util/ArrayList;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRecordingConsentNotification(Z)V
    .locals 4

    const-string v0, "onRecordingConsentNotification is_show=%s"

    const/4 v1, 0x1

    .line 2843
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2844
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$172;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$172;-><init>(Lus/zoom/zrcsdk/CallBackUI;Z)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRefreshXmppTokenFinished(ILjava/lang/String;)V
    .locals 4

    const-string v0, "onRefreshXmppTokenFinished: %d"

    const/4 v1, 0x1

    .line 2831
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2832
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$171;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$171;-><init>(Lus/zoom/zrcsdk/CallBackUI;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRemoteControlCalendarEvent(Z)V
    .locals 4

    const-string v0, "onRemoteControlCalendarEvent refresh=%s"

    const/4 v1, 0x1

    .line 2795
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2796
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$168;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$168;-><init>(Lus/zoom/zrcsdk/CallBackUI;Z)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRemoteControlRestartRoom(ZI)V
    .locals 4

    const-string v0, "onRemoteControlRestartRoom restart=%s, delayInSeconds=%d"

    const/4 v1, 0x2

    .line 2807
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2808
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$169;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$169;-><init>(Lus/zoom/zrcsdk/CallBackUI;ZI)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRoomSystemCallingStatusNotification(I)V
    .locals 3

    .line 1597
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRoomSystemCallingStatusNotification, status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1598
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$79;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$79;-><init>(Lus/zoom/zrcsdk/CallBackUI;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRoomSystemCallingUserInfoNotification(ILjava/lang/String;)V
    .locals 3

    .line 1610
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRoomSystemCallingUserInfoNotification, userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", userName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1611
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$80;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$80;-><init>(Lus/zoom/zrcsdk/CallBackUI;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSIPCallForegroundCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 3

    .line 1864
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSIPCallForegroundCallNotification() called with: call = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1865
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$98;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$98;-><init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSIPCallInviteToJoinMeetingNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 3

    .line 1852
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSIPCallInviteToJoinMeetingNotification() called with: call = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1853
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$97;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$97;-><init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSIPCallMergeCallResultNotification(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1840
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSIPCallMergeCallResultNotification() called with: result = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], srcCallId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], dstCallId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1841
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$96;

    invoke-direct {v1, p0, p1, p2, p3}, Lus/zoom/zrcsdk/CallBackUI$96;-><init>(Lus/zoom/zrcsdk/CallBackUI;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSIPCallStatusNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;I)V
    .locals 5

    .line 1741
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onSIPCallStatusNotification CallStatus=%s, sipCall=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Lus/zoom/zrcsdk/model/ZRCSIPCallStatus;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1742
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$88;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$88;-><init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSIPCallTerminatedNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;I)V
    .locals 3

    .line 1728
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSIPCallTerminatedNotification reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ZRCIncomingSIPCall is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1729
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$87;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$87;-><init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSIPCallTransferResultNotification(ILus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 3

    .line 1816
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSIPCallTransferResultNotification() called with: result = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], call = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1817
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$94;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$94;-><init>(Lus/zoom/zrcsdk/CallBackUI;ILus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSIPCallUpgradeMeetingResultNotification(ILus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 3

    .line 1828
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSIPCallUpgradeMeetingResultNotification() called with: result = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], call = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1829
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$95;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$95;-><init>(Lus/zoom/zrcsdk/CallBackUI;ILus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onScreenInformationNotification(II)V
    .locals 4

    .line 1701
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the screen info is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1702
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the screen attached with cec info is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1703
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$85;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$85;-><init>(Lus/zoom/zrcsdk/CallBackUI;II)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onScreenResolutionStatusChangedTo(I)V
    .locals 3

    .line 2336
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenResolutionStatusChangedTo status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2337
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$136;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$136;-><init>(Lus/zoom/zrcsdk/CallBackUI;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSelectedVirtualBackgroundNotification(Ljava/lang/String;)V
    .locals 3

    const-string v0, "onSelectedVirtualBackgroundNotification, select image id=%s"

    const/4 v1, 0x1

    .line 3411
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3412
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$212;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$212;-><init>(Lus/zoom/zrcsdk/CallBackUI;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSendEmailResult(I)V
    .locals 5

    .line 1472
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onSendEmailResult result=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1473
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$71;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$71;-><init>(Lus/zoom/zrcsdk/CallBackUI;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSendFeedbackFinisheResult(I)V
    .locals 5

    .line 1499
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onSendFeedbackFinisheResult result=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1500
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$73;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$73;-><init>(Lus/zoom/zrcsdk/CallBackUI;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSendProblemReportNotification(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1513
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSendProblemReportNotification "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1514
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v8, Lus/zoom/zrcsdk/CallBackUI$74;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lus/zoom/zrcsdk/CallBackUI$74;-><init>(Lus/zoom/zrcsdk/CallBackUI;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSendReportResult(I)V
    .locals 3

    .line 1486
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the send report result is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1487
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$72;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$72;-><init>(Lus/zoom/zrcsdk/CallBackUI;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSendWithReason(I)V
    .locals 5

    .line 926
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onSendWithReason reason=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 927
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$34;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$34;-><init>(Lus/zoom/zrcsdk/CallBackUI;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSendZoomRoomsProblemReportResult(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    move-object v8, p0

    .line 1458
    iget-object v0, v8, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onSendZoomRoomsProblemReportResult result=%b, requestId=%s, email=*, subject=*, body=*, caseId=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p6, v2, v3

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1459
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v9

    new-instance v10, Lus/zoom/zrcsdk/CallBackUI$70;

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lus/zoom/zrcsdk/CallBackUI$70;-><init>(Lus/zoom/zrcsdk/CallBackUI;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSetCloudRecordingNotificationEmailResult(I)V
    .locals 5

    .line 1547
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onSetCloudRecordingNotificationEmailResult result=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1548
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$75;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$75;-><init>(Lus/zoom/zrcsdk/CallBackUI;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSetMeetingPasswordResult(ZLjava/lang/String;)V
    .locals 4

    const-string v0, "onSetMeetingPasswordResult result=%s, requestId=%s"

    const/4 v1, 0x2

    .line 2935
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2936
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object p2

    new-instance v0, Lus/zoom/zrcsdk/CallBackUI$179;

    invoke-direct {v0, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$179;-><init>(Lus/zoom/zrcsdk/CallBackUI;Z)V

    invoke-virtual {p2, v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSetMeetingRecordingResult(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1309
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onSetMeetingRecordingResult result=%b, requestId=%s, recordingNotificationEmail=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 1310
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    .line 1309
    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1311
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$60;

    invoke-direct {v1, p0, p1, p2, p3}, Lus/zoom/zrcsdk/CallBackUI$60;-><init>(Lus/zoom/zrcsdk/CallBackUI;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSetMicrophoneVolumeResult(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 4

    const-string v0, "onSetMicrophoneVolumeResult result=%s, requestId=%s, deviceId=%s, volume=%s"

    const/4 v1, 0x4

    .line 3026
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 p2, 0x2

    aput-object p3, v1, p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3027
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object p2

    new-instance v0, Lus/zoom/zrcsdk/CallBackUI$186;

    invoke-direct {v0, p0, p1, p3, p4}, Lus/zoom/zrcsdk/CallBackUI$186;-><init>(Lus/zoom/zrcsdk/CallBackUI;ILjava/lang/String;I)V

    invoke-virtual {p2, v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSetSpeakerVolumeResult(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 4

    const-string v0, "onSetSpeakerVolumeResult result=%s, requestId=%s, deviceId=%s, volume=%s"

    const/4 v1, 0x4

    .line 3039
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 p2, 0x2

    aput-object p3, v1, p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3040
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object p2

    new-instance v0, Lus/zoom/zrcsdk/CallBackUI$187;

    invoke-direct {v0, p0, p1, p3, p4}, Lus/zoom/zrcsdk/CallBackUI$187;-><init>(Lus/zoom/zrcsdk/CallBackUI;ILjava/lang/String;I)V

    invoke-virtual {p2, v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onShareBlackMagicResult(Z)V
    .locals 5

    .line 1324
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onShareBlackMagicResult result=%b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1325
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$61;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$61;-><init>(Lus/zoom/zrcsdk/CallBackUI;Z)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onShareCameraResult(Z)V
    .locals 3

    .line 2312
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShareCameraResult result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2313
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$134;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$134;-><init>(Lus/zoom/zrcsdk/CallBackUI;Z)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onShowSharingInstructionResult(ILjava/lang/String;ZZZI)V
    .locals 8

    const-string v0, "onShowSharingInstructionResult result=%s, requestId=%s, is_show_instruction=%s, is_laptop_instruction=%s, switch_to_normal_meeting=%s, instruction_type=%s"

    const/4 v1, 0x6

    .line 3053
    new-array v1, v1, [Ljava/lang/Object;

    .line 3054
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v2, 0x4

    aput-object p2, v1, v2

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x5

    aput-object p2, v1, v2

    .line 3053
    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3055
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object p2

    new-instance v7, Lus/zoom/zrcsdk/CallBackUI$188;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lus/zoom/zrcsdk/CallBackUI$188;-><init>(Lus/zoom/zrcsdk/CallBackUI;IZZZI)V

    invoke-virtual {p2, v7}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onShowUpcomingMeetingAlertResult(ILjava/lang/String;ZLjava/lang/String;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 9

    const-string v0, "onShowUpcomingMeetingAlertResult result=%s, requestId=%s, isDelayed=%s, voiceCommandPrompt=%s, zrcMeetingListItem=%s"

    const/4 v1, 0x5

    .line 3123
    new-array v1, v1, [Ljava/lang/Object;

    .line 3124
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    .line 3123
    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3125
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v8, Lus/zoom/zrcsdk/CallBackUI$193;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lus/zoom/zrcsdk/CallBackUI$193;-><init>(Lus/zoom/zrcsdk/CallBackUI;ILjava/lang/String;ZLjava/lang/String;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    invoke-virtual {v0, v8}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSinkDownloadFile(Ljava/lang/String;I)V
    .locals 5

    .line 2008
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onSinkDownloadFile result=%d, %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2009
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$110;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$110;-><init>(Lus/zoom/zrcsdk/CallBackUI;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSinkSendClientLogs(I)V
    .locals 3

    .line 2384
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSinkSendClientLogs result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2385
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$140;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$140;-><init>(Lus/zoom/zrcsdk/CallBackUI;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSipDialOutResult(ILjava/lang/String;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 3

    .line 1804
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSipDialOutResult() called with: result = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], requestId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], callInfo = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1805
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$93;

    invoke-direct {v1, p0, p1, p2, p3}, Lus/zoom/zrcsdk/CallBackUI$93;-><init>(Lus/zoom/zrcsdk/CallBackUI;ILjava/lang/String;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSpeakerTestingNotification(IZ)V
    .locals 5

    .line 694
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onSpeakerTestingNotification volume=%d, ended=%b"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 695
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$18;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$18;-><init>(Lus/zoom/zrcsdk/CallBackUI;IZ)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSpeakerTestingResult(IFZ)V
    .locals 5

    .line 734
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onSpeakerTestingResult result=%d, duration=%f, stop=%b"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 735
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$21;

    invoke-direct {v1, p0, p1, p2, p3}, Lus/zoom/zrcsdk/CallBackUI$21;-><init>(Lus/zoom/zrcsdk/CallBackUI;IFZ)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSpotlightStatusNotification(Lus/zoom/zrcsdk/model/ZRCSpotlightStatus;)V
    .locals 3

    .line 1923
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSpotlightStatusNotification status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1924
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$103;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$103;-><init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZRCSpotlightStatus;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStartInstantMeetingNotification(ZI)V
    .locals 5

    .line 638
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onStartInstantMeetingNotification, success=%b, availableMinutes=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 639
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$14;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$14;-><init>(Lus/zoom/zrcsdk/CallBackUI;ZI)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStartMeetingResult(ZLjava/lang/String;)V
    .locals 5

    .line 1387
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onStartMeetingResult result=%b, requestId=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1388
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$65;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$65;-><init>(Lus/zoom/zrcsdk/CallBackUI;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStartPmiResult(ZLjava/lang/String;ILus/zoom/zrcsdk/model/ZRCMeetingListItem;Ljava/lang/String;)V
    .locals 9

    .line 1373
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onStartPmiResult result=%b, requestId=%s, meetingType=%s, meetinglistItem=%s, meetingNumber=%s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    .line 1374
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p3}, Lus/zoom/zrcsdk/model/ZRCMeetingType;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    .line 1373
    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1375
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v8, Lus/zoom/zrcsdk/CallBackUI$64;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lus/zoom/zrcsdk/CallBackUI$64;-><init>(Lus/zoom/zrcsdk/CallBackUI;ZLjava/lang/String;ILus/zoom/zrcsdk/model/ZRCMeetingListItem;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStartRecievingLegacyRoomList(Z)V
    .locals 2

    .line 1561
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$76;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$76;-><init>(Lus/zoom/zrcsdk/CallBackUI;Z)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStartSharingMeetingNotification(Z)V
    .locals 5

    .line 1440
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onStartSharingMeetingNotification result=%b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1441
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$69;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$69;-><init>(Lus/zoom/zrcsdk/CallBackUI;Z)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStoreEndPointsToDB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 2449
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->getContext()Lus/zoom/zrcsdk/ContextImp;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "zrc"

    .line 2451
    invoke-interface {v0, v1}, Lus/zoom/zrcsdk/ContextImp;->getSharedPreferences(Ljava/lang/String;)Lus/zoom/zrcsdk/SharedPreferencesImp;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2453
    iget-object p1, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string p2, "onStoreEndPointsToDB: the sharedPreferences is null"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 2456
    :cond_0
    invoke-interface {v0}, Lus/zoom/zrcsdk/SharedPreferencesImp;->edit()Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2458
    iget-object p1, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string p2, "onStoreEndPointsToDB: the editor is null"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v2, "EndPointsToDB"

    const-string v3, "store to DB: %s=%s"

    const/4 v4, 0x2

    .line 2461
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    const/4 v1, 0x1

    aput-object p2, v4, v1

    invoke-static {v2, v3, v4}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zrc.web."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2463
    invoke-interface {v0}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->commit()V

    :cond_2
    return-void
.end method

.method public onSwitchCameraForVideoResult(Z)V
    .locals 5

    .line 1352
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onSwitchCameraForVideoResult result=%b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1353
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$63;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$63;-><init>(Lus/zoom/zrcsdk/CallBackUI;Z)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTransferSipCallResult(ILjava/lang/String;ILus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Ljava/lang/String;)V
    .locals 9

    .line 1765
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTransferSipCallResult() called with: result = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], requestId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], type = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], callInfo = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], peerUri = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1767
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v8, Lus/zoom/zrcsdk/CallBackUI$90;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lus/zoom/zrcsdk/CallBackUI$90;-><init>(Lus/zoom/zrcsdk/CallBackUI;ILjava/lang/String;ILus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTreatedCameraControlRequestNotification(ZI)V
    .locals 4

    const-string v0, "onTreatedCameraControlRequestNotification accepted=%s, userid=%d"

    const/4 v1, 0x2

    .line 2687
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2688
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$159;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$159;-><init>(Lus/zoom/zrcsdk/CallBackUI;ZI)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTreatedIncomingCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Z)V
    .locals 3

    .line 1960
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTreatedIncomingCallNotification incomingCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",accepted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1961
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$106;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$106;-><init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Z)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTreatedIncomingCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;Z)V
    .locals 3

    .line 1972
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTreatedIncomingCallNotification incomingCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",accepted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1973
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$107;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$107;-><init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;Z)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUltrasoundPlayerCandidateNotification(Ljava/lang/String;)V
    .locals 3

    const-string v0, "onUltrasoundPlayerCandidateNotification deviceId=%s"

    const/4 v1, 0x1

    .line 2948
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2949
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$180;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$180;-><init>(Lus/zoom/zrcsdk/CallBackUI;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUltrasoundWhiteListUpdated([Ljava/lang/String;)V
    .locals 3

    .line 2061
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUltrasoundWhiteListUpdated data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2062
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$114;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$114;-><init>(Lus/zoom/zrcsdk/CallBackUI;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateAirPlayBlackMagicStatus(Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;)V
    .locals 4

    .line 580
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onUpdateAirPlayBlackMagicStatus,airPlayBlackMagicStatus=%s,"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 582
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$10;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$10;-><init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateCalendarInfo(Lus/zoom/zrcsdk/model/ZRCCalendarInfo;)V
    .locals 3

    const-string v0, "onUpdateCalendarInfo: %s"

    const/4 v1, 0x1

    .line 2819
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2820
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$170;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$170;-><init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZRCCalendarInfo;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateCallOutNumbersInCalling(Ljava/lang/String;)V
    .locals 4

    .line 1138
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onUpdateCallOutNumbersInCalling number=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1139
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$48;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$48;-><init>(Lus/zoom/zrcsdk/CallBackUI;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateCameraSharingStatus(Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;)V
    .locals 3

    .line 2324
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateCameraSharingStatus result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2325
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$135;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$135;-><init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateCanRaiseHandForAttendee(Z)V
    .locals 2

    .line 2605
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$152;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$152;-><init>(Lus/zoom/zrcsdk/CallBackUI;Z)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateFeatureList(Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;)V
    .locals 4

    .line 551
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onUpdateFeatureList,featureListInfo=%s,"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 553
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$8;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$8;-><init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateFeatureListHideSelfVideo(Z)V
    .locals 3

    .line 566
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateFeatureListHideSelfVideo,supportHideSelfVideo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 568
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$9;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$9;-><init>(Lus/zoom/zrcsdk/CallBackUI;Z)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateGenericSettings(Lus/zoom/zrcsdk/model/ZRCGenericSettings;)V
    .locals 4

    .line 537
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onUpdateGenericSettings,genericSettings=%s,"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 538
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$7;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$7;-><init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZRCGenericSettings;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateInitMeetingParticipants(Ljava/util/ArrayList;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCParticipant;",
            ">;II)V"
        }
    .end annotation

    const-string v0, "onUpdateInitMeetingParticipants, total=%d, index=%d, participants=%s"

    const/4 v1, 0x3

    .line 2360
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2361
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$138;

    invoke-direct {v1, p0, p1, p2, p3}, Lus/zoom/zrcsdk/CallBackUI$138;-><init>(Lus/zoom/zrcsdk/CallBackUI;Ljava/util/ArrayList;II)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateIsOnEntryMuted(Z)V
    .locals 5

    .line 1083
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onUpdateIsOnEntryMuted isOnEntryMuted=%b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1084
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$44;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$44;-><init>(Lus/zoom/zrcsdk/CallBackUI;Z)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateLocalViewStatus(Z)V
    .locals 4

    const-string v0, "onUpdateLocalViewStatus isLocalView=%s"

    const/4 v1, 0x1

    .line 3435
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3436
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$214;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$214;-><init>(Lus/zoom/zrcsdk/CallBackUI;Z)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateMeetingAudioStatus(Lus/zoom/zrcsdk/model/ZRCAudioStatus;)V
    .locals 4

    .line 1096
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onUpdateMeetingAudioStatus audioStatus=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1097
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$45;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$45;-><init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZRCAudioStatus;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateMeetingAudioTroubleShootingStatus(Lus/zoom/zrcsdk/model/ZRCMeetingAudioTroubleShootingStatus;)V
    .locals 3

    .line 2396
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateMeetingAudioTroubleShootingStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2397
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$141;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$141;-><init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZRCMeetingAudioTroubleShootingStatus;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateMeetingChatMessageCount(I)V
    .locals 4

    const-string v0, "onUpdateMeetingChatMessageCount count=%d"

    const/4 v1, 0x1

    .line 2894
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2895
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$176;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$176;-><init>(Lus/zoom/zrcsdk/CallBackUI;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateMeetingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V
    .locals 4

    .line 1055
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onUpdateMeetingInfo meetingInfo=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1056
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$42;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$42;-><init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateMeetingList(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingListItem;",
            ">;)V"
        }
    .end annotation

    .line 595
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onUpdateMeetingList,meetingList count=%d,"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 596
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 597
    iget-object v1, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v3, "meeting(%d): %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-static {v1, v3, v4}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 599
    :cond_0
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$11;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$11;-><init>(Lus/zoom/zrcsdk/CallBackUI;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateMeetingLockStatus(Z)V
    .locals 5

    .line 1069
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onUpdateMeetingLockStatus meetingLocked=%b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1070
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$43;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$43;-><init>(Lus/zoom/zrcsdk/CallBackUI;Z)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateMeetingParticipants(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCParticipant;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onUpdateMeetingParticipants, ParticipantList= %s"

    const/4 v1, 0x1

    .line 1152
    new-array v1, v1, [Ljava/lang/Object;

    if-nez p1, :cond_0

    const-string v2, "ParticipantList is empty"

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1153
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$49;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$49;-><init>(Lus/zoom/zrcsdk/CallBackUI;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateMeetingRecordingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;)V
    .locals 4

    .line 1041
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onUpdateMeetingRecordingInfo recordingInfo=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1042
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$41;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$41;-><init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateMeetingSharingStatus(Lus/zoom/zrcsdk/model/ZRCSharingStatus;)V
    .locals 4

    .line 1124
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onUpdateMeetingSharingStatus sharingStatus=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1125
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$47;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$47;-><init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZRCSharingStatus;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateMeetingUser(ILus/zoom/zrcsdk/model/ZRCAudioStatus;)V
    .locals 4

    const-string v0, "onUpdateMeetingUserAudioStatus, userId=%d, audioStatus=%s"

    const/4 v1, 0x2

    .line 1167
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1168
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$50;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$50;-><init>(Lus/zoom/zrcsdk/CallBackUI;ILus/zoom/zrcsdk/model/ZRCAudioStatus;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateMeetingUser(ILus/zoom/zrcsdk/model/ZRCCameraControlStatus;)V
    .locals 4

    const-string v0, "onUpdateMeetingUserCameraControlStatus, userId=%d, cameraControlStatus=%s"

    const/4 v1, 0x2

    .line 1195
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1196
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$52;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$52;-><init>(Lus/zoom/zrcsdk/CallBackUI;ILus/zoom/zrcsdk/model/ZRCCameraControlStatus;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateMeetingUser(ILus/zoom/zrcsdk/model/ZRCVideoStatus;)V
    .locals 4

    const-string v0, "onUpdateMeetingUserVideoStatus userId=%d, videoStatus=%s"

    const/4 v1, 0x2

    .line 1181
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1182
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$51;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$51;-><init>(Lus/zoom/zrcsdk/CallBackUI;ILus/zoom/zrcsdk/model/ZRCVideoStatus;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateMeetingVideoLayoutStatus(ZZZZZZZZZ)V
    .locals 14

    move-object v11, p0

    .line 985
    iget-object v0, v11, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onUpdateMeetingVideoLayoutStatus canSwitchWallview=%b, isInWallview=%b, isInFloatingVideoStrip=%b, canAdjustFloatingVideo=%b,canSwitchFloatingShareContent=%b, isInFloatingShareContent=%b,canSwitchShareOnAllScreens=%b, isInShareOnAllScreens=%b,canSwitchSpeakerview=%b"

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    .line 986
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v2, v4

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v2, v4

    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v2, v4

    .line 985
    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 987
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v12

    new-instance v13, Lus/zoom/zrcsdk/CallBackUI$38;

    move-object v0, v13

    move-object v1, p0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lus/zoom/zrcsdk/CallBackUI$38;-><init>(Lus/zoom/zrcsdk/CallBackUI;ZZZZZZZZZ)V

    invoke-virtual {v12, v13}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateMeetingVideoStatus(Lus/zoom/zrcsdk/model/ZRCVideoStatus;)V
    .locals 4

    .line 1110
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onUpdateMeetingVideoStatus videoStatus=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1111
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$46;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$46;-><init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZRCVideoStatus;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateMeetingZRWSharingStatus(Lus/zoom/zrcsdk/model/ZRWSharingStatus;)V
    .locals 3

    const-string v0, "onUpdateMeetingZRWSharingStatus zrwSharingStatus=%s"

    const/4 v1, 0x1

    .line 3318
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3319
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$206;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$206;-><init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZRWSharingStatus;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateMyAudioResult(Z)V
    .locals 5

    .line 1267
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onUpdateMyAudioResult result=%b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1268
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$57;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$57;-><init>(Lus/zoom/zrcsdk/CallBackUI;Z)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateMySipPhoneAudioResult(I)V
    .locals 3

    .line 1875
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateMySipPhoneAudioResult() called with: result = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1876
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$99;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$99;-><init>(Lus/zoom/zrcsdk/CallBackUI;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateMySipPhoneAudioStatus(Z)V
    .locals 3

    .line 1753
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateMySipPhoneAudioStatus() called with: isMute = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1754
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$89;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$89;-><init>(Lus/zoom/zrcsdk/CallBackUI;Z)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateMyVideoLayoutResult(Z)V
    .locals 5

    .line 1295
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onUpdateMyVideoLayoutResult result=%b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1296
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$59;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$59;-><init>(Lus/zoom/zrcsdk/CallBackUI;Z)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateMyVideoResult(Z)V
    .locals 5

    .line 1281
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onUpdateMyVideoResult result=%b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1282
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$58;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$58;-><init>(Lus/zoom/zrcsdk/CallBackUI;Z)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateRoomInfo(Lus/zoom/zrcsdk/model/ZRCRoomInfo;)V
    .locals 4

    .line 478
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onUpdateRoomInfo,zrcRoomInfo=%s,"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 479
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$3;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$3;-><init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZRCRoomInfo;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateRoomProfiles(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;",
            ">;)V"
        }
    .end annotation

    .line 3151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateRoomProfiles profiles "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3152
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$195;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$195;-><init>(Lus/zoom/zrcsdk/CallBackUI;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateRoomResult(I)V
    .locals 3

    .line 2213
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateRoomResult result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2214
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$126;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$126;-><init>(Lus/zoom/zrcsdk/CallBackUI;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateSettingsDeviceInfo(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)V
    .locals 4

    .line 508
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onUpdateSettingsDeviceInfo,settingDevicesInfo=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 509
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$5;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$5;-><init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateShowAudioParticipants(Z)V
    .locals 3

    .line 2651
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateShowAudioParticipants status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2652
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$156;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$156;-><init>(Lus/zoom/zrcsdk/CallBackUI;Z)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateSipService(Lus/zoom/zrcsdk/model/ZRCSipService;)V
    .locals 3

    .line 1715
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateSipService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1716
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$86;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$86;-><init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZRCSipService;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateSpeakerVolume(F)V
    .locals 4

    const-string v0, "onUpdateSpeakerVolume result=%s"

    const/4 v1, 0x1

    .line 3177
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3178
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$197;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$197;-><init>(Lus/zoom/zrcsdk/CallBackUI;F)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateStandaloneZRPResources([Ljava/lang/String;)V
    .locals 4

    const-string v0, "onUpdateStandaloneZRPResources resources=%s"

    const/4 v1, 0x1

    .line 2783
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2784
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$167;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$167;-><init>(Lus/zoom/zrcsdk/CallBackUI;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateVideoPageStatus(ZZII)V
    .locals 8

    .line 1009
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onUpdateVideoPageStatus isInFirstPage=%b, isInLastPage=%b, pageVideoType=%d, videoCountInCurrentPage=%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1010
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v7, Lus/zoom/zrcsdk/CallBackUI$39;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lus/zoom/zrcsdk/CallBackUI$39;-><init>(Lus/zoom/zrcsdk/CallBackUI;ZZII)V

    invoke-virtual {v0, v7}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateVideoThumbInfo(Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)V
    .locals 3

    .line 1028
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the callback videoThumbInfo is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1029
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$40;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$40;-><init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateVirtualAudioDeviceList(Ljava/lang/String;Ljava/util/ArrayList;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "onUpdateVirtualAudioDeviceList virtualDeviceId=%s, deviceInfos=%s, action=%d"

    const/4 v1, 0x3

    .line 2906
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2907
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$177;

    invoke-direct {v1, p0, p1, p2, p3}, Lus/zoom/zrcsdk/CallBackUI$177;-><init>(Lus/zoom/zrcsdk/CallBackUI;Ljava/lang/String;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateVirtualBackgroundList(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCVirtualBackground;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v1, "onUpdateVirtualBackgroundList, virtualBackgroundList is null"

    .line 3385
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const-string v1, "onUpdateVirtualBackgroundList, list size=%s"

    const/4 v2, 0x1

    .line 3387
    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 3388
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    .line 3389
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "onUpdateVirtualBackgroundList, index=%s, item=%s"

    const/4 v5, 0x2

    .line 3392
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v4, v5}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3396
    :cond_2
    :goto_2
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$211;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$211;-><init>(Lus/zoom/zrcsdk/CallBackUI;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateWBCameraInfo(Lus/zoom/zrcsdk/model/ZMDeviceInfo;)V
    .locals 3

    const-string v0, "onUpdateWhiteboardCameraInfo, ZMDeviceInfo=%s"

    const/4 v1, 0x1

    .line 3447
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3448
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$215;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$215;-><init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZMDeviceInfo;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateWBCameraList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZMDeviceItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v1, "onUpdateWhiteboardCameraList, wbcameras list is null"

    .line 3460
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string v1, "onUpdateWhiteboardCameraList, wbcameras size=%d"

    const/4 v2, 0x1

    .line 3462
    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 3463
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    const-string v3, "onUpdateWhiteboardCameraList, index=%d, item=%s"

    const/4 v4, 0x2

    .line 3464
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3467
    :cond_1
    :goto_1
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$216;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$216;-><init>(Lus/zoom/zrcsdk/CallBackUI;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateZRCSDeviceList(IILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 3306
    invoke-static {p1, p2, p3}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;->logZRCSDeviceList(IILjava/util/List;)V

    .line 3307
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$205;

    invoke-direct {v1, p0, p1, p2, p3}, Lus/zoom/zrcsdk/CallBackUI$205;-><init>(Lus/zoom/zrcsdk/CallBackUI;IILjava/util/List;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateZoomPresenceVersion(Ljava/lang/String;)V
    .locals 4

    .line 492
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onUpdateZoomPresenceVersion,version=%s,"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 493
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/ZRCSdkContext;->setZRVersion(Ljava/lang/String;)V

    .line 495
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$4;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$4;-><init>(Lus/zoom/zrcsdk/CallBackUI;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdatedDeleteCalendarEventNotification(I)V
    .locals 3

    .line 2593
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdatedDeleteCalendarEventNotification result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2594
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$151;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$151;-><init>(Lus/zoom/zrcsdk/CallBackUI;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdatedOperationTimeStatusNotification(Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;)V
    .locals 3

    .line 1911
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the operation time status should dim screen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->isShouldDimScreenFromZR()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1912
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$102;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$102;-><init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdatedScheduleCalendarEventNotification(I)V
    .locals 3

    .line 2581
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdatedScheduleCalendarEventNotification result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2582
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$150;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$150;-><init>(Lus/zoom/zrcsdk/CallBackUI;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdatedWebSettingsNotification(Lus/zoom/zrcsdk/model/ZRCWEBSettingsInfo;Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;)V
    .locals 3

    .line 1688
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdatedWebSettingsNotification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and userprofile is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1689
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$84;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$84;-><init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZRCWEBSettingsInfo;Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpgradeSipCallToMeetingResult(ILjava/lang/String;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 3

    .line 1791
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpgradeSipCallToMeetingResult() called with: result = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], requestId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], callInfo = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1793
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$92;

    invoke-direct {v1, p0, p1, p2, p3}, Lus/zoom/zrcsdk/CallBackUI$92;-><init>(Lus/zoom/zrcsdk/CallBackUI;ILjava/lang/String;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUserChangedNotification(ILus/zoom/zrcsdk/model/ZRCParticipant;)V
    .locals 4

    const-string v0, "onUserChangedNotification, event=%d, participant=%s "

    const/4 v1, 0x2

    .line 1935
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1937
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$104;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$104;-><init>(Lus/zoom/zrcsdk/CallBackUI;ILus/zoom/zrcsdk/model/ZRCParticipant;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUserRefreshZAKReturn(ILjava/lang/String;)V
    .locals 6

    .line 2420
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onUserRefreshZAKReturn: result=%d"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2421
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onUserRefreshZAKReturn: result=%d, zak=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object p2, v3, v2

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2422
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$143;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$143;-><init>(Lus/zoom/zrcsdk/CallBackUI;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onVerifyConnectionFinished(I)V
    .locals 4

    const-string v0, "onVerifyConnectionFinished result=%d"

    const/4 v1, 0x1

    .line 2675
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2676
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$158;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$158;-><init>(Lus/zoom/zrcsdk/CallBackUI;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onVideoRequestUnmuteByhostNotification(I)V
    .locals 3

    .line 1984
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the onVideoRequestUnmuteByhostNotification "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1985
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$108;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$108;-><init>(Lus/zoom/zrcsdk/CallBackUI;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onWebLoginFinish(ILus/zoom/zrcsdk/model/LoginInfo;)V
    .locals 5

    .line 464
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onWebLoginFinish: result=%d, loginInfo=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/LoginInfo;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$2;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$2;-><init>(Lus/zoom/zrcsdk/CallBackUI;ILus/zoom/zrcsdk/model/LoginInfo;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onWebinarRoleChangedNotification(I)V
    .locals 2

    .line 1635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWebinarRoleChangedNotification zrcRoleState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lus/zoom/zrcsdk/ZRCWebinarRoleState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1636
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$82;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$82;-><init>(Lus/zoom/zrcsdk/CallBackUI;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onWindowsPasswordChanged(I)V
    .locals 4

    const-string v0, "onWindowsPasswordChanged result=%d"

    const/4 v1, 0x1

    .line 3164
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3165
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$196;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$196;-><init>(Lus/zoom/zrcsdk/CallBackUI;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onZMDeviceOperationResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    const-string v0, "onControlWhiteboardCameraResult, requestId=%s, result=%s, action_type=%s, zmd_host=%s, zmd_id=%s, zmd_a_length=%s, zmd_p_length=%s"

    const/4 v1, 0x7

    .line 3478
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p3}, Lus/zoom/zrcsdk/model/ZMDeviceItem;->actionType2String(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3479
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$217;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v3 .. v11}, Lus/zoom/zrcsdk/CallBackUI$217;-><init>(Lus/zoom/zrcsdk/CallBackUI;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onZRWPinStatusOfScreenNotification(Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;I)V
    .locals 3

    const-string v0, "onZRWPinStatusOfScreenNotification zrwPinStatusOfScreen=%s"

    const/4 v1, 0x1

    .line 3330
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3331
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$207;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$207;-><init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onZRWUserChangeNotification(II)V
    .locals 4

    const-string v0, "onZRWUserChangeNotification type=%d zrw_user_id=%d"

    const/4 v1, 0x2

    .line 3342
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3343
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$208;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrcsdk/CallBackUI$208;-><init>(Lus/zoom/zrcsdk/CallBackUI;II)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onZoomCalendarServiceBatchListEventsResult(ILjava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onZoomCalendarServiceBatchListEventsResult, result=%s, errorMessage=%s, roomMeetingLists=%d"

    const/4 v1, 0x3

    .line 3251
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v1, v5

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_1

    if-eqz p3, :cond_1

    const/4 v0, 0x0

    .line 3253
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const-string v1, "onZoomCalendarServiceBatchListEventsResult(%d): %s"

    .line 3254
    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-static {v1, v4}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3257
    :cond_1
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$202;

    invoke-direct {v1, p0, p1, p2, p3}, Lus/zoom/zrcsdk/CallBackUI$202;-><init>(Lus/zoom/zrcsdk/CallBackUI;ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onZoomCalendarServiceDeleteEventResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "onZoomCalendarServiceDeleteEventResult, result=%s, errorMessage=%s roomID=%s, eventID=%s"

    const/4 v1, 0x4

    .line 3282
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3283
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v7, Lus/zoom/zrcsdk/CallBackUI$204;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lus/zoom/zrcsdk/CallBackUI$204;-><init>(Lus/zoom/zrcsdk/CallBackUI;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onZoomCalendarServiceListEventsResult(ILjava/lang/String;Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;)V
    .locals 4

    const-string v0, "onZoomCalendarServiceListEventsResult, result=%s, errorMessage=%s, roomMeetingList=%s"

    const/4 v1, 0x3

    .line 3238
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p3}, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3239
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$201;

    invoke-direct {v1, p0, p1, p2, p3}, Lus/zoom/zrcsdk/CallBackUI$201;-><init>(Lus/zoom/zrcsdk/CallBackUI;ILjava/lang/String;Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onZoomCalendarServiceScheduleEventResult(ILjava/lang/String;Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 8

    const-string v0, "onZoomCalendarServiceScheduleEventResult, result=%s, errorMessage=%s roomID=%s, meetingListItem=%s"

    const/4 v1, 0x4

    .line 3269
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3270
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v7, Lus/zoom/zrcsdk/CallBackUI$203;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lus/zoom/zrcsdk/CallBackUI$203;-><init>(Lus/zoom/zrcsdk/CallBackUI;ILjava/lang/String;Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    invoke-virtual {v0, v7}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onZoomPresenceLoginFailed(I)V
    .locals 3

    .line 2273
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onZoomPresenceLoginFailed result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2274
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$131;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrcsdk/CallBackUI$131;-><init>(Lus/zoom/zrcsdk/CallBackUI;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onZoomPresenceLoginWithGoogle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 2261
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onZoomPresenceLoginWithGoogle refreshToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lus/zoom/zrcsdk/util/StringUtil;->logToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", roomEmail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", clientID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", clientSecret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", roomToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Lus/zoom/zrcsdk/util/StringUtil;->logToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2262
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v8, Lus/zoom/zrcsdk/CallBackUI$130;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lus/zoom/zrcsdk/CallBackUI$130;-><init>(Lus/zoom/zrcsdk/CallBackUI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onZoomPresenceLoginWithZoom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 2249
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onZoomPresenceLoginWithZoom refreshToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lus/zoom/zrcsdk/util/StringUtil;->logToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", roomEmail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", roomToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lus/zoom/zrcsdk/util/StringUtil;->logToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2250
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$129;

    invoke-direct {v1, p0, p1, p2, p3}, Lus/zoom/zrcsdk/CallBackUI$129;-><init>(Lus/zoom/zrcsdk/CallBackUI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onZoomPresenceSignedOutNotification()V
    .locals 3

    .line 722
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->TAG:Ljava/lang/String;

    const-string v1, "onZoomPresenceSignedOutNotification"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 723
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$20;

    invoke-direct {v1, p0}, Lus/zoom/zrcsdk/CallBackUI$20;-><init>(Lus/zoom/zrcsdk/CallBackUI;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public pullLoginInfoFromWeb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;ZZZZZZZZZLjava/util/ArrayList;IIIZIIIZIIZLjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;JJJIJZIZ)V
    .locals 55
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZZ",
            "Ljava/lang/String;",
            "ZZZZZZZZZ",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/CountryCode;",
            ">;IIIZIIIZIIZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZ",
            "Ljava/lang/String;",
            "JJJIJZIZ)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    move/from16 v20, p19

    move-object/from16 v21, p20

    move/from16 v22, p21

    move/from16 v23, p22

    move/from16 v24, p23

    move/from16 v25, p24

    move/from16 v26, p25

    move/from16 v27, p26

    move/from16 v28, p27

    move/from16 v29, p28

    move/from16 v30, p29

    move/from16 v31, p30

    move/from16 v32, p31

    move-object/from16 v33, p32

    move-object/from16 v34, p33

    move/from16 v35, p34

    move/from16 v36, p35

    move/from16 v37, p36

    move/from16 v38, p37

    move-object/from16 v39, p38

    move-wide/from16 v40, p39

    move-wide/from16 v42, p41

    move-wide/from16 v44, p43

    move/from16 v46, p45

    move-wide/from16 v47, p46

    move/from16 v49, p48

    move/from16 v50, p49

    move/from16 v51, p50

    .line 1661
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    move-object/from16 v52, v1

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$83;

    move-object/from16 v53, v0

    move-object v0, v1

    move-object/from16 v54, v1

    move-object/from16 v1, v52

    invoke-direct/range {v0 .. v51}, Lus/zoom/zrcsdk/CallBackUI$83;-><init>(Lus/zoom/zrcsdk/CallBackUI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;ZZZZZZZZZLjava/util/ArrayList;IIIZIIIZIIZLjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;JJJIJZIZ)V

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeCalendarEventListener(Lus/zoom/zrcsdk/ICalendarEventListener;)V
    .locals 1

    .line 400
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->calendarEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeCameraControlListener(Lus/zoom/zrcsdk/CameraControlListener;)V
    .locals 2

    .line 334
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->cameraControlListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 335
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 336
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/CameraControlListener;

    if-ne v1, p1, :cond_0

    .line 338
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_1
    return-void
.end method

.method public removeCertItemVerifyFailedListener(Lus/zoom/zrcsdk/ICertItemVerifyFailedListener;)V
    .locals 1

    .line 382
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->certItemVerifyFailedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeCreateRoomListener(Lus/zoom/zrcsdk/ICreateRoomListener;)V
    .locals 2

    .line 350
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->createRoomListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 351
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 352
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/ICreateRoomListener;

    if-ne v1, p1, :cond_0

    .line 354
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_1
    return-void
.end method

.method public removeFileDownloadListener(Lus/zoom/zrcsdk/IFileDownloadListener;)V
    .locals 2

    .line 302
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->fileDownloadListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 303
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 304
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/IFileDownloadListener;

    if-ne v1, p1, :cond_0

    .line 306
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_1
    return-void
.end method

.method public removeGoogleListener(Lus/zoom/zrcsdk/IGoogleEventListener;)V
    .locals 2

    .line 196
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->googleListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 197
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/IGoogleEventListener;

    if-ne v1, p1, :cond_0

    .line 200
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_1
    return-void
.end method

.method public removeLoginListener(Lus/zoom/zrcsdk/ILoginListener;)V
    .locals 2

    .line 166
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 167
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/ILoginListener;

    if-ne v1, p1, :cond_0

    .line 170
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_1
    return-void
.end method

.method public removeMeetingShareEventListener(Lus/zoom/zrcsdk/IMeetingShareEventListener;)V
    .locals 1

    .line 409
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->meetingShareEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeMicrophoneTestRecordingListener(Lus/zoom/zrcsdk/IMicrophoneTestRecordingListener;)V
    .locals 1

    .line 391
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->microphoneTestRecordingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removePtEventListener(Lus/zoom/zrcsdk/IPtEventListener;)V
    .locals 2

    .line 211
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->ptListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 212
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/IPtEventListener;

    if-ne v1, p1, :cond_0

    .line 215
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_1
    return-void
.end method

.method removePushNotificationEventListener(Lus/zoom/zrcsdk/IPushNotificationEventListener;)V
    .locals 1

    .line 418
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->pushNotificationEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removeReserveOtherRoomEventsListener(Lus/zoom/zrcsdk/IReserveOtherRoomEventsListener;)V
    .locals 1

    .line 438
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->reserveOtherRoomEventsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removeRoomLocationListener(Lus/zoom/zrcsdk/IRoomLocationListener;)V
    .locals 1

    .line 428
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->roomLocationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeSendClientLogListener(Lus/zoom/zrcsdk/ISendClientLogListener;)V
    .locals 2

    .line 366
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->sendClientLogListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 367
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 368
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/ISendClientLogListener;

    if-ne v1, p1, :cond_0

    .line 370
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_1
    return-void
.end method

.method public removeSipServiceListener(Lus/zoom/zrcsdk/ISipServiceListener;)V
    .locals 2

    .line 151
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->sipServiceListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 152
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/ISipServiceListener;

    if-ne v1, p1, :cond_0

    .line 155
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_1
    return-void
.end method

.method public removeUltrasoundWhiteListListener(Lus/zoom/zrcsdk/IUltrasoundWhiteListListener;)V
    .locals 2

    .line 318
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->ultrasoundWhiteListListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 319
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 320
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/IUltrasoundWhiteListListener;

    if-ne v1, p1, :cond_0

    .line 322
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_1
    return-void
.end method

.method public removeWebEventListener(Lus/zoom/zrcsdk/IWebEventListener;)V
    .locals 2

    .line 287
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->webEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 288
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/IWebEventListener;

    if-ne v1, p1, :cond_0

    .line 291
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_1
    return-void
.end method

.method public removeWebPullCallBackEventListener(Lus/zoom/zrcsdk/IWebPullCallBackListener;)V
    .locals 2

    .line 257
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->webPullCallbackListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 258
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/IWebPullCallBackListener;

    if-ne v1, p1, :cond_0

    .line 261
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_1
    return-void
.end method

.method public removeWebinarRoleChangedListener(Lus/zoom/zrcsdk/IWebinarRoleChangedListener;)V
    .locals 2

    .line 181
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->webinarListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 182
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/IWebinarRoleChangedListener;

    if-ne v1, p1, :cond_0

    .line 185
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_1
    return-void
.end method

.method public removeZRConnectionEventListener(Lus/zoom/zrcsdk/IZRConnectionEventListener;)V
    .locals 2

    .line 242
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->zrConnectionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 243
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/IZRConnectionEventListener;

    if-ne v1, p1, :cond_0

    .line 246
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_1
    return-void
.end method

.method public removeZRMeetingEventListener(Lus/zoom/zrcsdk/IMeetingEventListener;)V
    .locals 2

    .line 272
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI;->meetingEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 273
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/IMeetingEventListener;

    if-ne v1, p1, :cond_0

    .line 276
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_1
    return-void
.end method

.method public saveGoogleTokenByRefreshToken(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public saveGoogleUserProfile(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public saveGoogleUserToken(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    return-void
.end method
