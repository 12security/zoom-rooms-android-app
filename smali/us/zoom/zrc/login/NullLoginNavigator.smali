.class public Lus/zoom/zrc/login/NullLoginNavigator;
.super Ljava/lang/Object;
.source "NullLoginNavigator.java"

# interfaces
.implements Lus/zoom/zrc/login/LoginContract$INavigator;


# static fields
.field private static final TAG:Ljava/lang/String; = "NullLoginNavigator"

.field private static instance:Lus/zoom/zrc/login/NullLoginNavigator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lus/zoom/zrc/login/NullLoginNavigator;
    .locals 1

    .line 17
    sget-object v0, Lus/zoom/zrc/login/NullLoginNavigator;->instance:Lus/zoom/zrc/login/NullLoginNavigator;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lus/zoom/zrc/login/NullLoginNavigator;

    invoke-direct {v0}, Lus/zoom/zrc/login/NullLoginNavigator;-><init>()V

    sput-object v0, Lus/zoom/zrc/login/NullLoginNavigator;->instance:Lus/zoom/zrc/login/NullLoginNavigator;

    .line 20
    :cond_0
    sget-object v0, Lus/zoom/zrc/login/NullLoginNavigator;->instance:Lus/zoom/zrc/login/NullLoginNavigator;

    return-object v0
.end method


