.class public Lus/zoom/zrcsdk/ZRCSdkContext;
.super Ljava/lang/Object;
.source "ZRCSdkContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrcsdk/ZRCSdkContext$OnMeetingHistoryChangeListener;
    }
.end annotation


# static fields
.field private static final CALL_HISTORY_MAX_SIZE:I = 0xa


# instance fields
.field private ZRVersion:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private dialHistoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/DialHistory;",
            ">;"
        }
    .end annotation
.end field

.field private login_type:I

.field private mContext:Lus/zoom/zrcsdk/ContextImp;

.field private mHandler:Lus/zoom/zrcsdk/HandlerImp;

.field private mRequestHandler:Lus/zoom/zrcsdk/HandlerImp;

.field private meetingHistoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/MeetingHistory;",
            ">;"
        }
    .end annotation
.end field

.field private onMeetingHistoryChangeListener:Lus/zoom/zrcsdk/ZRCSdkContext$OnMeetingHistoryChangeListener;

.field private proxyInfo:Lus/zoom/zrcsdk/model/ProxyInfo;

.field private proxyViewshowing:Z

.field private proxyViewshowingNumber:I

.field private pushedActivationCode:Ljava/lang/String;

.field private pushedAutoSignInSequence:Ljava/lang/String;

.field private pushedWorkMode:I

.field private roomAddress:Ljava/lang/String;

.field private roomEmail:Ljava/lang/String;

.field private roomList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/RoomInfo;",
            ">;"
        }
    .end annotation
.end field

.field private roomToken:Ljava/lang/String;

.field private sipDialHistoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/SipDialHistory;",
            ">;"
        }
    .end annotation
.end field

.field private userEmail:Ljava/lang/String;

.field private vendorOSDeviceId:Ljava/lang/String;

.field private workMode:I

.field private zoomToken:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->pushedWorkMode:I

    .line 41
    iput v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->workMode:I

    const/4 v1, -0x1

    .line 43
    iput v1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->login_type:I

    .line 64
    iput-boolean v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->proxyViewshowing:Z

    .line 65
    iput v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->proxyViewshowingNumber:I

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrcsdk/ZRCSdkContext;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->proxyViewshowing:Z

    return p0
.end method

.method static synthetic access$100(Lus/zoom/zrcsdk/ZRCSdkContext;)Lus/zoom/zrcsdk/model/ProxyInfo;
    .locals 0

    .line 28
    iget-object p0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->proxyInfo:Lus/zoom/zrcsdk/model/ProxyInfo;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrcsdk/ZRCSdkContext;)I
    .locals 0

    .line 28
    iget p0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->proxyViewshowingNumber:I

    return p0
.end method

.method static synthetic access$208(Lus/zoom/zrcsdk/ZRCSdkContext;)I
    .locals 2

    .line 28
    iget v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->proxyViewshowingNumber:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->proxyViewshowingNumber:I

    return v0
.end method

.method static synthetic access$300(Lus/zoom/zrcsdk/ZRCSdkContext;)Lus/zoom/zrcsdk/ContextImp;
    .locals 0

    .line 28
    iget-object p0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->mContext:Lus/zoom/zrcsdk/ContextImp;

    return-object p0
.end method

.method private addDialHistory(Lus/zoom/zrcsdk/model/DialHistory;)V
    .locals 5

    .line 531
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->dialHistoryList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 532
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->dialHistoryList:Ljava/util/List;

    .line 535
    :cond_0
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->dialHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/DialHistory;

    .line 536
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/DialHistory;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/DialHistory;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lus/zoom/zrcsdk/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 537
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/DialHistory;->getDialTime()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lus/zoom/zrcsdk/model/DialHistory;->setDialTime(J)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 543
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->dialHistoryList:Ljava/util/List;

    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 545
    :cond_3
    invoke-direct {p0}, Lus/zoom/zrcsdk/ZRCSdkContext;->saveDialHistoryList()V

    return-void
.end method

.method private cleanGoogleUserAndRoomInfo()V
    .locals 4

    .line 198
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->mContext:Lus/zoom/zrcsdk/ContextImp;

    const-string v1, "zrc"

    invoke-interface {v0, v1}, Lus/zoom/zrcsdk/ContextImp;->getSharedPreferences(Ljava/lang/String;)Lus/zoom/zrcsdk/SharedPreferencesImp;

    move-result-object v0

    const-string v1, "google_user_token"

    const/4 v2, 0x0

    .line 199
    invoke-interface {v0, v1, v2}, Lus/zoom/zrcsdk/SharedPreferencesImp;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "google_roomemail"

    .line 200
    invoke-interface {v0, v3, v2}, Lus/zoom/zrcsdk/SharedPreferencesImp;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    return-void

    .line 204
    :cond_0
    invoke-interface {v0}, Lus/zoom/zrcsdk/SharedPreferencesImp;->edit()Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;

    move-result-object v0

    const-string v1, "google_user_token"

    .line 205
    invoke-interface {v0, v1}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->remove(Ljava/lang/String;)V

    const-string v1, "google_roomemail"

    .line 206
    invoke-interface {v0, v1}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->remove(Ljava/lang/String;)V

    .line 207
    invoke-interface {v0}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->commit()V

    return-void
.end method

