.class public Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;
.super Landroid/widget/LinearLayout;
.source "ZRCSpeakerVolumeView.java"


# instance fields
.field private decreaseVolume:Landroid/widget/ImageView;

.field private increaseVolume:Landroid/widget/ImageView;

.field private propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

.field private speakerVolumeLabel:Landroid/widget/TextView;

.field private volumeSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance p2, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView$1;

    invoke-direct {p2, p0}, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView$1;-><init>(Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;)V

    iput-object p2, p0, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;->propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    .line 51
    invoke-direct {p0, p1}, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    new-instance p2, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView$1;

    invoke-direct {p2, p0}, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView$1;-><init>(Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;)V

    iput-object p2, p0, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;->propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    .line 58
    invoke-direct {p0, p1}, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;->onReceivedPropertyChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;->onIncreaseVolumeClicked()V

    return-void
.end method

.method static synthetic access$200(Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;->onDecreaseVolumeClicked()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .line 62
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$layout;->zrc_speaker_volume_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 63
    sget v1, Lus/zoom/zrcbox/R$id;->seekbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;->volumeSeekBar:Landroid/widget/SeekBar;

    .line 64
    sget v1, Lus/zoom/zrcbox/R$id;->iv_volume_max:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;->increaseVolume:Landroid/widget/ImageView;

    .line 65
    sget v1, Lus/zoom/zrcbox/R$id;->iv_volume_min:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;->decreaseVolume:Landroid/widget/ImageView;

    .line 66
    sget v1, Lus/zoom/zrcbox/R$id;->speaker_volume_control_label:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;->speakerVolumeLabel:Landroid/widget/TextView;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$drawable;->meeting_duration_thumb:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 68
    iget-object v0, p0, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;->volumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 69
    iget-object p1, p0, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;->increaseVolume:Landroid/widget/ImageView;

    new-instance v0, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView$2;

    invoke-direct {v0, p0}, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView$2;-><init>(Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object p1, p0, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;->decreaseVolume:Landroid/widget/ImageView;

    new-instance v0, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView$3;

    invoke-direct {v0, p0}, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView$3;-><init>(Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private onDecreaseVolumeClicked()V
    .locals 1

    .line 130
    invoke-static {}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->getInstance()Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->decreaseVolume()V

    return-void
.end method

.method private onIncreaseVolumeClicked()V
    .locals 1

    .line 126
    invoke-static {}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->getInstance()Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->increaseVolume()V

    return-void
.end method

.method private onReceivedPropertyChanged(I)V
    .locals 1

    .line 99
    sget v0, Landroidx/databinding/library/baseAdapters/BR;->speakerVolumeControlLocked:I

    if-eq v0, p1, :cond_0

    sget v0, Landroidx/databinding/library/baseAdapters/BR;->settingsLocked:I

    if-eq v0, p1, :cond_0

    sget v0, Landroidx/databinding/library/baseAdapters/BR;->settingsDeviceInfo:I

    if-ne v0, p1, :cond_1

    .line 100
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;->onSpeakerVolumeControlStatusChanged()V

    :cond_1
    return-void
.end method

.method private onSpeakerVolumeControlStatusChanged()V
    .locals 5

    .line 105
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isSettingsLocked()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isSpeakerVolumeControlLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 106
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->isSpeakerVolumeAdjustable()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_2
    const/high16 v3, 0x3f000000    # 0.5f

    .line 109
    :goto_2
    invoke-virtual {p0, v3}, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;->setAlpha(F)V

    .line 110
    iget-object v4, p0, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;->increaseVolume:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 111
    iget-object v4, p0, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;->decreaseVolume:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 112
    iget-object v4, p0, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;->volumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setAlpha(F)V

    .line 113
    iget-object v3, p0, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;->speakerVolumeLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 114
    iget-object v3, p0, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;->increaseVolume:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 115
    iget-object v3, p0, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;->decreaseVolume:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 116
    iget-object v3, p0, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;->volumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 118
    iget-object v3, p0, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;->speakerVolumeLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    const/16 v2, 0x8

    :cond_3
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object v2, p0, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;->speakerVolumeLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    const v3, 0x3ee66666    # 0.45f

    goto :goto_3

    :cond_4
    const v3, 0x3eb33333    # 0.35f

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    if-nez v1, :cond_6

    .line 121
    iget-object v1, p0, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;->speakerVolumeLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    sget v0, Lus/zoom/zrcbox/R$string;->volume_is_locked:I

    goto :goto_4

    :cond_5
    sget v0, Lus/zoom/zrcbox/R$string;->volume_is_not_adjustable:I

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_6
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 85
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 86
    invoke-static {}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->getInstance()Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;->volumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->setupVolumeControl(Landroid/widget/SeekBar;)V

    .line 87
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;->propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 88
    invoke-direct {p0}, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;->onSpeakerVolumeControlStatusChanged()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 93
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 94
    invoke-static {}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->getInstance()Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;->volumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->releaseVolumeControl(Landroid/widget/SeekBar;)V

    .line 95
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/phoneview/ZRCSpeakerVolumeView;->propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    return-void
.end method
