.class final Lus/zoom/zrc/settings/MicrophoneWarningDialog$2;
.super Ljava/lang/Object;
.source "MicrophoneWarningDialog.java"

# interfaces
.implements Lus/zoom/zrc/settings/MicrophoneWarningDialog$OnWarningDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/MicrophoneWarningDialog;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionClick(Landroid/content/DialogInterface;)V
    .locals 7

    .line 147
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 148
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 152
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSelectedMicrophone()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 156
    :cond_1
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isCombinedDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "combined click selected microphone "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getNumberOfCombinedDevices()I

    move-result v1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getDeviceAlias()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lus/zoom/zrcsdk/PTApp;->confirmNumberOfCombinedMicrophones(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 159
    :cond_2
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isVirtualAudioDevice()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 160
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getVirtualAudioDeviceList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_3

    return-void

    .line 164
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;

    .line 165
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->isSelectedUnavailable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "virtual click selected microphone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v3

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getVirtualAudioDeviceDesc()Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;

    move-result-object v4

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v6, v2}, Lus/zoom/zrcsdk/PTApp;->unSelectNetworkDevice(Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method