.method private deleteRedundantDialItems()V
    .locals 2

    .line 404
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->dialHistoryList:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 407
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_1

    return-void

    .line 410
    :cond_1
    invoke-direct {p0}, Lus/zoom/zrcsdk/ZRCSdkContext;->sortDialHistoryList()V

    .line 411
    :goto_0
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->dialHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 412
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->dialHistoryList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private deleteRedundantMeetingHistoryItems()V
    .locals 2

    .line 430
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->meetingHistoryList:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 433
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_1

    return-void

    .line 436
    :cond_1
    invoke-direct {p0}, Lus/zoom/zrcsdk/ZRCSdkContext;->sortMeetingHistoryList()V

    .line 437
    :goto_0
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->meetingHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 438
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->meetingHistoryList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private deleteRedundantSipItems()V
    .locals 2

    .line 417
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->sipDialHistoryList:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 420
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_1

    return-void

    .line 423
    :cond_1
    invoke-direct {p0}, Lus/zoom/zrcsdk/ZRCSdkContext;->sortSipHistoryList()V

    .line 424
    :goto_0
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->sipDialHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 425
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->sipDialHistoryList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private loadDeviceId()V
    .locals 3

    .line 769
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->mContext:Lus/zoom/zrcsdk/ContextImp;

    const-string v1, "zrc"

    invoke-interface {v0, v1}, Lus/zoom/zrcsdk/ContextImp;->getSharedPreferences(Ljava/lang/String;)Lus/zoom/zrcsdk/SharedPreferencesImp;

    move-result-object v0

    if-nez v0, :cond_0

    .line 771
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "the sharedPreferences is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v1, "device_id"

    const-string v2, ""

    .line 775
    invoke-interface {v0, v1, v2}, Lus/zoom/zrcsdk/SharedPreferencesImp;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->deviceId:Ljava/lang/String;

    .line 776
    iget-object v1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->deviceId:Ljava/lang/String;

    invoke-static {v1}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 777
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->deviceId:Ljava/lang/String;

    .line 778
    invoke-interface {v0}, Lus/zoom/zrcsdk/SharedPreferencesImp;->edit()Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;

    move-result-object v0

    const-string v1, "device_id"

    .line 779
    iget-object v2, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->deviceId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    invoke-interface {v0}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->commit()V

    :cond_1
    return-void
.end method

.method private loadDialHistoryList()V
    .locals 3

    .line 476
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->mContext:Lus/zoom/zrcsdk/ContextImp;

    const-string v1, "zrc"

    invoke-interface {v0, v1}, Lus/zoom/zrcsdk/ContextImp;->getSharedPreferences(Ljava/lang/String;)Lus/zoom/zrcsdk/SharedPreferencesImp;

    move-result-object v0

    if-nez v0, :cond_0

    .line 478
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "the sharedPreferences is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v1, "dial_history_list"

    const-string v2, ""

    .line 481
    invoke-interface {v0, v1, v2}, Lus/zoom/zrcsdk/SharedPreferencesImp;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 482
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 483
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 484
    new-instance v2, Lus/zoom/zrcsdk/ZRCSdkContext$1;

    invoke-direct {v2, p0}, Lus/zoom/zrcsdk/ZRCSdkContext$1;-><init>(Lus/zoom/zrcsdk/ZRCSdkContext;)V

    .line 485
    invoke-virtual {v2}, Lus/zoom/zrcsdk/ZRCSdkContext$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 486
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->dialHistoryList:Ljava/util/List;

    .line 487
    invoke-direct {p0}, Lus/zoom/zrcsdk/ZRCSdkContext;->sortDialHistoryList()V

    :cond_1
    return-void
.end method

.method private loadLoginType()V
    .locals 3

    .line 270
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->mContext:Lus/zoom/zrcsdk/ContextImp;

    const-string v1, "zrc"

    invoke-interface {v0, v1}, Lus/zoom/zrcsdk/ContextImp;->getSharedPreferences(Ljava/lang/String;)Lus/zoom/zrcsdk/SharedPreferencesImp;

    move-result-object v0

    if-nez v0, :cond_0

    .line 272
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "the sharedPreferences is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v1, "login_type"

    const/4 v2, -0x1

    .line 275
    invoke-interface {v0, v1, v2}, Lus/zoom/zrcsdk/SharedPreferencesImp;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->setLogin_type(I)V

    return-void
.end method

.method private loadLoginUserAndRoomInfo()V
    .locals 3

    .line 222
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->mContext:Lus/zoom/zrcsdk/ContextImp;

    const-string v1, "zrc"

    invoke-interface {v0, v1}, Lus/zoom/zrcsdk/ContextImp;->getSharedPreferences(Ljava/lang/String;)Lus/zoom/zrcsdk/SharedPreferencesImp;

    move-result-object v0

    if-nez v0, :cond_0

    .line 224
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "the sharedPreferences is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v1, "userEmail"

    const-string v2, ""

    .line 227
    invoke-interface {v0, v1, v2}, Lus/zoom/zrcsdk/SharedPreferencesImp;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->userEmail:Ljava/lang/String;

    const-string v1, "roomEmail"

    const-string v2, ""

    .line 228
    invoke-interface {v0, v1, v2}, Lus/zoom/zrcsdk/SharedPreferencesImp;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->roomEmail:Ljava/lang/String;

    const-string v1, "roomAddress"

    const-string v2, ""

    .line 229
    invoke-interface {v0, v1, v2}, Lus/zoom/zrcsdk/SharedPreferencesImp;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->roomAddress:Ljava/lang/String;

    const-string v1, "roomToken"

    const-string v2, ""

    .line 230
    invoke-interface {v0, v1, v2}, Lus/zoom/zrcsdk/SharedPreferencesImp;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->roomToken:Ljava/lang/String;

    const-string v1, "zoomToken"

    const-string v2, ""

    .line 231
    invoke-interface {v0, v1, v2}, Lus/zoom/zrcsdk/SharedPreferencesImp;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->zoomToken:Ljava/lang/String;

    const-string v1, "google_roomemail"

    const-string v2, ""

    .line 236
    invoke-interface {v0, v1, v2}, Lus/zoom/zrcsdk/SharedPreferencesImp;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->roomEmail:Ljava/lang/String;

    invoke-static {v1}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 238
    iput-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->roomEmail:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private loadMeetingHistoryList()V
    .locals 3

    .line 508
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->mContext:Lus/zoom/zrcsdk/ContextImp;

    const-string v1, "zrc"

    invoke-interface {v0, v1}, Lus/zoom/zrcsdk/ContextImp;->getSharedPreferences(Ljava/lang/String;)Lus/zoom/zrcsdk/SharedPreferencesImp;

    move-result-object v0

    if-nez v0, :cond_0

    .line 510
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "the sharedPreferences is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v1, "meeting_history_list"

    const-string v2, ""

    .line 513
    invoke-interface {v0, v1, v2}, Lus/zoom/zrcsdk/SharedPreferencesImp;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 514
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 515
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 516
    new-instance v2, Lus/zoom/zrcsdk/ZRCSdkContext$3;

    invoke-direct {v2, p0}, Lus/zoom/zrcsdk/ZRCSdkContext$3;-><init>(Lus/zoom/zrcsdk/ZRCSdkContext;)V

    .line 517
    invoke-virtual {v2}, Lus/zoom/zrcsdk/ZRCSdkContext$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 518
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->meetingHistoryList:Ljava/util/List;

    .line 519
    invoke-direct {p0}, Lus/zoom/zrcsdk/ZRCSdkContext;->sortMeetingHistoryList()V

    :cond_1
    return-void
