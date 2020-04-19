.class public Lus/zoom/zrc/phonecall/PstnPhoneCallActivity;
.super Lus/zoom/zrc/ZRCActivity;
.source "PstnPhoneCallActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lus/zoom/zrc/ZRCActivity;-><init>()V

    return-void
.end method

.method public static show(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lus/zoom/zrcsdk/model/ZRCMeetingListItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21
    invoke-static {p1}, Lus/zoom/zrc/model/ZRCThirdPartyMeetingUtils;->getThirdPartyMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 22
    invoke-static {p1}, Lus/zoom/zrc/model/ZRCThirdPartyMeetingUtils;->canDialIn(Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-static {}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->obtainInstance()Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->getMeetingNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "# #"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->setPhoneBridgeDTMFString(Ljava/lang/String;)V

    .line 25
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lus/zoom/zrc/phonecall/PstnPhoneCallActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, p1}, Lus/zoom/zrc/utils/ZRCUIUtils;->safeStartActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x1

    .line 46
    invoke-virtual {p0, v0}, Lus/zoom/zrc/phonecall/PstnPhoneCallActivity;->moveTaskToBack(Z)Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 30
    invoke-super {p0, p1}, Lus/zoom/zrc/ZRCActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallActivity;->checkIsInit()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 35
    :cond_0
    sget p1, Lus/zoom/zrcbox/R$layout;->phone_call_out:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/phonecall/PstnPhoneCallActivity;->setContentView(I)V

    .line 37
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$id;->content:I

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->setContainerViewId(I)V

    .line 38
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->obtainPstnInstance(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)Lus/zoom/zrc/phonecall/PhoneCallFragment;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 40
    invoke-virtual {p0}, Lus/zoom/zrc/phonecall/PstnPhoneCallActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->replaceShowFragment(Landroidx/fragment/app/Fragment;)V

    :cond_1
    return-void
.end method
