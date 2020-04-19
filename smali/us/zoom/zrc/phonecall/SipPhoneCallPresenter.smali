.class public Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;
.super Ljava/lang/Object;
.source "SipPhoneCallPresenter.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;,
        Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$CallListViewData;,
        Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$BackgroundCallViewData;,
        Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$ForegroundCallViewData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SipPhoneCallPresenter"

.field private static final context:Landroid/app/Application;

.field private static instance:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;


# instance fields
.field private delayDismissHandler:Landroid/os/Handler;

.field private isStarted:Z

.field private mUI:Landroidx/lifecycle/LifecycleOwner;

.field private muteOnEntry:Z

.field private final onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

.field private sipCallViewData:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

.field private transferringCall:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

.field private upgradingCallId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    sput-object v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->context:Landroid/app/Application;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$1;-><init>(Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;)V

    iput-object v0, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    .line 68
    new-instance v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    invoke-direct {v0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->sipCallViewData:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->delayDismissHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->isStarted:Z

    const-string v1, "SipPhoneCallPresenter"

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "created:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->onSipCallsChanged()V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->onMutedChanged()V

    return-void
.end method

.method static synthetic access$200(Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->onRoomInfoChanged()V

    return-void
.end method

.method static synthetic access$300(Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;)Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$CallListViewData;
    .locals 0

    .line 46
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->newCallListViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$CallListViewData;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 46
    invoke-static {}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getForegroundTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)Ljava/lang/String;
    .locals 0

    .line 46
    invoke-static {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getTitle(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600()Landroid/app/Application;
    .locals 1

    .line 46
    sget-object v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->context:Landroid/app/Application;

    return-object v0
.end method

.method private destroy()V
    .locals 3

    const-string v0, "SipPhoneCallPresenter"

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy() called: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 103
    sput-object v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->instance:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    return-void
.end method

.method private getCallers(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)Ljava/util/List;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;",
            ")",
            "Ljava/util/List<",
            "Lus/zoom/zrc/phonecall/PhoneListItemData;",
            ">;"
        }
    .end annotation

    .line 584
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    .line 585
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    const-string p1, "SipPhoneCallPresenter"

    const-string v0, "getCallers() called with: sourceCall = null"

    const/4 v2, 0x0

    .line 587
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 590
    :cond_0
    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/SipCallInfoList;->getConferenceCallList(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)Ljava/util/List;

    move-result-object v0

    .line 592
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    .line 593
    new-instance v4, Lus/zoom/zrc/phonecall/PhoneListItemData;

    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getPeerNumber()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lus/zoom/zrc/phonecall/PhoneListItemData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    iput-object v3, v4, Lus/zoom/zrc/phonecall/PhoneListItemData;->call:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    .line 595
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 598
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    .line 599
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getMembers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lus/zoom/zrcsdk/model/ZRCSIPCallRemoteMember;

    .line 600
    iget-object v4, v3, Lus/zoom/zrcsdk/model/ZRCSIPCallRemoteMember;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v3, Lus/zoom/zrcsdk/model/ZRCSIPCallRemoteMember;->number:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v4, v3, Lus/zoom/zrcsdk/model/ZRCSIPCallRemoteMember;->name:Ljava/lang/String;

    .line 601
    :goto_2
    new-instance v5, Lus/zoom/zrc/phonecall/PhoneListItemData;

    iget-object v3, v3, Lus/zoom/zrcsdk/model/ZRCSIPCallRemoteMember;->number:Ljava/lang/String;

    invoke-direct {v5, v4, v3}, Lus/zoom/zrc/phonecall/PhoneListItemData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 606
    :cond_4
    invoke-direct {p0, p1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getSelfNameNumber(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)Lus/zoom/zrc/phonecall/PhoneListItemData;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 608
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v1
.end method

.method private static getForegroundTitle()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 562
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    .line 563
    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->getForegroundCall()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getTitle(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 88
    sget-object v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->instance:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    return-object v0
.end method

.method private getSelfNameNumber(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)Lus/zoom/zrc/phonecall/PhoneListItemData;
    .locals 3

    .line 614
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getCallerID()Lus/zoom/zrcsdk/model/ZRCCallerID;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 615
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCallerID;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    new-instance v0, Lus/zoom/zrc/phonecall/PhoneListItemData;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCallerID;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCallerID;->getNumber()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lus/zoom/zrc/phonecall/PhoneListItemData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 619
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getSipService()Lus/zoom/zrcsdk/model/ZRCSipService;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const-string p1, "SipPhoneCallPresenter"

    const-string v1, "getSelfNameNumber() called with: sipService == null"

    .line 621
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 625
    :cond_1
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCSipService;->getCloudPBXServiceInfo()Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 626
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCSipService;->getCloudPBXServiceInfo()Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->getCallerID()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 627
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 628
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCCallerID;

    if-eqz v0, :cond_2

    .line 629
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCCallerID;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 630
    new-instance p1, Lus/zoom/zrc/phonecall/PhoneListItemData;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCCallerID;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCCallerID;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lus/zoom/zrc/phonecall/PhoneListItemData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 635
    :cond_2
    new-instance v0, Lus/zoom/zrc/phonecall/PhoneListItemData;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getDisplayRoomName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCSipService;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lus/zoom/zrc/phonecall/PhoneListItemData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getTitle(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 536
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    if-nez p0, :cond_0

    const-string p0, "SipPhoneCallPresenter"

    const-string v0, "getTitle() called with: sourceCall = null"

    const/4 v1, 0x0

    .line 538
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, ""

    return-object p0

    .line 541
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 543
    invoke-virtual {v0, p0}, Lus/zoom/zrc/model/SipCallInfoList;->getConferenceCallList(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)Ljava/util/List;

    move-result-object p0

    .line 545
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    const-string v2, " & "

    .line 546
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getMembers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCSIPCallRemoteMember;

    .line 549
    iget-object v3, v2, Lus/zoom/zrcsdk/model/ZRCSIPCallRemoteMember;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, v2, Lus/zoom/zrcsdk/model/ZRCSIPCallRemoteMember;->number:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v2, v2, Lus/zoom/zrcsdk/model/ZRCSIPCallRemoteMember;->name:Ljava/lang/String;

    :goto_1
    const-string v3, " & "

    .line 550
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 553
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_4

    const/4 p0, 0x3

    .line 554
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 556
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initSipCallViewData()V
    .locals 4

    .line 840
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getSipCallViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    move-result-object v0

    .line 841
    iget-object v1, v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;->callListViewData:Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->newCallListViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$CallListViewData;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 842
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->onMutedChanged()V

    .line 843
    iget-object v1, v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;->isMuteEnabled:Landroidx/lifecycle/MutableLiveData;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 844
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->onRoomInfoChanged()V

    .line 846
    iget-object v1, v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;->isBlockingUI:Landroidx/lifecycle/MutableLiveData;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 847
    iget-object v1, v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;->transferStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 848
    iget-object v0, v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;->upgradeMeetingMessage:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private newCallListViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$CallListViewData;
    .locals 4

    const-string v0, ""

    .line 853
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/SipCallInfoList;->getForegroundCall()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 855
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getStatus()I

    move-result v1

    .line 856
    sget-object v2, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->context:Landroid/app/Application;

    sget v3, Lus/zoom/zrcbox/R$string;->calling:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    const/16 v3, 0x14

    if-eq v1, v3, :cond_0

    const/16 v3, 0x21

    if-eq v1, v3, :cond_0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 864
    :pswitch_1
    sget-object v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->context:Landroid/app/Application;

    sget v1, Lus/zoom/zrcbox/R$string;->on_hold:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 872
    :pswitch_2
    sget-object v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->context:Landroid/app/Application;

    sget v1, Lus/zoom/zrcbox/R$string;->call_accepted:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 876
    :cond_1
    :goto_0
    new-instance v1, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$CallListViewData;

    new-instance v2, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$ForegroundCallViewData;

    invoke-direct {v2, v0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$ForegroundCallViewData;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$CallListViewData;-><init>(Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$ForegroundCallViewData;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static obtainInstance()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 77
    sget-object v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->instance:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    invoke-direct {v0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;-><init>()V

    sput-object v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->instance:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    .line 80
    :cond_0
    sget-object v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->instance:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    invoke-virtual {v0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    sget-object v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->instance:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    invoke-direct {v0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->start()V

    .line 83
    :cond_1
    sget-object v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->instance:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    return-object v0
.end method

.method private onCallTerminated(Ljava/lang/String;)V
    .locals 3

    .line 453
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 454
    sget-object v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->context:Landroid/app/Application;

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 456
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    .line 457
    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 458
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->stop()V

    .line 459
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->mUI:Landroidx/lifecycle/LifecycleOwner;

    if-nez v0, :cond_1

    .line 460
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->destroy()V

    goto :goto_0

    .line 462
    :cond_1
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 463
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getSipCallViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    move-result-object p1

    iget-object p1, p1, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;->callListViewData:Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->newCallListViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$CallListViewData;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 464
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getSipCallViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    move-result-object p1

    iget-object p1, p1, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;->isBlockingUI:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 466
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getSipCallViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    move-result-object p1

    iget-object p1, p1, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;->isBlockingUI:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 467
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->delayDismissHandler:Landroid/os/Handler;

    new-instance v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$3;

    invoke-direct {v0, p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$3;-><init>(Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;)V

    const-wide/16 v1, 0x320

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 477
    :cond_3
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getSipCallViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    move-result-object p1

    iget-object p1, p1, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;->isBlockingUI:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private onConfReady()V
    .locals 2

    .line 525
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isInNormalMeeting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getSipCallViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    move-result-object v0

    iget-object v0, v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;->upgradeMeetingMessage:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private onJoinSipCallToMeetingResult(I)V
    .locals 2

    .line 498
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getSipCallViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    move-result-object v0

    iget-object v0, v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;->upgradeMeetingMessage:Landroidx/lifecycle/MutableLiveData;

    if-nez p1, :cond_0

    sget-object p1, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->context:Landroid/app/Application;

    sget v1, Lus/zoom/zrcbox/R$string;->joining_meeting:I

    invoke-virtual {p1, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private onMutedChanged()V
    .locals 2

    .line 144
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getSipCallViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    move-result-object v0

    .line 145
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v1

    .line 146
    iget-object v0, v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;->isMuted:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Lus/zoom/zrc/model/SipCallInfoList;->isSipMuted()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->muteOnEntry:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private onRoomInfoChanged()V
    .locals 2

    .line 521
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getSipCallViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    move-result-object v0

    iget-object v0, v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;->roomName:Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getDisplayRoomName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private onSIPCallStatusNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Z)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "SipPhoneCallPresenter"

    const-string p2, "onSIPCallStatusNotification() called with: call = null"

    .line 420
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 423
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getStatus()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_1

    const-string p2, "SipPhoneCallPresenter"

    .line 425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSIPCallStatusNotification() called with: call = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "], status = ["

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 p1, 0x1

    if-eqz p2, :cond_4

    .line 430
    invoke-static {v1}, Lus/zoom/zrcsdk/model/ZRCSIPCallStatus;->isFailed(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 431
    sget-object p1, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->context:Landroid/app/Application;

    sget p2, Lus/zoom/zrcbox/R$string;->call_failed:I

    invoke-virtual {p1, p2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->onCallTerminated(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 p2, 0x1d

    if-ne v1, p2, :cond_3

    const/4 p1, 0x0

    .line 433
    invoke-direct {p0, p1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->onCallTerminated(Ljava/lang/String;)V

    goto :goto_0

    .line 435
    :cond_3
    invoke-static {v1}, Lus/zoom/zrcsdk/model/ZRCSIPCallStatus;->canMute(I)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-boolean p2, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->muteOnEntry:Z

    if-eqz p2, :cond_5

    .line 436
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getSipCallViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    move-result-object p2

    iget-object p2, p2, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;->isMuteEnabled:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 437
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2, p1}, Lus/zoom/zrc/model/Model;->updateMySipPhoneAudio(Z)V

    .line 438
    iput-boolean v0, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->muteOnEntry:Z

    goto :goto_0

    .line 442
    :cond_4
    invoke-static {v1}, Lus/zoom/zrcsdk/model/ZRCSIPCallStatus;->shouldAccept(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 443
    invoke-static {v1}, Lus/zoom/zrcsdk/model/ZRCSIPCallStatus;->canMute(I)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-boolean p2, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->muteOnEntry:Z

    if-eqz p2, :cond_5

    .line 444
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getSipCallViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    move-result-object p2

    iget-object p2, p2, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;->isMuteEnabled:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 445
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2, p1}, Lus/zoom/zrc/model/Model;->updateMySipPhoneAudio(Z)V

    .line 446
    iput-boolean v0, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->muteOnEntry:Z

    :cond_5
    :goto_0
    return-void
.end method

.method private onSIPCallTransferResultNotification(ILus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 0

    if-nez p1, :cond_0

    .line 504
    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->transferringCall:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 509
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getSipCallViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    move-result-object p2

    iget-object p2, p2, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;->transferStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private onSIPCallUpgradeMeetingResultNotification(ILus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 0

    if-nez p1, :cond_0

    .line 514
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getCallId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->upgradingCallId:Ljava/lang/String;

    goto :goto_0

    .line 516
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getSipCallViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    move-result-object p1

    iget-object p1, p1, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;->upgradeMeetingMessage:Landroidx/lifecycle/MutableLiveData;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private onSipCallTerminatedNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;IZ)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    goto :goto_2

    .line 408
    :cond_0
    sget-object p1, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->context:Landroid/app/Application;

    sget p2, Lus/zoom/zrcbox/R$string;->init_audio_device_failed:I

    invoke-virtual {p1, p2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 388
    :cond_1
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getCallId()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 390
    iget-object v2, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->upgradingCallId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    goto :goto_2

    .line 396
    :cond_3
    iget-object v2, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->transferringCall:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    if-eqz v2, :cond_6

    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 397
    iget-object v2, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->transferringCall:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->transferringCall:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    .line 398
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getRelatedCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :cond_5
    :goto_1
    if-eqz p2, :cond_6

    goto :goto_2

    :cond_6
    if-eqz p3, :cond_7

    .line 405
    sget-object p1, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->context:Landroid/app/Application;

    sget p2, Lus/zoom/zrcbox/R$string;->other_caller_exited:I

    invoke-virtual {p1, p2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    .line 411
    :cond_7
    :goto_2
    invoke-direct {p0, v1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->onCallTerminated(Ljava/lang/String;)V

    return-void
.end method

.method private onSipCallsChanged()V
    .locals 3

    .line 150
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SipPhoneCallPresenter"

    const-string v1, "onSipCallsChanged() called, sipCallInfoList isEmpty."

    const/4 v2, 0x0

    .line 153
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getSipCallViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    move-result-object v0

    iget-object v0, v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;->callListViewData:Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->newCallListViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$CallListViewData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private onSipDialOutResult(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 380
    sget-object p1, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->context:Landroid/app/Application;

    sget v0, Lus/zoom/zrcbox/R$string;->call_failed:I

    invoke-virtual {p1, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->onCallTerminated(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onTransferSipCallResult(ILus/zoom/zrcsdk/model/ZRCTransferType;)V
    .locals 0

    if-nez p1, :cond_2

    .line 483
    sget-object p1, Lus/zoom/zrcsdk/model/ZRCTransferType;->BlindTransfer:Lus/zoom/zrcsdk/model/ZRCTransferType;

    if-eq p2, p1, :cond_1

    sget-object p1, Lus/zoom/zrcsdk/model/ZRCTransferType;->VoiceMailTransfer:Lus/zoom/zrcsdk/model/ZRCTransferType;

    if-eq p2, p1, :cond_1

    sget-object p1, Lus/zoom/zrcsdk/model/ZRCTransferType;->WarmTransferComplete:Lus/zoom/zrcsdk/model/ZRCTransferType;

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 486
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getSipCallViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    move-result-object p1

    iget-object p1, p1, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;->transferStatus:Landroidx/lifecycle/MutableLiveData;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 484
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getSipCallViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    move-result-object p1

    iget-object p1, p1, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;->transferStatus:Landroidx/lifecycle/MutableLiveData;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 489
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getSipCallViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    move-result-object p1

    iget-object p1, p1, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;->transferStatus:Landroidx/lifecycle/MutableLiveData;

    const/4 p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private onUpdateMySipPhoneAudioResult()V
    .locals 2

    .line 415
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getSipCallViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    move-result-object v0

    iget-object v0, v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;->isMuteEnabled:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private onUpgradeSipCallToMeetingResult(I)V
    .locals 2

    .line 494
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getSipCallViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    move-result-object v0

    iget-object v0, v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;->upgradeMeetingMessage:Landroidx/lifecycle/MutableLiveData;

    if-nez p1, :cond_0

    sget-object p1, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->context:Landroid/app/Application;

    sget v1, Lus/zoom/zrcbox/R$string;->starting_meeting:I

    invoke-virtual {p1, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private start()V
    .locals 4

    const-string v0, "SipPhoneCallPresenter"

    const-string v1, "start() called"

    const/4 v2, 0x0

    .line 108
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->upgradingCallId:Ljava/lang/String;

    .line 110
    iput-object v0, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->transferringCall:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    .line 111
    iput-boolean v2, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->muteOnEntry:Z

    .line 112
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->initSipCallViewData()V

    .line 113
    iget-object v1, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->delayDismissHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 115
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/SipCallInfoList;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 116
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 117
    new-instance v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$2;

    invoke-direct {v0, p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$2;-><init>(Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;)V

    .line 123
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v1

    sget-object v2, Lus/zoom/zrc/base/notification/BasicEvent;->All:Lus/zoom/zrc/base/notification/BasicEvent;

    invoke-virtual {v1, p0, v2, v0}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->isStarted:Z

    return-void
.end method

.method private stop()V
    .locals 4

    const-string v0, "SipPhoneCallPresenter"

    const-string v1, "stop() called"

    const/4 v2, 0x0

    .line 131
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    iput-boolean v2, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->isStarted:Z

    .line 133
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/SipCallInfoList;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 134
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 135
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->removeNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;)V

    return-void
.end method


# virtual methods
.method public acceptIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 1

    .line 194
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    .line 195
    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/SipCallInfoList;->update(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    return-void
.end method

.method addCall(Ljava/lang/String;)Z
    .locals 1

    .line 190
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->sipDialOut(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public checkHangupWhenStopSharing()Z
    .locals 4

    .line 244
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    return v3

    .line 249
    :pswitch_0
    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->getForegroundCall()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SipPhoneCallPresenter"

    const-string v1, "checkHangupWhenStopSharing() called, but the foreground call is null."

    .line 251
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    .line 254
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->isIncomingCall()Z

    move-result v1

    if-eqz v1, :cond_1

    return v3

    .line 257
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1, v0}, Lus/zoom/zrc/model/Model;->hangupSipCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    return v2

    :pswitch_1
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method clickHangup()V
    .locals 3

    .line 233
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getSipCallViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    move-result-object v0

    iget-object v0, v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;->isBlockingUI:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 234
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->getForegroundList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    .line 236
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2, v1}, Lus/zoom/zrc/model/Model;->hangupSipCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method clickHold()V
    .locals 3

    .line 199
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->getForegroundCall()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SipPhoneCallPresenter"

    const-string v1, "clickHold() called, but call == null"

    const/4 v2, 0x0

    .line 202
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 205
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getStatus()I

    move-result v1

    invoke-static {v1}, Lus/zoom/zrcsdk/model/ZRCSIPCallStatus;->isOnHold(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1, v0}, Lus/zoom/zrc/model/Model;->unholdSipCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    goto :goto_0

    .line 208
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1, v0}, Lus/zoom/zrc/model/Model;->holdSipCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    :goto_0
    return-void
.end method

.method clickMute(Z)V
    .locals 5

    const-string v0, "%s microphone button is tapped"

    const/4 v1, 0x1

    .line 213
    new-array v2, v1, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string v3, "mute"

    goto :goto_0

    :cond_0
    const-string v3, "unmute"

    :goto_0
    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->getForegroundCall()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p1, "SipPhoneCallPresenter"

    const-string v0, "clickMute call == null"

    .line 218
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 221
    :cond_1
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getStatus()I

    move-result v2

    .line 222
    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-static {v2}, Lus/zoom/zrcsdk/model/ZRCSIPCallStatus;->canMute(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 223
    iput-boolean p1, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->muteOnEntry:Z

    .line 224
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getSipCallViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    move-result-object v0

    iget-object v0, v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;->isMuted:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 226
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getSipCallViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    move-result-object v0

    iget-object v0, v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;->isMuteEnabled:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 227
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->updateMySipPhoneAudio(Z)V

    .line 228
    iput-boolean v4, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->muteOnEntry:Z

    :goto_1
    return-void
.end method

.method completeWarmTransfer()V
    .locals 4

    .line 309
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getSipCallViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    move-result-object v0

    iget-object v0, v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;->transferStatus:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 310
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->getForegroundCall()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object v1

    .line 312
    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->getTransferDestination()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object v0

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    sget-object v3, Lus/zoom/zrcsdk/model/ZRCTransferType;->WarmTransferComplete:Lus/zoom/zrcsdk/model/ZRCTransferType;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getPeerUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v1, v0}, Lus/zoom/zrc/model/Model;->transferSipCall(Lus/zoom/zrcsdk/model/ZRCTransferType;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public dialOut(Ljava/lang/String;)Z
    .locals 2

    .line 179
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;-><init>()V

    .line 180
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->setPeerNumber(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->setPeerUri(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->setOriginalPeerUri(Ljava/lang/String;)V

    .line 183
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v1

    .line 184
    invoke-virtual {v1, v0}, Lus/zoom/zrc/model/SipCallInfoList;->update(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    .line 186
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->sipDialOut(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method getBackgroundCallers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrc/phonecall/PhoneListItemData;",
            ">;"
        }
    .end annotation

    .line 665
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    .line 666
    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->getBackgroundCalls()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 667
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    invoke-direct {p0, v0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getCallers(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getBackgroundCalls()Ljava/util/List;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrc/phonecall/PhoneListItemData;",
            ">;"
        }
    .end annotation

    .line 640
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    .line 641
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 642
    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->getBackgroundCalls()Ljava/util/List;

    move-result-object v0

    .line 643
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    .line 644
    sget-object v3, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->context:Landroid/app/Application;

    sget v4, Lus/zoom/zrcbox/R$string;->on_hold_tap_to_swap:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 645
    new-instance v4, Lus/zoom/zrc/phonecall/PhoneListItemData;

    invoke-static {v2}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getTitle(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lus/zoom/zrc/phonecall/PhoneListItemData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    iput-object v2, v4, Lus/zoom/zrc/phonecall/PhoneListItemData;->call:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    .line 647
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 649
    :cond_0
    new-instance v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$4;

    invoke-direct {v0, p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$4;-><init>(Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method

.method getForegroundCallers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrc/phonecall/PhoneListItemData;",
            ">;"
        }
    .end annotation

    .line 660
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    .line 661
    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->getForegroundCall()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getCallers(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getMergeableCalls()Ljava/util/List;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrc/phonecall/PhoneListItemData;",
            ">;"
        }
    .end annotation

    .line 570
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 571
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v1

    .line 572
    invoke-virtual {v1}, Lus/zoom/zrc/model/SipCallInfoList;->getMergeableCalls()Ljava/util/List;

    move-result-object v1

    .line 573
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    .line 574
    sget-object v3, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->context:Landroid/app/Application;

    sget v4, Lus/zoom/zrcbox/R$string;->on_hold_tap_to_merge:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 575
    new-instance v4, Lus/zoom/zrc/phonecall/PhoneListItemData;

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lus/zoom/zrc/phonecall/PhoneListItemData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iput-object v2, v4, Lus/zoom/zrc/phonecall/PhoneListItemData;->call:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    .line 577
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method getSipCallViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 835
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->sipCallViewData:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    return-object v0
.end method

.method isStopped()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->isStarted:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method mergeSipCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 2

    .line 279
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    .line 280
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->getForegroundCall()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lus/zoom/zrc/model/Model;->mergeSipCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    return-void
.end method

.method protected onReceivedNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 2

    .line 335
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->SIPCallUpgradeMeetingResultNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_0

    const-string p1, "result"

    .line 336
    invoke-static {p2, p1}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->intFromMap(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p1

    const-string v0, "call"

    .line 337
    invoke-static {p2, v0}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->valueFromMap(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    .line 338
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->onSIPCallUpgradeMeetingResultNotification(ILus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    goto/16 :goto_0

    .line 339
    :cond_0
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->TransferSipCallResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_1

    const-string p1, "result"

    .line 340
    invoke-static {p2, p1}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->intFromMap(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p1

    const-string v0, "transferType"

    .line 341
    invoke-static {p2, v0}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->valueFromMap(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lus/zoom/zrcsdk/model/ZRCTransferType;

    .line 342
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->onTransferSipCallResult(ILus/zoom/zrcsdk/model/ZRCTransferType;)V

    goto/16 :goto_0

    .line 343
    :cond_1
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->UpgradeSipCallToMeetingResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_2

    const-string p1, "result"

    .line 344
    invoke-static {p2, p1}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->intFromMap(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p1

    .line 345
    invoke-direct {p0, p1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->onUpgradeSipCallToMeetingResult(I)V

    goto/16 :goto_0

    .line 346
    :cond_2
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->JoinSipCallToMeetingResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_3

    const-string p1, "result"

    .line 347
    invoke-static {p2, p1}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->intFromMap(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p1

    .line 348
    invoke-direct {p0, p1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->onJoinSipCallToMeetingResult(I)V

    goto/16 :goto_0

    .line 349
    :cond_3
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->SipDialOutResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_4

    const-string p1, "result"

    .line 350
    invoke-static {p2, p1}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->intFromMap(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p1

    .line 351
    invoke-direct {p0, p1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->onSipDialOutResult(I)V

    goto/16 :goto_0

    .line 352
    :cond_4
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->SIPCallTransferResultNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_5

    const-string p1, "result"

    .line 353
    invoke-static {p2, p1}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->intFromMap(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p1

    const-string v0, "call"

    .line 354
    invoke-static {p2, v0}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->valueFromMap(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    .line 355
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->onSIPCallTransferResultNotification(ILus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    goto :goto_0

    .line 356
    :cond_5
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->SIPCallStatusNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_6

    const-string p1, "call"

    .line 357
    invoke-static {p2, p1}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->valueFromMap(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    const-string v0, "existBefore"

    .line 358
    invoke-static {p2, v0}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->boolFromMap(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p2

    .line 359
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->onSIPCallStatusNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Z)V

    goto :goto_0

    .line 360
    :cond_6
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->SipCallTerminatedNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_7

    const-string p1, "call"

    .line 361
    invoke-static {p2, p1}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->valueFromMap(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    const-string v0, "reason"

    .line 362
    invoke-static {p2, v0}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->intFromMap(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    const-string v1, "isLast"

    .line 363
    invoke-static {p2, v1}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->boolFromMap(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p2

    .line 364
    invoke-direct {p0, p1, v0, p2}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->onSipCallTerminatedNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;IZ)V

    goto :goto_0

    .line 365
    :cond_7
    sget-object p2, Lus/zoom/zrc/base/notification/ModelEvent;->UpdateMySipPhoneAudioResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p2, p1, :cond_8

    .line 366
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->onUpdateMySipPhoneAudioResult()V

    goto :goto_0

    .line 367
    :cond_8
    sget-object p2, Lus/zoom/zrc/base/notification/ModelEvent;->OnConfReady:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p2, p1, :cond_9

    .line 368
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->onConfReady()V

    goto :goto_0

    .line 369
    :cond_9
    sget-object p2, Lus/zoom/zrc/base/notification/ModelEvent;->SwitchingWorkMode:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p2, p1, :cond_a

    .line 370
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->stop()V

    .line 371
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->destroy()V

    goto :goto_0

    .line 372
    :cond_a
    sget-object p2, Lus/zoom/zrc/base/notification/ModelEvent;->ConnectionClosed:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p2, p1, :cond_b

    .line 373
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->stop()V

    .line 374
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->destroy()V

    :cond_b
    :goto_0
    return-void
.end method

.method public onUICreated(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 163
    iput-object p1, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->mUI:Landroidx/lifecycle/LifecycleOwner;

    return-void
.end method

.method public onUIDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 170
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->mUI:Landroidx/lifecycle/LifecycleOwner;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 171
    iput-object p1, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->mUI:Landroidx/lifecycle/LifecycleOwner;

    .line 172
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->isStopped()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 173
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->destroy()V

    :cond_0
    return-void
.end method

.method public sendDTMF(Ljava/lang/String;)V
    .locals 2

    .line 327
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->getForegroundCall()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object v0

    .line 329
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lus/zoom/zrc/model/Model;->sendSipCallDTMF(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Ljava/lang/String;)V

    return-void
.end method

.method startBlindTransfer(Ljava/lang/String;)V
    .locals 3

    .line 284
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getSipCallViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    move-result-object v0

    iget-object v0, v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;->transferStatus:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 285
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->getForegroundCall()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object v0

    .line 287
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCTransferType;->BlindTransfer:Lus/zoom/zrcsdk/model/ZRCTransferType;

    invoke-virtual {v1, v2, v0, p1}, Lus/zoom/zrc/model/Model;->transferSipCall(Lus/zoom/zrcsdk/model/ZRCTransferType;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Ljava/lang/String;)V

    return-void
.end method

.method startVoiceMailTransfer(Ljava/lang/String;)V
    .locals 3

    .line 291
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getSipCallViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    move-result-object v0

    iget-object v0, v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;->transferStatus:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 292
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->getForegroundCall()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object v0

    .line 294
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCTransferType;->VoiceMailTransfer:Lus/zoom/zrcsdk/model/ZRCTransferType;

    invoke-virtual {v1, v2, v0, p1}, Lus/zoom/zrc/model/Model;->transferSipCall(Lus/zoom/zrcsdk/model/ZRCTransferType;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Ljava/lang/String;)V

    return-void
.end method

.method startWarmTransfer(Ljava/lang/String;)V
    .locals 3

    .line 298
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getSipCallViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    move-result-object v0

    iget-object v0, v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;->transferStatus:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 299
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->getForegroundCall()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "SipPhoneCallPresenter"

    const-string v0, "startWarmTransfer() called, but foregroundCall is null. "

    .line 302
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 305
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    sget-object v2, Lus/zoom/zrcsdk/model/ZRCTransferType;->WarmTransfer:Lus/zoom/zrcsdk/model/ZRCTransferType;

    invoke-virtual {v1, v2, v0, p1}, Lus/zoom/zrc/model/Model;->transferSipCall(Lus/zoom/zrcsdk/model/ZRCTransferType;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Ljava/lang/String;)V

    return-void
.end method

.method swapSipCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "SipPhoneCallPresenter"

    const-string v1, "swapSipCall() called with: newForeground = null"

    .line 266
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 269
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v1

    .line 270
    invoke-virtual {v1}, Lus/zoom/zrc/model/SipCallInfoList;->isForegroundInCall()Z

    move-result v1

    if-nez v1, :cond_1

    .line 271
    sget-object v1, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->context:Landroid/app/Application;

    sget v2, Lus/zoom/zrcbox/R$string;->failed_to_take_off_hold:I

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const-string v1, "SipPhoneCallPresenter"

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "swapSipCall() called with: newForeground = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "], but the foreground call is not operable"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 275
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->unholdSipCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    return-void
.end method

.method upgradeSipCallToMeeting(Z)V
    .locals 3

    .line 320
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getSipCallViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    move-result-object v0

    iget-object v0, v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;->upgradeMeetingMessage:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->context:Landroid/app/Application;

    sget v2, Lus/zoom/zrcbox/R$string;->starting_meeting:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 321
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->getForegroundCall()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object v0

    .line 323
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lus/zoom/zrc/model/Model;->upgradeSipCallToMeeting(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Z)V

    return-void
.end method
