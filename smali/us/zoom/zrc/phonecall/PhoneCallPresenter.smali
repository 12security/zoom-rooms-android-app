.class abstract Lus/zoom/zrc/phonecall/PhoneCallPresenter;
.super Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;
.source "PhoneCallPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lus/zoom/zrc/base/app/ZRCUIEventDispatcher<",
        "Lus/zoom/zrc/phonecall/PhoneCallFragment;",
        ">;"
    }
.end annotation


# instance fields
.field callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

.field private hasSetup:Z

.field isInLocalPresentation:Z

.field private notificationReceiver:Lus/zoom/zrc/base/notification/INotification;

.field private propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, v0}, Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;-><init>(Lus/zoom/androidlib/util/IUIElement;)V

    .line 65
    new-instance v0, Lus/zoom/zrc/phonecall/PhoneCallPresenter$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/phonecall/PhoneCallPresenter$1;-><init>(Lus/zoom/zrc/phonecall/PhoneCallPresenter;)V

    iput-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->notificationReceiver:Lus/zoom/zrc/base/notification/INotification;

    .line 85
    new-instance v0, Lus/zoom/zrc/phonecall/PhoneCallPresenter$2;

    invoke-direct {v0, p0}, Lus/zoom/zrc/phonecall/PhoneCallPresenter$2;-><init>(Lus/zoom/zrc/phonecall/PhoneCallPresenter;)V

    iput-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    return-void
.end method

.method private onRoomInfoChanged()V
    .locals 2

    .line 249
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    if-eqz v0, :cond_0

    .line 250
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getDisplayRoomName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;->setRoomName(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clickHangup()V
    .locals 0

    return-void
.end method

.method public clickMute(Z)V
    .locals 0

    return-void
.end method

.method dispatchDelayDismiss()V
    .locals 2

    .line 230
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    if-eqz v0, :cond_0

    .line 231
    invoke-interface {v0}, Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;->delayDismiss()V

    goto :goto_0

    :cond_0
    const-string v0, "delayDismiss callView is null!!!"

    const/4 v1, 0x0

    .line 233
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->onCleared()V

    return-void
.end method

.method dispatchDismissImmediately()V
    .locals 2

    .line 240
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    if-eqz v0, :cond_0

    .line 241
    invoke-interface {v0}, Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;->dismissImmediately()V

    goto :goto_0

    :cond_0
    const-string v0, "dismissImmediately callView is null!!!"

    const/4 v1, 0x0

    .line 243
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->onCleared()V

    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .line 184
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->getUI()Lus/zoom/androidlib/util/IUIElement;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/phonecall/PhoneCallFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected varargs getString(I[Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 188
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/ZRCApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 173
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;->onDestroy(Landroidx/lifecycle/LifecycleOwner;)V

    .line 174
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 175
    iput-object p1, p0, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    :cond_0
    return-void
.end method

.method onHiddenChanged(Z)V
    .locals 0

    return-void
.end method

.method protected onPropertyChangedInActive(I)V
    .locals 1

    .line 204
    sget v0, Landroidx/databinding/library/baseAdapters/BR;->roomInfo:I

    if-eq v0, p1, :cond_0

    sget v0, Landroidx/databinding/library/baseAdapters/BR;->userProfile:I

    if-ne v0, p1, :cond_1

    .line 205
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->onRoomInfoChanged()V

    :cond_1
    return-void
.end method

.method protected onReceivePropertyChanged(I)V
    .locals 0

    return-void
.end method

.method protected onReceivedNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 167
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;->onResume()V

    .line 168
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->onRoomInfoChanged()V

    return-void
.end method

.method protected release()V
    .locals 3

    .line 136
    iget-boolean v0, p0, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->hasSetup:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "release..."

    const/4 v1, 0x0

    .line 140
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->removeNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;)V

    .line 143
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    iget-object v2, p0, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v2}, Lus/zoom/zrc/model/Model;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 145
    iput-boolean v1, p0, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->hasSetup:Z

    return-void
.end method

.method varargs releaseNotifications([Lus/zoom/zrc/base/notification/NotificationEvent;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 154
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "releaseNotifications: %s"

    const/4 v1, 0x1

    .line 158
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    array-length v0, p1

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v1, p1, v3

    .line 161
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->removeNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method releasePropertyChanged()V
    .locals 2

    const-string v0, "releasePropertyChanged..."

    const/4 v1, 0x0

    .line 149
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    return-void
.end method

.method public sendDTMF(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method setCallView(Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    return-void
.end method

.method setInLocalPresentation(Z)V
    .locals 0

    .line 255
    iput-boolean p1, p0, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->isInLocalPresentation:Z

    return-void
.end method

.method protected varargs setup([Lus/zoom/zrc/base/notification/NotificationEvent;)V
    .locals 5

    .line 118
    iget-boolean v0, p0, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->hasSetup:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "setup..."

    const/4 v1, 0x0

    .line 122
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    .line 124
    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_1

    .line 127
    :cond_1
    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 128
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v3

    iget-object v4, p0, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->notificationReceiver:Lus/zoom/zrc/base/notification/INotification;

    invoke-virtual {v3, p0, v2, v4}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    :cond_2
    :goto_1
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p1

    sget-object v0, Lus/zoom/zrc/base/notification/BasicEvent;->All:Lus/zoom/zrc/base/notification/BasicEvent;

    iget-object v1, p0, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->notificationReceiver:Lus/zoom/zrc/base/notification/INotification;

    invoke-virtual {p1, p0, v0, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 131
    :cond_3
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/Model;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    const/4 p1, 0x1

    .line 132
    iput-boolean p1, p0, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->hasSetup:Z

    return-void
.end method

.method showErrorToast(Ljava/lang/CharSequence;)V
    .locals 2

    .line 226
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public startMeeting()V
    .locals 0

    return-void
.end method
