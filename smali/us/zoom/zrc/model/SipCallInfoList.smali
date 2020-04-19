.class public Lus/zoom/zrc/model/SipCallInfoList;
.super Landroidx/databinding/BaseObservable;
.source "SipCallInfoList.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SipCallInfoList"

.field public static final TRANSFER_STATUS_FAILED:I = -0x1

.field public static final TRANSFER_STATUS_NONE:I = 0x0

.field public static final TRANSFER_STATUS_SUCCESS:I = 0x2

.field public static final TRANSFER_STATUS_TRANSFERRING:I = 0x1


# instance fields
.field private foregroundCall:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

.field private isMuted:Z

.field private sipCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroidx/databinding/BaseObservable;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/SipCallInfoList;->sipCalls:Ljava/util/List;

    const/4 v0, 0x0

    .line 428
    iput-boolean v0, p0, Lus/zoom/zrc/model/SipCallInfoList;->isMuted:Z

    return-void
.end method

.method private get(Ljava/lang/String;)Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 149
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/model/SipCallInfoList;->sipCalls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    .line 150
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v0
.end method

.method private get(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 162
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 164
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lus/zoom/zrc/model/SipCallInfoList;->get(Ljava/lang/String;)Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    .line 171
    :cond_1
    invoke-direct {p0}, Lus/zoom/zrc/model/SipCallInfoList;->getLocalInitCall()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 173
    invoke-static {v1, p1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->isSame(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v1

    :cond_2
    return-object v0
.end method

.method private getLatestStarted()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;
    .locals 3

    .line 130
    invoke-virtual {p0}, Lus/zoom/zrc/model/SipCallInfoList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SipCallInfoList"

    const-string v1, "getLatestStarted() called, but the call collection is empty."

    const/4 v2, 0x0

    .line 131
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    .line 134
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/SipCallInfoList;->sipCalls:Ljava/util/List;

    new-instance v1, Lus/zoom/zrc/model/SipCallInfoList$1;

    invoke-direct {v1, p0}, Lus/zoom/zrc/model/SipCallInfoList$1;-><init>(Lus/zoom/zrc/model/SipCallInfoList;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 141
    iget-object v0, p0, Lus/zoom/zrc/model/SipCallInfoList;->sipCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    return-object v0
.end method

.method private getLocalInitCall()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;
    .locals 3

    .line 181
    iget-object v0, p0, Lus/zoom/zrc/model/SipCallInfoList;->sipCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    .line 182
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->isInitCall()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getOutCalls()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    iget-object v1, p0, Lus/zoom/zrc/model/SipCallInfoList;->sipCalls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    .line 59
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->isIncomingCall()Z

    move-result v3

    if-nez v3, :cond_0

    .line 60
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private hasWarmTransfer()Z
    .locals 2

    .line 293
    iget-object v0, p0, Lus/zoom/zrc/model/SipCallInfoList;->sipCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    .line 294
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getRelatedCallId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private notifyListChange()V
    .locals 3

    const-string v0, "SipCallInfoList"

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyListChange() called: sipCalls:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrc/model/SipCallInfoList;->sipCalls:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    sget v0, Landroidx/databinding/library/baseAdapters/BR;->sipCallInfos:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/SipCallInfoList;->notifyPropertyChanged(I)V

    return-void
.end method

.method private updateForegroundCallInternal(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 4

    .line 408
    iget-object v0, p0, Lus/zoom/zrc/model/SipCallInfoList;->sipCalls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SipCallInfoList"

    .line 409
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateForegroundCallInternal() called with: call = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "], but this call is recorded before"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 412
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getConferenceInfo()Lus/zoom/zrcsdk/model/ZRCSIPCallConferenceInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 413
    iput-object p1, p0, Lus/zoom/zrc/model/SipCallInfoList;->foregroundCall:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    return-void

    .line 416
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    .line 417
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getConferenceInfo()Lus/zoom/zrcsdk/model/ZRCSIPCallConferenceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCSIPCallConferenceInfo;->getHostCallId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lus/zoom/zrc/model/SipCallInfoList;->get(Ljava/lang/String;)Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "SipCallInfoList"

    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateForegroundCallInternal() called with: call = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "], but this call is recorded before"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    iput-object p1, p0, Lus/zoom/zrc/model/SipCallInfoList;->foregroundCall:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    return-void

    .line 423
    :cond_2
    iput-object v0, p0, Lus/zoom/zrc/model/SipCallInfoList;->foregroundCall:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    return-void
.end method


# virtual methods
.method public canAdd()Z
    .locals 1

    .line 94
    invoke-virtual {p0}, Lus/zoom/zrc/model/SipCallInfoList;->isForegroundInCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lus/zoom/zrc/model/SipCallInfoList;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canMeet()Z
    .locals 2

    .line 113
    invoke-virtual {p0}, Lus/zoom/zrc/model/SipCallInfoList;->isForegroundWarmTransferring()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 116
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipService()Lus/zoom/zrcsdk/model/ZRCSipService;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 117
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSipService;->getCloudPBXServiceInfo()Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/model/SipCallInfoList;->isForegroundInCall()Z

    move-result v0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public canMerge()Z
    .locals 1

    .line 124
    invoke-virtual {p0}, Lus/zoom/zrc/model/SipCallInfoList;->isForegroundInCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lus/zoom/zrc/model/SipCallInfoList;->hasMergedCall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lus/zoom/zrc/model/SipCallInfoList;->getMergeableCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lus/zoom/zrc/model/SipCallInfoList;->isForegroundWarmTransferring()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canTransfer()Z
    .locals 4

    .line 98
    invoke-virtual {p0}, Lus/zoom/zrc/model/SipCallInfoList;->isForegroundInCall()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 101
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/model/SipCallInfoList;->hasWarmTransfer()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 104
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/model/SipCallInfoList;->getForegroundCall()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "SipCallInfoList"

    const-string v2, "canTransfer() called, but foreground call is null"

    .line 106
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 109
    :cond_2
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getConferenceInfo()Lus/zoom/zrcsdk/model/ZRCSIPCallConferenceInfo;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public contains(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)Z
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/SipCallInfoList;->get(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getBackgroundCalls()Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;",
            ">;"
        }
    .end annotation

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 230
    invoke-virtual {p0}, Lus/zoom/zrc/model/SipCallInfoList;->getForegroundList()Ljava/util/List;

    move-result-object v1

    .line 231
    iget-object v2, p0, Lus/zoom/zrc/model/SipCallInfoList;->sipCalls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    .line 232
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getConferenceInfo()Lus/zoom/zrcsdk/model/ZRCSIPCallConferenceInfo;

    move-result-object v4

    if-nez v4, :cond_2

    .line 236
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 237
    :cond_2
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->isConferenceHost()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 238
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getConferenceCallList(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)Ljava/util/List;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;",
            ")",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;",
            ">;"
        }
    .end annotation

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    .line 206
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getConferenceInfo()Lus/zoom/zrcsdk/model/ZRCSIPCallConferenceInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 207
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 210
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/model/SipCallInfoList;->sipCalls:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    .line 211
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getConferenceInfo()Lus/zoom/zrcsdk/model/ZRCSIPCallConferenceInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 212
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->isConferenceHost()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    .line 213
    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 215
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public getForegroundCall()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 191
    iget-object v0, p0, Lus/zoom/zrc/model/SipCallInfoList;->foregroundCall:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    if-nez v0, :cond_0

    const-string v0, "SipCallInfoList"

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -- getForegroundCall() called, but foreground call is null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/SipCallInfoList;->foregroundCall:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    return-object v0
.end method

.method public getForegroundList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 224
    iget-object v0, p0, Lus/zoom/zrc/model/SipCallInfoList;->foregroundCall:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/SipCallInfoList;->getConferenceCallList(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMergeableCalls()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 247
    invoke-virtual {p0}, Lus/zoom/zrc/model/SipCallInfoList;->hasMergedCall()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SipCallInfoList"

    const-string v2, "getMergeableCalls() called, but there is already a merged call."

    const/4 v3, 0x0

    .line 248
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 251
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/model/SipCallInfoList;->isForegroundWarmTransferring()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 254
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/model/SipCallInfoList;->getForegroundList()Ljava/util/List;

    move-result-object v1

    .line 255
    iget-object v2, p0, Lus/zoom/zrc/model/SipCallInfoList;->sipCalls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    .line 256
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 260
    :cond_3
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getRelatedCallId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 261
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public getSipCallInfos()Ljava/util/Set;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;",
            ">;"
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lus/zoom/zrc/model/SipCallInfoList;->sipCalls:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getTransferDestination()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;
    .locals 3

    .line 302
    invoke-virtual {p0}, Lus/zoom/zrc/model/SipCallInfoList;->getForegroundCall()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SipCallInfoList"

    const-string v1, "getTransferDestination() called, but the foreground call is null."

    const/4 v2, 0x0

    .line 304
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    .line 307
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getRelatedCallId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/model/SipCallInfoList;->get(Ljava/lang/String;)Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object v0

    return-object v0
.end method

.method public hasMergedCall()Z
    .locals 2

    .line 268
    iget-object v0, p0, Lus/zoom/zrc/model/SipCallInfoList;->sipCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    .line 269
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getConferenceInfo()Lus/zoom/zrcsdk/model/ZRCSIPCallConferenceInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasSingleOutCall()Z
    .locals 2

    .line 53
    invoke-virtual {p0}, Lus/zoom/zrc/model/SipCallInfoList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lus/zoom/zrc/model/SipCallInfoList;->getOutCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 71
    iget-object v0, p0, Lus/zoom/zrc/model/SipCallInfoList;->sipCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isForegroundInCall()Z
    .locals 2

    .line 83
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsMultiSipCall()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 86
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/model/SipCallInfoList;->getForegroundCall()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 90
    :cond_1
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getStatus()I

    move-result v0

    invoke-static {v0}, Lus/zoom/zrcsdk/model/ZRCSIPCallStatus;->isInCall(I)Z

    move-result v0

    return v0
.end method

.method public isForegroundWarmTransferring()Z
    .locals 4

    .line 280
    invoke-virtual {p0}, Lus/zoom/zrc/model/SipCallInfoList;->getForegroundCall()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SipCallInfoList"

    const-string v2, "isForegroundWarmTransferring() called, but the foreground call is null."

    .line 282
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 285
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getRelatedCallId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lus/zoom/zrc/model/SipCallInfoList;->get(Ljava/lang/String;)Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 286
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getCallId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getRelatedCallId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isFull()Z
    .locals 2

    .line 75
    iget-object v0, p0, Lus/zoom/zrc/model/SipCallInfoList;->sipCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSipMuted()Z
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 437
    iget-boolean v0, p0, Lus/zoom/zrc/model/SipCallInfoList;->isMuted:Z

    return v0
.end method

.method onSIPCallStatusNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "SipCallInfoList"

    const-string v1, "onSIPCallStatusNotification() called with: call = null"

    .line 315
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 318
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getStatus()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_1

    const-string v2, "SipCallInfoList"

    .line 320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSIPCallStatusNotification() called with: call = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "], status = ["

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 323
    :cond_1
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/SipCallInfoList;->contains(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 324
    invoke-static {v1}, Lus/zoom/zrcsdk/model/ZRCSIPCallStatus;->isFailed(I)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x1d

    if-ne v1, v0, :cond_2

    goto :goto_0

    .line 327
    :cond_2
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/SipCallInfoList;->update(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    goto :goto_1

    .line 325
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/SipCallInfoList;->remove(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    goto :goto_1

    .line 330
    :cond_4
    invoke-static {v1}, Lus/zoom/zrcsdk/model/ZRCSIPCallStatus;->shouldAccept(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 331
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/SipCallInfoList;->update(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    goto :goto_1

    :cond_5
    const-string p1, "ignore the callStatus since current SIP call is terminated."

    .line 335
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public release()V
    .locals 1

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/SipCallInfoList;->sipCalls:Ljava/util/List;

    const/4 v0, 0x0

    .line 361
    iput-object v0, p0, Lus/zoom/zrc/model/SipCallInfoList;->foregroundCall:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    const/4 v0, 0x0

    .line 362
    iput-boolean v0, p0, Lus/zoom/zrc/model/SipCallInfoList;->isMuted:Z

    return-void
.end method

.method public remove(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 4

    const-string v0, "SipCallInfoList"

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove() called with: key = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/SipCallInfoList;->get(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object p1

    .line 394
    iget-object v0, p0, Lus/zoom/zrc/model/SipCallInfoList;->sipCalls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 395
    iget-object v0, p0, Lus/zoom/zrc/model/SipCallInfoList;->sipCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "SipCallInfoList"

    const-string v0, "remove() called, no call left."

    .line 396
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    invoke-virtual {p0}, Lus/zoom/zrc/model/SipCallInfoList;->release()V

    goto :goto_0

    .line 399
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/SipCallInfoList;->foregroundCall:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 400
    invoke-direct {p0}, Lus/zoom/zrc/model/SipCallInfoList;->getLatestStarted()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/model/SipCallInfoList;->foregroundCall:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    .line 403
    :cond_1
    :goto_0
    invoke-direct {p0}, Lus/zoom/zrc/model/SipCallInfoList;->notifyListChange()V

    return-void
.end method

.method setMuted(Z)V
    .locals 0

    .line 431
    iput-boolean p1, p0, Lus/zoom/zrc/model/SipCallInfoList;->isMuted:Z

    .line 432
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->sipMuted:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/SipCallInfoList;->notifyPropertyChanged(I)V

    return-void
.end method

.method public size()I
    .locals 1

    .line 79
    iget-object v0, p0, Lus/zoom/zrc/model/SipCallInfoList;->sipCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public update(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 6

    const-string v0, "SipCallInfoList"

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update() called with: call = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 370
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/SipCallInfoList;->get(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object v0

    .line 371
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getCallStartSecond()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_2

    if-eqz v0, :cond_1

    .line 372
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getCallStartSecond()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    goto :goto_0

    .line 377
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getCallStartSecond()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->setCallStartSecond(J)V

    goto :goto_1

    .line 373
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getStatus()I

    move-result v1

    invoke-static {v1}, Lus/zoom/zrcsdk/model/ZRCSIPCallStatus;->isInCall(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 374
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->setCallStartSecond(J)V

    .line 380
    :cond_2
    :goto_1
    iget-object v1, p0, Lus/zoom/zrc/model/SipCallInfoList;->sipCalls:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 381
    iget-object v0, p0, Lus/zoom/zrc/model/SipCallInfoList;->sipCalls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getStatus()I

    move-result v0

    invoke-static {v0}, Lus/zoom/zrcsdk/model/ZRCSIPCallStatus;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lus/zoom/zrc/model/SipCallInfoList;->getForegroundCall()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 384
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/model/SipCallInfoList;->foregroundCall:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    if-nez v0, :cond_5

    .line 386
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/SipCallInfoList;->updateForegroundCallInternal(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    goto :goto_3

    .line 383
    :cond_4
    :goto_2
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/SipCallInfoList;->updateForegroundCallInternal(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    .line 388
    :cond_5
    :goto_3
    invoke-direct {p0}, Lus/zoom/zrc/model/SipCallInfoList;->notifyListChange()V

    return-void
.end method

.method updateForegroundCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 3

    .line 341
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/SipCallInfoList;->get(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SipCallInfoList"

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateForegroundCall() called with: call = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "], but this call is not recorded."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 347
    :cond_0
    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->updateByPreviousCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    .line 348
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->isInitCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 350
    iget-object v1, p0, Lus/zoom/zrc/model/SipCallInfoList;->sipCalls:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 351
    iget-object v0, p0, Lus/zoom/zrc/model/SipCallInfoList;->sipCalls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_1
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/SipCallInfoList;->updateForegroundCallInternal(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    .line 354
    invoke-direct {p0}, Lus/zoom/zrc/model/SipCallInfoList;->notifyListChange()V

    return-void
.end method
