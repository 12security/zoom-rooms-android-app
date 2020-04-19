.class public Lus/zoom/zrc/view/PstnDialFragment;
.super Lus/zoom/zrc/base/app/ZRCFragment;
.source "PstnDialFragment.java"

# interfaces
.implements Lus/zoom/zrc/view/DialKeyboardView$OnClickDialBtnListener;


# static fields
.field static final TAG:Ljava/lang/String; = "PstnDialFragment"


# instance fields
.field private callOutCountryCodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/CountryCode;",
            ">;"
        }
    .end annotation
.end field

.field private defaultCallinCountry:Ljava/lang/String;

.field private dialKeyboardView:Lus/zoom/zrc/view/DialKeyboardView;

.field private inLocalPresentationMode:Z

.field private inMeetingInvite:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCFragment;-><init>()V

    return-void
.end method

.method private decideTheme()I
    .locals 2

    .line 174
    invoke-virtual {p0}, Lus/zoom/zrc/view/PstnDialFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 175
    instance-of v1, v0, Lus/zoom/zrc/MeetingActivity;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lus/zoom/androidlib/util/UIUtil;->isTabletOrTV(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    sget v0, Lus/zoom/zrcbox/R$style;->ZRCTheme_DialFragment_Light:I

    return v0

    .line 178
    :cond_0
    sget v0, Lus/zoom/zrcbox/R$style;->ZRCTheme_DialFragment_Dark:I

    return v0
.end method

.method private onCallOutCountryCodeListChanged()V
    .locals 3

    .line 117
    iget-boolean v0, p0, Lus/zoom/zrc/view/PstnDialFragment;->inMeetingInvite:Z

    if-nez v0, :cond_0

    .line 118
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getDefaultCallInCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/PstnDialFragment;->defaultCallinCountry:Ljava/lang/String;

    .line 119
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getCallOutCountryCode()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/PstnDialFragment;->callOutCountryCodeList:Ljava/util/List;

    .line 120
    iget-object v0, p0, Lus/zoom/zrc/view/PstnDialFragment;->dialKeyboardView:Lus/zoom/zrc/view/DialKeyboardView;

    iget-object v1, p0, Lus/zoom/zrc/view/PstnDialFragment;->defaultCallinCountry:Ljava/lang/String;

    iget-object v2, p0, Lus/zoom/zrc/view/PstnDialFragment;->callOutCountryCodeList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/view/DialKeyboardView;->updateCallOutCountryCodes(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClickDialBtn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 126
    sget-object v0, Lus/zoom/zrc/view/PstnDialFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClickDialBtn() called with: countryCode = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], phoneNumber = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    invoke-static {p1, p2}, Lus/zoom/zrc/phonecall/PhoneCallNumberUtils;->getDialOutPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 129
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result p2

    const/4 v0, 0x5

    if-ne v0, p2, :cond_2

    .line 131
    iget-boolean p2, p0, Lus/zoom/zrc/view/PstnDialFragment;->inLocalPresentationMode:Z

    const/16 v0, 0x1e

    if-eqz p2, :cond_0

    .line 132
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    const/4 v1, 0x1

    const-string v3, ""

    const/4 v4, 0x2

    invoke-virtual {p2, v1, v0, v3, v4}, Lus/zoom/zrc/model/Model;->launchSharingMeeting(IILjava/lang/String;I)Z

    move-result p2

    goto :goto_0

    .line 134
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2, v0}, Lus/zoom/zrc/model/Model;->startPSTNCall(I)Z

    move-result p2

    :goto_0
    if-nez p2, :cond_1

    const-string p1, "launch meeting failed when try to call out"

    .line 138
    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 142
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Lus/zoom/zrc/model/Model;->setAppState(I)V

    .line 145
    :cond_2
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2, p1, v2}, Lus/zoom/zrc/model/Model;->callOutPSTNUser(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 146
    iget-boolean p2, p0, Lus/zoom/zrc/view/PstnDialFragment;->inLocalPresentationMode:Z

    if-eqz p2, :cond_3

    const/4 p2, 0x7

    .line 148
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v0

    if-ne p2, v0, :cond_3

    .line 149
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/Model;->getAudioStatus()Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 150
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->isMuted()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 151
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2, v2}, Lus/zoom/zrc/model/Model;->updateMyAudio(Z)V

    .line 156
    :cond_3
    invoke-static {}, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->getInstance()Lus/zoom/zrc/model/MeetingHistoryStorageManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->addPstnDialHistory(Ljava/lang/String;)V

    .line 159
    :cond_4
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p1

    sget-object p2, Lus/zoom/zrc/base/notification/UserEvent;->DialOutPstnCall:Lus/zoom/zrc/base/notification/UserEvent;

    invoke-virtual {p1, p2}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;)V

    return-void
