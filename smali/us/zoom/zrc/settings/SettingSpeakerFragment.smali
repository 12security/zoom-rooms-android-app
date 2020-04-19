.class public Lus/zoom/zrc/settings/SettingSpeakerFragment;
.super Lus/zoom/zrc/settings/SettingBaseFragment;
.source "SettingSpeakerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "SettingSpeakerFragment"


# instance fields
.field private adapter:Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;

.field private backBtn:Landroid/view/View;

.field private testSpeaker:Landroid/widget/TextView;

.field private title:Landroid/view/View;

.field private volumeDeceaseIcon:Landroid/view/View;

.field private volumeIncreaseIcon:Landroid/view/View;

.field private volumeSeekBar:Landroid/widget/SeekBar;

.field private volumeValue:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/settings/SettingSpeakerFragment;)Landroid/widget/TextView;
    .locals 0

    .line 41
    iget-object p0, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment;->volumeValue:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/settings/SettingSpeakerFragment;Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingSpeakerFragment;->selectSpeaker(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    return-void
.end method

.method private onSpeakerTestResponse(IZ)V
    .locals 1

    if-eqz p1, :cond_0

    .line 279
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingSpeakerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lus/zoom/zrcbox/R$string;->failed_to_test_device:I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 283
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment;->testSpeaker:Landroid/widget/TextView;

    sget p2, Lus/zoom/zrcbox/R$string;->test_speaker:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 285
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment;->testSpeaker:Landroid/widget/TextView;

    sget p2, Lus/zoom/zrcbox/R$string;->stop_testing:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 287
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment;->testSpeaker:Landroid/widget/TextView;

    invoke-static {p1}, Lus/zoom/zrc/utils/ZRCAccessibilityUtils;->sendAccessibilityFocusEvent(Landroid/view/View;)V

    return-void
.end method

.method private onSpeakerTestingDuration(Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 271
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment;->testSpeaker:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingSpeakerFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 272
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment;->testSpeaker:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingSpeakerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->test_speaker:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment;->testSpeaker:Landroid/widget/TextView;

    invoke-static {p1}, Lus/zoom/zrc/utils/ZRCAccessibilityUtils;->sendAccessibilityFocusEvent(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private onUpdateDeviceInfoView()V
    .locals 0

    .line 162
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingSpeakerFragment;->onUpdateSpeakerVolumeControl()V

    .line 163
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingSpeakerFragment;->updateDeviceSourceList()V

    return-void
.end method

.method private onUpdateSettingLockedState()V
    .locals 2

    .line 167
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isSettingsLocked()Z

    move-result v0

    .line 168
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment;->adapter:Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;

    invoke-virtual {v1, v0}, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;->setLockedState(Z)V

    .line 169
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingSpeakerFragment;->onUpdateSpeakerVolumeControl()V

    return-void
.end method

.method private onUpdateSpeakerVolumeControl()V
    .locals 7

    .line 173
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->isIs_speaker_volume_adjustable()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSpeakerList()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 178
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSpeakerList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 180
    :goto_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrc/model/Model;->isSettingsLocked()Z

    move-result v4

    if-eqz v3, :cond_2

    if-nez v4, :cond_2

    if-lez v0, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 183
    :goto_2
    iget-object v5, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment;->volumeIncreaseIcon:Landroid/view/View;

    if-eqz v3, :cond_3

    if-lez v0, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v5, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 184
    iget-object v5, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment;->volumeDeceaseIcon:Landroid/view/View;

    if-eqz v3, :cond_4

    if-lez v0, :cond_4

    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v5, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 185
    iget-object v3, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment;->testSpeaker:Landroid/widget/TextView;

    if-lez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz v4, :cond_6

    .line 188
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment;->volumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 189
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingSpeakerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$drawable;->oval_volume_thumb:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment;->volumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 192
    :cond_6
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment;->volumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 193
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingSpeakerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$drawable;->line_thumb_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment;->volumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :goto_6
    return-void
.end method

.method private selectSpeaker(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 238
    :cond_0
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/PTApp;->stopTestingSpeaker()I

    .line 239
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getDeviceAlias()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lus/zoom/zrcsdk/PTApp;->selectSpeaker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateDeviceSourceList()V
    .locals 3

    .line 199
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    const-string v1, "updateDeviceSourceList deviceinfo is null"

    const/4 v2, 0x0

    .line 201
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 204
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSpeakerList()Ljava/util/ArrayList;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment;->adapter:Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;->setDeviceSourceList(Ljava/util/List;I)V

    .line 206
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment;->adapter:Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;

    invoke-virtual {v0}, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public controlViewVisible()V
    .locals 6

    .line 145
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingSpeakerFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 150
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingSpeakerFragment;->isInMeeting()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingSpeakerFragment;->isInPhoneCall()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingSpeakerFragment;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    new-array v0, v3, [Ljava/lang/Integer;

    sget v3, Lus/zoom/zrcbox/R$id;->panelTitleBar:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    sget v2, Lus/zoom/zrcbox/R$id;->title_bottom_line:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 155
    :cond_1
    new-array v0, v3, [Ljava/lang/Integer;

    sget v3, Lus/zoom/zrcbox/R$id;->panelTitleBar:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    sget v2, Lus/zoom/zrcbox/R$id;->title_bottom_line:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v5, v4

    move-object v4, v0

    move-object v0, v5

    .line 157
    :goto_0
    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/SettingSpeakerFragment;->batchHideView(Ljava/util/List;)V

    .line 158
    invoke-virtual {p0, v4}, Lus/zoom/zrc/settings/SettingSpeakerFragment;->batchShowView(Ljava/util/List;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 244
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment;->testSpeaker:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    .line 245
    sget p1, Lus/zoom/zrcbox/R$string;->stop_testing:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/settings/SettingSpeakerFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 246
    sget v0, Lus/zoom/zrcbox/R$string;->test_speaker:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/SettingSpeakerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment;->testSpeaker:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 250
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment;->testSpeaker:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSelectedSpeaker()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 253
    :cond_0
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/PTApp;->stopTestingSpeaker()I

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "click "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 256
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSelectedSpeaker()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object p1

    if-nez p1, :cond_2

    .line 258
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object p1

    const-string v1, ""

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {p1, v1, v3, v4}, Lus/zoom/zrcsdk/PTApp;->startTestingSpeaker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 260
    :cond_2
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getDeviceAlias()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, v4, p1}, Lus/zoom/zrcsdk/PTApp;->startTestingSpeaker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "click "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 264
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment;->backBtn:Landroid/view/View;

    if-ne p1, v0, :cond_4

    .line 265
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingSpeakerFragment;->onBack()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 58
    invoke-super {p0, p1}, Lus/zoom/zrc/settings/SettingBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingSpeakerFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    .line 60
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingSpeakerFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lus/zoom/zrc/base/notification/NotificationEvent;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerNotification([Lus/zoom/zrc/base/notification/NotificationEvent;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
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

    .line 66
    sget p3, Lus/zoom/zrcbox/R$layout;->setting_speaker:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 67
    sget p2, Lus/zoom/zrcbox/R$id;->txtTitle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment;->title:Landroid/view/View;

    .line 68
    sget p2, Lus/zoom/zrcbox/R$id;->back_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment;->backBtn:Landroid/view/View;

    .line 69
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment;->backBtn:Landroid/view/View;

    invoke-static {p2}, Lus/zoom/zrc/settings/SettingSpeakerFragment;->setBackToSettingsContentDescription(Landroid/view/View;)V

    .line 71
    sget p2, Lus/zoom/zrcbox/R$id;->source_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    .line 72
    sget p3, Lus/zoom/zrcbox/R$id;->seekbar:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/SeekBar;

    iput-object p3, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment;->volumeSeekBar:Landroid/widget/SeekBar;

    .line 73
    sget p3, Lus/zoom/zrcbox/R$id;->tv_test_speaker:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment;->testSpeaker:Landroid/widget/TextView;

    .line 74
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p3

    invoke-virtual {p3}, Lus/zoom/zrc/model/Model;->isSpeakerTestingStopped()Z

    move-result p3

    if-nez p3, :cond_0

    .line 75
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment;->testSpeaker:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->stop_testing:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingSpeakerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :cond_0
    sget p3, Lus/zoom/zrcbox/R$id;->iv_volume_min:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment;->volumeDeceaseIcon:Landroid/view/View;

    .line 78
    sget p3, Lus/zoom/zrcbox/R$id;->iv_volume_max:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment;->volumeIncreaseIcon:Landroid/view/View;

    .line 79
    sget p3, Lus/zoom/zrcbox/R$id;->zrc_setting_volume:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment;->volumeValue:Landroid/widget/TextView;

    .line 80
    new-instance p3, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingSpeakerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingSpeakerFragment;->isInMeeting()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingSpeakerFragment;->isInPhoneCall()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingSpeakerFragment;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-direct {p3, v1, v0}, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object p3, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment;->adapter:Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;

    .line 81
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment;->adapter:Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 83
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment;->testSpeaker:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment;->backBtn:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 211
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment;->adapter:Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;

    invoke-virtual {p1, p3}, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    const-string p2, ""

    .line 212
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "item click to select speaker ="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    new-array p4, p4, [Ljava/lang/Object;

    invoke-static {p2, p3, p4}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    return-void

    .line 216
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isSelected()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isManuallySelected()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 219
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/Model;->isSettingsLocked()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 220
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingSpeakerFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p2

    sget p3, Lus/zoom/zrcbox/R$string;->unlock_settings_message:I

    invoke-virtual {p0, p3}, Lus/zoom/zrc/settings/SettingSpeakerFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Lus/zoom/zrc/settings/SettingSpeakerFragment$2;

    invoke-direct {p4, p0, p1}, Lus/zoom/zrc/settings/SettingSpeakerFragment$2;-><init>(Lus/zoom/zrc/settings/SettingSpeakerFragment;Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    invoke-static {p2, p3, p4}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/CharSequence;Lus/zoom/androidlib/util/EventAction;)V

    return-void

    .line 231
    :cond_2
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingSpeakerFragment;->selectSpeaker(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 114
    invoke-super {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;->onPause()V

    .line 115
    invoke-static {}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->getInstance()Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment;->volumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->releaseVolumeControl(Landroid/widget/SeekBar;)V

    return-void
.end method

.method public onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 1

    .line 130
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->SpeakerTestingNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_0

    .line 131
    instance-of p1, p2, Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    .line 132
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingSpeakerFragment;->onSpeakerTestingDuration(Z)V

    goto :goto_0

    .line 134
    :cond_0
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->SpeakerTestingResultNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_1

    .line 135
    instance-of p1, p2, Lcom/google/common/collect/ImmutableMap;

    if-eqz p1, :cond_1

    const-string p1, "result"

    .line 136
    invoke-static {p2, p1}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->intFromMap(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p1

    const-string v0, "stop"

    .line 137
    invoke-static {p2, v0}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->boolFromMap(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p2

    .line 138
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/settings/SettingSpeakerFragment;->onSpeakerTestResponse(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 120
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/settings/SettingBaseFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 121
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->settingsDeviceInfo:I

    if-ne p1, p2, :cond_0

    .line 122
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingSpeakerFragment;->onUpdateDeviceInfoView()V

    goto :goto_0

    .line 123
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->settingsLocked:I

    if-ne p1, p2, :cond_1

    .line 124
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingSpeakerFragment;->onUpdateSettingLockedState()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 100
    invoke-super {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;->onResume()V

    .line 101
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment;->volumeSeekBar:Landroid/widget/SeekBar;

    sget v1, Lus/zoom/zrcbox/R$id;->speaker_volume_is_persistent:I

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/SeekBar;->setTag(ILjava/lang/Object;)V

    .line 102
    invoke-static {}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->getInstance()Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment;->volumeSeekBar:Landroid/widget/SeekBar;

    new-instance v2, Lus/zoom/zrc/settings/SettingSpeakerFragment$1;

    invoke-direct {v2, p0}, Lus/zoom/zrc/settings/SettingSpeakerFragment$1;-><init>(Lus/zoom/zrc/settings/SettingSpeakerFragment;)V

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->setupVolumeControl(Landroid/widget/SeekBar;Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper$OnProgressChangeListener;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 90
    invoke-super {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;->onStart()V

    .line 91
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment;->title:Landroid/view/View;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/SettingSpeakerFragment;->sendFirstItemAccessibility(Landroid/view/View;)V

    .line 92
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingSpeakerFragment;->onUpdateSpeakerVolumeControl()V

    .line 93
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingSpeakerFragment;->updateDeviceSourceList()V

    .line 94
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isSettingsLocked()Z

    move-result v0

    .line 95
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment;->adapter:Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;

    invoke-virtual {v1, v0}, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;->setLockedState(Z)V

    return-void
.end method