.end method

.method private loadProxyinfo()V
    .locals 3

    .line 280
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->mContext:Lus/zoom/zrcsdk/ContextImp;

    const-string v1, "zrc"

    invoke-interface {v0, v1}, Lus/zoom/zrcsdk/ContextImp;->getSharedPreferences(Ljava/lang/String;)Lus/zoom/zrcsdk/SharedPreferencesImp;

    move-result-object v0

    if-nez v0, :cond_0

    .line 282
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "the sharedPreferences is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v1, "proxy"

    const-string v2, ""

    .line 285
    invoke-interface {v0, v1, v2}, Lus/zoom/zrcsdk/SharedPreferencesImp;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    new-instance v0, Lus/zoom/zrcsdk/model/ProxyInfo;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/ProxyInfo;-><init>()V

    iput-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->proxyInfo:Lus/zoom/zrcsdk/model/ProxyInfo;

    goto :goto_0

    .line 289
    :cond_1
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lus/zoom/zrcsdk/model/ProxyInfo;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ProxyInfo;

    iput-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->proxyInfo:Lus/zoom/zrcsdk/model/ProxyInfo;

    :goto_0
    return-void
.end method

.method private loadPushedAutoSignInData()V
    .locals 4

    .line 868
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->mContext:Lus/zoom/zrcsdk/ContextImp;

    const-string v1, "zrc"

    invoke-interface {v0, v1}, Lus/zoom/zrcsdk/ContextImp;->getSharedPreferences(Ljava/lang/String;)Lus/zoom/zrcsdk/SharedPreferencesImp;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 870
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "the sharedPreferences is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v2, "pushed_activation_code"

    const-string v3, ""

    .line 873
    invoke-interface {v0, v2, v3}, Lus/zoom/zrcsdk/SharedPreferencesImp;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->pushedActivationCode:Ljava/lang/String;

    const-string v2, "pushed_work_mode"

    .line 874
    invoke-interface {v0, v2, v1}, Lus/zoom/zrcsdk/SharedPreferencesImp;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->pushedWorkMode:I

    const-string v1, "pushed_auto_sign_in_sequence"

    const-string v2, ""

    .line 875
    invoke-interface {v0, v1, v2}, Lus/zoom/zrcsdk/SharedPreferencesImp;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->pushedAutoSignInSequence:Ljava/lang/String;

    return-void
.end method

.method private loadSipDialHistoryList()V
    .locals 3

    .line 492
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->mContext:Lus/zoom/zrcsdk/ContextImp;

    const-string v1, "zrc"

    invoke-interface {v0, v1}, Lus/zoom/zrcsdk/ContextImp;->getSharedPreferences(Ljava/lang/String;)Lus/zoom/zrcsdk/SharedPreferencesImp;

    move-result-object v0

    if-nez v0, :cond_0

    .line 494
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "the sharedPreferences is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v1, "sip_dial_history_list"

    const-string v2, ""

    .line 497
    invoke-interface {v0, v1, v2}, Lus/zoom/zrcsdk/SharedPreferencesImp;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 498
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 499
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 500
    new-instance v2, Lus/zoom/zrcsdk/ZRCSdkContext$2;

    invoke-direct {v2, p0}, Lus/zoom/zrcsdk/ZRCSdkContext$2;-><init>(Lus/zoom/zrcsdk/ZRCSdkContext;)V

    .line 501
    invoke-virtual {v2}, Lus/zoom/zrcsdk/ZRCSdkContext$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 502
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->sipDialHistoryList:Ljava/util/List;

    .line 503
    invoke-direct {p0}, Lus/zoom/zrcsdk/ZRCSdkContext;->sortSipHistoryList()V

    :cond_1
    return-void
.end method

.method private loadWorkMode()V
    .locals 3

    .line 836
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->mContext:Lus/zoom/zrcsdk/ContextImp;

    const-string v1, "zrc"

    invoke-interface {v0, v1}, Lus/zoom/zrcsdk/ContextImp;->getSharedPreferences(Ljava/lang/String;)Lus/zoom/zrcsdk/SharedPreferencesImp;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 838
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "the sharedPreferences is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v2, "work_mode"

    .line 841
    invoke-interface {v0, v2, v1}, Lus/zoom/zrcsdk/SharedPreferencesImp;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->workMode:I

    return-void
.end method

.method private saveDialHistoryList()V
    .locals 3

    .line 341
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->dialHistoryList:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->mContext:Lus/zoom/zrcsdk/ContextImp;

    const-string v1, "zrc"

    invoke-interface {v0, v1}, Lus/zoom/zrcsdk/ContextImp;->getSharedPreferences(Ljava/lang/String;)Lus/zoom/zrcsdk/SharedPreferencesImp;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 346
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "the sharedPreferences is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 349
    :cond_1
    invoke-interface {v0}, Lus/zoom/zrcsdk/SharedPreferencesImp;->edit()Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;

    move-result-object v0

    if-nez v0, :cond_2

    .line 351
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "the editor is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 354
    :cond_2
    invoke-direct {p0}, Lus/zoom/zrcsdk/ZRCSdkContext;->deleteRedundantDialItems()V

    .line 355
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 356
    iget-object v2, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->dialHistoryList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dial_history_list"

    .line 357
    invoke-interface {v0, v2, v1}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-interface {v0}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->commit()V

    return-void
.end method

