.class Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$CallListViewData;
.super Ljava/lang/Object;
.source "SipPhoneCallPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallListViewData"
.end annotation


# instance fields
.field final foregroundCallViewData:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$ForegroundCallViewData;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$ForegroundCallViewData;)V
    .locals 0
    .param p1    # Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$ForegroundCallViewData;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 795
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 796
    iput-object p1, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$CallListViewData;->foregroundCallViewData:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$ForegroundCallViewData;

    return-void
.end method


# virtual methods
.method getBackgroundCallViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$BackgroundCallViewData;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 814
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    .line 815
    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->getBackgroundCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 818
    :cond_0
    new-instance v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$BackgroundCallViewData;

    invoke-direct {v0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$BackgroundCallViewData;-><init>()V

    return-object v0
.end method

.method getForegroundCallViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$ForegroundCallViewData;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 809
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$CallListViewData;->foregroundCallViewData:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$ForegroundCallViewData;

    return-object v0
.end method

.method getTotalSize()I
    .locals 1

    .line 804
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->size()I

    move-result v0

    return v0
.end method

.method isValid()Z
    .locals 1

    .line 800
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->getForegroundCall()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
