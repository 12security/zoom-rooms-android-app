.class public Lus/zoom/zrc/phonecall/SipAddCallFragment;
.super Lus/zoom/zrc/view/SipDialFragment;
.source "SipAddCallFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SipAddCallFragment"


# instance fields
.field private sipPhoneCallPresenter:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lus/zoom/zrc/view/SipDialFragment;-><init>()V

    .line 21
    invoke-static {}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getInstance()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/phonecall/SipAddCallFragment;->sipPhoneCallPresenter:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    return-void
.end method


# virtual methods
.method public onClickSipDialBtn(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SipAddCallFragment"

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClickSipDialBtn() called with: phoneNumber = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipAddCallFragment;->sipPhoneCallPresenter:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->addCall(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->getInstance()Lus/zoom/zrc/model/MeetingHistoryStorageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->addSipDialHistory(Ljava/lang/String;)V

    .line 57
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipAddCallFragment;->dismiss()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 35
    invoke-super {p0, p1}, Lus/zoom/zrc/view/SipDialFragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipAddCallFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 25
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/view/SipDialFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 26
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->sipCallInfos:I

    if-ne p2, p1, :cond_0

    .line 27
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/SipCallInfoList;->canAdd()Z

    move-result p1

    if-nez p1, :cond_0

    .line 28
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipAddCallFragment;->dismiss()V

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

    .line 41
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/view/SipDialFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 42
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipAddCallFragment;->sipPhoneCallPresenter:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const-string p1, "SipAddCallFragment"

    const-string v0, "onViewCreated() called with: presenter is null"

    .line 43
    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, v0, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 46
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipAddCallFragment;->titleLayout:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 47
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipAddCallFragment;->titleView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipAddCallFragment;->titleView:Landroid/widget/TextView;

    sget p2, Lus/zoom/zrcbox/R$string;->add_call:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
