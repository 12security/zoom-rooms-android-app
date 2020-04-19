.class public Lus/zoom/zrc/phonecall/ForegroundCallersPopupWindow;
.super Lus/zoom/zrc/phonecall/SipCallListPopupWindow;
.source "ForegroundCallersPopupWindow.java"


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

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrc/phonecall/SipCallListPopupWindow;-><init>(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;)V

    return-void
.end method


# virtual methods
.method protected initData()I
    .locals 2

    .line 27
    iget-object v0, p0, Lus/zoom/zrc/phonecall/ForegroundCallersPopupWindow;->context:Landroid/content/Context;

    sget v1, Lus/zoom/zrcbox/R$string;->callers:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/ForegroundCallersPopupWindow;->setTitle(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lus/zoom/zrc/phonecall/ForegroundCallersPopupWindow;->sipPhoneCallPresenter:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    invoke-virtual {v0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getForegroundCallers()Ljava/util/List;

    move-result-object v0

    .line 29
    new-instance v1, Lus/zoom/zrc/phonecall/ForegroundCallersPopupWindow$1;

    invoke-direct {v1, p0, v0}, Lus/zoom/zrc/phonecall/ForegroundCallersPopupWindow$1;-><init>(Lus/zoom/zrc/phonecall/ForegroundCallersPopupWindow;Ljava/util/List;)V

    iput-object v1, p0, Lus/zoom/zrc/phonecall/ForegroundCallersPopupWindow;->adapter:Lus/zoom/zrc/phonecall/PhoneListAdapter;

    .line 37
    iget-object v1, p0, Lus/zoom/zrc/phonecall/ForegroundCallersPopupWindow;->adapter:Lus/zoom/zrc/phonecall/PhoneListAdapter;

    invoke-virtual {p0, v1}, Lus/zoom/zrc/phonecall/ForegroundCallersPopupWindow;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 38
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected isListSizeChanged()Z
    .locals 2

    .line 43
    iget-object v0, p0, Lus/zoom/zrc/phonecall/ForegroundCallersPopupWindow;->sipPhoneCallPresenter:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    invoke-virtual {v0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getForegroundCallers()Ljava/util/List;

    move-result-object v0

    .line 44
    iget v1, p0, Lus/zoom/zrc/phonecall/ForegroundCallersPopupWindow;->initListSize:I

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
    .locals 0

    .line 22
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/ForegroundCallersPopupWindow;->dismiss()V

    return-void
.end method
