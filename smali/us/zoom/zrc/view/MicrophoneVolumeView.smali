.class public Lus/zoom/zrc/view/MicrophoneVolumeView;
.super Landroid/widget/RelativeLayout;
.source "MicrophoneVolumeView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/MicrophoneVolumeView$onStopTrackListener;
    }
.end annotation


# instance fields
.field private listener:Lus/zoom/zrc/view/MicrophoneVolumeView$onStopTrackListener;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/view/MicrophoneVolumeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, v0}, Lus/zoom/zrc/view/MicrophoneVolumeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-direct {p0}, Lus/zoom/zrc/view/MicrophoneVolumeView;->initView()V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 50
    invoke-virtual {p0}, Lus/zoom/zrc/view/MicrophoneVolumeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 51
    sget v1, Lus/zoom/zrcbox/R$layout;->microphone_volume_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 52
    sget v1, Lus/zoom/zrcbox/R$id;->progressbar_volume:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lus/zoom/zrc/view/MicrophoneVolumeView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 53
    iget-object v1, p0, Lus/zoom/zrc/view/MicrophoneVolumeView;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setSaveEnabled(Z)V

    .line 54
    sget v1, Lus/zoom/zrcbox/R$id;->seekbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lus/zoom/zrc/view/MicrophoneVolumeView;->mSeekBar:Landroid/widget/SeekBar;

    .line 55
    iget-object v1, p0, Lus/zoom/zrc/view/MicrophoneVolumeView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setSaveEnabled(Z)V

    .line 56
    invoke-virtual {p0}, Lus/zoom/zrc/view/MicrophoneVolumeView;->onUpdateDeviceInfoView()V

    .line 57
    iget-object v1, p0, Lus/zoom/zrc/view/MicrophoneVolumeView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 58
    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MicrophoneVolumeView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setMicrophoneVolume(IZ)V
    .locals 4

    .line 133
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 137
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSelectedMicrophone()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    const-string p2, "set microphone volume to %d for %s"

    const/4 v1, 0x2

    .line 139
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {p2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object p2

    int-to-float v1, p1

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 141
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getDeviceAlias()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-virtual {p2, v1, v2, v3, v0}, Lus/zoom/zrcsdk/PTApp;->setMicrophoneVolume(FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object p2

    invoke-virtual {p2, v1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->setMic_volume(F)V

    .line 144
    :cond_1
    iget-object p2, p0, Lus/zoom/zrc/view/MicrophoneVolumeView;->listener:Lus/zoom/zrc/view/MicrophoneVolumeView$onStopTrackListener;

    if-eqz p2, :cond_2

    int-to-float p1, p1

    invoke-interface {p2, p1}, Lus/zoom/zrc/view/MicrophoneVolumeView$onStopTrackListener;->onStopTrack(F)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getMax()F
    .locals 1

    .line 95
    iget-object v0, p0, Lus/zoom/zrc/view/MicrophoneVolumeView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 100
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 101
    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/view/MicrophoneVolumeView;->measureChildren(II)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 120
    invoke-direct {p0, p2, p3}, Lus/zoom/zrc/view/MicrophoneVolumeView;->setMicrophoneVolume(IZ)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 129
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/view/MicrophoneVolumeView;->setMicrophoneVolume(IZ)V

    return-void
.end method

.method public onUpdateDeviceInfoView()V
    .locals 6

    .line 106
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getMic_volume()F

    move-result v1

    float-to-int v2, v1

    .line 110
    iget-object v3, p0, Lus/zoom/zrc/view/MicrophoneVolumeView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "microphone volume: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    iget-object v1, p0, Lus/zoom/zrc/view/MicrophoneVolumeView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 114
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->isSettingsLocked()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->isIs_mic_volume_adjustable()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v4, 0x1

    :cond_2
    invoke-virtual {p0, v4}, Lus/zoom/zrc/view/MicrophoneVolumeView;->setTouchable(Z)V

    return-void
.end method

.method public setListener(Lus/zoom/zrc/view/MicrophoneVolumeView$onStopTrackListener;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lus/zoom/zrc/view/MicrophoneVolumeView;->listener:Lus/zoom/zrc/view/MicrophoneVolumeView$onStopTrackListener;

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 89
    iget-object v0, p0, Lus/zoom/zrc/view/MicrophoneVolumeView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 90
    iget-object v0, p0, Lus/zoom/zrc/view/MicrophoneVolumeView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public setTouchable(Z)V
    .locals 3

    .line 65
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->isIs_agc_disabled()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 69
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 70
    iget-object v0, p0, Lus/zoom/zrc/view/MicrophoneVolumeView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 71
    iget-object p1, p0, Lus/zoom/zrc/view/MicrophoneVolumeView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 74
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getMicrophoneList()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 75
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getMicrophoneList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    .line 79
    invoke-virtual {p0}, Lus/zoom/zrc/view/MicrophoneVolumeView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$drawable;->line_thumb_icon:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 80
    iget-object v0, p0, Lus/zoom/zrc/view/MicrophoneVolumeView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_3

    .line 82
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/view/MicrophoneVolumeView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 83
    invoke-virtual {p0}, Lus/zoom/zrc/view/MicrophoneVolumeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_4

    sget p1, Lus/zoom/zrcbox/R$drawable;->oval_volume_thumb:I

    goto :goto_2

    :cond_4
    sget p1, Lus/zoom/zrcbox/R$drawable;->line_thumb_icon:I

    :goto_2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 85
    :goto_3
    iget-object v0, p0, Lus/zoom/zrc/view/MicrophoneVolumeView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
