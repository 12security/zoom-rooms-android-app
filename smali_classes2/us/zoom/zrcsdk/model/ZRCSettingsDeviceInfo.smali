.class public Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;
.super Ljava/lang/Object;
.source "ZRCSettingsDeviceInfo.java"


# static fields
.field public static final MIC_PERMISSION_ALLOWED:I = 0x0

.field public static final MIC_PERMISSION_DECLINED:I = 0x1

.field public static final MIC_PERMISSION_NOT_DETERMINE:I = 0x2


# instance fields
.field private advancedNoiseSuppressionMode:Ljava/lang/Integer;

.field private cameraIntelligentZoomAvailable:Z

.field private cameraIntelligentZoomOn:Z

.field private cameraList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private canSwitchCamera:Z

.field can_control_camera:Z

.field private comDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCComDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field confirmedNumberOfCombinedMicrophones:I

.field highly_reverberant_room_on:Z

.field private isSuppressNoiseDisable:Ljava/lang/Boolean;

.field is_aec_disabled:Z

.field is_agc_disabled:Z

.field is_mic_volume_adjustable:Z

.field is_self_video_mirrored:Z

.field is_speaker_volume_adjustable:Z

.field private micPermissionStatus:I

.field private micPickupRange:Ljava/lang/Integer;

.field mic_volume:F

.field private microphoneList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private panTiltSpeedPercentage:I

.field private speakerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field speaker_volume:F

.field private switchableCameraList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdvancedNoiseSuppressionMode()Ljava/lang/Integer;
    .locals 1

    .line 272
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->advancedNoiseSuppressionMode:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCameraList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->cameraList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getComDeviceList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCComDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->comDeviceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getConfirmedNumberOfCombinedMicrophones()I
    .locals 1

    .line 44
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->confirmedNumberOfCombinedMicrophones:I

    return v0
.end method

.method public getMicPermissionStatus()I
    .locals 1

    .line 264
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->micPermissionStatus:I

    return v0
.end method

.method public getMicPickupRange()Ljava/lang/Integer;
    .locals 1

    .line 256
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->micPickupRange:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMic_volume()F
    .locals 1

    .line 79
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->mic_volume:F

    return v0
.end method

.method public getMicrophoneList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->microphoneList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPanTiltSpeedPercentage()I
    .locals 1

    .line 240
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->panTiltSpeedPercentage:I

    return v0
.end method

.method public getSelectedCamera()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;
    .locals 4

    .line 167
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->cameraList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 170
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    .line 171
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method public getSelectedMicrophone()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;
    .locals 4

    .line 143
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->microphoneList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 146
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    .line 147
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method public getSelectedSpeaker()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;
    .locals 4

    .line 155
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->speakerList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 158
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    .line 159
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method public getSpeakerList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->speakerList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSpeaker_volume()F
    .locals 1

    .line 85
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->speaker_volume:F

    return v0
.end method

.method public getSuppressNoiseDisable()Ljava/lang/Boolean;
    .locals 1

    .line 248
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->isSuppressNoiseDisable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSwitchableCameraList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->switchableCameraList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isCameraIntelligentZoomAvailable()Z
    .locals 1

    .line 223
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->cameraIntelligentZoomAvailable:Z

    return v0
.end method

.method public isCameraIntelligentZoomOn()Z
    .locals 1

    .line 231
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->cameraIntelligentZoomOn:Z

    return v0
.end method

.method public isCanSwitchCamera()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->canSwitchCamera:Z

    return v0
.end method

.method public isCan_control_camera()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->can_control_camera:Z

    return v0
.end method

.method public isHighly_reverberant_room_on()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->highly_reverberant_room_on:Z

    return v0
.end method

.method public isIs_aec_disabled()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->is_aec_disabled:Z

    return v0
.end method

.method public isIs_agc_disabled()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->is_agc_disabled:Z

    return v0
.end method

.method public isIs_mic_volume_adjustable()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->is_mic_volume_adjustable:Z

    return v0
.end method

.method public isIs_self_video_mirrored()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->is_self_video_mirrored:Z

    return v0
.end method

.method public isIs_speaker_volume_adjustable()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->is_speaker_volume_adjustable:Z

    return v0
.end method

