.class public interface abstract Lus/zoom/zrc/login/LoginContract$IPresenter;
.super Ljava/lang/Object;
.source "LoginContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/login/LoginContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPresenter"
.end annotation


# virtual methods
.method public abstract assignRoomCalendar(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;)V
.end method

.method public abstract assignRoomLocation(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V
.end method

.method public abstract cancelCreateRoom()V
.end method

.method public abstract connectToCreatedRoom()V
.end method

.method public abstract continueConnectStandaloneZRPInPairedMode()V
.end method

.method public abstract createNewRoom(Ljava/lang/String;)V
.end method

.method public abstract generateAddCalendarUrl()Ljava/lang/String;
.end method

.method public abstract generateGoogleLoginUrl()Ljava/lang/String;
.end method

.method public abstract getCalendarHelper()Lus/zoom/zrc/login/LoginCalendarHelper;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getDefaultPassCode()Ljava/lang/String;
.end method

.method public abstract getLocationHelper()Lus/zoom/zrc/login/LoginLocationHelper;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getUICache()Lus/zoom/zrc/login/LoginContract$IUICache;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract handleAddCalendarCallback(I)V
.end method

.method public abstract handleAutoLogin(Ljava/lang/String;)V
.end method

.method public abstract handleConnectWithZoomRoomError(I)V
.end method

.method public abstract handleConnectionClosed(I)V
.end method

.method public abstract handleDeleteZoomRoomsFromWeb()V
.end method

.method public abstract handleGoogleOAuthURLAction(Ljava/lang/String;)V
.end method

.method public abstract handleLoginWithLicenseKeyInPairingMode()V
.end method

.method public abstract handleLoginWithWorkEmailInPairingMode()V
.end method

.method public abstract handleLogoutInPairingMode()V
.end method

.method public abstract handleSelectingWorkMode()V
.end method

.method public abstract handleSignUpCallback(Ljava/lang/String;)V
.end method

.method public abstract handleUserRefreshZAKError()V
.end method

.method public abstract handleZoomRoomLoggedIn(I)V
.end method

.method public abstract handleZoomRoomSignedOut()V
.end method

.method public abstract isOpenFromPT()Z
.end method

.method public abstract loginWithLicenseKey(Ljava/lang/String;)V
.end method

.method public abstract loginWithZoom(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/StringBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract queryWithParingCode(Ljava/lang/String;)V
.end method

.method public abstract refreshCalendarList(Lus/zoom/zrc/login/LoginContract$IRefreshCalendarCallback;)V
.end method

.method public abstract release()V
.end method

.method public abstract requestZoomRoomInfo()V
.end method

.method public abstract retryConnect(Z)V
.end method

.method public abstract selectWorkMode(I)V
.end method

.method public abstract selectZoomRoom(Lus/zoom/zrcsdk/model/RoomInfo;)V
    .param p1    # Lus/zoom/zrcsdk/model/RoomInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setRoomPassCode(Ljava/lang/String;)V
.end method

.method public abstract setup(Lus/zoom/zrc/login/LoginContract$IUI;)V
    .param p1    # Lus/zoom/zrc/login/LoginContract$IUI;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract signOut(Z)V
.end method

.method public abstract signUp()V
.end method
