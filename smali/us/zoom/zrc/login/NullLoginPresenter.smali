.class public Lus/zoom/zrc/login/NullLoginPresenter;
.super Ljava/lang/Object;
.source "NullLoginPresenter.java"

# interfaces
.implements Lus/zoom/zrc/login/LoginContract$IPresenter;


# static fields
.field private static final TAG:Ljava/lang/String; = "NullLoginPresenter"

.field private static instance:Lus/zoom/zrc/login/NullLoginPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lus/zoom/zrc/login/NullLoginPresenter;
    .locals 1

    .line 21
    sget-object v0, Lus/zoom/zrc/login/NullLoginPresenter;->instance:Lus/zoom/zrc/login/NullLoginPresenter;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lus/zoom/zrc/login/NullLoginPresenter;

    invoke-direct {v0}, Lus/zoom/zrc/login/NullLoginPresenter;-><init>()V

    sput-object v0, Lus/zoom/zrc/login/NullLoginPresenter;->instance:Lus/zoom/zrc/login/NullLoginPresenter;

    .line 24
    :cond_0
    sget-object v0, Lus/zoom/zrc/login/NullLoginPresenter;->instance:Lus/zoom/zrc/login/NullLoginPresenter;

    return-object v0
.end method


# virtual methods
.method public assignRoomCalendar(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;)V
    .locals 1

    .line 120
    sget-object p1, Lus/zoom/zrc/login/NullLoginPresenter;->TAG:Ljava/lang/String;

    const-string p2, "assignRoomCalendar(), WIRED CASE!!!"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public assignRoomLocation(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V
    .locals 2

    .line 125
    sget-object p1, Lus/zoom/zrc/login/NullLoginPresenter;->TAG:Ljava/lang/String;

    const-string v0, "assignRoomLocation(), WIRED CASE!!!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public cancelCreateRoom()V
    .locals 3

    .line 157
    sget-object v0, Lus/zoom/zrc/login/NullLoginPresenter;->TAG:Ljava/lang/String;

    const-string v1, "cancelCreateRoom(), WIRED CASE!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public connectToCreatedRoom()V
    .locals 3

    .line 135
    sget-object v0, Lus/zoom/zrc/login/NullLoginPresenter;->TAG:Ljava/lang/String;

    const-string v1, "connectToCreatedRoom(), WIRED CASE!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public continueConnectStandaloneZRPInPairedMode()V
    .locals 3

    .line 167
    sget-object v0, Lus/zoom/zrc/login/NullLoginPresenter;->TAG:Ljava/lang/String;

    const-string v1, "continueConnectStandaloneZRPInPairedMode(), WIRED CASE!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public createNewRoom(Ljava/lang/String;)V
    .locals 2

    .line 115
    sget-object p1, Lus/zoom/zrc/login/NullLoginPresenter;->TAG:Ljava/lang/String;

    const-string v0, "createNewRoom(), WIRED CASE!!!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public generateAddCalendarUrl()Ljava/lang/String;
    .locals 3

    .line 140
    sget-object v0, Lus/zoom/zrc/login/NullLoginPresenter;->TAG:Ljava/lang/String;

    const-string v1, "generateAddCalendarUrl(), WIRED CASE!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, ""

    return-object v0
.end method

.method public generateGoogleLoginUrl()Ljava/lang/String;
    .locals 3

    .line 79
    sget-object v0, Lus/zoom/zrc/login/NullLoginPresenter;->TAG:Ljava/lang/String;

    const-string v1, "generateGoogleLoginUrl(), WIRED CASE!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, ""

    return-object v0
.end method

.method public getCalendarHelper()Lus/zoom/zrc/login/LoginCalendarHelper;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 37
    sget-object v0, Lus/zoom/zrc/login/NullLoginPresenter;->TAG:Ljava/lang/String;

    const-string v1, "getCalendarHelper(), WIRED CASE!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    new-instance v0, Lus/zoom/zrc/login/LoginCalendarHelper;

    invoke-direct {v0}, Lus/zoom/zrc/login/LoginCalendarHelper;-><init>()V

    return-object v0
.end method

.method public getDefaultPassCode()Ljava/lang/String;
    .locals 3

    .line 151
    sget-object v0, Lus/zoom/zrc/login/NullLoginPresenter;->TAG:Ljava/lang/String;

    const-string v1, "getDefaultPassCode(), WIRED CASE!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, ""

    return-object v0
.end method

.method public getLocationHelper()Lus/zoom/zrc/login/LoginLocationHelper;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 30
    sget-object v0, Lus/zoom/zrc/login/NullLoginPresenter;->TAG:Ljava/lang/String;

    const-string v1, "getLocationHelper(), WIRED CASE!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    new-instance v0, Lus/zoom/zrc/login/LoginLocationHelper;

    invoke-direct {v0}, Lus/zoom/zrc/login/LoginLocationHelper;-><init>()V

    return-object v0
.end method

.method public getUICache()Lus/zoom/zrc/login/LoginContract$IUICache;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 44
    new-instance v0, Lus/zoom/zrc/login/LoginUICache;

    invoke-direct {v0}, Lus/zoom/zrc/login/LoginUICache;-><init>()V

    return-object v0
.end method

.method public handleAddCalendarCallback(I)V
    .locals 2

    .line 227
    sget-object p1, Lus/zoom/zrc/login/NullLoginPresenter;->TAG:Ljava/lang/String;

    const-string v0, "handleAddCalendarCallback(), WIRED CASE!!!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public handleAutoLogin(Ljava/lang/String;)V
    .locals 2

    .line 192
    sget-object p1, Lus/zoom/zrc/login/NullLoginPresenter;->TAG:Ljava/lang/String;

    const-string v0, "handleAutoLogin(), WIRED CASE!!!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public handleConnectWithZoomRoomError(I)V
    .locals 2

    .line 197
    sget-object p1, Lus/zoom/zrc/login/NullLoginPresenter;->TAG:Ljava/lang/String;

    const-string v0, "handleConnectWithZoomRoomError(), WIRED CASE!!!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public handleConnectionClosed(I)V
    .locals 2

    .line 172
    sget-object p1, Lus/zoom/zrc/login/NullLoginPresenter;->TAG:Ljava/lang/String;

    const-string v0, "handleConnectionClosed(), WIRED CASE!!!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public handleDeleteZoomRoomsFromWeb()V
    .locals 3

    .line 237
    sget-object v0, Lus/zoom/zrc/login/NullLoginPresenter;->TAG:Ljava/lang/String;

    const-string v1, "handleDeleteZoomRoomsFromWeb(), WIRED CASE!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public handleGoogleOAuthURLAction(Ljava/lang/String;)V
    .locals 2

    .line 232
    sget-object p1, Lus/zoom/zrc/login/NullLoginPresenter;->TAG:Ljava/lang/String;

    const-string v0, "handleGoogleOAuthURLAction(), WIRED CASE!!!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public handleLoginWithLicenseKeyInPairingMode()V
    .locals 3

    .line 187
    sget-object v0, Lus/zoom/zrc/login/NullLoginPresenter;->TAG:Ljava/lang/String;

    const-string v1, "handleLoginWithLicenseKeyInPairingMode(), WIRED CASE!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public handleLoginWithWorkEmailInPairingMode()V
    .locals 3

    .line 182
    sget-object v0, Lus/zoom/zrc/login/NullLoginPresenter;->TAG:Ljava/lang/String;

    const-string v1, "handleLoginWithWorkEmailInPairingMode(), WIRED CASE!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public handleLogoutInPairingMode()V
    .locals 3

    .line 202
    sget-object v0, Lus/zoom/zrc/login/NullLoginPresenter;->TAG:Ljava/lang/String;

    const-string v1, "handleLogoutInPairingMode(), WIRED CASE!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public handleSelectingWorkMode()V
    .locals 3

    .line 177
    sget-object v0, Lus/zoom/zrc/login/NullLoginPresenter;->TAG:Ljava/lang/String;

    const-string v1, "handleSelectingWorkMode(), WIRED CASE!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public handleSignUpCallback(Ljava/lang/String;)V
    .locals 2

    .line 222
    sget-object p1, Lus/zoom/zrc/login/NullLoginPresenter;->TAG:Ljava/lang/String;

    const-string v0, "handleSignUpCallback(), WIRED CASE!!!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public handleUserRefreshZAKError()V
    .locals 3

    .line 217
    sget-object v0, Lus/zoom/zrc/login/NullLoginPresenter;->TAG:Ljava/lang/String;

    const-string v1, "handleUserRefreshZAKError(), WIRED CASE!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public handleZoomRoomLoggedIn(I)V
    .locals 2

    .line 207
    sget-object p1, Lus/zoom/zrc/login/NullLoginPresenter;->TAG:Ljava/lang/String;

    const-string v0, "handleZoomRoomLoggedIn(), WIRED CASE!!!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public handleZoomRoomSignedOut()V
    .locals 3

    .line 212
    sget-object v0, Lus/zoom/zrc/login/NullLoginPresenter;->TAG:Ljava/lang/String;

    const-string v1, "handleZoomRoomSignedOut(), WIRED CASE!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public isOpenFromPT()Z
    .locals 4

    .line 242
    sget-object v0, Lus/zoom/zrc/login/NullLoginPresenter;->TAG:Ljava/lang/String;

    const-string v1, "isOpenFromPT(), WIRED CASE!!!"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method public loginWithLicenseKey(Ljava/lang/String;)V
    .locals 2

    .line 85
    sget-object p1, Lus/zoom/zrc/login/NullLoginPresenter;->TAG:Ljava/lang/String;

    const-string v0, "loginWithLicenseKey(), WIRED CASE!!!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public loginWithZoom(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/StringBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 74
    sget-object p1, Lus/zoom/zrc/login/NullLoginPresenter;->TAG:Ljava/lang/String;

    const-string p2, "loginWithZoom(), WIRED CASE!!!"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 100
    sget-object v0, Lus/zoom/zrc/login/NullLoginPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onStart(), WIRED CASE!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 105
    sget-object v0, Lus/zoom/zrc/login/NullLoginPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onStop(), WIRED CASE!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public queryWithParingCode(Ljava/lang/String;)V
    .locals 2

    .line 110
    sget-object p1, Lus/zoom/zrc/login/NullLoginPresenter;->TAG:Ljava/lang/String;

    const-string v0, "queryWithParingCode(), WIRED CASE!!!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public refreshCalendarList(Lus/zoom/zrc/login/LoginContract$IRefreshCalendarCallback;)V
    .locals 2

    .line 146
    sget-object p1, Lus/zoom/zrc/login/NullLoginPresenter;->TAG:Ljava/lang/String;

    const-string v0, "refreshCalendarList(), WIRED CASE!!!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public release()V
    .locals 3

    .line 54
    sget-object v0, Lus/zoom/zrc/login/NullLoginPresenter;->TAG:Ljava/lang/String;

    const-string v1, "release(), WIRED CASE!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public requestZoomRoomInfo()V
    .locals 3

    .line 59
    sget-object v0, Lus/zoom/zrc/login/NullLoginPresenter;->TAG:Ljava/lang/String;

    const-string v1, "requestZoomRoomInfo(), WIRED CASE!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public retryConnect(Z)V
    .locals 2

    .line 95
    sget-object p1, Lus/zoom/zrc/login/NullLoginPresenter;->TAG:Ljava/lang/String;

    const-string v0, "retryConnect(), WIRED CASE!!!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public selectWorkMode(I)V
    .locals 2

    .line 162
    sget-object p1, Lus/zoom/zrc/login/NullLoginPresenter;->TAG:Ljava/lang/String;

    const-string v0, "selectWorkMode(), WIRED CASE!!!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public selectZoomRoom(Lus/zoom/zrcsdk/model/RoomInfo;)V
    .locals 2
    .param p1    # Lus/zoom/zrcsdk/model/RoomInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 90
    sget-object p1, Lus/zoom/zrc/login/NullLoginPresenter;->TAG:Ljava/lang/String;

    const-string v0, "selectZoomRoom(), WIRED CASE!!!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setRoomPassCode(Ljava/lang/String;)V
    .locals 2

    .line 130
    sget-object p1, Lus/zoom/zrc/login/NullLoginPresenter;->TAG:Ljava/lang/String;

    const-string v0, "setRoomPassCode(), WIRED CASE!!!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setup(Lus/zoom/zrc/login/LoginContract$IUI;)V
    .locals 2
    .param p1    # Lus/zoom/zrc/login/LoginContract$IUI;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 49
    sget-object p1, Lus/zoom/zrc/login/NullLoginPresenter;->TAG:Ljava/lang/String;

    const-string v0, "setup(), WIRED CASE!!!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public signOut(Z)V
    .locals 2

    .line 64
    sget-object p1, Lus/zoom/zrc/login/NullLoginPresenter;->TAG:Ljava/lang/String;

    const-string v0, "signOut(), WIRED CASE!!!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public signUp()V
    .locals 3

    .line 69
    sget-object v0, Lus/zoom/zrc/login/NullLoginPresenter;->TAG:Ljava/lang/String;

    const-string v1, "signUp(), WIRED CASE!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