.method private saveMeetingHistoryList()V
    .locals 3

    .line 383
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->meetingHistoryList:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->mContext:Lus/zoom/zrcsdk/ContextImp;

    const-string v1, "zrc"

    invoke-interface {v0, v1}, Lus/zoom/zrcsdk/ContextImp;->getSharedPreferences(Ljava/lang/String;)Lus/zoom/zrcsdk/SharedPreferencesImp;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 388
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "the sharedPreferences is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 391
    :cond_1
    invoke-interface {v0}, Lus/zoom/zrcsdk/SharedPreferencesImp;->edit()Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;

    move-result-object v0

    if-nez v0, :cond_2

    .line 393
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "the editor is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 396
    :cond_2
    invoke-direct {p0}, Lus/zoom/zrcsdk/ZRCSdkContext;->deleteRedundantMeetingHistoryItems()V

    .line 397
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 398
    iget-object v2, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->meetingHistoryList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "meeting_history_list"

    .line 399
    invoke-interface {v0, v2, v1}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-interface {v0}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->commit()V

    return-void
.end method

.method private saveSipDialHistoryList()V
    .locals 3

    .line 362
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->sipDialHistoryList:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->mContext:Lus/zoom/zrcsdk/ContextImp;

    const-string v1, "zrc"

    invoke-interface {v0, v1}, Lus/zoom/zrcsdk/ContextImp;->getSharedPreferences(Ljava/lang/String;)Lus/zoom/zrcsdk/SharedPreferencesImp;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 367
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "the sharedPreferences is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 370
    :cond_1
    invoke-interface {v0}, Lus/zoom/zrcsdk/SharedPreferencesImp;->edit()Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;

    move-result-object v0

    if-nez v0, :cond_2

    .line 372
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "the editor is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 375
    :cond_2
    invoke-direct {p0}, Lus/zoom/zrcsdk/ZRCSdkContext;->deleteRedundantSipItems()V

    .line 376
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 377
    iget-object v2, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->sipDialHistoryList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sip_dial_history_list"

    .line 378
    invoke-interface {v0, v2, v1}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-interface {v0}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->commit()V

    return-void
.end method

