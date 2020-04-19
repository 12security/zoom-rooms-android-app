.class public Lus/zoom/zrc/view/adapter/SettingDeviceProfileAdapter;
.super Landroid/widget/BaseAdapter;
.source "SettingDeviceProfileAdapter.java"


# instance fields
.field private issueMessageIds:[[I

.field private itemNameStyle:I

.field private mContext:Landroid/content/Context;

.field private mLockedState:Z

.field private zrcRoomProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 40
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x7

    .line 30
    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    sget v3, Lus/zoom/zrcbox/R$string;->preferred_microphone_disconnected:I

    const/4 v4, 0x0

    aput v3, v2, v4

    sget v3, Lus/zoom/zrcbox/R$string;->preferred_microphone_changed:I

    const/4 v5, 0x1

    aput v3, v2, v5

    aput-object v2, v0, v4

    new-array v2, v1, [I

    sget v3, Lus/zoom/zrcbox/R$string;->preferred_speaker_disconnected:I

    aput v3, v2, v4

    sget v3, Lus/zoom/zrcbox/R$string;->preferred_speaker_changed:I

    aput v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [I

    sget v3, Lus/zoom/zrcbox/R$string;->preferred_camera_disconnected:I

    aput v3, v2, v4

    sget v3, Lus/zoom/zrcbox/R$string;->preferred_camera_changed:I

    aput v3, v2, v5

    aput-object v2, v0, v1

    new-array v2, v1, [I

    sget v3, Lus/zoom/zrcbox/R$string;->preferred_microphone_speaker_disconnected:I

    aput v3, v2, v4

    sget v3, Lus/zoom/zrcbox/R$string;->preferred_microphone_speaker_changed:I

    aput v3, v2, v5

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [I

    sget v3, Lus/zoom/zrcbox/R$string;->preferred_microphone_camera_disconnected:I

    aput v3, v2, v4

    sget v3, Lus/zoom/zrcbox/R$string;->preferred_microphone_camera_changed:I

    aput v3, v2, v5

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [I

    sget v3, Lus/zoom/zrcbox/R$string;->preferred_speaker_camera_disconnected:I

    aput v3, v2, v4

    sget v3, Lus/zoom/zrcbox/R$string;->preferred_speaker_camera_changed:I

    aput v3, v2, v5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v1, v1, [I

    sget v2, Lus/zoom/zrcbox/R$string;->preferred_three_profiles_disconnected:I

    aput v2, v1, v4

    sget v2, Lus/zoom/zrcbox/R$string;->preferred_three_profiles_changed:I

    aput v2, v1, v5

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iput-object v0, p0, Lus/zoom/zrc/view/adapter/SettingDeviceProfileAdapter;->issueMessageIds:[[I

    .line 41
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/SettingDeviceProfileAdapter;->mContext:Landroid/content/Context;

    .line 42
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/SettingDeviceProfileAdapter;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lus/zoom/zrc/MeetingActivity;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 43
    sget p1, Lus/zoom/zrcbox/R$style;->ZRCTextView_Black:I

    iput p1, p0, Lus/zoom/zrc/view/adapter/SettingDeviceProfileAdapter;->itemNameStyle:I

    goto :goto_0

    .line 45
    :cond_0
    sget p1, Lus/zoom/zrcbox/R$style;->ZRCTextView_White:I

    iput p1, p0, Lus/zoom/zrc/view/adapter/SettingDeviceProfileAdapter;->itemNameStyle:I

    :goto_0
    return-void
.end method

.method private getIssueMessage(Ljava/util/List;Z)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 119
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 122
    :cond_0
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/adapter/SettingDeviceProfileAdapter;->processIssueTypeList(Ljava/util/List;)V

    .line 124
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 125
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 126
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/SettingDeviceProfileAdapter;->issueMessageIds:[[I

    aget-object p1, v0, p1

    aget p1, p1, p2

    goto :goto_1

    .line 127
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 130
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/view/adapter/SettingDeviceProfileAdapter;->issueMessageIds:[[I

    add-int/2addr v0, v1

    aget-object p1, p1, v0

    aget p1, p1, p2

    goto :goto_1

    .line 134
    :cond_3
    iget-object p1, p0, Lus/zoom/zrc/view/adapter/SettingDeviceProfileAdapter;->issueMessageIds:[[I

    const/4 v0, 0x6

    aget-object p1, p1, v0

    aget p1, p1, p2

    .line 136
    :goto_1
    iget-object p2, p0, Lus/zoom/zrc/view/adapter/SettingDeviceProfileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private processIssueTypeList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 109
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 110
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 112
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 113
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 61
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/SettingDeviceProfileAdapter;->zrcRoomProfiles:Ljava/util/List;

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

    .line 66
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/SettingDeviceProfileAdapter;->zrcRoomProfiles:Ljava/util/List;

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
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 77
    iget-object p2, p0, Lus/zoom/zrc/view/adapter/SettingDeviceProfileAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 78
    sget v1, Lus/zoom/zrcbox/R$layout;->setting_device_profile_item:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 80
    :cond_0
    iget-object p3, p0, Lus/zoom/zrc/view/adapter/SettingDeviceProfileAdapter;->zrcRoomProfiles:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;

    .line 81
    sget p3, Lus/zoom/zrcbox/R$id;->profile_name:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 82
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    sget v1, Lus/zoom/zrcbox/R$id;->warning_message:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 84
    sget v2, Lus/zoom/zrcbox/R$id;->selected_tick_icon:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 86
    iget-object v3, p0, Lus/zoom/zrc/view/adapter/SettingDeviceProfileAdapter;->mContext:Landroid/content/Context;

    iget v4, p0, Lus/zoom/zrc/view/adapter/SettingDeviceProfileAdapter;->itemNameStyle:I

    invoke-virtual {p3, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 87
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 89
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const/16 v3, 0x8

    .line 92
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 94
    :goto_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;->getIssueDevicesType()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 95
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 98
    :cond_2
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;->isSelected()Z

    move-result p1

    invoke-direct {p0, v2, p1}, Lus/zoom/zrc/view/adapter/SettingDeviceProfileAdapter;->getIssueMessage(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x4

    .line 96
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    :goto_2
    iget-boolean p1, p0, Lus/zoom/zrc/view/adapter/SettingDeviceProfileAdapter;->mLockedState:Z

    invoke-static {p3, p1}, Lus/zoom/zrc/utils/ZRCUIUtils;->setViewDim(Landroid/view/View;Z)V

    .line 103
    iget-boolean p1, p0, Lus/zoom/zrc/view/adapter/SettingDeviceProfileAdapter;->mLockedState:Z

    invoke-static {v1, p1}, Lus/zoom/zrc/utils/ZRCUIUtils;->setViewDim(Landroid/view/View;Z)V

    return-object p2
.end method

.method public setLockedState(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lus/zoom/zrc/view/adapter/SettingDeviceProfileAdapter;->mLockedState:Z

    .line 56
    invoke-virtual {p0}, Lus/zoom/zrc/view/adapter/SettingDeviceProfileAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setRoomProfileList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, " room profile is %s"

    const/4 v1, 0x1

    .line 50
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/SettingDeviceProfileAdapter;->zrcRoomProfiles:Ljava/util/List;

    return-void
.end method
