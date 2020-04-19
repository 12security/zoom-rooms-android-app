.class public Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;
.super Landroid/widget/BaseAdapter;
.source "SettingDeviceSourcesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter$OnSeeMoreClickListener;
    }
.end annotation


# instance fields
.field private itemNameStyle:I

.field private listener:Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter$OnSeeMoreClickListener;

.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLockedState:Z

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    .line 44
    sget p1, Lus/zoom/zrcbox/R$style;->ZRCTextView_Black:I

    iput p1, p0, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;->itemNameStyle:I

    goto :goto_0

    .line 46
    :cond_0
    sget p1, Lus/zoom/zrcbox/R$style;->ZRCTextView_White:I

    iput p1, p0, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;->itemNameStyle:I

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;)Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter$OnSeeMoreClickListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;->listener:Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter$OnSeeMoreClickListener;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 71
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 76
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 87
    iget-object p2, p0, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 88
    sget v1, Lus/zoom/zrcbox/R$layout;->setting_device_source_list_item:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 90
    :cond_0
    iget-object p3, p0, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;->mList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    .line 91
    sget p3, Lus/zoom/zrcbox/R$id;->tv_name:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 92
    sget v1, Lus/zoom/zrcbox/R$id;->iv_selected:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 93
    sget v2, Lus/zoom/zrcbox/R$id;->tv_system_selected:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 94
    sget v3, Lus/zoom/zrcbox/R$id;->iv_see_more:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 95
    new-instance v4, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter$1;

    invoke-direct {v4, p0, p1}, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter$1;-><init>(Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getDisplayDeviceName()Ljava/lang/String;

    move-result-object v4

    .line 104
    iget v5, p0, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;->type:I

    if-eqz v5, :cond_2

    .line 105
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getPtzComId()I

    move-result v5

    if-lez v5, :cond_1

    .line 106
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - COM "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getPtzComId()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isCombinedDevice()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 112
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getNumberOfCombinedDevices()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 113
    :cond_3
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isVirtualAudioDevice()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {p1}, Lus/zoom/zrc/settings/MediaDeviceUtils;->getSelectedNetworkDeviceCount(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)I

    move-result v5

    if-lez v5, :cond_4

    .line 114
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lus/zoom/zrc/settings/MediaDeviceUtils;->getSelectedNetworkDeviceCount(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 116
    :cond_4
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :goto_0
    iget-object v4, p0, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;->mContext:Landroid/content/Context;

    iget v5, p0, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;->itemNameStyle:I

    invoke-virtual {p3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 120
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isSelected()Z

    move-result v4

    const/4 v5, 0x4

    const/16 v6, 0x8

    if-eqz v4, :cond_9

    .line 121
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 122
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isManuallySelected()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 123
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 124
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 126
    :cond_5
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 129
    :goto_1
    invoke-static {}, Lus/zoom/zrc/settings/MediaDeviceUtils;->warningOfCombinedMicrophone()Z

    move-result p1

    .line 130
    invoke-static {}, Lus/zoom/zrc/settings/MediaDeviceUtils;->warningOfVirtualAudioDevice()Z

    move-result v1

    .line 131
    iget v2, p0, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;->type:I

    if-nez v2, :cond_6

    if-nez p1, :cond_7

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    :cond_7
    :goto_2
    if-eqz v7, :cond_8

    goto :goto_3

    :cond_8
    const/16 v0, 0x8

    .line 132
    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 134
    :cond_9
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 135
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 136
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 139
    :goto_4
    iget-boolean p1, p0, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;->mLockedState:Z

    if-eqz p1, :cond_a

    const p1, 0x3f19999a    # 0.6f

    .line 140
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_5

    :cond_a
    const/high16 p1, 0x3f800000    # 1.0f

    .line 142
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_5
    return-object p2
.end method

.method public setDeviceSourceList(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const-string v1, "SpeakerList"

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const-string v1, "MicrophoneList"

    goto :goto_0

    :cond_1
    const-string v1, "CameraList"

    :goto_0
    const-string v2, " %s is %s"

    const/4 v3, 0x2

    .line 59
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    aput-object p1, v3, v0

    invoke-static {v2, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;->mList:Ljava/util/List;

    .line 61
    iput p2, p0, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;->type:I

    return-void
.end method

.method public setLockedState(Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;->mLockedState:Z

    .line 66
    invoke-virtual {p0}, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnSeeMoreClickListener(Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter$OnSeeMoreClickListener;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;->listener:Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter$OnSeeMoreClickListener;

    return-void
.end method
