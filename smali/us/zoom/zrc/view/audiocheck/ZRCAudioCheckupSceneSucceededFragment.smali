.class public Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneSucceededFragment;
.super Landroidx/fragment/app/Fragment;
.source "ZRCAudioCheckupSceneSucceededFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 25
    sget p3, Lus/zoom/zrcbox/R$layout;->audio_status_succeeded_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 30
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 31
    sget p2, Lus/zoom/zrcbox/R$id;->success_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 32
    sget v0, Lus/zoom/zrcbox/R$id;->success_description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 34
    sget v0, Lus/zoom/zrcbox/R$string;->audio_checkup_pass:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneSucceededFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 36
    invoke-virtual {p0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneSucceededFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$color;->text_color_audio_test_echo_good:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 37
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/AppModel;->getAudioCheckupInfo()Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 39
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->getAecLevel()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 41
    :pswitch_0
    sget v0, Lus/zoom/zrcbox/R$string;->audio_checkup_result_excellent:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneSucceededFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 42
    sget v1, Lus/zoom/zrcbox/R$string;->audio_checkup_result_excellent_detail:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneSucceededFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 45
    :pswitch_1
    sget v0, Lus/zoom/zrcbox/R$string;->audio_checkup_result_good:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneSucceededFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 46
    sget v1, Lus/zoom/zrcbox/R$string;->audio_checkup_result_good_detail:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneSucceededFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 49
    :pswitch_2
    sget v0, Lus/zoom/zrcbox/R$string;->audio_checkup_result_fair:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneSucceededFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    sget v1, Lus/zoom/zrcbox/R$string;->audio_checkup_result_fair_detail:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneSucceededFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 53
    :pswitch_3
    sget v0, Lus/zoom/zrcbox/R$string;->audio_checkup_result_poor:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneSucceededFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    sget v1, Lus/zoom/zrcbox/R$string;->audio_checkup_result_poor_detail:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneSucceededFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-virtual {p0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneSucceededFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$color;->text_color_audio_test_echo_poor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 60
    :cond_0
    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
