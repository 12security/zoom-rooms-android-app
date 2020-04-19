.class public Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;
.super Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;
.source "LoginActivity.java"

# interfaces
.implements Lus/zoom/zrc/login/LoginContract$IUI;
.implements Lus/zoom/zrc/login/LoginContract$INavigator;
.implements Lus/zoom/zrc/login/LoginContract$IFooter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/login/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoginUIImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lus/zoom/zrc/base/app/ZRCUIEventDispatcher<",
        "Lus/zoom/zrc/login/LoginActivity;",
        ">;",
        "Lus/zoom/zrc/login/LoginContract$IUI;",
        "Lus/zoom/zrc/login/LoginContract$INavigator;",
        "Lus/zoom/zrc/login/LoginContract$IFooter;"
    }
.end annotation


# instance fields
.field private mBackStackCount:I

.field private mErrorDialogEventAction:Lus/zoom/androidlib/util/EventAction;

.field private mHandler:Landroid/os/Handler;

.field private mPresenter:Lus/zoom/zrc/login/LoginContract$IPresenter;


# direct methods
.method public constructor <init>(Lus/zoom/zrc/login/LoginActivity;)V
    .locals 1

    .line 805
    invoke-direct {p0, p1}, Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;-><init>(Lus/zoom/androidlib/util/IUIElement;)V

    .line 799
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->mHandler:Landroid/os/Handler;

    .line 806
    invoke-virtual {p1}, Lus/zoom/zrc/login/LoginActivity;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->mPresenter:Lus/zoom/zrc/login/LoginContract$IPresenter;

    .line 807
    iget-object p1, p0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->mPresenter:Lus/zoom/zrc/login/LoginContract$IPresenter;

    invoke-interface {p1, p0}, Lus/zoom/zrc/login/LoginContract$IPresenter;->setup(Lus/zoom/zrc/login/LoginContract$IUI;)V

    return-void
.end method

.method static synthetic access$200(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;)Lus/zoom/androidlib/util/EventAction;
    .locals 0

    .line 797
    iget-object p0, p0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->mErrorDialogEventAction:Lus/zoom/androidlib/util/EventAction;

    return-object p0
.end method

.method static synthetic access$202(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;Lus/zoom/androidlib/util/EventAction;)Lus/zoom/androidlib/util/EventAction;
    .locals 0

    .line 797
    iput-object p1, p0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->mErrorDialogEventAction:Lus/zoom/androidlib/util/EventAction;

    return-object p1
.end method

.method static synthetic access$300(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;I)V
    .locals 0

    .line 797
    invoke-direct {p0, p1}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->updateBackStack(I)V

    return-void
.end method

.method private updateBackStack(I)V
    .locals 0

    .line 829
    iput p1, p0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->mBackStackCount:I

    return-void
.end method


