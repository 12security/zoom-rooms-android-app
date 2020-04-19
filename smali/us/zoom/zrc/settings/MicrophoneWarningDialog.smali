.class public Lus/zoom/zrc/settings/MicrophoneWarningDialog;
.super Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;
.source "MicrophoneWarningDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/settings/MicrophoneWarningDialog$OnWarningDialogListener;
    }
.end annotation


# static fields
.field private static final Mic_Type_Combined:I = 0x0

.field private static final Mic_Type_Virtual:I = 0x1

.field private static final Warning_All_Devices_Disconnected:I = 0x3

.field private static final Warning_No_Device:I = 0x1

.field private static final Warning_No_Selected_Device:I = 0x2

.field private static final Warning_None:I = 0x0

.field private static final Warning_Should_Update:I = 0x4


# instance fields
.field private cancelButton:Ljava/lang/String;

.field private listener:Lus/zoom/zrc/settings/MicrophoneWarningDialog$OnWarningDialogListener;

.field private message:Ljava/lang/String;

.field private micType:I

.field private numberOfSelectedAvailableDevices:I

.field private numberOfSelectedDevices:I

.field private numberOfTotalDevices:I

.field private otherButton:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private uiListener:Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListenerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;-><init>()V

    .line 51
    new-instance v0, Lus/zoom/zrc/settings/MicrophoneWarningDialog$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog$1;-><init>(Lus/zoom/zrc/settings/MicrophoneWarningDialog;)V

    iput-object v0, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->uiListener:Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListenerAdapter;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/settings/MicrophoneWarningDialog;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->cancelButton:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/settings/MicrophoneWarningDialog;)Lus/zoom/zrc/settings/MicrophoneWarningDialog$OnWarningDialogListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->listener:Lus/zoom/zrc/settings/MicrophoneWarningDialog$OnWarningDialogListener;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/settings/MicrophoneWarningDialog;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->otherButton:Ljava/lang/String;

    return-object p0
.end method

.method private allSelectedNetworkDeviceDisconnected()V
    .locals 1

    .line 278
    sget v0, Lus/zoom/zrcbox/R$string;->all_network_devices_are_disconnected_title:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->title:Ljava/lang/String;

    .line 279
    sget v0, Lus/zoom/zrcbox/R$string;->all_network_devices_are_disconnected_msg:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->message:Ljava/lang/String;

    .line 280
    sget v0, Lus/zoom/zrcbox/R$string;->close:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->cancelButton:Ljava/lang/String;

    const-string v0, ""

    .line 281
    iput-object v0, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->otherButton:Ljava/lang/String;

    return-void
.end method

.method private getSelectedMicrophone()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;
    .locals 1

    .line 252
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 256
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSelectedMicrophone()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method private getWarningType(III)I
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-eq p2, p3, :cond_3

    const/4 p1, 0x4

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private init(Lus/zoom/zrc/settings/MicrophoneWarningDialog$OnWarningDialogListener;)V
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->setListener(Lus/zoom/zrc/settings/MicrophoneWarningDialog$OnWarningDialogListener;)V

    return-void
.end method

.method private noNetworkDevicesAreDiscovered()V
    .locals 1

    .line 264
    sget v0, Lus/zoom/zrcbox/R$string;->no_network_devices_are_discovered_title:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->title:Ljava/lang/String;

    .line 265
    sget v0, Lus/zoom/zrcbox/R$string;->no_network_devices_are_discovered_msg:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->message:Ljava/lang/String;

    .line 266
    sget v0, Lus/zoom/zrcbox/R$string;->close:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->cancelButton:Ljava/lang/String;

    const-string v0, ""

    .line 267
    iput-object v0, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->otherButton:Ljava/lang/String;

    return-void
.end method

.method private noSelectedNetworkDevice()V
    .locals 1

    .line 271
    sget v0, Lus/zoom/zrcbox/R$string;->no_network_devices_are_selected_title:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->title:Ljava/lang/String;

    .line 272
    sget v0, Lus/zoom/zrcbox/R$string;->no_network_devices_are_selected_msg:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->message:Ljava/lang/String;

    .line 273
    sget v0, Lus/zoom/zrcbox/R$string;->close:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->cancelButton:Ljava/lang/String;

    const-string v0, ""

    .line 274
    iput-object v0, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->otherButton:Ljava/lang/String;

    return-void
.end method

.method private noneConfirmedMicrophone(I)V
    .locals 3

    .line 285
    sget v0, Lus/zoom/zrcbox/R$string;->multi_mic_never_confirmed_title:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->title:Ljava/lang/String;

    .line 286
    sget p1, Lus/zoom/zrcbox/R$string;->multi_mic_never_confirmed_message:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->message:Ljava/lang/String;

    .line 287
    sget p1, Lus/zoom/zrcbox/R$string;->cancel:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->cancelButton:Ljava/lang/String;

    .line 288
    sget p1, Lus/zoom/zrcbox/R$string;->confirm:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->otherButton:Ljava/lang/String;

    return-void
