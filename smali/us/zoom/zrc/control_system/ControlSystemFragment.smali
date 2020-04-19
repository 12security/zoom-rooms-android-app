.class public Lus/zoom/zrc/control_system/ControlSystemFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "ControlSystemFragment.java"


# instance fields
.field private contextThemeWrapper:Lus/zoom/zrc/control_system/ControlSystemContext;

.field private controlSystemDeviceList:Landroid/widget/LinearLayout;

.field private controlSystemError:Landroid/widget/LinearLayout;

.field private controlSystemErrorMessage:Landroid/widget/TextView;

.field private controlSystemSuccess:Landroid/widget/ScrollView;

.field private controlSystemTitle:Landroid/view/View;

.field private deviceList:Lus/zoom/zrc/control_system/ControlSystemDeviceList;

.field private deviceListInfo:Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;

.field private isTablet:Z

.field private mDismissTimerManager:Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/control_system/ControlSystemFragment;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lus/zoom/zrc/control_system/ControlSystemFragment;->back()V

    return-void
.end method

.method private back()V
    .locals 0

    .line 253
    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemFragment;->dismissWaitingDialog()V

    .line 254
    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemFragment;->dismiss()V

    return-void
.end method

.method private buildDeviceListView()V
    .locals 4

    .line 197
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->deviceListInfo:Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemSuccess:Landroid/widget/ScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemError:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemErrorMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$string;->zrcs_empty_device_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 203
    :cond_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, -0x1

    .line 204
    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$dimen;->zrcs_device_list_divider:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 205
    iget-object v1, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->contextThemeWrapper:Lus/zoom/zrc/control_system/ControlSystemContext;

    iget v1, v1, Lus/zoom/zrc/control_system/ControlSystemContext;->deviceListDividerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 206
    iget-object v1, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemDeviceList:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->deviceList:Lus/zoom/zrc/control_system/ControlSystemDeviceList;

    iget-object v1, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->deviceListInfo:Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;

    iget-object v2, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemDeviceList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/control_system/ControlSystemDeviceList;->loadToContainer(Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private buildErrorView()V
    .locals 2

    .line 211
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->deviceListInfo:Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;->getErrorCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 243
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemErrorMessage:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->zrcs_unknown:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/control_system/ControlSystemFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 240
    :pswitch_0
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemErrorMessage:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->zrcs_empty_device_error:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/control_system/ControlSystemFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 237
    :pswitch_1
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemErrorMessage:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->zrcs_ip2sl_settings_error:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/control_system/ControlSystemFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 234
    :pswitch_2
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemErrorMessage:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->zrcs_param_id_error:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/control_system/ControlSystemFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 231
    :pswitch_3
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemErrorMessage:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->zrcs_method_id_error:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/control_system/ControlSystemFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 228
    :pswitch_4
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemErrorMessage:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->zrcs_device_id_error:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/control_system/ControlSystemFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 225
    :pswitch_5
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemErrorMessage:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->zrcs_ip_is_public:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/control_system/ControlSystemFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 222
    :pswitch_6
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemErrorMessage:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->zrcs_ip_error:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/control_system/ControlSystemFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 219
    :pswitch_7
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemErrorMessage:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->zrcs_json_file_config_error:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/control_system/ControlSystemFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 216
    :pswitch_8
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemErrorMessage:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->zrcs_json_syntax_error:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/control_system/ControlSystemFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 213
    :pswitch_9
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemErrorMessage:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->zrcs_no_config_error:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/control_system/ControlSystemFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isInMeeting()Z
    .locals 1

    .line 249
    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lus/zoom/zrc/MeetingActivity;

    return v0
.end method

.method private updateControlSystemView()V
    .locals 4

    .line 150
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemDeviceList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 151
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getControlSystemDevices()Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->deviceListInfo:Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;

    .line 152
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->deviceListInfo:Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemTitle:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemSuccess:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemError:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 159
    :cond_0
    iget-boolean v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->isTablet:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 160
    invoke-direct {p0}, Lus/zoom/zrc/control_system/ControlSystemFragment;->isInMeeting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemTitle:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemTitle:Landroid/view/View;

    sget v3, Lus/zoom/zrcbox/R$id;->control_system_title_close:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemTitle:Landroid/view/View;

    sget v3, Lus/zoom/zrcbox/R$id;->control_system_title_back:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemTitle:Landroid/view/View;

    sget v3, Lus/zoom/zrcbox/R$id;->control_system_title_done:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemTitle:Landroid/view/View;

    sget v3, Lus/zoom/zrcbox/R$id;->control_system_title_bottom_line:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemTitle:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 170
    :cond_2
    invoke-direct {p0}, Lus/zoom/zrc/control_system/ControlSystemFragment;->isInMeeting()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 171
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemTitle:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemTitle:Landroid/view/View;

    sget v3, Lus/zoom/zrcbox/R$id;->control_system_title_close:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemTitle:Landroid/view/View;

    sget v3, Lus/zoom/zrcbox/R$id;->control_system_title_back:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemTitle:Landroid/view/View;

    sget v3, Lus/zoom/zrcbox/R$id;->control_system_title_done:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemTitle:Landroid/view/View;

    sget v3, Lus/zoom/zrcbox/R$id;->control_system_title_bottom_line:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 177
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemTitle:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemTitle:Landroid/view/View;

    sget v3, Lus/zoom/zrcbox/R$id;->control_system_title_close:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemTitle:Landroid/view/View;

    sget v3, Lus/zoom/zrcbox/R$id;->control_system_title_back:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemTitle:Landroid/view/View;

    sget v3, Lus/zoom/zrcbox/R$id;->control_system_title_done:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemTitle:Landroid/view/View;

    sget v3, Lus/zoom/zrcbox/R$id;->control_system_title_bottom_line:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->deviceListInfo:Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_4

    .line 186
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemSuccess:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemError:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 188
    invoke-direct {p0}, Lus/zoom/zrc/control_system/ControlSystemFragment;->buildDeviceListView()V

    goto :goto_1

    .line 190
    :cond_4
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemSuccess:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemError:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 192
    invoke-direct {p0}, Lus/zoom/zrc/control_system/ControlSystemFragment;->buildErrorView()V

    :goto_1
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 92
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 93
    invoke-direct {p0}, Lus/zoom/zrc/control_system/ControlSystemFragment;->updateControlSystemView()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 45
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    .line 47
    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->isTablet:Z

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, p1, v0}, Lus/zoom/zrc/control_system/ControlSystemFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
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

    .line 54
    invoke-direct {p0}, Lus/zoom/zrc/control_system/ControlSystemFragment;->isInMeeting()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 55
    new-instance p3, Lus/zoom/zrc/control_system/ControlSystemContext;

    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$style;->ZRCTheme_ControlSystem_InMeeting:I

    invoke-direct {p3, v0, v1}, Lus/zoom/zrc/control_system/ControlSystemContext;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->contextThemeWrapper:Lus/zoom/zrc/control_system/ControlSystemContext;

    goto :goto_0

    .line 57
    :cond_0
    new-instance p3, Lus/zoom/zrc/control_system/ControlSystemContext;

    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$style;->ZRCTheme_ControlSystem_PreMeeting:I

    invoke-direct {p3, v0, v1}, Lus/zoom/zrc/control_system/ControlSystemContext;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->contextThemeWrapper:Lus/zoom/zrc/control_system/ControlSystemContext;

    .line 59
    :goto_0
    iget-object p3, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->deviceList:Lus/zoom/zrc/control_system/ControlSystemDeviceList;

    if-nez p3, :cond_1

    .line 60
    new-instance p3, Lus/zoom/zrc/control_system/ControlSystemDeviceList;

    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->contextThemeWrapper:Lus/zoom/zrc/control_system/ControlSystemContext;

    invoke-direct {p3, v0}, Lus/zoom/zrc/control_system/ControlSystemDeviceList;-><init>(Lus/zoom/zrc/control_system/ControlSystemContext;)V

    iput-object p3, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->deviceList:Lus/zoom/zrc/control_system/ControlSystemDeviceList;

    .line 62
    :cond_1
    iget-object p3, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->contextThemeWrapper:Lus/zoom/zrc/control_system/ControlSystemContext;

    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 63
    sget p3, Lus/zoom/zrcbox/R$layout;->control_system_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 64
    sget p2, Lus/zoom/zrcbox/R$id;->control_system_success:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    iput-object p2, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemSuccess:Landroid/widget/ScrollView;

    .line 65
    sget p2, Lus/zoom/zrcbox/R$id;->control_system_devicelist:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemDeviceList:Landroid/widget/LinearLayout;

    .line 66
    sget p2, Lus/zoom/zrcbox/R$id;->control_system_error:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemError:Landroid/widget/LinearLayout;

    .line 67
    sget p2, Lus/zoom/zrcbox/R$id;->control_system_error_message:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemErrorMessage:Landroid/widget/TextView;

    .line 68
    sget p2, Lus/zoom/zrcbox/R$id;->control_system_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->controlSystemTitle:Landroid/view/View;

    .line 69
    sget p2, Lus/zoom/zrcbox/R$id;->control_system_title_close:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lus/zoom/zrc/control_system/ControlSystemFragment$1;

    invoke-direct {p3, p0}, Lus/zoom/zrc/control_system/ControlSystemFragment$1;-><init>(Lus/zoom/zrc/control_system/ControlSystemFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    sget p2, Lus/zoom/zrcbox/R$id;->control_system_title_done:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lus/zoom/zrc/control_system/ControlSystemFragment$2;

    invoke-direct {p3, p0}, Lus/zoom/zrc/control_system/ControlSystemFragment$2;-><init>(Lus/zoom/zrc/control_system/ControlSystemFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    sget p2, Lus/zoom/zrcbox/R$id;->control_system_title_back:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lus/zoom/zrc/control_system/ControlSystemFragment$3;

    invoke-direct {p3, p0}, Lus/zoom/zrc/control_system/ControlSystemFragment$3;-><init>(Lus/zoom/zrc/control_system/ControlSystemFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 143
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 144
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->controlSystemDevices:I

    if-ne p2, p1, :cond_0

    .line 145
    invoke-direct {p0}, Lus/zoom/zrc/control_system/ControlSystemFragment;->updateControlSystemView()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 135
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->mDismissTimerManager:Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;->stop()V

    .line 138
    :cond_0
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 98
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onStart()V

    .line 99
    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 102
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 103
    invoke-direct {p0}, Lus/zoom/zrc/control_system/ControlSystemFragment;->isInMeeting()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->isTablet:Z

    if-eqz v1, :cond_2

    .line 104
    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 107
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$dimen;->zrcs_device_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lus/zoom/zrc/utils/Util;->getHeight(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f666666    # 0.9f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    .line 109
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 111
    :goto_0
    iget-boolean v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->isTablet:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lus/zoom/zrc/control_system/ControlSystemFragment;->isInMeeting()Z

    move-result v0

    if-nez v0, :cond_3

    .line 112
    new-instance v0, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;

    invoke-direct {v0, p0}, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;-><init>(Lus/zoom/zrc/base/app/ZRCDialogFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->mDismissTimerManager:Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;

    .line 113
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->mDismissTimerManager:Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;

    const-wide/32 v1, 0x927c0

    new-instance v3, Lus/zoom/zrc/control_system/ControlSystemFragment$4;

    invoke-direct {v3, p0}, Lus/zoom/zrc/control_system/ControlSystemFragment$4;-><init>(Lus/zoom/zrc/control_system/ControlSystemFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;->startDelayDismissIfNoUserAction(JLjava/lang/Runnable;)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 127
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment;->mDismissTimerManager:Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;->stop()V

    .line 130
    :cond_0
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onStop()V

    return-void
.end method
