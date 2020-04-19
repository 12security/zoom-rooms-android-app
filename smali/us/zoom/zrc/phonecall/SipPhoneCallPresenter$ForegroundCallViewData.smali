.class Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$ForegroundCallViewData;
.super Ljava/lang/Object;
.source "SipPhoneCallPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ForegroundCallViewData"
.end annotation


# instance fields
.field final foregroundStatus:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 681
    iput-object p1, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$ForegroundCallViewData;->foregroundStatus:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method canAdd()Z
    .locals 1

    .line 706
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    .line 707
    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->canAdd()Z

    move-result v0

    return v0
.end method

.method canCompleteTransfer()Z
    .locals 1

    .line 731
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->isForegroundInCall()Z

    move-result v0

    return v0
.end method

.method canHangupOrCancelTransfer()Z
    .locals 4

    .line 721
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    .line 722
    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->getForegroundCall()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SipPhoneCallPresenter"

    const-string v1, "canHangupOrCancelTransfer() called; foreground call == null"

    const/4 v2, 0x0

    .line 724
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 727
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->isInitCall()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method canHold()Z
    .locals 1

    .line 695
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->isForegroundInCall()Z

    move-result v0

    return v0
.end method

.method canMeet()Z
    .locals 1

    .line 716
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    .line 717
    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->canMeet()Z

    move-result v0

    return v0
.end method

.method canMerge()Z
    .locals 2

    .line 699
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    .line 700
    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->isForegroundInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 701
    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->hasMergedCall()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->getMergeableCalls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 702
    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->isForegroundWarmTransferring()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method canTransfer()Z
    .locals 1

    .line 711
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    .line 712
    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->canTransfer()Z

    move-result v0

    return v0
.end method

.method getForegroundCall()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;
    .locals 1

    .line 685
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    .line 686
    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->getForegroundCall()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object v0

    return-object v0
.end method

.method getTitle()Ljava/lang/String;
    .locals 1

    .line 690
    invoke-static {}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->access$400()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getWarmTransferStatus()I
    .locals 1

    .line 735
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    .line 736
    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->isForegroundWarmTransferring()Z

    move-result v0

    return v0
.end method
