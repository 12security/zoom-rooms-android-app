.class public Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneFailedFragment;
.super Landroidx/fragment/app/Fragment;
.source "ZRCAudioCheckupSceneFailedFragment.java"


# instance fields
.field private listener:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneFailedFragment;)Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneFailedFragment;->listener:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;

    return-object p0
.end method


# virtual methods
.method public getListener()Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;
    .locals 1

    .line 26
    iget-object v0, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneFailedFragment;->listener:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;

    return-object v0
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

    .line 36
    sget p3, Lus/zoom/zrcbox/R$layout;->audio_status_failed_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 42
    sget p2, Lus/zoom/zrcbox/R$id;->result:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 43
    sget v0, Lus/zoom/zrcbox/R$id;->result_description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 44
    sget v1, Lus/zoom/zrcbox/R$id;->restart_system:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 45
    sget v2, Lus/zoom/zrcbox/R$id;->cancel:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 46
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/AppModel;->getAudioCheckupInfo()Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;

    move-result-object v2

    const/16 v3, 0x8

    if-eqz v2, :cond_2

    .line 48
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->getAecLevel()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 49
    sget v2, Lus/zoom/zrcbox/R$string;->audio_checkup_result_unable_to_determine:I

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(I)V

    .line 50
    invoke-virtual {p0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneFailedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$color;->text_color_audio_test_echo_poor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 53
    sget p2, Lus/zoom/zrcbox/R$string;->retest:I

    invoke-virtual {v1, p2}, Landroid/widget/Button;->setText(I)V

    .line 54
    new-instance p2, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneFailedFragment$1;

    invoke-direct {p2, p0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneFailedFragment$1;-><init>(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneFailedFragment;)V

    invoke-virtual {v1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 61
    :cond_0
    sget v4, Lus/zoom/zrcbox/R$string;->audio_checkup_failed:I

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 62
    invoke-virtual {p0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneFailedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lus/zoom/zrcbox/R$color;->text_color_audio_test_failed:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->isCanRestartZoomRoomsSystem()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v3, 0x0

    :cond_1
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 65
    sget p2, Lus/zoom/zrcbox/R$string;->restart:I

    invoke-virtual {v1, p2}, Landroid/widget/Button;->setText(I)V

    .line 66
    new-instance p2, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneFailedFragment$2;

    invoke-direct {p2, p0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneFailedFragment$2;-><init>(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneFailedFragment;)V

    invoke-virtual {v1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    :goto_0
    invoke-virtual {p1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 75
    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 76
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 78
    :goto_1
    new-instance p2, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneFailedFragment$3;

    invoke-direct {p2, p0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneFailedFragment$3;-><init>(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneFailedFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setListener(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneFailedFragment;->listener:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;

    return-void
.end method