.method public setAdvancedNoiseSuppressionMode(Ljava/lang/Integer;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->advancedNoiseSuppressionMode:Ljava/lang/Integer;

    return-void
.end method

.method public setCameraIntelligentZoomAvailable(Z)V
    .locals 0

    .line 227
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->cameraIntelligentZoomAvailable:Z

    return-void
.end method

.method public setCameraIntelligentZoomOn(Z)V
    .locals 0

    .line 235
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->cameraIntelligentZoomOn:Z

    return-void
.end method

.method public setCameraList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->cameraList:Ljava/util/ArrayList;

    return-void
.end method

.method public setCanSwitchCamera(Z)V
    .locals 0

    .line 139
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->canSwitchCamera:Z

    return-void
.end method

.method public setCan_control_camera(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->can_control_camera:Z

    return-void
.end method

.method public setComDeviceList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCComDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->comDeviceList:Ljava/util/ArrayList;

    return-void
.end method

.method public setConfirmedNumberOfCombinedMicrophones(I)V
    .locals 0

    .line 48
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->confirmedNumberOfCombinedMicrophones:I

    return-void
.end method

.method public setHighly_reverberant_room_on(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->highly_reverberant_room_on:Z

    return-void
.end method

.method public setIs_aec_disabled(Z)V
    .locals 0

    .line 94
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->is_aec_disabled:Z

    return-void
.end method

.method public setIs_agc_disabled(Z)V
    .locals 0

    .line 124
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->is_agc_disabled:Z

    return-void
.end method

.method public setIs_mic_volume_adjustable(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->is_mic_volume_adjustable:Z

    return-void
.end method

.method public setIs_self_video_mirrored(Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->is_self_video_mirrored:Z

    return-void
.end method

.method public setIs_speaker_volume_adjustable(Z)V
    .locals 0

    .line 118
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->is_speaker_volume_adjustable:Z

    return-void
.end method

.method public setMicPermissionStatus(I)V
    .locals 0

    .line 268
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->micPermissionStatus:I

    return-void
.end method

.method public setMicPickupRange(I)V
    .locals 0

    .line 260
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->micPickupRange:Ljava/lang/Integer;

    return-void
.end method

.method public setMic_volume(F)V
    .locals 0

    .line 82
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->mic_volume:F

    return-void
.end method

.method public setMicrophoneList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->microphoneList:Ljava/util/ArrayList;

    return-void
.end method

.method public setPanTiltSpeedPercentage(I)V
    .locals 0

    .line 244
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->panTiltSpeedPercentage:I

    return-void
.end method

.method public setSelectedCamera(Ljava/lang/String;)V
    .locals 3

    .line 208
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->cameraList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 211
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    .line 213
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 214
    invoke-virtual {v1, v2}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->setSelected(Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 216
    invoke-virtual {v1, v2}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->setSelected(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setSelectedMicrophone(Ljava/lang/String;)V
    .locals 3

    .line 179
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->microphoneList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 182
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    .line 183
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 184
    invoke-virtual {v1, v2}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->setSelected(Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 186
    invoke-virtual {v1, v2}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->setSelected(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setSelectedSpeaker(Ljava/lang/String;)V
    .locals 3

    .line 193
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->speakerList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 196
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    .line 198
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 199
    invoke-virtual {v1, v2}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->setSelected(Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 201
    invoke-virtual {v1, v2}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->setSelected(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setSpeakerList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->speakerList:Ljava/util/ArrayList;

    return-void
.end method

.method public setSpeaker_volume(F)V
    .locals 0

    .line 88
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->speaker_volume:F

    return-void
.end method

.method public setSuppressNoiseDisable(Z)V
    .locals 0

    .line 252
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->isSuppressNoiseDisable:Ljava/lang/Boolean;

    return-void
.end method

.method public setSwitchableCameraList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->switchableCameraList:Ljava/util/ArrayList;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZRCSettingsDeviceInfo{microphoneList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->microphoneList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", speakerList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->speakerList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->cameraList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", switchableCameraList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->switchableCameraList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",comDeviceList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->comDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mic_volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->mic_volume:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", speaker_volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->speaker_volume:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", is_aec_disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->is_aec_disabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", can_control_camera="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->can_control_camera:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", is_self_video_mirrored="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->is_self_video_mirrored:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", is_mic_volume_adjustable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->is_mic_volume_adjustable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", is_speaker_volume_adjustable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->is_speaker_volume_adjustable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", is_agc_disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->is_agc_disabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", highly_reverberant_room_on="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->highly_reverberant_room_on:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canSwitchCamera="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->canSwitchCamera:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cameraIntelligentZoomAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->cameraIntelligentZoomAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cameraIntelligentZoomOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->cameraIntelligentZoomOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", confirmedNumberOfCombinedMicrophones="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->confirmedNumberOfCombinedMicrophones:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", panTiltSpeedPercentage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->panTiltSpeedPercentage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isSuppressNoiseDisable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->isSuppressNoiseDisable:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", micPickupRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->micPickupRange:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", micPermissionStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->micPermissionStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", advancedNoiseSuppressionMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->advancedNoiseSuppressionMode:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
