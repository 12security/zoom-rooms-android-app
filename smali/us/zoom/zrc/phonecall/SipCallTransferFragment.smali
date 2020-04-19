.class public Lus/zoom/zrc/phonecall/SipCallTransferFragment;
.super Lus/zoom/zrc/view/SipDialFragment;
.source "SipCallTransferFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SipCallTransferFragment"


# instance fields
.field private sipPhoneCallPresenter:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

.field private sourceCall:Lus/zoom/zrcsdk/model/ZRCIncomingCall;

.field private transferImageView:Landroid/view/View;

.field private transferPopupWindow:Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lus/zoom/zrc/view/SipDialFragment;-><init>()V

    .line 24
    invoke-static {}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getInstance()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/phonecall/SipCallTransferFragment;->sipPhoneCallPresenter:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    return-void
.end method

.method static synthetic access$002(Lus/zoom/zrc/phonecall/SipCallTransferFragment;Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;)Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;
    .locals 0

    .line 21
    iput-object p1, p0, Lus/zoom/zrc/phonecall/SipCallTransferFragment;->transferPopupWindow:Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;

    return-object p1
.end method

.method private checkPopupChange()V
    .locals 2

    .line 93
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallTransferFragment;->transferPopupWindow:Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->isFull()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 97
    iget-object v1, p0, Lus/zoom/zrc/phonecall/SipCallTransferFragment;->transferPopupWindow:Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;

    invoke-virtual {v1}, Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;->isCanWarmTransfer()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 98
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallTransferFragment;->transferPopupWindow:Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;

    invoke-virtual {v0}, Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/phonecall/SipCallTransferFragment;->showTransferPopup(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private onSipCallInfosChanged()V
    .locals 3

    .line 38
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallTransferFragment;->sourceCall:Lus/zoom/zrcsdk/model/ZRCIncomingCall;

    if-nez v0, :cond_0

    const-string v0, "SipCallTransferFragment"

    const-string v1, "onSipCallInfosChanged() called, but sourceCall == null."

    const/4 v2, 0x0

    .line 39
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipCallTransferFragment;->dismiss()V

    return-void

    .line 43
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->getForegroundCall()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object v1

    .line 45
    iget-object v2, p0, Lus/zoom/zrc/phonecall/SipCallTransferFragment;->sourceCall:Lus/zoom/zrcsdk/model/ZRCIncomingCall;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 46
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipCallTransferFragment;->dismiss()V

    return-void

    .line 49
    :cond_1
    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->canTransfer()Z

    move-result v0

    if-nez v0, :cond_2

    .line 50
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipCallTransferFragment;->dismiss()V

    return-void

    .line 53
    :cond_2
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipCallTransferFragment;->checkPopupChange()V

    return-void
.end method

.method private showTransferPopup(Ljava/lang/String;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallTransferFragment;->transferPopupWindow:Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;->dismiss()V

    .line 82
    :cond_0
    new-instance v0, Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;

    iget-object v1, p0, Lus/zoom/zrc/phonecall/SipCallTransferFragment;->transferImageView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;-><init>(Landroid/content/Context;Ljava/lang/String;Lus/zoom/zrc/phonecall/SipCallTransferFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/phonecall/SipCallTransferFragment;->transferPopupWindow:Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;

    .line 83
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallTransferFragment;->transferPopupWindow:Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;

    new-instance v0, Lus/zoom/zrc/phonecall/SipCallTransferFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/phonecall/SipCallTransferFragment$1;-><init>(Lus/zoom/zrc/phonecall/SipCallTransferFragment;)V

    invoke-virtual {p1, v0}, Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 89
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallTransferFragment;->transferPopupWindow:Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;

    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallTransferFragment;->transferImageView:Landroid/view/View;

    invoke-static {p1, v0}, Lus/zoom/zrc/login/util/ZRCPopupWindowUtils;->showAtTop(Landroid/widget/PopupWindow;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onClickSipDialBtn(Ljava/lang/String;)V
    .locals 1

    .line 104
    invoke-direct {p0, p1}, Lus/zoom/zrc/phonecall/SipCallTransferFragment;->showTransferPopup(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallTransferFragment;->dialKeyboardView:Lus/zoom/zrc/view/DialKeyboardView;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallTransferFragment;->dialKeyboardView:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/DialKeyboardView;->setNumber(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 58
    invoke-super {p0, p1}, Lus/zoom/zrc/view/SipDialFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/SipCallInfoList;->getForegroundCall()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/phonecall/SipCallTransferFragment;->sourceCall:Lus/zoom/zrcsdk/model/ZRCIncomingCall;

    .line 60
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipCallTransferFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 112
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallTransferFragment;->transferPopupWindow:Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;->dismiss()V

    .line 115
    :cond_0
    invoke-super {p0}, Lus/zoom/zrc/view/SipDialFragment;->onDestroyView()V

    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 31
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/view/SipDialFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 32
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->sipCallInfos:I

    if-ne p2, p1, :cond_0

    .line 33
    invoke-direct {p0}, Lus/zoom/zrc/phonecall/SipCallTransferFragment;->onSipCallInfosChanged()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 65
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/view/SipDialFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 66
    iget-object p2, p0, Lus/zoom/zrc/phonecall/SipCallTransferFragment;->sipPhoneCallPresenter:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string p1, "SipCallTransferFragment"

    const-string p2, "onViewCreated() called with: presenter is null"

    .line 67
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 70
    :cond_0
    iget-object p2, p0, Lus/zoom/zrc/phonecall/SipCallTransferFragment;->titleLayout:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object p2, p0, Lus/zoom/zrc/phonecall/SipCallTransferFragment;->titleView:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    iget-object p2, p0, Lus/zoom/zrc/phonecall/SipCallTransferFragment;->titleView:Landroid/widget/TextView;

    sget v0, Lus/zoom/zrcbox/R$string;->transfer_to:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 74
    sget p2, Lus/zoom/zrcbox/R$id;->iv_call:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/phonecall/SipCallTransferFragment;->transferImageView:Landroid/view/View;

    .line 75
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallTransferFragment;->dialKeyboardView:Lus/zoom/zrc/view/DialKeyboardView;

    sget p2, Lus/zoom/zrcbox/R$drawable;->transfer_green:I

    invoke-virtual {p1, p2}, Lus/zoom/zrc/view/DialKeyboardView;->setCallImage(I)V

    return-void
.end method
