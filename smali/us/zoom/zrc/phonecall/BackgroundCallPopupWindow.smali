.class public Lus/zoom/zrc/phonecall/BackgroundCallPopupWindow;
.super Lus/zoom/zrc/phonecall/SipCallListPopupWindow;
.source "BackgroundCallPopupWindow.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrc/phonecall/SipCallListPopupWindow;-><init>(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;)V

    return-void
.end method

.method private updateData()V
    .locals 2

    .line 51
    iget-object v0, p0, Lus/zoom/zrc/phonecall/BackgroundCallPopupWindow;->adapter:Lus/zoom/zrc/phonecall/PhoneListAdapter;

    iget-object v1, p0, Lus/zoom/zrc/phonecall/BackgroundCallPopupWindow;->sipPhoneCallPresenter:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    invoke-virtual {v1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getBackgroundCalls()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/phonecall/PhoneListAdapter;->update(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected initData()I
    .locals 6

    .line 36
    iget-object v0, p0, Lus/zoom/zrc/phonecall/BackgroundCallPopupWindow;->sipPhoneCallPresenter:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    invoke-virtual {v0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getBackgroundCalls()Ljava/util/List;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lus/zoom/zrc/phonecall/BackgroundCallPopupWindow;->context:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$string;->calls_on_hold:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lus/zoom/zrc/phonecall/BackgroundCallPopupWindow;->setTitle(Ljava/lang/String;)V

    .line 38
    new-instance v1, Lus/zoom/zrc/phonecall/BackgroundCallPopupWindow$1;

    invoke-direct {v1, p0, v0}, Lus/zoom/zrc/phonecall/BackgroundCallPopupWindow$1;-><init>(Lus/zoom/zrc/phonecall/BackgroundCallPopupWindow;Ljava/util/List;)V

    iput-object v1, p0, Lus/zoom/zrc/phonecall/BackgroundCallPopupWindow;->adapter:Lus/zoom/zrc/phonecall/PhoneListAdapter;

    .line 46
    iget-object v1, p0, Lus/zoom/zrc/phonecall/BackgroundCallPopupWindow;->adapter:Lus/zoom/zrc/phonecall/PhoneListAdapter;

    invoke-virtual {p0, v1}, Lus/zoom/zrc/phonecall/BackgroundCallPopupWindow;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 47
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected isListSizeChanged()Z
    .locals 2

    .line 56
    iget-object v0, p0, Lus/zoom/zrc/phonecall/BackgroundCallPopupWindow;->sipPhoneCallPresenter:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    invoke-virtual {v0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getBackgroundCalls()Ljava/util/List;

    move-result-object v0

    .line 57
    iget v1, p0, Lus/zoom/zrc/phonecall/BackgroundCallPopupWindow;->initListSize:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onSipCallListChanged()V
    .locals 3

    .line 25
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->getBackgroundCalls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 27
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/BackgroundCallPopupWindow;->dismiss()V

    goto :goto_0

    .line 28
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/phonecall/BackgroundCallPopupWindow;->target:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->getForegroundCall()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object v0

    invoke-virtual {v1, v0}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 29
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/BackgroundCallPopupWindow;->dismiss()V

    goto :goto_0

    .line 31
    :cond_1
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/BackgroundCallPopupWindow;->updateData()V

    :goto_0
    return-void
.end method
