.class public Lus/zoom/zrc/phonecall/SipPhoneCallActivity;
.super Lus/zoom/zrc/ZRCActivity;
.source "SipPhoneCallActivity.java"


# instance fields
.field private sipCallFragment:Lus/zoom/zrc/phonecall/SipCallFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lus/zoom/zrc/ZRCActivity;-><init>()V

    return-void
.end method

.method public static show(Landroid/content/Context;)V
    .locals 2

    .line 16
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lus/zoom/zrc/phonecall/SipPhoneCallActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->safeStartActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x1

    .line 46
    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/SipPhoneCallActivity;->moveTaskToBack(Z)Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 21
    invoke-super {p0, p1}, Lus/zoom/zrc/ZRCActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallActivity;->checkIsInit()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 26
    :cond_0
    sget p1, Lus/zoom/zrcbox/R$layout;->phone_call_out:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/phonecall/SipPhoneCallActivity;->setContentView(I)V

    .line 28
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$id;->content:I

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->setContainerViewId(I)V

    .line 30
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/phonecall/SipCallFragment;->obtainSipCallFragment(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)Lus/zoom/zrc/phonecall/SipCallFragment;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/phonecall/SipPhoneCallActivity;->sipCallFragment:Lus/zoom/zrc/phonecall/SipCallFragment;

    .line 31
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipPhoneCallActivity;->sipCallFragment:Lus/zoom/zrc/phonecall/SipCallFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/phonecall/SipCallFragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_1

    .line 32
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipPhoneCallActivity;->sipCallFragment:Lus/zoom/zrc/phonecall/SipCallFragment;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->replaceShowFragment(Landroidx/fragment/app/Fragment;)V

    .line 35
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/SipPhoneCallActivity;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lus/zoom/zrc/base/notification/NotificationEvent;

    const/4 v1, 0x0

    sget-object v2, Lus/zoom/zrc/base/notification/ModelEvent;->OnEnterState:Lus/zoom/zrc/base/notification/ModelEvent;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerNotification([Lus/zoom/zrc/base/notification/NotificationEvent;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 40
    invoke-super {p0}, Lus/zoom/zrc/ZRCActivity;->onResume()V

    .line 41
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipPhoneCallActivity;->sipCallFragment:Lus/zoom/zrc/phonecall/SipCallFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/phonecall/SipCallFragment;->updateTitle()V

    return-void
.end method
