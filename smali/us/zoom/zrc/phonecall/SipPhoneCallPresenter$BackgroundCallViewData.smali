.class Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$BackgroundCallViewData;
.super Ljava/lang/Object;
.source "SipPhoneCallPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BackgroundCallViewData"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getDescription()Ljava/lang/String;
    .locals 7

    .line 756
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    .line 757
    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->getBackgroundCalls()Ljava/util/List;

    move-result-object v0

    .line 758
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v0, "SipPhoneCallPresenter"

    const-string v1, "getTitle() called,  but background call list is empty"

    .line 759
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, ""

    return-object v0

    .line 761
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 762
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    .line 763
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getThirdPartyDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 764
    invoke-static {}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->access$600()Landroid/app/Application;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->on_hold_tap_to_swap:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 766
    :cond_1
    invoke-static {}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->access$600()Landroid/app/Application;

    move-result-object v1

    sget v4, Lus/zoom/zrcbox/R$string;->on_hold:I

    invoke-virtual {v1, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 767
    invoke-static {}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->access$600()Landroid/app/Application;

    move-result-object v4

    sget v5, Lus/zoom/zrcbox/R$string;->transfer_from:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v2

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getThirdPartyDisplayName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 771
    :cond_2
    invoke-static {}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->access$600()Landroid/app/Application;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->tap_to_see_all:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSingleCall()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;
    .locals 3

    .line 782
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    .line 783
    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->getBackgroundCalls()Ljava/util/List;

    move-result-object v0

    .line 784
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v0, "SipPhoneCallPresenter"

    const-string v1, "getSingleCall() called, but backgroundCalls is empty."

    .line 785
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    .line 788
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    return-object v0
.end method

.method getTitle()Ljava/lang/String;
    .locals 5

    .line 742
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    .line 743
    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->getBackgroundCalls()Ljava/util/List;

    move-result-object v0

    .line 744
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v0, "SipPhoneCallPresenter"

    const-string v1, "getTitle() called,  but background call list is empty"

    .line 745
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, ""

    return-object v0

    .line 747
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 748
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    .line 749
    invoke-static {v0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->access$500(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 751
    :cond_1
    invoke-static {}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->access$600()Landroid/app/Application;

    move-result-object v1

    sget v4, Lus/zoom/zrcbox/R$string;->calls_on_hold:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-virtual {v1, v4, v3}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isSingle()Z
    .locals 2

    .line 776
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    .line 777
    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->getBackgroundCalls()Ljava/util/List;

    move-result-object v0

    .line 778
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