.method private sortDialHistoryList()V
    .locals 2

    .line 443
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->dialHistoryList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 444
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->dialHistoryList:Ljava/util/List;

    return-void

    .line 447
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    return-void

    .line 450
    :cond_1
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->dialHistoryList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method private sortMeetingHistoryList()V
    .locals 2

    .line 465
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->meetingHistoryList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->meetingHistoryList:Ljava/util/List;

    return-void

    .line 469
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    return-void

    .line 472
    :cond_1
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->meetingHistoryList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method private sortSipHistoryList()V
    .locals 2

    .line 454
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->sipDialHistoryList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 455
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->sipDialHistoryList:Ljava/util/List;

    return-void

    .line 458
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    return-void

    .line 461
    :cond_1
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->sipDialHistoryList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public addDialHistory(Ljava/lang/String;)V
    .locals 3

    .line 524
    new-instance v0, Lus/zoom/zrcsdk/model/DialHistory;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/DialHistory;-><init>()V

    .line 525
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/DialHistory;->setNumber(Ljava/lang/String;)V

    .line 526
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrcsdk/model/DialHistory;->setDialTime(J)V

    .line 527
    invoke-direct {p0, v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->addDialHistory(Lus/zoom/zrcsdk/model/DialHistory;)V

    return-void
.end method

.method public addMeetingHistory(Lus/zoom/zrcsdk/model/MeetingHistory;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 574
    :cond_0
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->meetingHistoryList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 575
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->meetingHistoryList:Ljava/util/List;

    .line 578
    :cond_1
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->meetingHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/MeetingHistory;

    .line 579
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/MeetingHistory;->getMeetingHistoryID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/MeetingHistory;->getMeetingHistoryID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lus/zoom/zrcsdk/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 580
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->meetingHistoryList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 585
    :goto_0
    iget-object v1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->meetingHistoryList:Ljava/util/List;

    invoke-interface {v1, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 586
    invoke-direct {p0}, Lus/zoom/zrcsdk/ZRCSdkContext;->saveMeetingHistoryList()V

    .line 587
    iget-object v1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->onMeetingHistoryChangeListener:Lus/zoom/zrcsdk/ZRCSdkContext$OnMeetingHistoryChangeListener;

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    .line 589
    invoke-interface {v1, p1}, Lus/zoom/zrcsdk/ZRCSdkContext$OnMeetingHistoryChangeListener;->onChangeMeetingHistory(Lus/zoom/zrcsdk/model/MeetingHistory;)V

    goto :goto_1

    .line 591
    :cond_4
    invoke-interface {v1, p1}, Lus/zoom/zrcsdk/ZRCSdkContext$OnMeetingHistoryChangeListener;->onAddMeetingHistory(Lus/zoom/zrcsdk/model/MeetingHistory;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public addSipDialHistory(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 3

    .line 549
    new-instance v0, Lus/zoom/zrcsdk/model/SipDialHistory;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/SipDialHistory;-><init>()V

    .line 550
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/SipDialHistory;->setCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    .line 551
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrcsdk/model/SipDialHistory;->setTime(J)V

    .line 552
    iget-object p1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->sipDialHistoryList:Ljava/util/List;

    if-nez p1, :cond_0

    .line 553
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->sipDialHistoryList:Ljava/util/List;

    .line 554
    iget-object p1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->sipDialHistoryList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 556
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 557
    iget-object p1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->sipDialHistoryList:Ljava/util/List;

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 559
    :cond_1
    :goto_0
    iget-object p1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->sipDialHistoryList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_3

    .line 560
    iget-object p1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->sipDialHistoryList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/SipDialHistory;

    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/model/SipDialHistory;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 561
    iget-object p1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->sipDialHistoryList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/SipDialHistory;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/SipDialHistory;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrcsdk/model/SipDialHistory;->setTime(J)V

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 567
    :cond_3
    :goto_1
    invoke-direct {p0}, Lus/zoom/zrcsdk/ZRCSdkContext;->saveSipDialHistoryList()V

    return-void
.end method

.method public cleanLoginType()V
    .locals 3

    .line 325
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->mContext:Lus/zoom/zrcsdk/ContextImp;

    const-string v1, "zrc"

    invoke-interface {v0, v1}, Lus/zoom/zrcsdk/ContextImp;->getSharedPreferences(Ljava/lang/String;)Lus/zoom/zrcsdk/SharedPreferencesImp;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 327
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "the sharedPreferences is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 330
    :cond_0
    invoke-interface {v0}, Lus/zoom/zrcsdk/SharedPreferencesImp;->edit()Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;

    move-result-object v0

    if-nez v0, :cond_1

    .line 332
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "the edit is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v1, "login_type"

    .line 335
    invoke-interface {v0, v1}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->remove(Ljava/lang/String;)V

    .line 336
    invoke-interface {v0}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->commit()V

    const/4 v0, -0x1

    .line 337
    invoke-virtual {p0, v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->setLogin_type(I)V

    return-void
.end method

.method cleanLoginUserAndRoomInfo(Z)V
    .locals 2

    .line 243
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->mContext:Lus/zoom/zrcsdk/ContextImp;

    const-string v1, "zrc"

    invoke-interface {v0, v1}, Lus/zoom/zrcsdk/ContextImp;->getSharedPreferences(Ljava/lang/String;)Lus/zoom/zrcsdk/SharedPreferencesImp;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 245
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "the sharedPreferences is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 248
    :cond_0
    invoke-interface {v0}, Lus/zoom/zrcsdk/SharedPreferencesImp;->edit()Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;

    move-result-object v0

    if-nez v0, :cond_1

    .line 250
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "the editor is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v1, "userEmail"

    .line 253
    invoke-interface {v0, v1}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->remove(Ljava/lang/String;)V

    const-string v1, "roomEmail"

    .line 254
    invoke-interface {v0, v1}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->remove(Ljava/lang/String;)V

    const-string v1, "roomAddress"

    .line 255
    invoke-interface {v0, v1}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->remove(Ljava/lang/String;)V

    const-string v1, "roomToken"

    .line 256
    invoke-interface {v0, v1}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->remove(Ljava/lang/String;)V

    const-string v1, "zoomToken"

    .line 257
    invoke-interface {v0, v1}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->remove(Ljava/lang/String;)V

    .line 258
    invoke-interface {v0}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->commit()V

    const-string v0, ""

    .line 260
    iput-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->userEmail:Ljava/lang/String;

    const-string v0, ""

    .line 261
    iput-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->roomEmail:Ljava/lang/String;

    const-string v0, ""

    .line 262
    iput-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->zoomToken:Ljava/lang/String;

    if-nez p1, :cond_2

    const-string p1, ""

    .line 265
    iput-object p1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->roomAddress:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public clearDialHistory()V
    .locals 1

    .line 645
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->dialHistoryList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 646
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->dialHistoryList:Ljava/util/List;

    return-void

    .line 649
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 650
    invoke-direct {p0}, Lus/zoom/zrcsdk/ZRCSdkContext;->saveDialHistoryList()V

    return-void
.end method

.method public clearMeetingHistory()V
    .locals 1

    .line 663
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->meetingHistoryList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 664
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->meetingHistoryList:Ljava/util/List;

    return-void

    .line 667
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 668
    invoke-direct {p0}, Lus/zoom/zrcsdk/ZRCSdkContext;->saveMeetingHistoryList()V

    .line 669
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->onMeetingHistoryChangeListener:Lus/zoom/zrcsdk/ZRCSdkContext$OnMeetingHistoryChangeListener;

    if-eqz v0, :cond_1

    .line 670
    invoke-interface {v0}, Lus/zoom/zrcsdk/ZRCSdkContext$OnMeetingHistoryChangeListener;->onClearMeetingHistory()V

    :cond_1
    return-void
.end method

.method public clearSipDialHistory()V
    .locals 1

    .line 654
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->sipDialHistoryList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 655
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->sipDialHistoryList:Ljava/util/List;

    return-void

    .line 658
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 659
    invoke-direct {p0}, Lus/zoom/zrcsdk/ZRCSdkContext;->saveSipDialHistoryList()V

    return-void
.end method

.method public deleteDialHistoryItem(Ljava/lang/String;)V
    .locals 3

    .line 597
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->dialHistoryList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 598
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->dialHistoryList:Ljava/util/List;

    return-void

    .line 601
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/DialHistory;

    .line 602
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/DialHistory;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lus/zoom/zrcsdk/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 603
    iget-object p1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->dialHistoryList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 604
    invoke-direct {p0}, Lus/zoom/zrcsdk/ZRCSdkContext;->saveDialHistoryList()V

    return-void

    :cond_2
    return-void
.end method

.method public deleteMeetingHistory(Lus/zoom/zrcsdk/model/MeetingHistory;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 628
    :cond_0
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->meetingHistoryList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 629
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->meetingHistoryList:Ljava/util/List;

    return-void

    .line 632
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/MeetingHistory;

    .line 633
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 634
    iget-object p1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->meetingHistoryList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 635
    invoke-direct {p0}, Lus/zoom/zrcsdk/ZRCSdkContext;->saveMeetingHistoryList()V

    .line 636
    iget-object p1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->onMeetingHistoryChangeListener:Lus/zoom/zrcsdk/ZRCSdkContext$OnMeetingHistoryChangeListener;

    if-eqz p1, :cond_3

    .line 637
    invoke-interface {p1, v1}, Lus/zoom/zrcsdk/ZRCSdkContext$OnMeetingHistoryChangeListener;->onDeleteMeetingHistory(Lus/zoom/zrcsdk/model/MeetingHistory;)V

    :cond_3
    return-void

    :cond_4
    return-void
.end method

.method public deleteSipDialHistoryItem(Lus/zoom/zrcsdk/model/SipDialHistory;)V
    .locals 3

    .line 611
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->sipDialHistoryList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 612
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->sipDialHistoryList:Ljava/util/List;

    return-void

    .line 615
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/SipDialHistory;

    .line 616
    invoke-virtual {v1, p1}, Lus/zoom/zrcsdk/model/SipDialHistory;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 617
    iget-object p1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->sipDialHistoryList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 618
    invoke-direct {p0}, Lus/zoom/zrcsdk/ZRCSdkContext;->saveSipDialHistoryList()V

    return-void

    :cond_2
    return-void
.end method

.method public getContext()Lus/zoom/zrcsdk/ContextImp;
    .locals 1

    .line 115
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->mContext:Lus/zoom/zrcsdk/ContextImp;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 785
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->vendorOSDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 786
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->vendorOSDeviceId:Ljava/lang/String;

    return-object v0

    .line 788
    :cond_0
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getHandler()Lus/zoom/zrcsdk/HandlerImp;
    .locals 1

    .line 143
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->mHandler:Lus/zoom/zrcsdk/HandlerImp;

    return-object v0
.end method

.method public getLogin_type()I
    .locals 1

    .line 720
    iget v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->login_type:I

    return v0
.end method

.method public getPolicyBlockUnknownSSLCert()Ljava/lang/String;
    .locals 3

    .line 812
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->mContext:Lus/zoom/zrcsdk/ContextImp;

    const-string v1, "zrc"

    invoke-interface {v0, v1}, Lus/zoom/zrcsdk/ContextImp;->getSharedPreferences(Ljava/lang/String;)Lus/zoom/zrcsdk/SharedPreferencesImp;

    move-result-object v0

    if-nez v0, :cond_0

    .line 814
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "the sharedPreferences is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "Default"

    return-object v0

    :cond_0
    const-string v1, "policy_block_unknown_ssl_cert"

    const-string v2, "Default"

    .line 817
    invoke-interface {v0, v1, v2}, Lus/zoom/zrcsdk/SharedPreferencesImp;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProxyInfo()Lus/zoom/zrcsdk/model/ProxyInfo;
    .locals 1

    .line 69
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->proxyInfo:Lus/zoom/zrcsdk/model/ProxyInfo;

    return-object v0
.end method

.method public getProxyViewshowingNumber()I
    .locals 1

    .line 761
    iget v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->proxyViewshowingNumber:I

    return v0
.end method

.method public getPushedActivationCode()Ljava/lang/String;
    .locals 1

    .line 879
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->pushedActivationCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPushedAutoSignInSequence()Ljava/lang/String;
    .locals 1

    .line 887
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->pushedAutoSignInSequence:Ljava/lang/String;

    return-object v0
.end method

.method public getPushedWorkMode()I
    .locals 1

    .line 883
    iget v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->pushedWorkMode:I

    return v0
.end method

.method getRequestHandler()Lus/zoom/zrcsdk/HandlerImp;
    .locals 1

    .line 119
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->mRequestHandler:Lus/zoom/zrcsdk/HandlerImp;

    return-object v0
.end method

.method public getRoomEmail()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->roomEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/RoomInfo;",
            ">;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->roomList:Ljava/util/List;

    return-object v0
.end method

.method public getSortedDialHistoryList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ICallHistoryItem;",
            ">;"
        }
    .end annotation

    .line 675
    invoke-direct {p0}, Lus/zoom/zrcsdk/ZRCSdkContext;->sortDialHistoryList()V

    .line 676
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 677
    iget-object v1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->dialHistoryList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 678
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->dialHistoryList:Ljava/util/List;

    .line 680
    :cond_0
    iget-object v1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->dialHistoryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    .line 681
    iget-object v1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->dialHistoryList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public getSortedMeetingHistoryList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/MeetingHistory;",
            ">;"
        }
    .end annotation

    .line 699
    invoke-direct {p0}, Lus/zoom/zrcsdk/ZRCSdkContext;->sortMeetingHistoryList()V

    .line 700
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 701
    iget-object v1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->meetingHistoryList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 702
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->meetingHistoryList:Ljava/util/List;

    .line 704
    :cond_0
    iget-object v1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->meetingHistoryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    .line 705
    iget-object v1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->meetingHistoryList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public getSortedSipDialHistoryList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ICallHistoryItem;",
            ">;"
        }
    .end annotation

    .line 687
    invoke-direct {p0}, Lus/zoom/zrcsdk/ZRCSdkContext;->sortSipHistoryList()V

    .line 688
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 689
    iget-object v1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->sipDialHistoryList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 690
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->sipDialHistoryList:Ljava/util/List;

    .line 692
    :cond_0
    iget-object v1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->sipDialHistoryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    .line 693
    iget-object v1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->sipDialHistoryList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public getUltrasoundWhiteListJsonData()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 944
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->mContext:Lus/zoom/zrcsdk/ContextImp;

    const-string v1, "zrc"

    invoke-interface {v0, v1}, Lus/zoom/zrcsdk/ContextImp;->getSharedPreferences(Ljava/lang/String;)Lus/zoom/zrcsdk/SharedPreferencesImp;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 946
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "the sharedPreferences is null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_0
    const-string v2, "ultrasound_whitelist"

    .line 949
    invoke-interface {v0, v2, v1}, Lus/zoom/zrcsdk/SharedPreferencesImp;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseGoogleNewAppID()Z
    .locals 4

    .line 711
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->mContext:Lus/zoom/zrcsdk/ContextImp;

    const-string v1, "zrc"

    invoke-interface {v0, v1}, Lus/zoom/zrcsdk/ContextImp;->getSharedPreferences(Ljava/lang/String;)Lus/zoom/zrcsdk/SharedPreferencesImp;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 713
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "the sharedPreferences is null"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    const-string v2, "use_google_new_id"

    .line 716
    invoke-interface {v0, v2, v1}, Lus/zoom/zrcsdk/SharedPreferencesImp;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getUserEmail()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->userEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkMode()I
    .locals 1

    .line 864
    iget v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->workMode:I

    return v0
.end method

.method public getZRVersion()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->ZRVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getZoomPresenceAddress()Ljava/lang/String;
    .locals 1

    .line 796
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->roomAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getZoomPresenceToken()Ljava/lang/String;
    .locals 1

    .line 804
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->roomToken:Ljava/lang/String;

    return-object v0
.end method

.method public getZoomToken()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->zoomToken:Ljava/lang/String;

    return-object v0
.end method

.method public init(Lus/zoom/zrcsdk/ContextImp;Lus/zoom/zrcsdk/HandlerImp;Lus/zoom/zrcsdk/HandlerImp;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->mContext:Lus/zoom/zrcsdk/ContextImp;

    .line 94
    invoke-direct {p0}, Lus/zoom/zrcsdk/ZRCSdkContext;->loadDeviceId()V

    .line 95
    invoke-direct {p0}, Lus/zoom/zrcsdk/ZRCSdkContext;->loadLoginUserAndRoomInfo()V

    .line 96
    invoke-direct {p0}, Lus/zoom/zrcsdk/ZRCSdkContext;->loadDialHistoryList()V

    .line 97
    invoke-direct {p0}, Lus/zoom/zrcsdk/ZRCSdkContext;->loadSipDialHistoryList()V

    .line 98
    invoke-direct {p0}, Lus/zoom/zrcsdk/ZRCSdkContext;->loadMeetingHistoryList()V

    .line 99
    invoke-direct {p0}, Lus/zoom/zrcsdk/ZRCSdkContext;->loadLoginType()V

    .line 100
    invoke-direct {p0}, Lus/zoom/zrcsdk/ZRCSdkContext;->loadProxyinfo()V

    .line 101
    invoke-direct {p0}, Lus/zoom/zrcsdk/ZRCSdkContext;->loadWorkMode()V

    .line 102
    invoke-direct {p0}, Lus/zoom/zrcsdk/ZRCSdkContext;->loadPushedAutoSignInData()V

    .line 103
    iget-object p1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->dialHistoryList:Ljava/util/List;

    if-nez p1, :cond_0

    .line 104
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->dialHistoryList:Ljava/util/List;

    .line 107
    :cond_0
    invoke-interface {p3}, Lus/zoom/zrcsdk/HandlerImp;->initHandlerThread()V

    .line 108
    iput-object p2, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->mHandler:Lus/zoom/zrcsdk/HandlerImp;

    .line 109
    iput-object p3, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->mRequestHandler:Lus/zoom/zrcsdk/HandlerImp;

    .line 111
    invoke-direct {p0}, Lus/zoom/zrcsdk/ZRCSdkContext;->cleanGoogleUserAndRoomInfo()V

    return-void
.end method

.method public isProxyViewshowing()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->proxyViewshowing:Z

    return v0
.end method

.method public runOnMainThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 133
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->mHandler:Lus/zoom/zrcsdk/HandlerImp;

    if-nez v0, :cond_0

    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "the main thread manager is null"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 138
    invoke-interface {v0, p1}, Lus/zoom/zrcsdk/HandlerImp;->post(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public runOnMainThreadDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    .line 147
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->mHandler:Lus/zoom/zrcsdk/HandlerImp;

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "the main thread manager is null"

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 152
    invoke-interface {v0, p1, p2, p3}, Lus/zoom/zrcsdk/HandlerImp;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method public runOnRequestThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 123
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->mRequestHandler:Lus/zoom/zrcsdk/HandlerImp;

    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "the request thread manager is null"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 128
    invoke-interface {v0, p1}, Lus/zoom/zrcsdk/HandlerImp;->post(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public saveLoginType(I)V
    .locals 2

    .line 309
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->mContext:Lus/zoom/zrcsdk/ContextImp;

    const-string v1, "zrc"

    invoke-interface {v0, v1}, Lus/zoom/zrcsdk/ContextImp;->getSharedPreferences(Ljava/lang/String;)Lus/zoom/zrcsdk/SharedPreferencesImp;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 311
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "the sharedPreferences is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 314
    :cond_0
    invoke-interface {v0}, Lus/zoom/zrcsdk/SharedPreferencesImp;->edit()Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;

    move-result-object v0

    if-nez v0, :cond_1

    .line 316
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "the edit is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v1, "login_type"

    .line 319
    invoke-interface {v0, v1, p1}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->putInt(Ljava/lang/String;I)V

    .line 320
    invoke-interface {v0}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->commit()V

    .line 321
    invoke-virtual {p0, p1}, Lus/zoom/zrcsdk/ZRCSdkContext;->setLogin_type(I)V

    return-void
.end method

.method public saveLoginUserAndRoomInfo()V
    .locals 3

    .line 211
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->mContext:Lus/zoom/zrcsdk/ContextImp;

    const-string v1, "zrc"

    invoke-interface {v0, v1}, Lus/zoom/zrcsdk/ContextImp;->getSharedPreferences(Ljava/lang/String;)Lus/zoom/zrcsdk/SharedPreferencesImp;

    move-result-object v0

    .line 212
    invoke-interface {v0}, Lus/zoom/zrcsdk/SharedPreferencesImp;->edit()Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;

    move-result-object v0

    const-string v1, "userEmail"

    .line 213
    iget-object v2, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->userEmail:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "roomEmail"

    .line 214
    iget-object v2, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->roomEmail:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "roomAddress"

    .line 215
    iget-object v2, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->roomAddress:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "roomToken"

    .line 216
    iget-object v2, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->roomToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "zoomToken"

    .line 217
    iget-object v2, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->zoomToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-interface {v0}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->commit()V

    return-void
.end method

.method public saveProxyInfo(Lus/zoom/zrcsdk/model/ProxyInfo;)V
    .locals 3

    .line 294
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->mContext:Lus/zoom/zrcsdk/ContextImp;

    const-string v1, "zrc"

    invoke-interface {v0, v1}, Lus/zoom/zrcsdk/ContextImp;->getSharedPreferences(Ljava/lang/String;)Lus/zoom/zrcsdk/SharedPreferencesImp;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 296
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "the sharedPreferences is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 299
    :cond_0
    invoke-interface {v0}, Lus/zoom/zrcsdk/SharedPreferencesImp;->edit()Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;

    move-result-object v0

    if-nez v0, :cond_1

    .line 301
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "the edit is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v1, "proxy"

    .line 304
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-interface {v0}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->commit()V

    return-void
.end method

.method public saveUltrasoundWhiteList(Ljava/lang/String;)V
    .locals 2

    .line 928
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->mContext:Lus/zoom/zrcsdk/ContextImp;

    const-string v1, "zrc"

    invoke-interface {v0, v1}, Lus/zoom/zrcsdk/ContextImp;->getSharedPreferences(Ljava/lang/String;)Lus/zoom/zrcsdk/SharedPreferencesImp;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 930
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "the sharedPreferences is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 933
    :cond_0
    invoke-interface {v0}, Lus/zoom/zrcsdk/SharedPreferencesImp;->edit()Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;

    move-result-object v0

    if-nez v0, :cond_1

    .line 935
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "the editor is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v1, "ultrasound_whitelist"

    .line 938
    invoke-interface {v0, v1, p1}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    invoke-interface {v0}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->commit()V

    return-void
.end method

.method public setLogin_type(I)V
    .locals 0

    .line 724
    iput p1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->login_type:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setOnMeetingHistoryChangeListener(Lus/zoom/zrcsdk/ZRCSdkContext$OnMeetingHistoryChangeListener;)V
    .locals 0

    .line 914
    iput-object p1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->onMeetingHistoryChangeListener:Lus/zoom/zrcsdk/ZRCSdkContext$OnMeetingHistoryChangeListener;

    return-void
.end method

.method public setPolicyBlockUnknownSSLCert(Ljava/lang/String;)V
    .locals 2

    .line 821
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->mContext:Lus/zoom/zrcsdk/ContextImp;

    const-string v1, "zrc"

    invoke-interface {v0, v1}, Lus/zoom/zrcsdk/ContextImp;->getSharedPreferences(Ljava/lang/String;)Lus/zoom/zrcsdk/SharedPreferencesImp;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 823
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "the sharedPreferences is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 826
    :cond_0
    invoke-interface {v0}, Lus/zoom/zrcsdk/SharedPreferencesImp;->edit()Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;

    move-result-object v0

    if-nez v0, :cond_1

    .line 828
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "the editor is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v1, "policy_block_unknown_ssl_cert"

    .line 831
    invoke-interface {v0, v1, p1}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    invoke-interface {v0}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->commit()V

    return-void
.end method

.method public setProxyInfo(Lus/zoom/zrcsdk/model/ProxyInfo;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->proxyInfo:Lus/zoom/zrcsdk/model/ProxyInfo;

    return-void
.end method

.method public setProxyViewshowing(Z)V
    .locals 0

    .line 81
    iput-boolean p1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->proxyViewshowing:Z

    return-void
.end method

.method public setProxyViewshowingNumber(I)V
    .locals 0

    .line 765
    iput p1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->proxyViewshowingNumber:I

    return-void
.end method

.method public setPushedAutoSignInData(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 891
    iput-object p1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->pushedActivationCode:Ljava/lang/String;

    .line 892
    iput p2, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->pushedWorkMode:I

    .line 893
    iput-object p3, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->pushedAutoSignInSequence:Ljava/lang/String;

    .line 895
    iget-object p1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->mContext:Lus/zoom/zrcsdk/ContextImp;

    const-string p2, "zrc"

    invoke-interface {p1, p2}, Lus/zoom/zrcsdk/ContextImp;->getSharedPreferences(Ljava/lang/String;)Lus/zoom/zrcsdk/SharedPreferencesImp;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 897
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "the sharedPreferences is null"

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p3, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 900
    :cond_0
    invoke-interface {p1}, Lus/zoom/zrcsdk/SharedPreferencesImp;->edit()Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;

    move-result-object p1

    if-nez p1, :cond_1

    .line 902
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "the editor is null"

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p3, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string p2, "pushed_activation_code"

    .line 905
    iget-object p3, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->pushedActivationCode:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "pushed_work_mode"

    .line 906
    iget p3, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->pushedWorkMode:I

    invoke-interface {p1, p2, p3}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->putInt(Ljava/lang/String;I)V

    const-string p2, "pushed_auto_sign_in_sequence"

    .line 907
    iget-object p3, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->pushedAutoSignInSequence:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    invoke-interface {p1}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->commit()V

    return-void
.end method

.method public setRoomEmail(Ljava/lang/String;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->roomEmail:Ljava/lang/String;

    return-void
.end method

.method public setRoomList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/RoomInfo;",
            ">;)V"
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->roomList:Ljava/util/List;

    return-void
.end method

.method public setUserEmail(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->userEmail:Ljava/lang/String;

    return-void
.end method

.method public setVendorOSDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 792
    iput-object p1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->vendorOSDeviceId:Ljava/lang/String;

    return-void
.end method

.method public setWorkMode(I)V
    .locals 2

    .line 845
    iget v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->workMode:I

    if-ne v0, p1, :cond_0

    return-void

    .line 848
    :cond_0
    iput p1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->workMode:I

    .line 849
    iget-object v0, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->mContext:Lus/zoom/zrcsdk/ContextImp;

    const-string v1, "zrc"

    invoke-interface {v0, v1}, Lus/zoom/zrcsdk/ContextImp;->getSharedPreferences(Ljava/lang/String;)Lus/zoom/zrcsdk/SharedPreferencesImp;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 851
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "the sharedPreferences is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 854
    :cond_1
    invoke-interface {v0}, Lus/zoom/zrcsdk/SharedPreferencesImp;->edit()Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;

    move-result-object v0

    if-nez v0, :cond_2

    .line 856
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "the editor is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    const-string v1, "work_mode"

    .line 859
    invoke-interface {v0, v1, p1}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->putInt(Ljava/lang/String;I)V

    .line 860
    invoke-interface {v0}, Lus/zoom/zrcsdk/SharedPreferencesImp$EditorImp;->commit()V

    return-void
.end method

.method public setZRVersion(Ljava/lang/String;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->ZRVersion:Ljava/lang/String;

    return-void
.end method

.method public setZoomPresenceAddress(Ljava/lang/String;)V
    .locals 0

    .line 800
    iput-object p1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->roomAddress:Ljava/lang/String;

    return-void
.end method

.method public setZoomPresenceToken(Ljava/lang/String;)V
    .locals 0

    .line 808
    iput-object p1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->roomToken:Ljava/lang/String;

    return-void
.end method

.method public setZoomToken(Ljava/lang/String;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lus/zoom/zrcsdk/ZRCSdkContext;->zoomToken:Ljava/lang/String;

    return-void
.end method

.method public startProxyActivity(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 740
    new-instance v0, Lus/zoom/zrcsdk/ZRCSdkContext$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lus/zoom/zrcsdk/ZRCSdkContext$4;-><init>(Lus/zoom/zrcsdk/ZRCSdkContext;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
