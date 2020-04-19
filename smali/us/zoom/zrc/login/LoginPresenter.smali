.class public Lus/zoom/zrc/login/LoginPresenter;
.super Landroidx/lifecycle/AndroidViewModel;
.source "LoginPresenter.java"

# interfaces
.implements Lus/zoom/zrc/login/LoginContract$IPresenter;


# static fields
.field private static final DEBUG_PRESENTER:Z = false

.field private static final TAG:Ljava/lang/String; = "LoginPresenter"


# instance fields
.field private mAssignedCalendarResource:Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;

.field private mAssignedCalendarService:Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

.field private mAssignedLocation:Lus/zoom/zrcsdk/model/ZRCLocationTree;

.field private mCalendarHelper:Lus/zoom/zrc/login/LoginCalendarHelper;

.field private mContext:Landroid/content/Context;

.field private mCreatedRoom:Lus/zoom/zrcsdk/model/RoomInfo;

.field private mLicenseKey:Ljava/lang/String;

.field private mLocationHelper:Lus/zoom/zrc/login/LoginLocationHelper;

.field private mOpenFromPT:Z

.field private mOpenFromPTBackToLicenseKey:Z

.field private mPassCode:Ljava/lang/String;

.field private mRefreshCalendarCallback:Lus/zoom/zrc/login/LoginContract$IRefreshCalendarCallback;

.field private mRefreshIpTask:Ljava/lang/Runnable;

.field private mRoomList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/RoomInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTimerHandler:Landroid/os/Handler;

.field private mUI:Lus/zoom/zrc/login/LoginContract$IUI;

.field private mUICache:Lus/zoom/zrc/login/LoginUICache;

.field private mUpdateRoomName:Ljava/lang/String;

