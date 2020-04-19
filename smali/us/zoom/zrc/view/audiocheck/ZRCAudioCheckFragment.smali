.class public Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "ZRCAudioCheckFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;
    }
.end annotation


# instance fields
.field private audioCheckListener:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;

.field private countdownSeconds:I

.field private finishedDismissTask:Ljava/lang/Runnable;

.field private listener:Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;

.field private restartPrompt:Landroid/widget/TextView;

.field private startTime:J

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    .line 37
    new-instance v0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$1;-><init>(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->listener:Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;

    .line 45
    new-instance v0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$2;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$2;-><init>(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->audioCheckListener:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;

    .line 67
    new-instance v0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$3;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$3;-><init>(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->finishedDismissTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->updateUI()V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->handleOnRetest()V

    return-void
.end method

.method static synthetic access$200(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;)I
    .locals 0

    .line 26
    iget p0, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->countdownSeconds:I

    return p0
.end method

.method static synthetic access$300(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;)J
    .locals 2

    .line 26
    iget-wide v0, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->startTime:J

    return-wide v0
.end method

.method static synthetic access$400(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->update()V

    return-void
.end method

.method static synthetic access$500(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->updateCountdown(I)V

    return-void
.end method

.method private handleOnRetest()V
    .locals 2

    .line 259
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getAudioCheckupInfo()Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 261
    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->setStatus(I)V

    .line 263
    :cond_0
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/PTApp;->startAudioCheckup()I

    .line 264
    invoke-direct {p0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->updateUI()V

    return-void
.end method

.method private launchTimerAndCountdownFor(I)V
    .locals 2

    .line 250
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getStartAudioCheckTime()J

    move-result-wide v0

    iput-wide v0, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->startTime:J

    .line 251
    iput p1, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->countdownSeconds:I

    .line 252
    invoke-virtual {p0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 253
    invoke-virtual {p0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->getView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->finishedDismissTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 254
    invoke-virtual {p0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->getView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->finishedDismissTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private update()V
    .locals 3

    .line 97
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getAudioCheckupInfo()Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->getStatus()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lus/zoom/androidlib/R$anim;->zm_slide_in_bottom:I

    sget v2, Lus/zoom/androidlib/R$anim;->zm_slide_out_bottom:I

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 106
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    .line 101
    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->setStatus(I)V

    .line 102
    invoke-direct {p0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->updateUI()V

    :goto_0
    return-void
.end method

.method private updateCountdown(I)V
    .locals 4

    .line 84
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getAudioCheckupInfo()Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->getStatus()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->restartPrompt:Landroid/widget/TextView;

    sget v3, Lus/zoom/zrcbox/R$string;->system_restart_in_seconds:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {p0, v3, v2}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 88
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->title:Landroid/widget/TextView;

    sget v3, Lus/zoom/zrcbox/R$string;->audio_checkup_starting_in_seconds:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {p0, v3, v2}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private updateUI()V
    .locals 7

    .line 162
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getAudioCheckupInfo()Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 163
    iget-object v0, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->title:Landroid/widget/TextView;

    sget v2, Lus/zoom/zrcbox/R$string;->starting_audio_checkup:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 164
    invoke-virtual {p0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v2, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneStartingFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneStartingFragment;

    invoke-direct {v0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneStartingFragment;-><init>()V

    .line 167
    move-object v2, v0

    check-cast v2, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneStartingFragment;

    iget-object v3, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->audioCheckListener:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;

    invoke-virtual {v2, v3}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneStartingFragment;->setListener(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;)V

    .line 168
    invoke-virtual {p0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 169
    sget v3, Lus/zoom/zrcbox/R$id;->content:I

    const-class v4, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneStartingFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 171
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->restartPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 174
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getAudioCheckupInfo()Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->isCanRestartZoomRoomsSystem()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->restartPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 177
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->restartPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    :goto_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getAudioCheckupInfo()Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->getStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 194
    :pswitch_0
    iget-object v3, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->title:Landroid/widget/TextView;

    sget v4, Lus/zoom/zrcbox/R$string;->audio_checkup_result:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 195
    invoke-virtual {p0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    const-class v4, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneFailedFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_3

    .line 197
    new-instance v3, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneFailedFragment;

    invoke-direct {v3}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneFailedFragment;-><init>()V

    .line 198
    move-object v4, v3

    check-cast v4, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneFailedFragment;

    iget-object v5, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->audioCheckListener:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;

    invoke-virtual {v4, v5}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneFailedFragment;->setListener(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;)V

    .line 199
    invoke-virtual {p0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    .line 200
    sget v5, Lus/zoom/zrcbox/R$id;->content:I

    const-class v6, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneFailedFragment;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v6}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_3
    const/4 v3, 0x5

    if-ne v3, v0, :cond_4

    .line 203
    iget-object v0, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->restartPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getAudioCheckupInfo()Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->getIntervalAfterFinshed()I

    move-result v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->launchTimerAndCountdownFor(I)V

    goto/16 :goto_1

    .line 206
    :cond_4
    iget-object v0, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->restartPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 214
    :pswitch_1
    iget-object v0, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->title:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->audio_checkup_result:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 215
    invoke-virtual {p0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneSucceededFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_5

    .line 217
    new-instance v0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneSucceededFragment;

    invoke-direct {v0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneSucceededFragment;-><init>()V

    .line 218
    invoke-virtual {p0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 219
    sget v2, Lus/zoom/zrcbox/R$id;->content:I

    const-class v3, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneSucceededFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 221
    :cond_5
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getAudioCheckupInfo()Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->getIntervalAfterFinshed()I

    move-result v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->launchTimerAndCountdownFor(I)V

    goto/16 :goto_1

    .line 183
    :pswitch_2
    iget-object v0, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->title:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->running_audio_checkup:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 184
    invoke-virtual {p0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_7

    .line 186
    new-instance v0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment;

    invoke-direct {v0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment;-><init>()V

    .line 187
    move-object v1, v0

    check-cast v1, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment;

    iget-object v2, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->audioCheckListener:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;

    invoke-virtual {v1, v2}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment;->setAudioCheckListener(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;)V

    .line 188
    invoke-virtual {p0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 189
    sget v2, Lus/zoom/zrcbox/R$id;->content:I

    const-class v3, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto/16 :goto_1

    .line 235
    :pswitch_3
    iget-object v0, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->title:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->starting_audio_checkup:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 236
    invoke-virtual {p0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneStartingFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_7

    .line 238
    new-instance v0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneStartingFragment;

    invoke-direct {v0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneStartingFragment;-><init>()V

    .line 239
    move-object v1, v0

    check-cast v1, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneStartingFragment;

    iget-object v2, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->audioCheckListener:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;

    invoke-virtual {v1, v2}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneStartingFragment;->setListener(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;)V

    .line 240
    invoke-virtual {p0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 241
    sget v2, Lus/zoom/zrcbox/R$id;->content:I

    const-class v3, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneStartingFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto/16 :goto_1

    .line 224
    :pswitch_4
    iget-object v0, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->title:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->audio_checkup_starting_in_seconds:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrc/model/AppModel;->getAudioCheckupInfo()Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->getIntervalAfterScheduled()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p0, v1, v3}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    invoke-virtual {p0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneStartingFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_6

    .line 227
    new-instance v0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneStartingFragment;

    invoke-direct {v0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneStartingFragment;-><init>()V

    .line 228
    move-object v1, v0

    check-cast v1, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneStartingFragment;

    iget-object v2, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->audioCheckListener:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;

    invoke-virtual {v1, v2}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneStartingFragment;->setListener(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;)V

    .line 229
    invoke-virtual {p0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 230
    sget v2, Lus/zoom/zrcbox/R$id;->content:I

    const-class v3, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneStartingFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 232
    :cond_6
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getAudioCheckupInfo()Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->getIntervalAfterScheduled()I

    move-result v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->launchTimerAndCountdownFor(I)V

    goto :goto_1

    .line 210
    :pswitch_5
    invoke-virtual {p0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lus/zoom/androidlib/R$anim;->zm_slide_in_bottom:I

    sget v2, Lus/zoom/androidlib/R$anim;->zm_slide_out_bottom:I

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 211
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_7
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 113
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 114
    sget p1, Lus/zoom/zrcbox/R$style;->ZRCAudiCheckFragmentTheme:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->setStyle(II)V

    .line 115
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->listener:Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/AppEngine;->addZRPtEventListener(Lus/zoom/zrc/model/AppEngine$IZRPtEvent;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
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

    const/4 p3, 0x0

    .line 127
    invoke-virtual {p0, p3}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->setCanceledOnTouchOutside(Z)V

    .line 128
    invoke-virtual {p0, p3}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->setCancelable(Z)V

    .line 129
    sget v0, Lus/zoom/zrcbox/R$layout;->audio_check_fragment:I

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 130
    sget p2, Lus/zoom/zrcbox/R$id;->restart_prompt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->restartPrompt:Landroid/widget/TextView;

    .line 131
    new-instance p2, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$4;

    invoke-direct {p2, p0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$4;-><init>(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    sget p2, Lus/zoom/zrcbox/R$id;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->title:Landroid/widget/TextView;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 120
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onDestroy()V

    .line 121
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->listener:Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppEngine;->removeZRPtEventListener(Lus/zoom/zrc/model/AppEngine$IZRPtEvent;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 157
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onResume()V

    .line 158
    invoke-direct {p0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->updateUI()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 150
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onStart()V

    .line 152
    invoke-virtual {p0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->requestFullScreenLayout()V

    return-void
.end method