.end method

.method public onClickSipDialBtn(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 52
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-static {}, Lus/zoom/zrc/ActivityLauncher;->isPresentationDisplayed()Z

    move-result p1

    iput-boolean p1, p0, Lus/zoom/zrc/view/PstnDialFragment;->inLocalPresentationMode:Z

    .line 54
    invoke-virtual {p0}, Lus/zoom/zrc/view/PstnDialFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lus/zoom/zrc/MeetingActivity;

    iput-boolean p1, p0, Lus/zoom/zrc/view/PstnDialFragment;->inMeetingInvite:Z

    .line 56
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object p1

    .line 57
    iget-boolean v0, p0, Lus/zoom/zrc/view/PstnDialFragment;->inMeetingInvite:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 58
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getDefaultCallinCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/PstnDialFragment;->defaultCallinCountry:Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/PstnDialFragment;->callOutCountryCodeList:Ljava/util/List;

    .line 60
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getCalloutCountryCodeList()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 62
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;

    const-wide/16 v1, 0x3e7

    .line 63
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->getCode()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    new-instance v1, Lus/zoom/zrcsdk/model/CountryCode;

    invoke-direct {v1}, Lus/zoom/zrcsdk/model/CountryCode;-><init>()V

    .line 67
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->getCountryId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lus/zoom/zrcsdk/model/CountryCode;->setId(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->getDisplay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lus/zoom/zrcsdk/model/CountryCode;->setCode(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lus/zoom/zrcsdk/model/CountryCode;->setName(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lus/zoom/zrcsdk/model/CountryCode;->setNumber(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lus/zoom/zrc/view/PstnDialFragment;->callOutCountryCodeList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getDefaultCallInCountry()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/PstnDialFragment;->defaultCallinCountry:Ljava/lang/String;

    .line 76
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getCallOutCountryCode()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/PstnDialFragment;->callOutCountryCodeList:Ljava/util/List;

    .line 79
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrc/view/PstnDialFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 85
    invoke-direct {p0}, Lus/zoom/zrc/view/PstnDialFragment;->decideTheme()I

    move-result p3

    if-eqz p3, :cond_0

    .line 87
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lus/zoom/zrc/view/PstnDialFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 90
    :cond_0
    sget p3, Lus/zoom/zrcbox/R$layout;->dial_pstn_phone:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .line 169
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCFragment;->onHiddenChanged(Z)V

    .line 170
    iget-object v0, p0, Lus/zoom/zrc/view/PstnDialFragment;->dialKeyboardView:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/DialKeyboardView;->onHiddenChanged(Z)V

    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 110
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 111
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->defaultCallInCountry:I

    if-eq p1, p2, :cond_0

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->callOutCountryCode:I

    if-ne p1, p2, :cond_1

    .line 112
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/view/PstnDialFragment;->onCallOutCountryCodeListChanged()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 104
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCFragment;->onResume()V

    .line 105
    iget-object v0, p0, Lus/zoom/zrc/view/PstnDialFragment;->dialKeyboardView:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-virtual {v0}, Lus/zoom/zrc/view/DialKeyboardView;->updateDialHistory()V

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

    .line 95
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 96
    sget p2, Lus/zoom/zrcbox/R$id;->dial_keyboard_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/view/DialKeyboardView;

    iput-object p1, p0, Lus/zoom/zrc/view/PstnDialFragment;->dialKeyboardView:Lus/zoom/zrc/view/DialKeyboardView;

    .line 97
    iget-object p1, p0, Lus/zoom/zrc/view/PstnDialFragment;->dialKeyboardView:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-virtual {p1, p0}, Lus/zoom/zrc/view/DialKeyboardView;->setOnClickDialBtnListener(Lus/zoom/zrc/view/DialKeyboardView$OnClickDialBtnListener;)V

    .line 98
    iget-object p1, p0, Lus/zoom/zrc/view/PstnDialFragment;->dialKeyboardView:Lus/zoom/zrc/view/DialKeyboardView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lus/zoom/zrc/view/DialKeyboardView;->setUseSipCallout(Z)V

    .line 99
    iget-object p1, p0, Lus/zoom/zrc/view/PstnDialFragment;->dialKeyboardView:Lus/zoom/zrc/view/DialKeyboardView;

    iget-object p2, p0, Lus/zoom/zrc/view/PstnDialFragment;->defaultCallinCountry:Ljava/lang/String;

    iget-object v0, p0, Lus/zoom/zrc/view/PstnDialFragment;->callOutCountryCodeList:Ljava/util/List;

    invoke-virtual {p1, p2, v0}, Lus/zoom/zrc/view/DialKeyboardView;->updateCallOutCountryCodes(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