.end method

.method private onUpdateContent()V
    .locals 3

    .line 182
    invoke-direct {p0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->getSelectedMicrophone()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->dismiss()V

    return-void

    .line 187
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    .line 188
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isVirtualAudioDevice()Z

    move-result v1

    if-nez v1, :cond_6

    .line 189
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isCombinedDevice()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 190
    iput v1, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->micType:I

    .line 191
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getNumberOfCombinedDevices()I

    move-result v0

    iput v0, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->numberOfTotalDevices:I

    .line 192
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_2

    .line 194
    invoke-virtual {p0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->dismiss()V

    return-void

    .line 197
    :cond_2
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getConfirmedNumberOfCombinedMicrophones()I

    move-result v0

    iput v0, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->numberOfSelectedDevices:I

    .line 198
    iget v0, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->numberOfSelectedDevices:I

    if-nez v0, :cond_3

    .line 199
    iget v0, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->numberOfTotalDevices:I

    invoke-direct {p0, v0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->noneConfirmedMicrophone(I)V

    goto :goto_1

    .line 200
    :cond_3
    iget v1, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->numberOfTotalDevices:I

    if-le v0, v1, :cond_4

    .line 201
    invoke-direct {p0, v1, v0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->someConfirmedMicrophoneDisconnected(II)V

    goto :goto_1

    :cond_4
    if-ge v0, v1, :cond_5

    .line 203
    invoke-direct {p0, v1, v0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->someNewDeviceConnected(II)V

    goto :goto_1

    .line 205
    :cond_5
    invoke-virtual {p0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->dismiss()V

    return-void

    :cond_6
    const/4 v1, 0x1

    .line 209
    iput v1, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->micType:I

    .line 210
    invoke-static {v0}, Lus/zoom/zrc/settings/MediaDeviceUtils;->getNetworkDeviceCount(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)I

    move-result v1

    iput v1, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->numberOfTotalDevices:I

    .line 211
    invoke-static {v0}, Lus/zoom/zrc/settings/MediaDeviceUtils;->getSelectedNetworkDeviceCount(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)I

    move-result v1

    .line 212
    invoke-static {v0}, Lus/zoom/zrc/settings/MediaDeviceUtils;->getSelectedAvailableNetworkDeviceCount(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)I

    move-result v0

    .line 213
    iput v1, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->numberOfSelectedDevices:I

    .line 214
    iput v0, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->numberOfSelectedAvailableDevices:I

    .line 215
    iget v2, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->numberOfTotalDevices:I

    if-nez v2, :cond_7

    .line 216
    invoke-direct {p0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->noNetworkDevicesAreDiscovered()V

    goto :goto_0

    :cond_7
    if-nez v1, :cond_8

    .line 218
    invoke-direct {p0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->noSelectedNetworkDevice()V

    goto :goto_0

    :cond_8
    if-nez v0, :cond_9

    .line 220
    invoke-direct {p0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->allSelectedNetworkDeviceDisconnected()V

    goto :goto_0

    .line 222
    :cond_9
    invoke-direct {p0, v0, v1}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->someConfirmedMicrophoneDisconnected(II)V

    :goto_0
    if-ne v0, v1, :cond_a

    if-eqz v1, :cond_a

    .line 225
    invoke-virtual {p0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->dismiss()V

    return-void

    .line 229
    :cond_a
    :goto_1
    iget-object v0, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->title:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->setTitle(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->message:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->setMessage(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->cancelButton:Ljava/lang/String;

    new-instance v1, Lus/zoom/zrc/settings/MicrophoneWarningDialog$3;

    invoke-direct {v1, p0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog$3;-><init>(Lus/zoom/zrc/settings/MicrophoneWarningDialog;)V

    invoke-virtual {p0, v0, v1}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 240
    iget-object v0, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->otherButton:Ljava/lang/String;

    new-instance v1, Lus/zoom/zrc/settings/MicrophoneWarningDialog$4;

    invoke-direct {v1, p0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog$4;-><init>(Lus/zoom/zrc/settings/MicrophoneWarningDialog;)V

    invoke-virtual {p0, v0, v1}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private setListener(Lus/zoom/zrc/settings/MicrophoneWarningDialog$OnWarningDialogListener;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->listener:Lus/zoom/zrc/settings/MicrophoneWarningDialog$OnWarningDialogListener;

    return-void
.end method

.method public static show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V
    .locals 2

    .line 137
    const-class v0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->dismissDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    .line 140
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->executePendingTransactions()V

    .line 142
    :cond_0
    new-instance v0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;

    invoke-direct {v0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;-><init>()V

    .line 144
    new-instance v1, Lus/zoom/zrc/settings/MicrophoneWarningDialog$2;

    invoke-direct {v1}, Lus/zoom/zrc/settings/MicrophoneWarningDialog$2;-><init>()V

    .line 173
    invoke-direct {v0, v1}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->init(Lus/zoom/zrc/settings/MicrophoneWarningDialog$OnWarningDialogListener;)V

    .line 174
    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method

.method private someConfirmedMicrophoneDisconnected(II)V
    .locals 4

    .line 292
    sget v0, Lus/zoom/zrcbox/R$string;->multi_mic_device_disconnected_after_confirmation_title:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->title:Ljava/lang/String;

    .line 293
    sget p2, Lus/zoom/zrcbox/R$string;->multi_mic_device_disconnected_after_confirmation_message:I

    invoke-virtual {p0, p2}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->message:Ljava/lang/String;

    .line 294
    sget p2, Lus/zoom/zrcbox/R$string;->update_to_x:I

    invoke-virtual {p0, p2}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->cancelButton:Ljava/lang/String;

    .line 295
    sget p1, Lus/zoom/zrcbox/R$string;->close:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->otherButton:Ljava/lang/String;

    return-void
.end method

.method private someNewDeviceConnected(II)V
    .locals 4

    .line 299
    sget v0, Lus/zoom/zrcbox/R$string;->multi_mic_new_device_connected_after_confirmation_title:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    sub-int p2, p1, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->title:Ljava/lang/String;

    .line 300
    sget p2, Lus/zoom/zrcbox/R$string;->multi_mic_new_device_connected_after_confirmation_message:I

    invoke-virtual {p0, p2}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->message:Ljava/lang/String;

    .line 301
    sget p2, Lus/zoom/zrcbox/R$string;->close:I

    invoke-virtual {p0, p2}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->cancelButton:Ljava/lang/String;

    .line 302
    sget p2, Lus/zoom/zrcbox/R$string;->update_to_x:I

    invoke-virtual {p0, p2}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->otherButton:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 76
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    .line 78
    invoke-static {}, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->getInstance()Lus/zoom/zrc/base/app/ZRCUIElementsManager;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->uiListener:Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListenerAdapter;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->addListener(Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 89
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->onDestroy()V

    .line 90
    invoke-static {}, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->getInstance()Lus/zoom/zrc/base/app/ZRCUIElementsManager;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->uiListener:Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListenerAdapter;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->removeListener(Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListener;)V

    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 69
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->virtualAudioDeviceList:I

    if-eq p1, p2, :cond_0

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->settingsDeviceInfo:I

    if-ne p1, p2, :cond_1

    .line 70
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->update()V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 83
    invoke-direct {p0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->onUpdateContent()V

    .line 84
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->onStart()V

    return-void
.end method

.method public update()V
    .locals 6

    .line 98
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->dismiss()V

    return-void

    .line 103
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSelectedMicrophone()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 105
    invoke-virtual {p0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->dismiss()V

    return-void

    .line 110
    :cond_1
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isCombinedDevice()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->micType:I

    if-nez v2, :cond_2

    .line 111
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getNumberOfCombinedDevices()I

    move-result v1

    .line 112
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getConfirmedNumberOfCombinedMicrophones()I

    move-result v0

    .line 113
    iget v2, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->numberOfTotalDevices:I

    if-ne v1, v2, :cond_5

    iget v1, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->numberOfSelectedDevices:I

    if-ne v0, v1, :cond_5

    return-void

    .line 116
    :cond_2
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isVirtualAudioDevice()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->micType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 117
    invoke-static {v1}, Lus/zoom/zrc/settings/MediaDeviceUtils;->getNetworkDeviceCount(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)I

    move-result v0

    .line 118
    invoke-static {v1}, Lus/zoom/zrc/settings/MediaDeviceUtils;->getSelectedNetworkDeviceCount(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)I

    move-result v2

    .line 119
    invoke-static {v1}, Lus/zoom/zrc/settings/MediaDeviceUtils;->getSelectedAvailableNetworkDeviceCount(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)I

    move-result v1

    .line 120
    invoke-direct {p0, v0, v2, v1}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->getWarningType(III)I

    move-result v0

    .line 121
    iget v3, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->numberOfTotalDevices:I

    iget v4, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->numberOfSelectedDevices:I

    iget v5, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->numberOfSelectedAvailableDevices:I

    invoke-direct {p0, v3, v4, v5}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->getWarningType(III)I

    move-result v3

    const/4 v4, 0x4

    if-ne v0, v3, :cond_3

    if-ne v0, v4, :cond_3

    .line 122
    iget v5, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->numberOfSelectedDevices:I

    if-ne v2, v5, :cond_3

    iget v2, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->numberOfSelectedAvailableDevices:I

    if-ne v1, v2, :cond_3

    return-void

    :cond_3
    if-ne v0, v3, :cond_5

    if-eq v0, v4, :cond_5

    return-void

    .line 129
    :cond_4
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isCombinedDevice()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isVirtualAudioDevice()Z

    move-result v0

    if-nez v0, :cond_5

    .line 130
    invoke-virtual {p0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->dismiss()V

    return-void

    .line 133
    :cond_5
    invoke-virtual {p0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->getParentFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V

    return-void
.end method