.field private mUpdateRoomPassCode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 99
    iput-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mContext:Landroid/content/Context;

    .line 100
    new-instance p1, Lus/zoom/zrc/login/LoginUICache;

    invoke-direct {p1}, Lus/zoom/zrc/login/LoginUICache;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUICache:Lus/zoom/zrc/login/LoginUICache;

    .line 101
    new-instance p1, Lus/zoom/zrc/login/LoginLocationHelper;

    invoke-direct {p1}, Lus/zoom/zrc/login/LoginLocationHelper;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mLocationHelper:Lus/zoom/zrc/login/LoginLocationHelper;

    .line 102
    new-instance p1, Lus/zoom/zrc/login/LoginCalendarHelper;

    invoke-direct {p1}, Lus/zoom/zrc/login/LoginCalendarHelper;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mCalendarHelper:Lus/zoom/zrc/login/LoginCalendarHelper;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/login/LoginPresenter;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lus/zoom/zrc/login/LoginPresenter;->onWebLoginFinish(I)V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/login/LoginPresenter;Ljava/util/List;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/login/LoginPresenter;->onReceivedRoomList(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$1000(Lus/zoom/zrc/login/LoginPresenter;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrc/login/LoginPresenter;->onGoogleAuthReturn(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lus/zoom/zrc/login/LoginPresenter;)Lus/zoom/zrc/login/LoginContract$IUI;
    .locals 0

    .line 61
    iget-object p0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    return-object p0
.end method

.method static synthetic access$1200(Lus/zoom/zrc/login/LoginPresenter;)Landroid/content/Context;
    .locals 0

    .line 61
    iget-object p0, p0, Lus/zoom/zrc/login/LoginPresenter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1300(Lus/zoom/zrc/login/LoginPresenter;)Landroid/os/Handler;
    .locals 0

    .line 61
    iget-object p0, p0, Lus/zoom/zrc/login/LoginPresenter;->mTimerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/login/LoginPresenter;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lus/zoom/zrc/login/LoginPresenter;->onConnectingFinished(I)V

    return-void
.end method

.method static synthetic access$300(Lus/zoom/zrc/login/LoginPresenter;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lus/zoom/zrc/login/LoginPresenter;->onQueryWithPairingCodeFinished(I)V

    return-void
.end method

.method static synthetic access$400(Lus/zoom/zrc/login/LoginPresenter;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrc/login/LoginPresenter;->onCreateRoomResult(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lus/zoom/zrc/login/LoginPresenter;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lus/zoom/zrc/login/LoginPresenter;->onUpdateRoomResult(I)V

    return-void
.end method

.method static synthetic access$600(Lus/zoom/zrc/login/LoginPresenter;ILjava/util/List;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/login/LoginPresenter;->onReceivedListCalendarResult(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$700(Lus/zoom/zrc/login/LoginPresenter;ILus/zoom/zrcsdk/model/ZRCLocationTree;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/login/LoginPresenter;->onReceivedListLocationResult(ILus/zoom/zrcsdk/model/ZRCLocationTree;)V

    return-void
.end method

.method static synthetic access$800(Lus/zoom/zrc/login/LoginPresenter;ILus/zoom/zrcsdk/model/ZRCCalendarResourceItem;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/login/LoginPresenter;->onAssignRoomCalendarResult(ILus/zoom/zrcsdk/model/ZRCCalendarResourceItem;)V

    return-void
.end method

.method static synthetic access$900(Lus/zoom/zrc/login/LoginPresenter;ILjava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/login/LoginPresenter;->onAssignRoomLocationResult(ILjava/lang/String;)V

    return-void
.end method

.method private doNotSupportZRPMode()Z
    .locals 1

    .line 871
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->canSwitchWorkMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isOnlySupportZRPMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getString(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 854
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private varargs getString(I[Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 858
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private onAssignRoomCalendarResult(ILus/zoom/zrcsdk/model/ZRCCalendarResourceItem;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1051
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mAssignedCalendarService:Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mAssignedCalendarResource:Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;

    if-eqz p1, :cond_1

    .line 1053
    iget-object v1, p0, Lus/zoom/zrc/login/LoginPresenter;->mCreatedRoom:Lus/zoom/zrcsdk/model/RoomInfo;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lus/zoom/zrcsdk/model/RoomInfo;->setName(Ljava/lang/String;)V

    .line 1055
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mAssignedCalendarResource:Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;->getResourceId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mAssignedCalendarResource:Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;

    .line 1056
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;->getEmail()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lus/zoom/zrcsdk/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1058
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mAssignedCalendarService:Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;->getResources()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1060
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1061
    iget-object v1, p0, Lus/zoom/zrc/login/LoginPresenter;->mAssignedCalendarService:Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    invoke-virtual {v1, p1}, Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;->setResources(Ljava/util/List;)V

    .line 1063
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1064
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUICache:Lus/zoom/zrc/login/LoginUICache;

    invoke-virtual {p1, p2}, Lus/zoom/zrc/login/LoginUICache;->selectCalendarResource(Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;)V

    .line 1065
    iput-object p2, p0, Lus/zoom/zrc/login/LoginPresenter;->mAssignedCalendarResource:Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;

    .line 1066
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$INavigator;->onAddCalendarResourceSuccess()V

    goto :goto_0

    .line 1070
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mCreatedRoom:Lus/zoom/zrcsdk/model/RoomInfo;

    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/model/RoomInfo;->setName(Ljava/lang/String;)V

    .line 1071
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUICache:Lus/zoom/zrc/login/LoginUICache;

    iget-object p2, p0, Lus/zoom/zrc/login/LoginPresenter;->mAssignedCalendarService:Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    invoke-virtual {p1, p2}, Lus/zoom/zrc/login/LoginUICache;->selectCalendarService(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)V

    .line 1072
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUICache:Lus/zoom/zrc/login/LoginUICache;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/login/LoginUICache;->selectCalendarResource(Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;)V

    .line 1075
    :cond_2
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mLocationHelper:Lus/zoom/zrc/login/LoginLocationHelper;

    invoke-virtual {p1}, Lus/zoom/zrc/login/LoginLocationHelper;->hasLocationToDisplay()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1076
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object p1

    invoke-interface {p1, v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->onShowLocationPicker(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V

    goto :goto_1

    .line 1078
    :cond_3
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$INavigator;->onSetRoomPassCode()V

    goto :goto_1

    .line 1081
    :cond_4
    iput-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mAssignedCalendarService:Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    .line 1082
    iput-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mAssignedCalendarResource:Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;

    .line 1083
    iget-object p2, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    sget-object v1, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->AssignRoomCalendar:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    invoke-interface {p2, v1, p1, v0}, Lus/zoom/zrc/login/LoginContract$IUI;->onErrorToast(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private onAssignRoomLocationResult(ILjava/lang/String;)V
    .locals 2

    if-nez p1, :cond_3

    .line 1089
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mAssignedLocation:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->isAssignable()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1091
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUICache:Lus/zoom/zrc/login/LoginUICache;

    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mAssignedLocation:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/login/LoginUICache;->selectLocation(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V

    .line 1095
    :cond_1
    invoke-static {p2}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1096
    iput-object p2, p0, Lus/zoom/zrc/login/LoginPresenter;->mPassCode:Ljava/lang/String;

    .line 1099
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$INavigator;->onSetRoomPassCode()V

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 1101
    iput-object p2, p0, Lus/zoom/zrc/login/LoginPresenter;->mAssignedLocation:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    .line 1102
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    sget-object v1, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->AssignRoomLocation:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    invoke-interface {v0, v1, p1, p2}, Lus/zoom/zrc/login/LoginContract$IUI;->onErrorToast(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private onConnectingFinished(I)V
    .locals 2

    if-nez p1, :cond_1

    .line 975
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    const/4 v0, 0x0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->isStandaloneZRP()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lus/zoom/zrcbox/R$string;->connecting_to_zoom:I

    goto :goto_0

    :cond_0
    sget v1, Lus/zoom/zrcbox/R$string;->connecting_to_zp:I

    :goto_0
    invoke-direct {p0, v1}, Lus/zoom/zrc/login/LoginPresenter;->getString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lus/zoom/zrc/login/LoginContract$IUI;->onShowWaitingDialog(ZLjava/lang/CharSequence;)V

    goto :goto_1

    .line 977
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lus/zoom/zrc/utils/ZRCNetworkUtils;->isNetworkDisconnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 978
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$INavigator;->onShowNetworkDisconnected()V

    goto :goto_1

    .line 980
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$INavigator;->onShowFailedToConnectZoomRoom()V

    :goto_1
    return-void
.end method

.method private onCreateNewRoomSuccess()V
    .locals 2

    .line 719
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mCalendarHelper:Lus/zoom/zrc/login/LoginCalendarHelper;

    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginCalendarHelper;->canAddCalendar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->onAddNewCalendar()V

    goto :goto_0

    .line 721
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mCalendarHelper:Lus/zoom/zrc/login/LoginCalendarHelper;

    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginCalendarHelper;->hasCalendarToDisplay()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 722
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-interface {v0, v1}, Lus/zoom/zrc/login/LoginContract$INavigator;->onShowCalendarPicker(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)V

    goto :goto_0

    .line 723
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mLocationHelper:Lus/zoom/zrc/login/LoginLocationHelper;

    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginLocationHelper;->hasLocationToDisplay()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 724
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-interface {v0, v1}, Lus/zoom/zrc/login/LoginContract$INavigator;->onShowLocationPicker(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V

    goto :goto_0

    .line 726
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->onSetRoomPassCode()V

    :goto_0
    return-void
.end method

.method private onCreateRoomResult(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_2

    .line 1005
    iput-object p3, p0, Lus/zoom/zrc/login/LoginPresenter;->mPassCode:Ljava/lang/String;

    .line 1008
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mCreatedRoom:Lus/zoom/zrcsdk/model/RoomInfo;

    invoke-virtual {p1, p2}, Lus/zoom/zrcsdk/model/RoomInfo;->setEmail(Ljava/lang/String;)V

    .line 1009
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mRoomList:Ljava/util/List;

    if-nez p1, :cond_0

    .line 1011
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1012
    iput-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mRoomList:Ljava/util/List;

    .line 1014
    :cond_0
    iget-object p3, p0, Lus/zoom/zrc/login/LoginPresenter;->mCreatedRoom:Lus/zoom/zrcsdk/model/RoomInfo;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1017
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mCalendarHelper:Lus/zoom/zrc/login/LoginCalendarHelper;

    invoke-virtual {p1}, Lus/zoom/zrc/login/LoginCalendarHelper;->getCalendarServiceList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1018
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mCalendarHelper:Lus/zoom/zrc/login/LoginCalendarHelper;

    invoke-virtual {p1}, Lus/zoom/zrc/login/LoginCalendarHelper;->getCalendarServiceList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1021
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1, p2}, Lus/zoom/zrc/model/Model;->requestZoomPresenceCalendar(Ljava/lang/String;)V

    .line 1022
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$INavigator;->onCreateRoomSuccess()V

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 1024
    iput-object p2, p0, Lus/zoom/zrc/login/LoginPresenter;->mCreatedRoom:Lus/zoom/zrcsdk/model/RoomInfo;

    .line 1025
    iget-object p3, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    sget-object v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->CreateNewRoom:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    invoke-interface {p3, v0, p1, p2}, Lus/zoom/zrc/login/LoginContract$IUI;->onErrorToast(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private onGoogleAuthReturn(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    .line 698
    iget-object p2, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    const/4 p3, 0x0

    sget v0, Lus/zoom/zrcbox/R$string;->requesting_zp_info:I

    invoke-direct {p0, v0}, Lus/zoom/zrc/login/LoginPresenter;->getString(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Lus/zoom/zrc/login/LoginContract$IUI;->onShowWaitingDialog(ZLjava/lang/CharSequence;)V

    .line 699
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2, p1}, Lus/zoom/zrc/model/Model;->loginWithGoogleAccessToken(Ljava/lang/String;)V

    goto :goto_0

    .line 701
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$INavigator;->getBackStackCount()I

    move-result p1

    if-nez p1, :cond_1

    .line 702
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$INavigator;->onEnterParingCode()V

    .line 704
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->onLoginOrEnterLicense(Ljava/lang/String;)V

    .line 705
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    sget-object v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->GoogleLoginFailed:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    invoke-interface {p1, v0, p2, p3}, Lus/zoom/zrc/login/LoginContract$IUI;->onErrorToast(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private onGoogleSignInFailed()V
    .locals 4

    .line 710
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    .line 711
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lus/zoom/zrc/login/LoginContract$INavigator;->onLoginOrEnterLicense(Ljava/lang/String;)V

    goto :goto_0

    .line 713
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Google Sign-In in state:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 715
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    sget-object v2, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->GoogleLoginFailed:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    sget v3, Lus/zoom/zrcbox/R$string;->google_login_failed:I

    invoke-direct {p0, v3}, Lus/zoom/zrc/login/LoginPresenter;->getString(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v0, v2, v1, v3}, Lus/zoom/zrc/login/LoginContract$IUI;->onErrorDialog(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)V

    return-void
.end method

.method private onQueryWithPairingCodeFinished(I)V
    .locals 3

    if-nez p1, :cond_0

    .line 965
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    const/4 v0, 0x0

    sget v1, Lus/zoom/zrcbox/R$string;->connecting_to_zp:I

    invoke-direct {p0, v1}, Lus/zoom/zrc/login/LoginPresenter;->getString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lus/zoom/zrc/login/LoginContract$IUI;->onShowWaitingDialog(ZLjava/lang/CharSequence;)V

    goto :goto_0

    .line 967
    :cond_0
    invoke-static {p1}, Lus/zoom/zrc/login/LoginUsageTrack;->sendQueryWithPairingCode(I)V

    .line 968
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->onEnterParingCode()V

    .line 969
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    sget-object v1, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->QueryWithParingCode:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lus/zoom/zrc/login/LoginContract$IUI;->onErrorToast(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private onReceivedListCalendarResult(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;",
            ">;)V"
        }
    .end annotation

    .line 985
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mCalendarHelper:Lus/zoom/zrc/login/LoginCalendarHelper;

    invoke-virtual {v0, p2}, Lus/zoom/zrc/login/LoginCalendarHelper;->setCalendarServices(Ljava/util/List;)V

    .line 987
    iget-object p2, p0, Lus/zoom/zrc/login/LoginPresenter;->mRefreshCalendarCallback:Lus/zoom/zrc/login/LoginContract$IRefreshCalendarCallback;

    if-eqz p2, :cond_0

    .line 989
    invoke-direct {p0, p1}, Lus/zoom/zrc/login/LoginPresenter;->onRefreshCalendarListResult(I)V

    return-void

    .line 993
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->requestZoomPresenceLocation()Z

    return-void
.end method

.method private onReceivedListLocationResult(ILus/zoom/zrcsdk/model/ZRCLocationTree;)V
    .locals 0

    .line 997
    invoke-static {p2}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->prepareLocationTree(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V

    .line 998
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mLocationHelper:Lus/zoom/zrc/login/LoginLocationHelper;

    invoke-virtual {p1, p2}, Lus/zoom/zrc/login/LoginLocationHelper;->setRootLocation(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V

    .line 999
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginPresenter;->onCreateNewRoomSuccess()V

    return-void
.end method

.method private onReceivedRoomList(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/RoomInfo;",
            ">;I)V"
        }
    .end annotation

    .line 953
    iput-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mRoomList:Ljava/util/List;

    .line 954
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUICache:Lus/zoom/zrc/login/LoginUICache;

    invoke-virtual {v0, p2}, Lus/zoom/zrc/login/LoginUICache;->setBillingType(I)V

    if-eqz p1, :cond_0

    .line 956
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 957
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$INavigator;->onShowZoomRoomPicker()V

    goto :goto_0

    .line 959
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$INavigator;->onNoZoomRoomsFound()V

    :goto_0
    return-void
.end method

.method private onRefreshCalendarListResult(I)V
    .locals 8

    if-eqz p1, :cond_0

    .line 808
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mRefreshCalendarCallback:Lus/zoom/zrc/login/LoginContract$IRefreshCalendarCallback;

    invoke-interface {v0, p1}, Lus/zoom/zrc/login/LoginContract$IRefreshCalendarCallback;->onCalendarRefreshResult(I)V

    return-void

    .line 812
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUICache:Lus/zoom/zrc/login/LoginUICache;

    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginUICache;->getSelectedCalendarService()Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    move-result-object v0

    .line 813
    iget-object v1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUICache:Lus/zoom/zrc/login/LoginUICache;

    invoke-virtual {v1}, Lus/zoom/zrc/login/LoginUICache;->getSelectedCalendarResource()Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;

    move-result-object v1

    .line 815
    iget-object v2, p0, Lus/zoom/zrc/login/LoginPresenter;->mUICache:Lus/zoom/zrc/login/LoginUICache;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lus/zoom/zrc/login/LoginUICache;->selectCalendarService(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)V

    .line 816
    iget-object v2, p0, Lus/zoom/zrc/login/LoginPresenter;->mUICache:Lus/zoom/zrc/login/LoginUICache;

    invoke-virtual {v2, v3}, Lus/zoom/zrc/login/LoginUICache;->selectCalendarResource(Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;)V

    if-eqz v0, :cond_3

    .line 818
    iget-object v2, p0, Lus/zoom/zrc/login/LoginPresenter;->mCalendarHelper:Lus/zoom/zrc/login/LoginCalendarHelper;

    invoke-virtual {v2}, Lus/zoom/zrc/login/LoginCalendarHelper;->getCalendarServiceList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 820
    iget-object v2, p0, Lus/zoom/zrc/login/LoginPresenter;->mCalendarHelper:Lus/zoom/zrc/login/LoginCalendarHelper;

    invoke-virtual {v2}, Lus/zoom/zrc/login/LoginCalendarHelper;->getCalendarServiceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    .line 821
    invoke-virtual {v4, v0}, Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 822
    iput-object v4, p0, Lus/zoom/zrc/login/LoginPresenter;->mAssignedCalendarService:Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    move-object v0, v4

    goto :goto_0

    :cond_2
    move-object v0, v3

    .line 828
    :goto_0
    iget-object v2, p0, Lus/zoom/zrc/login/LoginPresenter;->mUICache:Lus/zoom/zrc/login/LoginUICache;

    invoke-virtual {v2, v0}, Lus/zoom/zrc/login/LoginUICache;->selectCalendarService(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)V

    :cond_3
    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    .line 831
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;->getResources()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 833
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;->getResources()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v4, v3

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;

    .line 834
    iget-object v6, p0, Lus/zoom/zrc/login/LoginPresenter;->mCalendarHelper:Lus/zoom/zrc/login/LoginCalendarHelper;

    invoke-virtual {v6, v0}, Lus/zoom/zrc/login/LoginCalendarHelper;->isResourceCanCustomInput(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 835
    invoke-virtual {v5}, Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lus/zoom/zrcsdk/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 836
    iput-object v1, p0, Lus/zoom/zrc/login/LoginPresenter;->mAssignedCalendarResource:Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;

    goto :goto_2

    .line 840
    :cond_5
    invoke-virtual {v5, v1}, Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 841
    iput-object v5, p0, Lus/zoom/zrc/login/LoginPresenter;->mAssignedCalendarResource:Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;

    :goto_2
    move-object v4, v5

    goto :goto_1

    .line 846
    :cond_6
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUICache:Lus/zoom/zrc/login/LoginUICache;

    invoke-virtual {v0, v4}, Lus/zoom/zrc/login/LoginUICache;->selectCalendarResource(Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;)V

    .line 849
    :cond_7
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mRefreshCalendarCallback:Lus/zoom/zrc/login/LoginContract$IRefreshCalendarCallback;

    invoke-interface {v0, p1}, Lus/zoom/zrc/login/LoginContract$IRefreshCalendarCallback;->onCalendarRefreshResult(I)V

    .line 850
    iput-object v3, p0, Lus/zoom/zrc/login/LoginPresenter;->mRefreshCalendarCallback:Lus/zoom/zrc/login/LoginContract$IRefreshCalendarCallback;

    return-void
.end method

.method private onUpdateRoomResult(I)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 1031
    iget-boolean p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUpdateRoomPassCode:Z

    if-eqz p1, :cond_1

    .line 1032
    iput-boolean v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUpdateRoomPassCode:Z

    const/4 p1, 0x5

    .line 1033
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1034
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginPresenter;->connectToCreatedRoom()V

    goto :goto_1

    .line 1036
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$INavigator;->onZoomRoomAdded()V

    goto :goto_1

    .line 1039
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mCreatedRoom:Lus/zoom/zrcsdk/model/RoomInfo;

    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUpdateRoomName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/model/RoomInfo;->setDisplayName(Ljava/lang/String;)V

    .line 1040
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginPresenter;->onCreateNewRoomSuccess()V

    goto :goto_1

    .line 1043
    :cond_2
    iget-boolean v1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUpdateRoomPassCode:Z

    if-eqz v1, :cond_3

    sget-object v1, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->SetRoomPassCode:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    goto :goto_0

    :cond_3
    sget-object v1, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->UpdateRoomName:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    .line 1044
    :goto_0
    iput-boolean v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUpdateRoomPassCode:Z

    .line 1045
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lus/zoom/zrc/login/LoginContract$IUI;->onErrorToast(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private onWebLoginFailed(I)V
    .locals 4

    .line 753
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lus/zoom/zrc/utils/ZRCNetworkUtils;->isNetworkDisconnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$INavigator;->onShowNetworkDisconnected()V

    return-void

    :cond_0
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 761
    :pswitch_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getLoginType()I

    move-result v1

    .line 762
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getZoomRefreshToken()Ljava/lang/String;

    move-result-object v2

    if-ne v1, v0, :cond_5

    .line 764
    invoke-static {v2}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 765
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getWorkEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 766
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->hasPassword()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 767
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->getBackStackCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mOpenFromPT:Z

    if-nez v0, :cond_1

    .line 768
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->onEnterParingCode()V

    .line 770
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getWorkEmail()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lus/zoom/zrc/login/LoginContract$INavigator;->onLoginOrEnterLicense(Ljava/lang/String;)V

    goto :goto_0

    .line 771
    :cond_2
    invoke-static {v2}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mLicenseKey:Ljava/lang/String;

    .line 772
    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    .line 773
    iput-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mLicenseKey:Ljava/lang/String;

    .line 774
    iget-object v1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {v1}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v1

    invoke-interface {v1}, Lus/zoom/zrc/login/LoginContract$INavigator;->getBackStackCount()I

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lus/zoom/zrc/login/LoginPresenter;->mOpenFromPTBackToLicenseKey:Z

    if-nez v1, :cond_4

    .line 775
    iget-boolean v1, p0, Lus/zoom/zrc/login/LoginPresenter;->mOpenFromPT:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {v1}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v1

    invoke-interface {v1}, Lus/zoom/zrc/login/LoginContract$INavigator;->onEnterParingCode()V

    .line 776
    :cond_3
    iget-object v1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {v1}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v1

    invoke-interface {v1, v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->onLoginOrEnterLicense(Ljava/lang/String;)V

    .line 778
    :cond_4
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->onEnterLicense()V

    .line 781
    :cond_5
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    sget-object v1, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->WebLoginFinish:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    sget v2, Lus/zoom/zrcbox/R$string;->failed_to_get_zpinfo_message_wrong_password:I

    .line 782
    invoke-direct {p0, v2}, Lus/zoom/zrc/login/LoginPresenter;->getString(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 781
    invoke-interface {v0, v1, p1, v2}, Lus/zoom/zrc/login/LoginContract$IUI;->onErrorDialog(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)V

    return-void

    :goto_1
    const v1, 0x5f5f870

    if-eq p1, v1, :cond_7

    const v1, 0x5f6eaa0

    if-eq p1, v1, :cond_6

    .line 796
    sget v1, Lus/zoom/zrcbox/R$string;->failed_to_get_zpinfo_message_wrong_config:I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-direct {p0, v1, v0}, Lus/zoom/zrc/login/LoginPresenter;->getString(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2

    .line 793
    :cond_6
    sget v0, Lus/zoom/zrcbox/R$string;->failed_to_get_zpinfo_message_untrusted_cert:I

    invoke-direct {p0, v0}, Lus/zoom/zrc/login/LoginPresenter;->getString(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2

    .line 790
    :cond_7
    sget v0, Lus/zoom/zrcbox/R$string;->failed_to_get_zpinfo_message_internet_issue:I

    invoke-direct {p0, v0}, Lus/zoom/zrc/login/LoginPresenter;->getString(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 799
    :goto_2
    iget-object v1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    sget-object v2, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->WebLoginFinish:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    invoke-interface {v1, v2, p1, v0}, Lus/zoom/zrc/login/LoginContract$IUI;->onErrorDialog(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onWebLoginFinish(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 864
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginPresenter;->onWebLoginSuccess()V

    goto :goto_0

    .line 866
    :cond_0
    invoke-direct {p0, p1}, Lus/zoom/zrc/login/LoginPresenter;->onWebLoginFailed(I)V

    :goto_0
    return-void
.end method

.method private onWebLoginSuccess()V
    .locals 7

    const/4 v0, 0x0

    .line 876
    iput-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mCreatedRoom:Lus/zoom/zrcsdk/model/RoomInfo;

    .line 878
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v1

    const/16 v2, -0x2711

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x5

    if-ne v6, v1, :cond_3

    .line 879
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->isStandaloneZRP()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 880
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginPresenter;->doNotSupportZRPMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Error: user select a standalone room in paired mode on device: %s|%s"

    .line 881
    new-array v1, v3, [Ljava/lang/Object;

    sget-object v3, Lus/zoom/zrc/utils/DeviceInfoUtils;->MODEL:Ljava/lang/String;

    aput-object v3, v1, v5

    sget-object v3, Lus/zoom/zrc/utils/DeviceInfoUtils;->BRAND:Ljava/lang/String;

    aput-object v3, v1, v4

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 882
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    sget-object v1, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->WebLoginFinish:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    sget v3, Lus/zoom/zrcbox/R$string;->login_error_standalone_zrp_not_supported:I

    invoke-direct {p0, v3}, Lus/zoom/zrc/login/LoginPresenter;->getString(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lus/zoom/zrc/login/LoginContract$IUI;->onErrorDialog(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 884
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    sget-object v2, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->SelectingStandaloneZRPForPairing:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    invoke-interface {v1, v2, v5, v0}, Lus/zoom/zrc/login/LoginContract$IUI;->onErrorDialog(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 887
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->checkEncryptedCommunicationWithZoomRoom()Z

    move-result v0

    if-nez v0, :cond_2

    .line 888
    iput-boolean v5, p0, Lus/zoom/zrc/login/LoginPresenter;->mOpenFromPT:Z

    .line 889
    iput-boolean v5, p0, Lus/zoom/zrc/login/LoginPresenter;->mOpenFromPTBackToLicenseKey:Z

    return-void

    .line 892
    :cond_2
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->notifyZoomRoomControllerLoggedIn()V

    goto/16 :goto_2

    .line 895
    :cond_3
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getWorkMode()I

    move-result v1

    if-nez v1, :cond_4

    .line 899
    invoke-static {}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getInstance()Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;

    move-result-object v6

    invoke-virtual {v6}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->supportsGetWorkMode()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 900
    invoke-static {}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getInstance()Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getWorkMode()I

    move-result v1

    .line 905
    :cond_4
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->canSwitchWorkMode()Z

    move-result v6

    if-nez v6, :cond_6

    .line 909
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isOnlySupportZRPMode()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    .line 916
    :cond_6
    :goto_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v6

    invoke-virtual {v6}, Lus/zoom/zrc/model/Model;->isStandaloneZRP()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 917
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginPresenter;->doNotSupportZRPMode()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "Error: user select a standalone room on device: %s|%s"

    .line 919
    new-array v1, v3, [Ljava/lang/Object;

    sget-object v3, Lus/zoom/zrc/utils/DeviceInfoUtils;->MODEL:Ljava/lang/String;

    aput-object v3, v1, v5

    sget-object v3, Lus/zoom/zrc/utils/DeviceInfoUtils;->BRAND:Ljava/lang/String;

    aput-object v3, v1, v4

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 920
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    sget-object v1, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->WebLoginFinish:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    sget v3, Lus/zoom/zrcbox/R$string;->login_error_standalone_zrp_not_supported:I

    invoke-direct {p0, v3}, Lus/zoom/zrc/login/LoginPresenter;->getString(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lus/zoom/zrc/login/LoginContract$IUI;->onErrorDialog(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)V

    return-void

    :cond_7
    const/4 v1, 0x2

    .line 928
    :cond_8
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->isStandaloneDigitalSignage()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 929
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isOnlySupportZRPMode()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "Error: user select a DSOnly room on device: %s|%s"

    .line 930
    new-array v2, v3, [Ljava/lang/Object;

    sget-object v3, Lus/zoom/zrc/utils/DeviceInfoUtils;->MODEL:Ljava/lang/String;

    aput-object v3, v2, v5

    sget-object v3, Lus/zoom/zrc/utils/DeviceInfoUtils;->BRAND:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 931
    iget-object v1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    sget-object v2, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->WebLoginFinish:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    const/16 v3, -0x2712

    invoke-interface {v1, v2, v3, v0}, Lus/zoom/zrc/login/LoginContract$IUI;->onErrorDialog(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)V

    return-void

    :cond_9
    const/4 v1, 0x1

    :cond_a
    if-eqz v1, :cond_c

    const-string v0, "get ZoomRoom info succeed, connect %s with work mode: %s"

    .line 939
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->getIpAddressOfZoomRoom()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1}, Lus/zoom/zrcsdk/model/ZRCWorkMode;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 940
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->setWorkMode(I)V

    .line 941
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->connectWithZoomRoom()V

    .line 942
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->isStandaloneZRP()Z

    move-result v1

    if-eqz v1, :cond_b

    sget v1, Lus/zoom/zrcbox/R$string;->connecting_to_zoom:I

    goto :goto_1

    :cond_b
    sget v1, Lus/zoom/zrcbox/R$string;->connecting_to_zp:I

    :goto_1
    invoke-direct {p0, v1}, Lus/zoom/zrc/login/LoginPresenter;->getString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Lus/zoom/zrc/login/LoginContract$IUI;->onShowWaitingDialog(ZLjava/lang/CharSequence;)V

    goto :goto_2

    :cond_c
    const-string v0, "get ZoomRoom info succeed, show selecting work mode"

    .line 945
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 946
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->setAppState(I)V

    .line 947
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->onShowSelectWorkMode()V

    :goto_2
    return-void
.end method

.method private startRefreshZRCIpTimer()V
    .locals 2

    .line 731
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginPresenter;->stopRefreshZRCIpTimer()V

    .line 732
    new-instance v0, Lus/zoom/zrc/login/LoginPresenter$18;

    invoke-direct {v0, p0}, Lus/zoom/zrc/login/LoginPresenter$18;-><init>(Lus/zoom/zrc/login/LoginPresenter;)V

    iput-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mRefreshIpTask:Ljava/lang/Runnable;

    .line 743
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mTimerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/zrc/login/LoginPresenter;->mRefreshIpTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private stopRefreshZRCIpTimer()V
    .locals 2

    .line 747
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mRefreshIpTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 748
    iget-object v1, p0, Lus/zoom/zrc/login/LoginPresenter;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public assignRoomCalendar(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;)V
    .locals 5

    .line 403
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mAssignedCalendarResource:Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;

    .line 404
    iput-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mAssignedCalendarService:Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    .line 405
    iput-object p2, p0, Lus/zoom/zrc/login/LoginPresenter;->mAssignedCalendarResource:Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;

    .line 407
    iget-object v1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUICache:Lus/zoom/zrc/login/LoginUICache;

    invoke-virtual {v1, p1}, Lus/zoom/zrc/login/LoginUICache;->selectCalendarService(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)V

    const/4 v1, 0x0

    if-ne v0, p2, :cond_1

    .line 411
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mLocationHelper:Lus/zoom/zrc/login/LoginLocationHelper;

    invoke-virtual {p1}, Lus/zoom/zrc/login/LoginLocationHelper;->hasLocationToDisplay()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 412
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object p1

    invoke-interface {p1, v1}, Lus/zoom/zrc/login/LoginContract$INavigator;->onShowLocationPicker(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V

    goto :goto_0

    .line 414
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$INavigator;->onSetRoomPassCode()V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 421
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Lus/zoom/zrc/login/LoginUsageTrack;->sendAssignCalendar(Z)V

    goto :goto_2

    .line 424
    :cond_2
    iget-object v3, p0, Lus/zoom/zrc/login/LoginPresenter;->mAssignedCalendarResource:Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Lus/zoom/zrc/login/LoginUsageTrack;->sendUnAssignCalendar(Z)V

    .line 428
    :goto_2
    iget-object v3, p0, Lus/zoom/zrc/login/LoginPresenter;->mCreatedRoom:Lus/zoom/zrcsdk/model/RoomInfo;

    if-eqz v3, :cond_4

    .line 429
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    iget-object v4, p0, Lus/zoom/zrc/login/LoginPresenter;->mCreatedRoom:Lus/zoom/zrcsdk/model/RoomInfo;

    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/RoomInfo;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1, p2}, Lus/zoom/zrc/model/Model;->assignRoomCalendar(Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;)Z

    move-result p1

    goto :goto_3

    :cond_4
    const-string p1, "assignRoomCalendar have not created room!!!"

    .line 431
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_6

    if-nez p2, :cond_5

    .line 436
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    sget p2, Lus/zoom/zrcbox/R$string;->unassigning_calendar:I

    invoke-direct {p0, p2}, Lus/zoom/zrc/login/LoginPresenter;->getString(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lus/zoom/zrc/login/LoginContract$IUI;->onShowWaitingDialog(ZLjava/lang/CharSequence;)V

    goto :goto_4

    .line 438
    :cond_5
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    sget p2, Lus/zoom/zrcbox/R$string;->assigning_calendar:I

    invoke-direct {p0, p2}, Lus/zoom/zrc/login/LoginPresenter;->getString(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lus/zoom/zrc/login/LoginContract$IUI;->onShowWaitingDialog(ZLjava/lang/CharSequence;)V

    goto :goto_4

    .line 441
    :cond_6
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    sget-object p2, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->AssignRoomCalendar:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    invoke-interface {p1, p2, v2, v1}, Lus/zoom/zrc/login/LoginContract$IUI;->onErrorToast(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)V

    :goto_4
    return-void
.end method

.method public assignRoomLocation(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V
    .locals 6

    .line 447
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mAssignedLocation:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    if-ne v0, p1, :cond_0

    .line 449
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$INavigator;->onSetRoomPassCode()V

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 453
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->isAssignable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 454
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->isAssignable()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-nez v0, :cond_3

    if-nez v3, :cond_3

    .line 457
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUICache:Lus/zoom/zrc/login/LoginUICache;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/login/LoginUICache;->selectLocation(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V

    .line 458
    iput-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mAssignedLocation:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    .line 459
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$INavigator;->onSetRoomPassCode()V

    .line 461
    invoke-static {v2}, Lus/zoom/zrc/login/LoginUsageTrack;->sendUnAssignLocation(Z)V

    return-void

    .line 467
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mCreatedRoom:Lus/zoom/zrcsdk/model/RoomInfo;

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    .line 468
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->isAssignable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 470
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mLocationHelper:Lus/zoom/zrc/login/LoginLocationHelper;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/login/LoginLocationHelper;->getLocationPath(Lus/zoom/zrcsdk/model/ZRCLocationTree;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/login/LoginUsageTrack;->sendAssignLocation(Ljava/lang/String;)V

    .line 471
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    iget-object v4, p0, Lus/zoom/zrc/login/LoginPresenter;->mCreatedRoom:Lus/zoom/zrcsdk/model/RoomInfo;

    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/RoomInfo;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, p1}, Lus/zoom/zrc/model/Model;->assignRoomLocation(Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCLocationTree;)Z

    move-result v0

    goto :goto_2

    .line 474
    :cond_4
    invoke-static {v1}, Lus/zoom/zrc/login/LoginUsageTrack;->sendUnAssignLocation(Z)V

    .line 475
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    iget-object v4, p0, Lus/zoom/zrc/login/LoginPresenter;->mCreatedRoom:Lus/zoom/zrcsdk/model/RoomInfo;

    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/RoomInfo;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lus/zoom/zrc/model/Model;->assignRoomLocation(Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCLocationTree;)Z

    move-result v0

    goto :goto_2

    .line 478
    :cond_5
    sget-object v0, Lus/zoom/zrc/login/LoginPresenter;->TAG:Ljava/lang/String;

    const-string v4, "assignRoomLocation have not created room!!!"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_6

    .line 482
    iput-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mAssignedLocation:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    .line 483
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {p1, v1, v3}, Lus/zoom/zrc/login/LoginContract$IUI;->onShowWaitingDialog(ZLjava/lang/CharSequence;)V

    goto :goto_3

    .line 485
    :cond_6
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    sget-object v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->AssignRoomLocation:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    invoke-interface {p1, v0, v2, v3}, Lus/zoom/zrc/login/LoginContract$IUI;->onErrorToast(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)V

    :goto_3
    return-void
.end method

.method public cancelCreateRoom()V
    .locals 2

    const/4 v0, 0x0

    .line 546
    iput-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mCreatedRoom:Lus/zoom/zrcsdk/model/RoomInfo;

    .line 547
    iput-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mAssignedCalendarService:Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    .line 548
    iput-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mAssignedCalendarResource:Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;

    .line 549
    iput-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mAssignedLocation:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    .line 550
    iput-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mPassCode:Ljava/lang/String;

    .line 551
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginPresenter;->getUICache()Lus/zoom/zrc/login/LoginContract$IUICache;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lus/zoom/zrc/login/LoginContract$IUICache;->clear(I)V

    return-void
.end method

.method public connectToCreatedRoom()V
    .locals 4

    .line 515
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mCreatedRoom:Lus/zoom/zrcsdk/model/RoomInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "connect to created room: %s"

    const/4 v3, 0x1

    .line 516
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 517
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mCreatedRoom:Lus/zoom/zrcsdk/model/RoomInfo;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginPresenter;->selectZoomRoom(Lus/zoom/zrcsdk/model/RoomInfo;)V

    goto :goto_0

    :cond_0
    const-string v0, "connectToCreatedRoom has no created room!!!"

    .line 519
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 521
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    sget v2, Lus/zoom/zrcbox/R$string;->connecting_to_zp:I

    invoke-direct {p0, v2}, Lus/zoom/zrc/login/LoginPresenter;->getString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lus/zoom/zrc/login/LoginContract$IUI;->onShowWaitingDialog(ZLjava/lang/CharSequence;)V

    return-void
.end method

.method public continueConnectStandaloneZRPInPairedMode()V
    .locals 3

    const-string v0, "continue connect Standalone ZRP in Paired Mode"

    const/4 v1, 0x0

    .line 564
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 565
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->setWorkMode(I)V

    .line 566
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->closeConnection()V

    .line 567
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->connectWithZoomRoom()V

    .line 568
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    sget v1, Lus/zoom/zrcbox/R$string;->connecting_to_zoom:I

    invoke-direct {p0, v1}, Lus/zoom/zrc/login/LoginPresenter;->getString(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lus/zoom/zrc/login/LoginContract$IUI;->onShowWaitingDialog(ZLjava/lang/CharSequence;)V

    return-void
.end method

.method public createNewRoom(Ljava/lang/String;)V
    .locals 6

    .line 372
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mCreatedRoom:Lus/zoom/zrcsdk/model/RoomInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomInfo;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 373
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mCreatedRoom:Lus/zoom/zrcsdk/model/RoomInfo;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lus/zoom/zrcsdk/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginPresenter;->onCreateNewRoomSuccess()V

    goto/16 :goto_0

    .line 376
    :cond_0
    invoke-static {}, Lus/zoom/zrc/login/LoginUsageTrack;->sendRenameRoom()V

    .line 377
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    iget-object v4, p0, Lus/zoom/zrc/login/LoginPresenter;->mCreatedRoom:Lus/zoom/zrcsdk/model/RoomInfo;

    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/RoomInfo;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, p1, v1}, Lus/zoom/zrc/model/Model;->updateRoomNameOrLockCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x2

    if-eqz v0, :cond_1

    const-string v0, "updateRoomName(%s) to %s success"

    .line 378
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lus/zoom/zrc/login/LoginPresenter;->mCreatedRoom:Lus/zoom/zrcsdk/model/RoomInfo;

    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/RoomInfo;->getEmail()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 379
    iput-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUpdateRoomName:Ljava/lang/String;

    .line 380
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    sget v0, Lus/zoom/zrcbox/R$string;->renaming_room:I

    invoke-direct {p0, v0}, Lus/zoom/zrc/login/LoginPresenter;->getString(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Lus/zoom/zrc/login/LoginContract$IUI;->onShowWaitingDialog(ZLjava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string v0, "updateRoomName(%s) to %s failed"

    .line 382
    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lus/zoom/zrc/login/LoginPresenter;->mCreatedRoom:Lus/zoom/zrcsdk/model/RoomInfo;

    invoke-virtual {v5}, Lus/zoom/zrcsdk/model/RoomInfo;->getEmail()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p1, v4, v3

    invoke-static {v0, v4}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    sget-object v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->CreateNewRoom:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    invoke-interface {p1, v0, v2, v1}, Lus/zoom/zrc/login/LoginContract$IUI;->onErrorToast(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 387
    :cond_2
    new-instance v0, Lus/zoom/zrcsdk/model/RoomInfo;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/RoomInfo;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mCreatedRoom:Lus/zoom/zrcsdk/model/RoomInfo;

    .line 388
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mCreatedRoom:Lus/zoom/zrcsdk/model/RoomInfo;

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/RoomInfo;->setDisplayName(Ljava/lang/String;)V

    .line 390
    invoke-static {}, Lus/zoom/zrc/login/LoginUsageTrack;->sendCreateNewRoom()V

    .line 391
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->createNewRoom(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "createNewRoom name:%s success"

    .line 392
    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    sget v0, Lus/zoom/zrcbox/R$string;->creating_room:I

    invoke-direct {p0, v0}, Lus/zoom/zrc/login/LoginPresenter;->getString(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Lus/zoom/zrc/login/LoginContract$IUI;->onShowWaitingDialog(ZLjava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const-string v0, "createNewRoom name:%s failed"

    .line 395
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v0, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    sget-object v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->CreateNewRoom:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    invoke-interface {p1, v0, v2, v1}, Lus/zoom/zrc/login/LoginContract$IUI;->onErrorToast(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public generateAddCalendarUrl()Ljava/lang/String;
    .locals 5

    .line 526
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s/calendar/service/clientadd?service_type=3&%s&from_app=zoomrooms"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrcsdk/ZRCSdk;->currentDomain()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->generateZoomAuthParameter()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateGoogleLoginUrl()Ljava/lang/String;
    .locals 1

    .line 284
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->generateGoogleLoginUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarHelper()Lus/zoom/zrc/login/LoginCalendarHelper;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 114
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mCalendarHelper:Lus/zoom/zrc/login/LoginCalendarHelper;

    return-object v0
.end method

.method public getDefaultPassCode()Ljava/lang/String;
    .locals 1

    .line 541
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mPassCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationHelper()Lus/zoom/zrc/login/LoginLocationHelper;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 108
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mLocationHelper:Lus/zoom/zrc/login/LoginLocationHelper;

    return-object v0
.end method

.method public getUICache()Lus/zoom/zrc/login/LoginContract$IUICache;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 120
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUICache:Lus/zoom/zrc/login/LoginUICache;

    return-object v0
.end method

.method public handleAddCalendarCallback(I)V
    .locals 3

    if-nez p1, :cond_0

    .line 663
    new-instance v0, Lus/zoom/zrc/login/LoginPresenter$17;

    invoke-direct {v0, p0}, Lus/zoom/zrc/login/LoginPresenter$17;-><init>(Lus/zoom/zrc/login/LoginPresenter;)V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginPresenter;->refreshCalendarList(Lus/zoom/zrc/login/LoginContract$IRefreshCalendarCallback;)V

    .line 669
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->onAddCalendarSuccess()V

    .line 670
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lus/zoom/zrc/login/LoginContract$IUI;->onShowWaitingDialog(ZLjava/lang/CharSequence;)V

    goto :goto_0

    .line 672
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    sget-object v1, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->AssignRoomCalendar:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    sget v2, Lus/zoom/zrcbox/R$string;->add_calendar_failed:I

    invoke-direct {p0, v2}, Lus/zoom/zrc/login/LoginPresenter;->getString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lus/zoom/zrc/login/LoginContract$IUI;->onErrorToast(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)V

    .line 675
    :goto_0
    invoke-static {p1}, Lus/zoom/zrc/login/LoginUsageTrack;->sendAddCalendarResult(I)V

    return-void
.end method

.method public handleAutoLogin(Ljava/lang/String;)V
    .locals 1

    .line 604
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-interface {v0, p1}, Lus/zoom/zrc/login/LoginContract$INavigator;->onEnterAutoLogin(Ljava/lang/String;)V

    return-void
.end method

.method public handleConnectWithZoomRoomError(I)V
    .locals 3

    .line 609
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    sget-object v1, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->ConnectWithZoomRoomError:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lus/zoom/zrc/login/LoginContract$IUI;->onErrorDialog(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)V

    return-void
.end method

.method public handleConnectionClosed(I)V
    .locals 3

    .line 573
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getKickedOutBy()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 575
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    sget-object v1, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->KickOutByReason:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v2, ""

    invoke-interface {v0, v1, p1, v2}, Lus/zoom/zrc/login/LoginContract$IUI;->onErrorDialog(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 576
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lus/zoom/zrc/utils/ZRCNetworkUtils;->isNetworkDisconnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 577
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$INavigator;->onShowNetworkDisconnected()V

    goto :goto_0

    .line 579
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$INavigator;->onShowFailedToConnectZoomRoom()V

    :goto_0
    return-void
.end method

.method public handleDeleteZoomRoomsFromWeb()V
    .locals 5

    .line 687
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mContext:Landroid/content/Context;

    sget v1, Lus/zoom/zrcbox/R$string;->room_not_exist:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->getDisplayRoomName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 688
    iget-object v1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    sget-object v2, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->DeleteZoomRoomsFromWeb:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    invoke-interface {v1, v2, v4, v0}, Lus/zoom/zrc/login/LoginContract$IUI;->onErrorDialog(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)V

    return-void
.end method

.method public handleGoogleOAuthURLAction(Ljava/lang/String;)V
    .locals 1

    .line 680
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->handleGoogleOAuthURLAction(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 681
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginPresenter;->onGoogleSignInFailed()V

    :cond_0
    return-void
.end method

.method public handleLoginWithLicenseKeyInPairingMode()V
    .locals 1

    const/4 v0, 0x1

    .line 597
    iput-boolean v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mOpenFromPT:Z

    .line 598
    iput-boolean v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mOpenFromPTBackToLicenseKey:Z

    .line 599
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->onEnterLicense()V

    return-void
.end method

.method public handleLoginWithWorkEmailInPairingMode()V
    .locals 2

    const/4 v0, 0x1

    .line 590
    iput-boolean v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mOpenFromPT:Z

    const/4 v0, 0x0

    .line 591
    iput-boolean v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mOpenFromPTBackToLicenseKey:Z

    .line 592
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lus/zoom/zrc/login/LoginContract$INavigator;->onLoginOrEnterLicense(Ljava/lang/String;)V

    return-void
.end method

.method public handleLogoutInPairingMode()V
    .locals 2

    .line 614
    iget-boolean v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mOpenFromPT:Z

    if-eqz v0, :cond_1

    .line 615
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->clearBackStack()V

    .line 616
    iget-boolean v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mOpenFromPTBackToLicenseKey:Z

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->onEnterLicense()V

    goto :goto_0

    .line 619
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lus/zoom/zrc/login/LoginContract$INavigator;->onLoginOrEnterLicense(Ljava/lang/String;)V

    goto :goto_0

    .line 622
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->onEnterParingCode()V

    .line 625
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginPresenter;->getUICache()Lus/zoom/zrc/login/LoginContract$IUICache;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lus/zoom/zrc/login/LoginContract$IUICache;->clear(I)V

    return-void
.end method

.method public handleSelectingWorkMode()V
    .locals 1

    .line 585
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->onShowSelectWorkMode()V

    return-void
.end method

.method public handleSignUpCallback(Ljava/lang/String;)V
    .locals 1

    .line 653
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->getBackStackCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 654
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->onEnterParingCode()V

    .line 656
    :cond_0
    invoke-static {p1}, Lus/zoom/zrc/login/LoginUsageTrack;->sendSignUpFinished(Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-interface {v0, p1}, Lus/zoom/zrc/login/LoginContract$INavigator;->onLoginOrEnterLicense(Ljava/lang/String;)V

    return-void
.end method

.method public handleUserRefreshZAKError()V
    .locals 5

    .line 644
    sget-object v0, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->UserRefreshZAKError:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lus/zoom/zrc/login/LoginUsageTrack;->sendSignOut(Lus/zoom/zrc/login/LoginContract$LoginErrorType;I)V

    .line 645
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginPresenter;->getUICache()Lus/zoom/zrc/login/LoginContract$IUICache;

    move-result-object v0

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Lus/zoom/zrc/login/LoginContract$IUICache;->clear(I)V

    .line 647
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mContext:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$string;->room_not_exist:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrc/model/Model;->getDisplayRoomName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 648
    iget-object v2, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    sget-object v3, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->UserRefreshZAKError:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    invoke-interface {v2, v3, v1, v0}, Lus/zoom/zrc/login/LoginContract$IUI;->onErrorDialog(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)V

    return-void
.end method

.method public handleZoomRoomLoggedIn(I)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 631
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    sget v1, Lus/zoom/zrcbox/R$string;->requesting_zp_info:I

    invoke-direct {p0, v1}, Lus/zoom/zrc/login/LoginPresenter;->getString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lus/zoom/zrc/login/LoginContract$IUI;->onShowWaitingDialog(ZLjava/lang/CharSequence;)V

    goto :goto_0

    .line 633
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    sget-object v1, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->ZoomRoomLoginFailed:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v0, v2}, Lus/zoom/zrc/login/LoginContract$IUI;->onErrorDialog(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public handleZoomRoomSignedOut()V
    .locals 4

    .line 639
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    sget-object v1, Lus/zoom/zrc/login/LoginContract$LoginErrorType;->ZoomRoomSignedOut:Lus/zoom/zrc/login/LoginContract$LoginErrorType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lus/zoom/zrc/login/LoginContract$IUI;->onErrorDialog(Lus/zoom/zrc/login/LoginContract$LoginErrorType;ILjava/lang/CharSequence;)V

    return-void
.end method

.method public isOpenFromPT()Z
    .locals 1

    .line 693
    iget-boolean v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mOpenFromPT:Z

    return v0
.end method

.method public loginWithLicenseKey(Ljava/lang/String;)V
    .locals 2

    .line 289
    invoke-static {p1}, Lus/zoom/zrc/login/util/LoginLicenseKeyUtils;->normalizeLicenseKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 291
    iput-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mLicenseKey:Ljava/lang/String;

    .line 292
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->loginWithLicenseKey(Ljava/lang/String;)Z

    .line 293
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    sget v0, Lus/zoom/zrcbox/R$string;->requesting_zp_info:I

    invoke-direct {p0, v0}, Lus/zoom/zrc/login/LoginPresenter;->getString(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0}, Lus/zoom/zrc/login/LoginContract$IUI;->onShowWaitingDialog(ZLjava/lang/CharSequence;)V

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

    .line 278
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/model/Model;->loginWithWorkEmail(Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    .line 279
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    const-string p2, ""

    const/4 v0, 0x1

    invoke-interface {p1, v0, p2}, Lus/zoom/zrc/login/LoginContract$IUI;->onShowWaitingDialog(ZLjava/lang/CharSequence;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 353
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->shouldDisplayIPAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginPresenter;->startRefreshZRCIpTimer()V

    .line 356
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IUI;->getFooter()Lus/zoom/zrc/login/LoginContract$IFooter;

    move-result-object v0

    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/PTApp;->getZRCDisplayVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lus/zoom/zrc/login/LoginContract$IFooter;->onUpdateZRCVersion(Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 361
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mTimerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public queryWithParingCode(Ljava/lang/String;)V
    .locals 2

    .line 366
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->queryWithPairingCode(Ljava/lang/String;)Z

    .line 367
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    sget v0, Lus/zoom/zrcbox/R$string;->pairing:I

    invoke-direct {p0, v0}, Lus/zoom/zrc/login/LoginPresenter;->getString(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0}, Lus/zoom/zrc/login/LoginContract$IUI;->onShowWaitingDialog(ZLjava/lang/CharSequence;)V

    return-void
.end method

.method public refreshCalendarList(Lus/zoom/zrc/login/LoginContract$IRefreshCalendarCallback;)V
    .locals 2

    .line 531
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mCreatedRoom:Lus/zoom/zrcsdk/model/RoomInfo;

    if-nez v0, :cond_0

    .line 532
    sget-object p1, Lus/zoom/zrc/login/LoginPresenter;->TAG:Ljava/lang/String;

    const-string v0, "refreshCalendarList has no created room!!!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 535
    :cond_0
    iput-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mRefreshCalendarCallback:Lus/zoom/zrc/login/LoginContract$IRefreshCalendarCallback;

    .line 536
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mCreatedRoom:Lus/zoom/zrcsdk/model/RoomInfo;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomInfo;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/Model;->requestZoomPresenceCalendar(Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 209
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->removeNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;)V

    return-void
.end method

.method public requestZoomRoomInfo()V
    .locals 3

    .line 214
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->onEnterParingCode()V

    return-void

    :cond_0
    const-string v0, "Requesting zoom rooms info..."

    const/4 v1, 0x0

    .line 219
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->requestZoomRoomInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    sget v2, Lus/zoom/zrcbox/R$string;->requesting_zp_info:I

    invoke-direct {p0, v2}, Lus/zoom/zrc/login/LoginPresenter;->getString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lus/zoom/zrc/login/LoginContract$IUI;->onShowWaitingDialog(ZLjava/lang/CharSequence;)V

    goto :goto_0

    .line 224
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lus/zoom/zrc/utils/ZRCNetworkUtils;->isNetworkDisconnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->onShowNetworkDisconnected()V

    goto :goto_0

    .line 227
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->onShowFailedToConnectZoomRoom()V

    :goto_0
    return-void
.end method

.method public retryConnect(Z)V
    .locals 4

    .line 304
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->requestZoomRoomInfo()Z

    move-result v0

    .line 306
    iget-object v1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    sget v2, Lus/zoom/zrcbox/R$string;->requesting_zp_info:I

    invoke-direct {p0, v2}, Lus/zoom/zrc/login/LoginPresenter;->getString(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lus/zoom/zrc/login/LoginContract$IUI;->onShowWaitingDialog(ZLjava/lang/CharSequence;)V

    if-nez v0, :cond_4

    const/4 v0, 0x2

    .line 309
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v1

    const-wide/16 v2, 0xc8

    if-ne v0, v1, :cond_2

    .line 310
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getKickedOutBy()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mTimerHandler:Landroid/os/Handler;

    new-instance v1, Lus/zoom/zrc/login/LoginPresenter$13;

    invoke-direct {v1, p0, v0}, Lus/zoom/zrc/login/LoginPresenter$13;-><init>(Lus/zoom/zrc/login/LoginPresenter;Ljava/lang/Integer;)V

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 321
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mTimerHandler:Landroid/os/Handler;

    new-instance v0, Lus/zoom/zrc/login/LoginPresenter$14;

    invoke-direct {v0, p0}, Lus/zoom/zrc/login/LoginPresenter$14;-><init>(Lus/zoom/zrc/login/LoginPresenter;)V

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 328
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$INavigator;->onEnterParingCode()V

    goto :goto_0

    .line 331
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lus/zoom/zrc/utils/ZRCNetworkUtils;->isNetworkDisconnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 333
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mTimerHandler:Landroid/os/Handler;

    new-instance v0, Lus/zoom/zrc/login/LoginPresenter$15;

    invoke-direct {v0, p0}, Lus/zoom/zrc/login/LoginPresenter$15;-><init>(Lus/zoom/zrc/login/LoginPresenter;)V

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 341
    :cond_3
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mTimerHandler:Landroid/os/Handler;

    new-instance v0, Lus/zoom/zrc/login/LoginPresenter$16;

    invoke-direct {v0, p0}, Lus/zoom/zrc/login/LoginPresenter$16;-><init>(Lus/zoom/zrc/login/LoginPresenter;)V

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public selectWorkMode(I)V
    .locals 4

    .line 556
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    sget v1, Lus/zoom/zrcbox/R$string;->connecting_to_zp:I

    invoke-direct {p0, v1}, Lus/zoom/zrc/login/LoginPresenter;->getString(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lus/zoom/zrc/login/LoginContract$IUI;->onShowWaitingDialog(ZLjava/lang/CharSequence;)V

    const-string v0, "selecting work mode %s"

    const/4 v1, 0x1

    .line 557
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lus/zoom/zrcsdk/model/ZRCWorkMode;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 558
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->setWorkMode(I)V

    .line 559
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->connectWithZoomRoom()V

    return-void
.end method

.method public selectZoomRoom(Lus/zoom/zrcsdk/model/RoomInfo;)V
    .locals 2
    .param p1    # Lus/zoom/zrcsdk/model/RoomInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 298
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->selectZoomRoom(Lus/zoom/zrcsdk/model/RoomInfo;)V

    .line 299
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    sget v0, Lus/zoom/zrcbox/R$string;->connecting_to_zoom:I

    invoke-direct {p0, v0}, Lus/zoom/zrc/login/LoginPresenter;->getString(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lus/zoom/zrc/login/LoginContract$IUI;->onShowWaitingDialog(ZLjava/lang/CharSequence;)V

    return-void
.end method

.method public setRoomPassCode(Ljava/lang/String;)V
    .locals 4

    .line 491
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mCreatedRoom:Lus/zoom/zrcsdk/model/RoomInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomInfo;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 495
    :cond_0
    invoke-static {p1}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    sget-object v0, Lus/zoom/zrc/login/LoginPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDefaultPassCode illegal passCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 499
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mPassCode:Ljava/lang/String;

    invoke-static {v0, p1}, Lus/zoom/zrcsdk/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x5

    .line 501
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 502
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginPresenter;->connectToCreatedRoom()V

    goto :goto_0

    .line 504
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$INavigator;->onZoomRoomAdded()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    .line 507
    iput-boolean v0, p0, Lus/zoom/zrc/login/LoginPresenter;->mUpdateRoomPassCode:Z

    .line 508
    iget-object v1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lus/zoom/zrc/login/LoginContract$IUI;->onShowWaitingDialog(ZLjava/lang/CharSequence;)V

    .line 509
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/login/LoginPresenter;->mCreatedRoom:Lus/zoom/zrcsdk/model/RoomInfo;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/RoomInfo;->getEmail()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2, p1}, Lus/zoom/zrc/model/Model;->updateRoomNameOrLockCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void

    .line 492
    :cond_4
    :goto_1
    sget-object p1, Lus/zoom/zrc/login/LoginPresenter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultPassCode illegal email: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrc/login/LoginPresenter;->mCreatedRoom:Lus/zoom/zrcsdk/model/RoomInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setup(Lus/zoom/zrc/login/LoginContract$IUI;)V
    .locals 2
    .param p1    # Lus/zoom/zrc/login/LoginContract$IUI;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 125
    iput-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    .line 126
    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$IUI;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mTimerHandler:Landroid/os/Handler;

    .line 128
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p1

    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->WebLoginFinished:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v1, Lus/zoom/zrc/login/LoginPresenter$1;

    invoke-direct {v1, p0}, Lus/zoom/zrc/login/LoginPresenter$1;-><init>(Lus/zoom/zrc/login/LoginPresenter;)V

    invoke-virtual {p1, p0, v0, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 134
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p1

    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->ReceivedRoomList:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v1, Lus/zoom/zrc/login/LoginPresenter$2;

    invoke-direct {v1, p0}, Lus/zoom/zrc/login/LoginPresenter$2;-><init>(Lus/zoom/zrc/login/LoginPresenter;)V

    invoke-virtual {p1, p0, v0, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 142
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p1

    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->ConnectingFinished:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v1, Lus/zoom/zrc/login/LoginPresenter$3;

    invoke-direct {v1, p0}, Lus/zoom/zrc/login/LoginPresenter$3;-><init>(Lus/zoom/zrc/login/LoginPresenter;)V

    invoke-virtual {p1, p0, v0, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 148
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p1

    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->QueryWithPairingCodeFinished:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v1, Lus/zoom/zrc/login/LoginPresenter$4;

    invoke-direct {v1, p0}, Lus/zoom/zrc/login/LoginPresenter$4;-><init>(Lus/zoom/zrc/login/LoginPresenter;)V

    invoke-virtual {p1, p0, v0, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 154
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p1

    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->CreateRoomDidFinished:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v1, Lus/zoom/zrc/login/LoginPresenter$5;

    invoke-direct {v1, p0}, Lus/zoom/zrc/login/LoginPresenter$5;-><init>(Lus/zoom/zrc/login/LoginPresenter;)V

    invoke-virtual {p1, p0, v0, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 163
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p1

    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->UpdateRoomDidFinished:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v1, Lus/zoom/zrc/login/LoginPresenter$6;

    invoke-direct {v1, p0}, Lus/zoom/zrc/login/LoginPresenter$6;-><init>(Lus/zoom/zrc/login/LoginPresenter;)V

    invoke-virtual {p1, p0, v0, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 169
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p1

    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->ReceivedListCalendar:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v1, Lus/zoom/zrc/login/LoginPresenter$7;

    invoke-direct {v1, p0}, Lus/zoom/zrc/login/LoginPresenter$7;-><init>(Lus/zoom/zrc/login/LoginPresenter;)V

    invoke-virtual {p1, p0, v0, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 177
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p1

    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->ReceivedListLocation:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v1, Lus/zoom/zrc/login/LoginPresenter$8;

    invoke-direct {v1, p0}, Lus/zoom/zrc/login/LoginPresenter$8;-><init>(Lus/zoom/zrc/login/LoginPresenter;)V

    invoke-virtual {p1, p0, v0, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 184
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p1

    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->AssignRoomCalendarDidFinished:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v1, Lus/zoom/zrc/login/LoginPresenter$9;

    invoke-direct {v1, p0}, Lus/zoom/zrc/login/LoginPresenter$9;-><init>(Lus/zoom/zrc/login/LoginPresenter;)V

    invoke-virtual {p1, p0, v0, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 191
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p1

    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->AssignRoomLocationDidFinished:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v1, Lus/zoom/zrc/login/LoginPresenter$10;

    invoke-direct {v1, p0}, Lus/zoom/zrc/login/LoginPresenter$10;-><init>(Lus/zoom/zrc/login/LoginPresenter;)V

    invoke-virtual {p1, p0, v0, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 198
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p1

    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->GoogleAuthReturn:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v1, Lus/zoom/zrc/login/LoginPresenter$11;

    invoke-direct {v1, p0}, Lus/zoom/zrc/login/LoginPresenter$11;-><init>(Lus/zoom/zrc/login/LoginPresenter;)V

    invoke-virtual {p1, p0, v0, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    return-void
.end method

.method public signOut(Z)V
    .locals 1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 235
    iput-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mCreatedRoom:Lus/zoom/zrcsdk/model/RoomInfo;

    .line 236
    iput-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mAssignedCalendarResource:Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;

    .line 237
    iput-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mAssignedCalendarService:Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    .line 238
    iput-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mLicenseKey:Ljava/lang/String;

    .line 240
    iget-boolean p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mOpenFromPT:Z

    if-eqz p1, :cond_0

    .line 242
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/Model;->logout(Z)V

    goto :goto_0

    .line 245
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/Model;->logout(Z)V

    .line 248
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginPresenter;->getUICache()Lus/zoom/zrc/login/LoginContract$IUICache;

    move-result-object p1

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lus/zoom/zrc/login/LoginContract$IUICache;->clear(I)V

    goto :goto_1

    .line 250
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/login/LoginPresenter;->mUI:Lus/zoom/zrc/login/LoginContract$IUI;

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$IUI;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$INavigator;->showSignOutWithAccessCode()V

    :goto_1
    return-void
.end method

.method public signUp()V
    .locals 7

    .line 256
    invoke-static {}, Lus/zoom/androidlib/app/ZMActivity;->getFrontActivity()Lus/zoom/androidlib/app/ZMActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "WEIRD CASE: startSignInWithGoogle without Activity!!!"

    .line 258
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 262
    :try_start_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s/signup?from_app=zoomrooms"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v6

    invoke-virtual {v6}, Lus/zoom/zrcsdk/ZRCSdk;->currentDomain()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 263
    new-instance v4, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v4}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    invoke-virtual {v4}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v4

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v5, Lus/zoom/zrc/login/LoginPresenter$12;

    invoke-direct {v5, p0, v0}, Lus/zoom/zrc/login/LoginPresenter$12;-><init>(Lus/zoom/zrc/login/LoginPresenter;Landroid/app/Activity;)V

    invoke-static {v0, v4, v3, v5}, Landroidx/browser/customtabs/CustomTabActivityHelper;->openCustomTab(Landroid/app/Activity;Landroidx/browser/customtabs/CustomTabsIntent;Landroid/net/Uri;Landroidx/browser/customtabs/CustomTabActivityHelper$CustomTabFallback;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "sign up, the browser can\'t open:"

    .line 272
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v3, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
