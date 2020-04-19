.class public Lus/zoom/zrc/settings/SettingAboutFragment;
.super Lus/zoom/zrc/settings/SettingBaseFragment;
.source "SettingAboutFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "SettingAboutFragment"


# instance fields
.field private backBtn:Landroid/view/View;

.field private changeLanguage:Landroid/widget/TextView;

.field private changeLanguageLayout:Landroid/view/View;

.field private controllerIpLayout:Landroid/view/View;

.field private privacyPolicy:Landroid/widget/TextView;

.field private sendProblemBtn:Landroid/widget/TextView;

.field private serialNumber:Landroid/widget/TextView;

.field private serialNumberLayout:Landroid/view/View;

.field private title:Landroid/view/View;

.field private zrType:Landroid/widget/TextView;

.field private zrTypeLayout:Landroid/view/View;

.field private zrVersion:Landroid/widget/TextView;

.field private zrVersionLayout:Landroid/view/View;

.field private zrcIp:Landroid/widget/TextView;

.field private zrcVersion:Landroid/widget/TextView;

.field private zrcVersionLabel:Landroid/widget/TextView;

.field private zrpBackBtn:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;-><init>()V

    return-void
.end method

.method private getZRCTypeString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 211
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isStandaloneZRP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    sget v0, Lus/zoom/zrcbox/R$string;->standalone_zrp_type:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 214
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isStandaloneDigitalSignage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    sget v0, Lus/zoom/zrcbox/R$string;->standalone_ds_type:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method private onUpdateContentView()V
    .locals 6

    .line 146
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getRoomDisplayVersion()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getZRCDisplayVersion()Ljava/lang/String;

    move-result-object v1

    .line 148
    iget-object v2, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->zrVersion:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingAboutFragment;->isZRPMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isStandaloneZRP()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->zrcVersionLabel:Landroid/widget/TextView;

    sget v2, Lus/zoom/zrcbox/R$string;->controller_version:I

    invoke-virtual {p0, v2}, Lus/zoom/zrc/settings/SettingAboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 150
    :cond_1
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->zrcVersionLabel:Landroid/widget/TextView;

    sget v2, Lus/zoom/zrcbox/R$string;->panel_version:I

    invoke-virtual {p0, v2}, Lus/zoom/zrc/settings/SettingAboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :goto_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isStandaloneZRP()Z

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->zrVersionLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 157
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->zrVersionLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 159
    :goto_2
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->zrcVersion:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getUserProfile()Lus/zoom/zrc/model/ZRCUserProfile;

    move-result-object v0

    if-nez v0, :cond_3

    .line 163
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->sendProblemBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 165
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->sendProblemBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    :goto_3
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->shouldDisplayIPAddress()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 169
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->controllerIpLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->zrcIp:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {v1}, Lus/zoom/zrc/utils/Util;->getIPAddress(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 172
    :cond_4
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->controllerIpLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 175
    :goto_4
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->zrType:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingAboutFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lus/zoom/zrc/settings/SettingAboutFragment;->getZRCTypeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->zrType:Landroid/widget/TextView;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->isStandaloneZRP()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->isStandaloneDigitalSignage()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    const/16 v1, 0x8

    goto :goto_6

    :cond_6
    :goto_5
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->zrTypeLayout:Landroid/view/View;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->isStandaloneZRP()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->isStandaloneDigitalSignage()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_7

    :cond_7
    const/16 v1, 0x8

    goto :goto_8

    :cond_8
    :goto_7
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isRunInPolycomTrio()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 180
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->serialNumberLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->serialNumber:Landroid/widget/TextView;

    invoke-static {}, Lus/zoom/zrc/utils/Util;->getPolycomMacAddress()Ljava/lang/String;

    move-result-object v1

    const-string v4, ":"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 183
    :cond_9
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->serialNumberLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 186
    :goto_9
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isSupportChangeLanguage()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 187
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->changeLanguageLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->changeLanguage:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_a

    .line 190
    :cond_a
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->changeLanguageLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_a
    return-void
.end method

.method private setupDomainChange(Landroid/view/View;)V
    .locals 1

    .line 221
    new-instance v0, Lus/zoom/zrc/settings/SettingAboutFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/settings/SettingAboutFragment$1;-><init>(Lus/zoom/zrc/settings/SettingAboutFragment;)V

    invoke-static {p1, v0}, Lus/zoom/zrc/base/widget/RepeatClickDetector;->setupRepeatClick_3(Landroid/view/View;Lus/zoom/zrc/base/widget/RepeatClickDetector$OnRepeatClickListener;)V

    return-void
.end method


# virtual methods
.method public controlViewVisible()V
    .locals 6

    .line 125
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingAboutFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 130
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingAboutFragment;->isZRPMode()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_1

    .line 131
    new-array v0, v4, [Ljava/lang/Integer;

    sget v4, Lus/zoom/zrcbox/R$id;->panelTitleBar:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    sget v3, Lus/zoom/zrcbox/R$id;->title_bottom_line:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 132
    sget v2, Lus/zoom/zrcbox/R$id;->zrp_title_layout:I

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingAboutFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lus/zoom/zrc/settings/SettingAboutFragment;->showView(ILandroid/view/View;)V

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingAboutFragment;->isInMeeting()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingAboutFragment;->isInPhoneCall()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingAboutFragment;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    new-array v0, v4, [Ljava/lang/Integer;

    sget v4, Lus/zoom/zrcbox/R$id;->panelTitleBar:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    sget v3, Lus/zoom/zrcbox/R$id;->title_bottom_line:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 138
    :cond_2
    new-array v0, v4, [Ljava/lang/Integer;

    sget v4, Lus/zoom/zrcbox/R$id;->panelTitleBar:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    sget v3, Lus/zoom/zrcbox/R$id;->title_bottom_line:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 140
    :goto_0
    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/SettingAboutFragment;->batchHideView(Ljava/util/List;)V

    .line 141
    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingAboutFragment;->batchShowView(Ljava/util/List;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->sendProblemBtn:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingAboutFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/view/ZRCProblemReportFragment;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->privacyPolicy:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 199
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingAboutFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/view/ZRCPolicyFragment;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V

    goto :goto_0

    .line 200
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->changeLanguage:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    .line 201
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingAboutFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/view/ZRCChangeLanguageFragment;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V

    goto :goto_0

    .line 202
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->backBtn:Landroid/view/View;

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->zrpBackBtn:Landroid/widget/TextView;

    if-ne p1, v0, :cond_4

    .line 203
    :cond_3
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingAboutFragment;->onBack()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
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

    .line 53
    sget p3, Lus/zoom/zrcbox/R$layout;->setting_about:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 54
    sget p2, Lus/zoom/zrcbox/R$id;->txtTitle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->title:Landroid/view/View;

    .line 55
    sget p2, Lus/zoom/zrcbox/R$id;->back_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->backBtn:Landroid/view/View;

    .line 56
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->backBtn:Landroid/view/View;

    invoke-static {p2}, Lus/zoom/zrc/settings/SettingAboutFragment;->setBackToSettingsContentDescription(Landroid/view/View;)V

    .line 57
    sget p2, Lus/zoom/zrcbox/R$id;->zrc_version_label:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->zrcVersionLabel:Landroid/widget/TextView;

    .line 58
    sget p2, Lus/zoom/zrcbox/R$id;->ll_zr_version:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->zrVersionLayout:Landroid/view/View;

    .line 59
    sget p2, Lus/zoom/zrcbox/R$id;->tv_version:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->zrcVersion:Landroid/widget/TextView;

    .line 60
    sget p2, Lus/zoom/zrcbox/R$id;->tv_zr_version:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->zrVersion:Landroid/widget/TextView;

    .line 61
    sget p2, Lus/zoom/zrcbox/R$id;->zrc_send_problem:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->sendProblemBtn:Landroid/widget/TextView;

    .line 63
    sget p2, Lus/zoom/zrcbox/R$id;->privacy_policy:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->privacyPolicy:Landroid/widget/TextView;

    .line 65
    sget p2, Lus/zoom/zrcbox/R$id;->zrc_controller_ip_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->controllerIpLayout:Landroid/view/View;

    .line 66
    sget p2, Lus/zoom/zrcbox/R$id;->tv_zrc_ip_address:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->zrcIp:Landroid/widget/TextView;

    .line 67
    sget p2, Lus/zoom/zrcbox/R$id;->rl_serial_number:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->serialNumberLayout:Landroid/view/View;

    .line 68
    sget p2, Lus/zoom/zrcbox/R$id;->tv_zrc_serial_number:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->serialNumber:Landroid/widget/TextView;

    .line 69
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->backBtn:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    sget p2, Lus/zoom/zrcbox/R$id;->zrp_back:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->zrpBackBtn:Landroid/widget/TextView;

    .line 71
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->zrpBackBtn:Landroid/widget/TextView;

    invoke-static {p2}, Lus/zoom/zrc/utils/ZRCUIUtils;->setBackArrowFor(Landroid/widget/TextView;)V

    .line 72
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->zrpBackBtn:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->sendProblemBtn:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->privacyPolicy:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    sget p2, Lus/zoom/zrcbox/R$id;->change_language_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->changeLanguageLayout:Landroid/view/View;

    .line 76
    sget p2, Lus/zoom/zrcbox/R$id;->change_language:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->changeLanguage:Landroid/widget/TextView;

    .line 78
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingAboutFragment;->isZRPMode()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 79
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->sendProblemBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingAboutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lus/zoom/zrcbox/R$color;->zrc_gray2:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-static {p2, p3}, Lus/zoom/zrc/utils/ZRCUIUtils;->setRightArrowFor(Landroid/widget/TextView;I)V

    .line 80
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->changeLanguage:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingAboutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lus/zoom/zrcbox/R$color;->zrc_gray2:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-static {p2, p3}, Lus/zoom/zrc/utils/ZRCUIUtils;->setRightArrowFor(Landroid/widget/TextView;I)V

    .line 81
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->privacyPolicy:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingAboutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lus/zoom/zrcbox/R$color;->zrc_gray2:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-static {p2, p3}, Lus/zoom/zrc/utils/ZRCUIUtils;->setRightArrowFor(Landroid/widget/TextView;I)V

    .line 82
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->zrpBackBtn:Landroid/widget/TextView;

    invoke-static {p2}, Lus/zoom/zrc/settings/SettingAboutFragment;->setBackToSettingsContentDescription(Landroid/view/View;)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingAboutFragment;->isInMeeting()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingAboutFragment;->isInPhoneCall()Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingAboutFragment;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 84
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->sendProblemBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingAboutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lus/zoom/zrcbox/R$color;->zrc_gray2:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-static {p2, p3}, Lus/zoom/zrc/utils/ZRCUIUtils;->setRightArrowFor(Landroid/widget/TextView;I)V

    .line 85
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->changeLanguage:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingAboutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lus/zoom/zrcbox/R$color;->zrc_gray2:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-static {p2, p3}, Lus/zoom/zrc/utils/ZRCUIUtils;->setRightArrowFor(Landroid/widget/TextView;I)V

    .line 86
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->privacyPolicy:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingAboutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lus/zoom/zrcbox/R$color;->zrc_gray2:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-static {p2, p3}, Lus/zoom/zrc/utils/ZRCUIUtils;->setRightArrowFor(Landroid/widget/TextView;I)V

    .line 87
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->backBtn:Landroid/view/View;

    invoke-static {p2}, Lus/zoom/zrc/settings/SettingAboutFragment;->setBackToSettingsContentDescription(Landroid/view/View;)V

    goto :goto_0

    .line 89
    :cond_2
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->sendProblemBtn:Landroid/widget/TextView;

    invoke-static {p2}, Lus/zoom/zrc/utils/ZRCUIUtils;->setRightArrowFor(Landroid/widget/TextView;)V

    .line 90
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->changeLanguage:Landroid/widget/TextView;

    invoke-static {p2}, Lus/zoom/zrc/utils/ZRCUIUtils;->setRightArrowFor(Landroid/widget/TextView;)V

    .line 91
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->privacyPolicy:Landroid/widget/TextView;

    invoke-static {p2}, Lus/zoom/zrc/utils/ZRCUIUtils;->setRightArrowFor(Landroid/widget/TextView;)V

    .line 97
    :goto_0
    sget p2, Lus/zoom/zrcbox/R$id;->tv_zr_type:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->zrType:Landroid/widget/TextView;

    .line 98
    sget p2, Lus/zoom/zrcbox/R$id;->tv_zr_type_parent:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->zrTypeLayout:Landroid/view/View;

    return-object p1
.end method

.method public onResume()V
    .locals 1

    .line 115
    invoke-super {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;->onResume()V

    .line 116
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingAboutFragment;->isZRPMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->zrpBackBtn:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/SettingAboutFragment;->sendFirstItemAccessibility(Landroid/view/View;)V

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingAboutFragment;->isZRCMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingAboutFragment;->title:Landroid/view/View;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/SettingAboutFragment;->sendFirstItemAccessibility(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 109
    invoke-super {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;->onStart()V

    .line 110
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingAboutFragment;->onUpdateContentView()V

    return-void
.end method
