.class public Lus/zoom/zrc/settings/SettingCloudPbxFragment;
.super Lus/zoom/zrc/settings/SettingBaseFragment;
.source "SettingCloudPbxFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "SettingCloudPbxFragment"


# instance fields
.field private backBtn:Landroid/view/View;

.field private title:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;-><init>()V

    return-void
.end method

.method private updateAreaCodeView(Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;)V
    .locals 3

    .line 169
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCloudPbxFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 172
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCloudPbxFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$id;->setting_area_code:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 173
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCloudPbxFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$id;->area_code:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 175
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->getAreaCode()Ljava/lang/String;

    move-result-object p1

    .line 176
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 p1, 0x8

    .line 177
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 179
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 180
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private updateCallerIDView(Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;)V
    .locals 3

    .line 134
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCloudPbxFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 137
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCloudPbxFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$id;->setting_caller_id:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 138
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCloudPbxFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$id;->caller_id:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 140
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->getDefaultCallerID()Lus/zoom/zrcsdk/model/ZRCCallerID;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 141
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCallerID;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 142
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 143
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCallerID;->getNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 145
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateCloudPBXInfo()V
    .locals 1

    .line 81
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getCloudPBXServiceInfo()Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-direct {p0, v0}, Lus/zoom/zrc/settings/SettingCloudPbxFragment;->updateDirectNumbersView(Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;)V

    .line 86
    invoke-direct {p0, v0}, Lus/zoom/zrc/settings/SettingCloudPbxFragment;->updateCompanyNumberView(Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;)V

    .line 87
    invoke-direct {p0, v0}, Lus/zoom/zrc/settings/SettingCloudPbxFragment;->updateCallerIDView(Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;)V

    .line 88
    invoke-direct {p0, v0}, Lus/zoom/zrc/settings/SettingCloudPbxFragment;->updateLocalDialingView(Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;)V

    .line 89
    invoke-direct {p0, v0}, Lus/zoom/zrc/settings/SettingCloudPbxFragment;->updateAreaCodeView(Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;)V

    return-void
.end method

.method private updateCompanyNumberView(Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;)V
    .locals 2

    .line 117
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCloudPbxFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->getCompanyNumberFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 124
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->getCompanyNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, " "

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->getExtension()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCloudPbxFragment;->getView()Landroid/view/View;

    move-result-object p1

    sget v1, Lus/zoom/zrcbox/R$id;->company_number:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 130
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateDirectNumbersView(Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;)V
    .locals 5

    .line 93
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCloudPbxFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 96
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCloudPbxFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$id;->setting_direct_number:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 97
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCloudPbxFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$id;->direct_numbers_content:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 99
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 100
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->getDirectNumberFormat()Ljava/util/List;

    move-result-object v2

    .line 101
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->getDirectNumber()Ljava/util/List;

    move-result-object v2

    .line 104
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x0

    .line 105
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 107
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCloudPbxFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lus/zoom/zrcbox/R$layout;->setting_cloud_pbx_number_item:I

    invoke-virtual {v3, v4, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 108
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    .line 112
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private updateLocalDialingView(Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;)V
    .locals 4

    .line 150
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCloudPbxFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCloudPbxFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$id;->setting_local_dialing:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 154
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCloudPbxFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$id;->local_dialing:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    .line 158
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->getCountryName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    .line 161
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 164
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public controlViewVisible()V
    .locals 6

    .line 64
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCloudPbxFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCloudPbxFragment;->isInMeeting()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCloudPbxFragment;->isInPhoneCall()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCloudPbxFragment;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
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

    .line 74
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

    .line 76
    :goto_0
    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/SettingCloudPbxFragment;->batchHideView(Ljava/util/List;)V

    .line 77
    invoke-virtual {p0, v4}, Lus/zoom/zrc/settings/SettingCloudPbxFragment;->batchShowView(Ljava/util/List;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 186
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingCloudPbxFragment;->backBtn:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCloudPbxFragment;->onBack()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 40
    invoke-super {p0, p1}, Lus/zoom/zrc/settings/SettingBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingCloudPbxFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

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

    .line 47
    sget p3, Lus/zoom/zrcbox/R$layout;->setting_cloud_pbx:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 48
    sget p2, Lus/zoom/zrcbox/R$id;->back_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingCloudPbxFragment;->backBtn:Landroid/view/View;

    .line 49
    sget p2, Lus/zoom/zrcbox/R$id;->txtTitle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingCloudPbxFragment;->title:Landroid/view/View;

    .line 50
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingCloudPbxFragment;->backBtn:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingCloudPbxFragment;->backBtn:Landroid/view/View;

    invoke-static {p2}, Lus/zoom/zrc/settings/SettingCloudPbxFragment;->setBackToSettingsContentDescription(Landroid/view/View;)V

    return-object p1
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 32
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/settings/SettingBaseFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 33
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->sipService:I

    if-ne p1, p2, :cond_0

    .line 34
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingCloudPbxFragment;->updateCloudPBXInfo()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 57
    invoke-super {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;->onStart()V

    .line 58
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingCloudPbxFragment;->title:Landroid/view/View;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/SettingCloudPbxFragment;->sendFirstItemAccessibility(Landroid/view/View;)V

    .line 59
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingCloudPbxFragment;->updateCloudPBXInfo()V

    return-void
.end method
