.class public interface abstract Lus/zoom/zrc/login/LoginContract$INavigator;
.super Ljava/lang/Object;
.source "LoginContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/login/LoginContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "INavigator"
.end annotation


# virtual methods
.method public abstract clearBackStack()V
.end method

.method public abstract getBackStackCount()I
.end method

.method public abstract hideActionBar()V
.end method

.method public abstract onAddCalendarResourceSuccess()V
.end method

.method public abstract onAddCalendarSuccess()V
.end method

.method public abstract onAddNewCalendar()V
.end method

.method public abstract onCreateNewZoomRoom()V
.end method

.method public abstract onCreateRoomSuccess()V
.end method

.method public abstract onEnterAutoLogin(Ljava/lang/String;)V
.end method

.method public abstract onEnterCalendarResource(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)V
    .param p1    # Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onEnterLicense()V
.end method

.method public abstract onEnterParingCode()V
.end method

.method public abstract onLoginOrEnterLicense(Ljava/lang/String;)V
.end method

.method public abstract onLoginWithGoogle()V
.end method

.method public abstract onNoZoomRoomsFound()V
.end method

.method public abstract onSetRoomPassCode()V
.end method

.method public abstract onShowCalendarPicker(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)V
    .param p1    # Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onShowFailedToConnectZoomRoom()V
.end method

.method public abstract onShowLocationPicker(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V
    .param p1    # Lus/zoom/zrcsdk/model/ZRCLocationTree;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onShowNetworkDisconnected()V
.end method

.method public abstract onShowSelectWorkMode()V
.end method

.method public abstract onShowZoomRoomPicker()V
.end method

.method public abstract onZoomRoomAdded()V
.end method

.method public abstract setShowFooter(Z)V
.end method

.method public abstract showActionBar()Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;
.end method

.method public abstract showSignOutWithAccessCode()V
.end method
