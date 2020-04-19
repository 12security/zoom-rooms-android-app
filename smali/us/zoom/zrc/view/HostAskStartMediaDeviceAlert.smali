.class public Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;
.super Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;
.source "HostAskStartMediaDeviceAlert.java"


# static fields
.field private static final KEY_IS_HOST:Ljava/lang/String; = "is_host"

.field private static final KEY_SHOWING_TYPE:Ljava/lang/String; = "showing_type"

.field public static final SHOWING_TYPE_AUDIO:I = 0x2

.field public static final SHOWING_TYPE_SPOTLIGHT:I = 0x3

.field public static final SHOWING_TYPE_VIDEO:I = 0x1


# instance fields
.field private isHost:Z

.field private onLaterClicked:Landroid/content/DialogInterface$OnClickListener;

.field private onStartVideoClicked:Landroid/content/DialogInterface$OnClickListener;

.field private onStayMutedClicked:Landroid/content/DialogInterface$OnClickListener;

.field private onUnmuteMyselfClicked:Landroid/content/DialogInterface$OnClickListener;

.field private showingType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;-><init>()V

    .line 164
    new-instance v0, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert$1;-><init>(Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;)V

    iput-object v0, p0, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->onStartVideoClicked:Landroid/content/DialogInterface$OnClickListener;

    .line 172
    new-instance v0, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert$2;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert$2;-><init>(Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;)V

    iput-object v0, p0, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->onLaterClicked:Landroid/content/DialogInterface$OnClickListener;

    .line 181
    new-instance v0, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert$3;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert$3;-><init>(Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;)V

    iput-object v0, p0, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->onUnmuteMyselfClicked:Landroid/content/DialogInterface$OnClickListener;

    .line 189
    new-instance v0, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert$4;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert$4;-><init>(Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;)V

    iput-object v0, p0, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->onStayMutedClicked:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public static dismiss(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;I)V
    .locals 0

    .line 64
    invoke-static {p1}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->getTAG(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;

    if-eqz p0, :cond_1

    .line 71
    invoke-virtual {p0}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 72
    invoke-virtual {p0}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->dismiss()V

    :cond_1
    return-void
.end method

.method public static dismissAll(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V
    .locals 1

    const/4 v0, 0x1

    .line 77
    invoke-static {p0, v0}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->dismiss(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;I)V

    const/4 v0, 0x2

    .line 78
    invoke-static {p0, v0}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->dismiss(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;I)V

    const/4 v0, 0x3

    .line 79
    invoke-static {p0, v0}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->dismiss(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;I)V

    return-void
.end method

.method private static getTAG(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "CONFIRM_ALERT_TYPE_SPOTLIGHT"

    return-object p0

    :pswitch_1
    const-string p0, "CONFIRM_ALERT_TYPE_AUDIO"

    return-object p0

    :pswitch_2
    const-string p0, "CONFIRM_ALERT_TYPE_VIDEO"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initState()V
    .locals 2

    .line 214
    invoke-virtual {p0}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "showing_type"

    .line 216
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->setShowingType(I)V

    const-string v1, "is_host"

    .line 217
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->setIsHost(Z)V

    :cond_0
    return-void
.end method

.method private setClickEvents()V
    .locals 2

    .line 144
    iget v0, p0, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->showingType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 154
    :pswitch_0
    sget v0, Lus/zoom/zrcbox/R$string;->ask_to_start_audio_ok:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->onUnmuteMyselfClicked:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 155
    sget v0, Lus/zoom/zrcbox/R$string;->ask_to_start_audio_cancel:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->onStayMutedClicked:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 150
    :pswitch_1
    sget v0, Lus/zoom/zrcbox/R$string;->ask_to_start_audio_ok:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->onUnmuteMyselfClicked:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 151
    sget v0, Lus/zoom/zrcbox/R$string;->ask_to_start_audio_cancel:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->onStayMutedClicked:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 146
    :pswitch_2
    sget v0, Lus/zoom/zrcbox/R$string;->ask_to_start_video_ok:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->onStartVideoClicked:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 147
    sget v0, Lus/zoom/zrcbox/R$string;->ask_to_start_video_cancel:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->onLaterClicked:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setIsHost(Z)V
    .locals 0

    .line 86
    iput-boolean p1, p0, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->isHost:Z

    return-void
.end method

.method private setShowingType(I)V
    .locals 0

    .line 90
    iput p1, p0, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->showingType:I

    return-void
.end method

.method private setTitle()V
    .locals 1

    .line 126
    iget v0, p0, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->showingType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 137
    :pswitch_0
    sget v0, Lus/zoom/zrcbox/R$string;->ask_to_start_audio_title_for_spotlight:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :pswitch_1
    sget v0, Lus/zoom/zrcbox/R$string;->ask_to_start_audio_title:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :pswitch_2
    iget-boolean v0, p0, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->isHost:Z

    if-eqz v0, :cond_0

    .line 129
    sget v0, Lus/zoom/zrcbox/R$string;->ask_to_start_video_title:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_0
    sget v0, Lus/zoom/zrcbox/R$string;->ask_to_start_video_title_for_cohost:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->setTitle(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setupAlertDialog()V
    .locals 1

    .line 118
    invoke-direct {p0}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->initState()V

    .line 120
    invoke-direct {p0}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->setTitle()V

    .line 121
    invoke-direct {p0}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->setClickEvents()V

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->setCancelable(Z)V

    return-void
.end method

.method public static show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;IZ)V
    .locals 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 30
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 35
    invoke-static {p0, v0}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->dismiss(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;I)V

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    .line 37
    invoke-static {p0, v1}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->dismiss(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;I)V

    .line 40
    :cond_2
    :goto_0
    invoke-static {p1}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->getTAG(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 45
    :cond_3
    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;

    if-eqz v1, :cond_4

    .line 47
    invoke-virtual {v1}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 48
    invoke-direct {v1, p2}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->updateIsShowingHost(Z)V

    return-void

    :cond_4
    if-nez v1, :cond_5

    .line 53
    new-instance v1, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;

    invoke-direct {v1}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;-><init>()V

    .line 54
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "showing_type"

    .line 55
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "is_host"

    .line 56
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 57
    invoke-virtual {v1, v2}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->setArguments(Landroid/os/Bundle;)V

    .line 60
    :cond_5
    invoke-virtual {p0, v1, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Landroidx/fragment/app/DialogFragment;Ljava/lang/String;)V

    return-void
.end method

.method private updateIsShowingHost(Z)V
    .locals 2

    .line 222
    invoke-virtual {p0}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "is_host"

    .line 226
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 227
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->setIsHost(Z)V

    .line 228
    invoke-direct {p0}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->setTitle()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 95
    invoke-direct {p0}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->setupAlertDialog()V

    .line 96
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    .line 98
    invoke-virtual {p0}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 1

    .line 103
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 104
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->sipCallInfos:I

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 105
    iget p1, p0, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->showingType:I

    if-eq p1, v0, :cond_1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/SipCallInfoList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 106
    invoke-virtual {p0}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->dismiss()V

    goto :goto_0

    .line 108
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->audioStatus:I

    if-ne p1, p2, :cond_1

    .line 109
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getAudioStatus()Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    move-result-object p1

    .line 110
    iget p2, p0, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->showingType:I

    if-eq p2, v0, :cond_1

    if-eqz p1, :cond_1

    .line 111
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->isMuted()Z

    move-result p1

    if-nez p1, :cond_1

    .line 112
    invoke-virtual {p0}, Lus/zoom/zrc/view/HostAskStartMediaDeviceAlert;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method
