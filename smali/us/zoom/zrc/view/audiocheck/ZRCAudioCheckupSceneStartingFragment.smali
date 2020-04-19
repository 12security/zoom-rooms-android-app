.class public Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneStartingFragment;
.super Landroidx/fragment/app/Fragment;
.source "ZRCAudioCheckupSceneStartingFragment.java"


# instance fields
.field private cancel:Landroid/widget/Button;

.field private listener:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneStartingFragment;)Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneStartingFragment;->listener:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;

    return-object p0
.end method


# virtual methods
.method public getListener()Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;
    .locals 1

    .line 24
    iget-object v0, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneStartingFragment;->listener:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 33
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

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

    .line 39
    sget p3, Lus/zoom/zrcbox/R$layout;->audio_status_starting_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 40
    sget p2, Lus/zoom/zrcbox/R$id;->cancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneStartingFragment;->cancel:Landroid/widget/Button;

    .line 41
    iget-object p2, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneStartingFragment;->cancel:Landroid/widget/Button;

    new-instance p3, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneStartingFragment$1;

    invoke-direct {p3, p0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneStartingFragment$1;-><init>(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneStartingFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public setListener(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneStartingFragment;->listener:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;

    return-void
.end method
