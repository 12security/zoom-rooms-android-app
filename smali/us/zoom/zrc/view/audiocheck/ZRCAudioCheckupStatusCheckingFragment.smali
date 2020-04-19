.class public Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment;
.super Landroidx/fragment/app/Fragment;
.source "ZRCAudioCheckupStatusCheckingFragment.java"


# instance fields
.field private audioCheckListener:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;

.field private cancel:Landroid/widget/Button;

.field private listener:Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;

.field private progressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 25
    new-instance v0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment$1;-><init>(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment;->listener:Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment;)Landroid/widget/ProgressBar;
    .locals 0

    .line 24
    iget-object p0, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment;)Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment;->audioCheckListener:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;

    return-object p0
.end method


# virtual methods
.method public getAudioCheckListener()Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;
    .locals 1

    .line 47
    iget-object v0, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment;->audioCheckListener:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment;->listener:Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/AppEngine;->addZRPtEventListener(Lus/zoom/zrc/model/AppEngine$IZRPtEvent;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
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

    .line 57
    sget p3, Lus/zoom/zrcbox/R$layout;->audio_status_checkint_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 58
    sget p2, Lus/zoom/zrcbox/R$id;->progress:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 59
    iget-object p2, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 60
    invoke-virtual {p0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-static {p3}, Lus/zoom/zrc/utils/Util;->getWidth(Landroid/content/Context;)I

    move-result p3

    int-to-double v0, p3

    const-wide v2, 0x3fe6666666666666L    # 0.7

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int p3, v0

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 61
    sget p2, Lus/zoom/zrcbox/R$id;->cancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment;->cancel:Landroid/widget/Button;

    .line 62
    iget-object p2, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment;->cancel:Landroid/widget/Button;

    new-instance p3, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment$2;

    invoke-direct {p3, p0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment$2;-><init>(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 83
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 84
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment;->listener:Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppEngine;->removeZRPtEventListener(Lus/zoom/zrc/model/AppEngine$IZRPtEvent;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 74
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 75
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getAudioCheckupInfo()Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v1, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->getPercentageOfCheckup()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public setAudioCheckListener(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment;->audioCheckListener:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;

    return-void
.end method