# virtual methods
.method public clearBackStack()V
    .locals 3

    .line 149
    sget-object v0, Lus/zoom/zrc/login/NullLoginNavigator;->TAG:Ljava/lang/String;

    const-string v1, "clearBackStack(), WIRED CASE!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getBackStackCount()I
    .locals 4

    .line 154
    sget-object v0, Lus/zoom/zrc/login/NullLoginNavigator;->TAG:Ljava/lang/String;

    const-string v1, "getBackStackCount(), WIRED CASE!!!"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method public hideActionBar()V
    .locals 3

    .line 33
    sget-object v0, Lus/zoom/zrc/login/NullLoginNavigator;->TAG:Ljava/lang/String;

    const-string v1, "hideActionBar(), WIRED CASE!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onAddCalendarResourceSuccess()V
    .locals 3

    .line 139
    sget-object v0, Lus/zoom/zrc/login/NullLoginNavigator;->TAG:Ljava/lang/String;

    const-string v1, "onAddCalendarResourceSuccess(), WIRED CASE!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onAddCalendarSuccess()V
    .locals 3

    .line 134
    sget-object v0, Lus/zoom/zrc/login/NullLoginNavigator;->TAG:Ljava/lang/String;

    const-string v1, "onAddCalendarSuccess(), WIRED CASE!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onAddNewCalendar()V
    .locals 3

    .line 89
    sget-object v0, Lus/zoom/zrc/login/NullLoginNavigator;->TAG:Ljava/lang/String;

    const-string v1, "onAddNewCalendar(), WIRED CASE!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateNewZoomRoom()V
    .locals 3

    .line 84
    sget-object v0, Lus/zoom/zrc/login/NullLoginNavigator;->TAG:Ljava/lang/String;

    const-string v1, "onCreateNewZoomRoom(), WIRED CASE!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateRoomSuccess()V
    .locals 3

    .line 129
    sget-object v0, Lus/zoom/zrc/login/NullLoginNavigator;->TAG:Ljava/lang/String;

    const-string v1, "onCreateRoomSuccess(), WIRED CASE!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onEnterAutoLogin(Ljava/lang/String;)V
    .locals 2

    .line 69
    sget-object p1, Lus/zoom/zrc/login/NullLoginNavigator;->TAG:Ljava/lang/String;

    const-string v0, "onEnterAutoLogin(), WIRED CASE!!!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onEnterCalendarResource(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)V
    .locals 2
    .param p1    # Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 99
    sget-object p1, Lus/zoom/zrc/login/NullLoginNavigator;->TAG:Ljava/lang/String;

    const-string v0, "onEnterCalendarResource(), WIRED CASE!!!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onEnterLicense()V
    .locals 3

    .line 64
    sget-object v0, Lus/zoom/zrc/login/NullLoginNavigator;->TAG:Ljava/lang/String;

    const-string v1, "onEnterLicense(), WIRED CASE!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onEnterParingCode()V
    .locals 3

    .line 49
    sget-object v0, Lus/zoom/zrc/login/NullLoginNavigator;->TAG:Ljava/lang/String;

    const-string v1, "onEnterParingCode(), WIRED CASE!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onLoginOrEnterLicense(Ljava/lang/String;)V
    .locals 2

    .line 54
    sget-object p1, Lus/zoom/zrc/login/NullLoginNavigator;->TAG:Ljava/lang/String;

    const-string v0, "onLoginOrEnterLicense(), WIRED CASE!!!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onLoginWithGoogle()V
    .locals 3

    .line 59
    sget-object v0, Lus/zoom/zrc/login/NullLoginNavigator;->TAG:Ljava/lang/String;

    const-string v1, "onLoginWithGoogle(), WIRED CASE!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onNoZoomRoomsFound()V
    .locals 3

    .line 74
    sget-object v0, Lus/zoom/zrc/login/NullLoginNavigator;->TAG:Ljava/lang/String;

    const-string v1, "onNoZoomRoomsFound(), WIRED CASE!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onSetRoomPassCode()V
    .locals 3

    .line 119
    sget-object v0, Lus/zoom/zrc/login/NullLoginNavigator;->TAG:Ljava/lang/String;

    const-string v1, "onSetRoomPassCode(), WIRED CASE!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onShowCalendarPicker(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)V
    .locals 2
    .param p1    # Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 94
    sget-object p1, Lus/zoom/zrc/login/NullLoginNavigator;->TAG:Ljava/lang/String;

    const-string v0, "onShowCalendarPicker(), WIRED CASE!!!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onShowFailedToConnectZoomRoom()V
    .locals 3

    .line 114
    sget-object v0, Lus/zoom/zrc/login/NullLoginNavigator;->TAG:Ljava/lang/String;

    const-string v1, "onShowFailedToConnectZoomRoom(), WIRED CASE!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onShowLocationPicker(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V
    .locals 2
    .param p1    # Lus/zoom/zrcsdk/model/ZRCLocationTree;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 104
    sget-object p1, Lus/zoom/zrc/login/NullLoginNavigator;->TAG:Ljava/lang/String;

    const-string v0, "onShowLocationPicker(), WIRED CASE!!!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onShowNetworkDisconnected()V
    .locals 3

    .line 109
    sget-object v0, Lus/zoom/zrc/login/NullLoginNavigator;->TAG:Ljava/lang/String;

    const-string v1, "onShowNetworkDisconnected(), WIRED CASE!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onShowSelectWorkMode()V
    .locals 3

    .line 144
    sget-object v0, Lus/zoom/zrc/login/NullLoginNavigator;->TAG:Ljava/lang/String;

    const-string v1, "onShowSelectWorkMode(), WIRED CASE!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onShowZoomRoomPicker()V
    .locals 3

    .line 79
    sget-object v0, Lus/zoom/zrc/login/NullLoginNavigator;->TAG:Ljava/lang/String;

    const-string v1, "onShowZoomRoomPicker(), WIRED CASE!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onZoomRoomAdded()V
    .locals 3

    .line 124
    sget-object v0, Lus/zoom/zrc/login/NullLoginNavigator;->TAG:Ljava/lang/String;

    const-string v1, "onZoomRoomAdded(), WIRED CASE!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setShowFooter(Z)V
    .locals 2

    .line 28
    sget-object p1, Lus/zoom/zrc/login/NullLoginNavigator;->TAG:Ljava/lang/String;

    const-string v0, "setShowFooter(), WIRED CASE!!!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public showActionBar()Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;
    .locals 3

    .line 38
    sget-object v0, Lus/zoom/zrc/login/NullLoginNavigator;->TAG:Ljava/lang/String;

    const-string v1, "showActionBar(), WIRED CASE!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public showSignOutWithAccessCode()V
    .locals 3

    .line 44
    sget-object v0, Lus/zoom/zrc/login/NullLoginNavigator;->TAG:Ljava/lang/String;

    const-string v1, "showSignOutWithAccessCode(), WIRED CASE!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