# virtual methods
.method public clearBackStack()V
    .locals 2

    .line 1158
    new-instance v0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$27;

    const-string v1, "clearBackStack"

    invoke-direct {v0, p0, v1}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$27;-><init>(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->dispatchEventAction(Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method public getBackStackCount()I
    .locals 1

    .line 1168
    iget v0, p0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->mBackStackCount:I

    return v0
.end method

.method public getFooter()Lus/zoom/zrc/login/LoginContract$IFooter;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    return-object p0
.end method

.method public getMainThreadHandler()Landroid/os/Handler;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 835
    iget-object v0, p0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    return-object p0
.end method

.method public hideActionBar()V
    .locals 2

    .line 894
    new-instance v0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$5;

    const-string v1, "hideActionBar"

    invoke-direct {v0, p0, v1}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$5;-><init>(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->dispatchEventAction(Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method public onAddCalendarResourceSuccess()V
    .locals 2

    .line 1137
    new-instance v0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$25;

    const-string v1, "onAddCalendarResourceSuccess"

    invoke-direct {v0, p0, v1}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$25;-><init>(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->dispatchEventAction(Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method public onAddCalendarSuccess()V
    .locals 2

    .line 1127
    new-instance v0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$24;

    const-string v1, "onAddCalendarSuccess"

    invoke-direct {v0, p0, v1}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$24;-><init>(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->dispatchEventAction(Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method public onAddNewCalendar()V
    .locals 2

    .line 1028
    new-instance v0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$15;

    const-string v1, "onAddNewCalendar"

    invoke-direct {v0, p0, v1}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$15;-><init>(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->dispatchEventAction(Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method protected onCleared()V
    .locals 1

    .line 824
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;->onCleared()V

    .line 825
    iget-object v0, p0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->mPresenter:Lus/zoom/zrc/login/LoginContract$IPresenter;

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IPresenter;->release()V

    return-void
.end method

.method public onCreateNewZoomRoom()V
    .locals 2

    .line 1017
    new-instance v0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$14;

    const-string v1, "onCreateNewZoomRoom"

    invoke-direct {v0, p0, v1}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$14;-><init>(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->dispatchEventAction(Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method public onCreateRoomSuccess()V
    .locals 2

    .line 1117
    new-instance v0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$23;

    const-string v1, "onCreateRoomSuccess"

    invoke-direct {v0, p0, v1}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$23;-><init>(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->dispatchEventAction(Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method public onEnterAutoLogin(Ljava/lang/String;)V
    .locals 2

    .line 978
    new-instance v0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$11;

    const-string v1, "onEnterAutoLogin"

    invoke-direct {v0, p0, v1, p1}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$11;-><init>(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->dispatchEventAction(Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method public onEnterCalendarResource(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)V
    .locals 2
    .param p1    # Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1051
    new-instance v0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$17;

    const-string v1, "onEnterCalendarResource"

    invoke-direct {v0, p0, v1, p1}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$17;-><init>(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->dispatchEventAction(Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method public onEnterLicense()V
    .locals 2

    .line 967
    new-instance v0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$10;

    const-string v1, "onEnterLicense"

    invoke-direct {v0, p0, v1}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$10;-><init>(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->dispatchEventAction(Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method public onEnterParingCode()V
    .locals 2

    .line 930
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isOnlySupportZRPMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 931
    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->onLoginOrEnterLicense(Ljava/lang/String;)V

    return-void

    .line 934
    :cond_0
    new-instance v0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$7;

    const-string v1, "onEnterParingCode"

    invoke-direct {v0, p0, v1}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$7;-><init>(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->dispatchEventAction(Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method public onErrorDialog(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)V
    .locals 7
    .param p3    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 862
    new-instance v6, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$2;

    const-string v2, "onErrorDialog"

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$2;-><init>(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;Ljava/lang/String;Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)V

    .line 869
    invoke-virtual {p0, v6}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->dispatchEventAction(Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method public onErrorToast(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)V
    .locals 7
    .param p3    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 852
    new-instance v6, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$1;

    const-string v2, "onErrorToast"

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$1;-><init>(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;Ljava/lang/String;Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)V

    invoke-virtual {p0, v6}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->dispatchEventAction(Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method public onLoginOrEnterLicense(Ljava/lang/String;)V
    .locals 2

    .line 945
    new-instance v0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$8;

    const-string v1, "onLoginOrEnterLicense"

    invoke-direct {v0, p0, v1, p1}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$8;-><init>(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->dispatchEventAction(Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method public onLoginWithGoogle()V
    .locals 2

    .line 957
    new-instance v0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$9;

    const-string v1, "onLoginWithGoogle"

    invoke-direct {v0, p0, v1}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$9;-><init>(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->dispatchEventAction(Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method public onNoZoomRoomsFound()V
    .locals 2

    .line 997
    new-instance v0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$12;

    const-string v1, "onNoZoomRoomsFound"

    invoke-direct {v0, p0, v1}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$12;-><init>(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->dispatchEventAction(Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method public onSetRoomPassCode()V
    .locals 2

    .line 1096
    new-instance v0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$21;

    const-string v1, "onSetRoomPassCode"

    invoke-direct {v0, p0, v1}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$21;-><init>(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->dispatchEventAction(Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method public onShowCalendarPicker(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)V
    .locals 2
    .param p1    # Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1039
    new-instance v0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$16;

    const-string v1, "onShowCalendarPicker"

    invoke-direct {v0, p0, v1, p1}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$16;-><init>(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->dispatchEventAction(Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method public onShowFailedToConnectZoomRoom()V
    .locals 2

    .line 1085
    new-instance v0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$20;

    const-string v1, "onShowFailedToConnectZoomRoom"

    invoke-direct {v0, p0, v1}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$20;-><init>(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->dispatchEventAction(Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method public onShowLocationPicker(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V
    .locals 2
    .param p1    # Lus/zoom/zrcsdk/model/ZRCLocationTree;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1062
    new-instance v0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$18;

    const-string v1, "onShowLocationPicker"

    invoke-direct {v0, p0, v1, p1}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$18;-><init>(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCLocationTree;)V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->dispatchEventAction(Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method public onShowNetworkDisconnected()V
    .locals 2

    .line 1073
    new-instance v0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$19;

    const-string v1, "onShowNetworkDisconnected"

    invoke-direct {v0, p0, v1}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$19;-><init>(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->dispatchEventAction(Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method public onShowSelectWorkMode()V
    .locals 2

    .line 1147
    new-instance v0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$26;

    const-string v1, "onShowSelectWorkMode"

    invoke-direct {v0, p0, v1}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$26;-><init>(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->dispatchEventAction(Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method public onShowWaitingDialog(ZLjava/lang/CharSequence;)V
    .locals 2
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 874
    new-instance v0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$3;

    const-string v1, "onShowWaitingDialog"

    invoke-direct {v0, p0, v1, p1, p2}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$3;-><init>(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;Ljava/lang/String;ZLjava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->dispatchEventAction(Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method public onShowZoomRoomPicker()V
    .locals 2

    .line 1007
    new-instance v0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$13;

    const-string v1, "onShowZoomRoomPicker"

    invoke-direct {v0, p0, v1}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$13;-><init>(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->dispatchEventAction(Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 812
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;->onStart()V

    .line 813
    iget-object v0, p0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->mPresenter:Lus/zoom/zrc/login/LoginContract$IPresenter;

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IPresenter;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 818
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCUIEventDispatcher;->onStop()V

    .line 819
    iget-object v0, p0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->mPresenter:Lus/zoom/zrc/login/LoginContract$IPresenter;

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IPresenter;->onStop()V

    return-void
.end method

.method public onUpdateIpAddress(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1183
    new-instance v0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$29;

    const-string v1, "onUpdateIpAddress"

    invoke-direct {v0, p0, v1, p1}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$29;-><init>(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->dispatchEventAction(Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method public onUpdateZRCVersion(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1173
    new-instance v0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$28;

    const-string v1, "onUpdateZRCVersion"

    invoke-direct {v0, p0, v1, p1}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$28;-><init>(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->dispatchEventAction(Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method public onZoomRoomAdded()V
    .locals 2

    .line 1107
    new-instance v0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$22;

    const-string v1, "onZoomRoomAdded"

    invoke-direct {v0, p0, v1}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$22;-><init>(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->dispatchEventAction(Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method public setShowFooter(Z)V
    .locals 2

    .line 884
    new-instance v0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$4;

    const-string v1, "setShowFooter"

    invoke-direct {v0, p0, v1, p1}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$4;-><init>(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->dispatchEventAction(Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method

.method public showActionBar()Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;
    .locals 3

    .line 904
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->getUI()Lus/zoom/androidlib/util/IUIElement;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/login/LoginActivity;

    if-eqz v0, :cond_1

    .line 906
    invoke-static {v0}, Lus/zoom/zrc/login/LoginActivity;->access$900(Lus/zoom/zrc/login/LoginActivity;)Lus/zoom/zrc/base/widget/ZRCTitleBar;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$id;->right_action:I

    invoke-virtual {v1, v2}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 907
    invoke-static {v0}, Lus/zoom/zrc/login/LoginActivity;->access$1000(Lus/zoom/zrc/login/LoginActivity;)Lus/zoom/zrc/login/LoginBaseFragment;

    move-result-object v2

    instance-of v2, v2, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;

    if-eqz v2, :cond_0

    .line 908
    sget v2, Lus/zoom/zrcbox/R$string;->login_label_add_new_room_contentdescription:I

    invoke-virtual {v0, v2}, Lus/zoom/zrc/login/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v2, ""

    .line 910
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 912
    :goto_0
    invoke-static {v0}, Lus/zoom/zrc/login/LoginActivity;->access$900(Lus/zoom/zrc/login/LoginActivity;)Lus/zoom/zrc/base/widget/ZRCTitleBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->setVisibility(I)V

    .line 913
    invoke-static {v0}, Lus/zoom/zrc/login/LoginActivity;->access$900(Lus/zoom/zrc/login/LoginActivity;)Lus/zoom/zrc/base/widget/ZRCTitleBar;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->newBuilder()Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public showSignOutWithAccessCode()V
    .locals 2

    .line 920
    new-instance v0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$6;

    const-string v1, "showSignOutWithAccessCode"

    invoke-direct {v0, p0, v1}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$6;-><init>(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->dispatchEventAction(Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method
