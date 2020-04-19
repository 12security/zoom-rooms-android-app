.class public Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;
.super Ljava/lang/Object;
.source "ZRCFeatureListInfo.java"


# instance fields
.field private aecSettingStoredInZR:Z

.field private canDtmfForInviteByPhone:Z

.field private canMuteOnEntry:Z

.field private canRingingInPstnCall:Z

.field private canSwitchToSpecificCamera:Z

.field private isAirhostDisabled:Z

.field private pstnCallInLocalPresentation:Z

.field private supportClaimHost:Z

.field private supportOutRoomDisplay:Z

.field private supportPinAndSpotlight:Z

.field private supportsAudioCheckup:Z

.field private supportsCalendarAddAttendees:Z

.field private supportsCheckIn:Z

.field private supportsCloudPbx:Z

.field private supportsCrcCalloutOnly:Z

.field private supportsDefaultCameraPreset:Z

.field private supportsEncryptedConnection:Z

.field private supportsExpelUserPermanently:Z

.field private supportsH323Dtmf:Z

.field private supportsHdmiCecControl:Z

.field private supportsHideSelfVideo:Z

.field private supportsHighlyReverberantRoom:Z

.field private supportsLoadingContactsDynamically:Z

.field private supportsLoadingParticipantsDynamically:Z

.field private supportsMeetingChat:Z

.field private supportsMicRecordTest:Z

.field private supportsMultiControllers:Z

.field private supportsMultiShare:Z

.field private supportsMultiSipCall:Z

.field private supportsPlayUltrasound:Z

.field private supportsRaiseHand:Z

.field private supportsShareCamera:Z

.field private supportsShareForFloatingAndContentOnly:Z

.field private supportsShowAudioParticipant:Ljava/lang/Boolean;

.field private supportsSignoutZR:Z

.field private supportsSipCallout:Z

.field private supportsSoftwareAudioProcessing:Z

.field private supportsWebSettingsPush:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ)V
    .locals 2

    move-object v0, p0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 187
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isAirhostDisabled:Z

    move v1, p2

    .line 188
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->canDtmfForInviteByPhone:Z

    move v1, p3

    .line 189
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->pstnCallInLocalPresentation:Z

    move v1, p4

    .line 190
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->canRingingInPstnCall:Z

    move v1, p5

    .line 191
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->aecSettingStoredInZR:Z

    move v1, p6

    .line 192
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsWebSettingsPush:Z

    move v1, p7

    .line 193
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsSipCallout:Z

    move v1, p8

    .line 194
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->canMuteOnEntry:Z

    move v1, p9

    .line 195
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportClaimHost:Z

    move v1, p10

    .line 196
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportPinAndSpotlight:Z

    move v1, p11

    .line 197
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportOutRoomDisplay:Z

    move v1, p12

    .line 198
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->canSwitchToSpecificCamera:Z

    move v1, p13

    .line 199
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsSoftwareAudioProcessing:Z

    move/from16 v1, p14

    .line 200
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsHdmiCecControl:Z

    move/from16 v1, p15

    .line 201
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsHighlyReverberantRoom:Z

    move/from16 v1, p16

    .line 202
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsShareForFloatingAndContentOnly:Z

    move/from16 v1, p17

    .line 203
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsLoadingContactsDynamically:Z

    move/from16 v1, p18

    .line 204
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsShareCamera:Z

    move/from16 v1, p19

    .line 205
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsAudioCheckup:Z

    move/from16 v1, p20

    .line 206
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsLoadingParticipantsDynamically:Z

    move/from16 v1, p21

    .line 207
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsCheckIn:Z

    move/from16 v1, p22

    .line 208
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsExpelUserPermanently:Z

    move/from16 v1, p23

    .line 209
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsMultiShare:Z

    move/from16 v1, p24

    .line 210
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsMicRecordTest:Z

    move/from16 v1, p25

    .line 211
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsEncryptedConnection:Z

    move/from16 v1, p26

    .line 212
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsH323Dtmf:Z

    move/from16 v1, p27

    .line 213
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsCloudPbx:Z

    move/from16 v1, p28

    .line 214
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsCrcCalloutOnly:Z

    move/from16 v1, p29

    .line 215
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsCalendarAddAttendees:Z

    move/from16 v1, p30

    .line 216
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsSignoutZR:Z

    move/from16 v1, p31

    .line 217
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsPlayUltrasound:Z

    move/from16 v1, p32

    .line 218
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsMultiControllers:Z

    move/from16 v1, p33

    .line 219
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsMultiSipCall:Z

    move/from16 v1, p34

    .line 220
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsDefaultCameraPreset:Z

    return-void
.end method


# virtual methods
.method public isAecSettingStoredInZR()Z
    .locals 1

    .line 155
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->aecSettingStoredInZR:Z

    return v0
.end method

.method public isAirhostDisabled()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isAirhostDisabled:Z

    return v0
.end method

.method public isCanDtmfForInviteByPhone()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->canDtmfForInviteByPhone:Z

    return v0
.end method

.method public isCanMuteOnEntry()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->canMuteOnEntry:Z

    return v0
.end method

.method public isCanRingingInPstnCall()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->canRingingInPstnCall:Z

    return v0
.end method

.method public isCanSwitchToSpecificCamera()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->canSwitchToSpecificCamera:Z

    return v0
.end method

.method public isPstnCallInLocalPresentation()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->pstnCallInLocalPresentation:Z

    return v0
.end method

.method public isSupportClaimHost()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportClaimHost:Z

    return v0
.end method

.method public isSupportOutRoomDisplay()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportOutRoomDisplay:Z

    return v0
.end method

.method public isSupportPinAndSpotlight()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportPinAndSpotlight:Z

    return v0
.end method

.method public isSupportsAudioCheckup()Z
    .locals 1

    .line 260
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsAudioCheckup:Z

    return v0
.end method

.method public isSupportsCalendarAddAttendees()Z
    .locals 1

    .line 344
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsCalendarAddAttendees:Z

    return v0
.end method

.method public isSupportsCheckIn()Z
    .locals 1

    .line 268
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsCheckIn:Z

    return v0
.end method

.method public isSupportsCloudPbx()Z
    .locals 1

    .line 320
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsCloudPbx:Z

    return v0
.end method

.method public isSupportsCrcCalloutOnly()Z
    .locals 1

    .line 332
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsCrcCalloutOnly:Z

    return v0
.end method

.method public isSupportsDefaultCameraPreset()Z
    .locals 1

    .line 384
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsDefaultCameraPreset:Z

    return v0
.end method

.method public isSupportsEncryptedConnection()Z
    .locals 1

    .line 300
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsEncryptedConnection:Z

    return v0
.end method

.method public isSupportsExpelUserPermanently()Z
    .locals 1

    .line 276
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsExpelUserPermanently:Z

    return v0
.end method

.method public isSupportsH323Dtmf()Z
    .locals 1

    .line 316
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsH323Dtmf:Z

    return v0
.end method

.method public isSupportsHdmiCecControl()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsHdmiCecControl:Z

    return v0
.end method

.method public isSupportsHideSelfVideo()Z
    .locals 1

    .line 308
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsHideSelfVideo:Z

    return v0
.end method

.method public isSupportsHighlyReverberantRoom()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsHighlyReverberantRoom:Z

    return v0
.end method

.method public isSupportsLoadingContactsDynamically()Z
    .locals 1

    .line 244
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsLoadingContactsDynamically:Z

    return v0
.end method

.method public isSupportsLoadingParticipantsDynamically()Z
    .locals 1

    .line 224
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsLoadingParticipantsDynamically:Z

    return v0
.end method

.method public isSupportsMeetingChat()Z
    .locals 1

    .line 336
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsMeetingChat:Z

    return v0
.end method

.method public isSupportsMicRecordTest()Z
    .locals 1

    .line 292
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsMicRecordTest:Z

    return v0
.end method

.method public isSupportsMultiControllers()Z
    .locals 1

    .line 360
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsMultiControllers:Z

    return v0
.end method

.method public isSupportsMultiShare()Z
    .locals 1

    .line 284
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsMultiShare:Z

    return v0
.end method

.method public isSupportsMultiSipCall()Z
    .locals 1

    .line 376
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsMultiSipCall:Z

    return v0
.end method

.method public isSupportsPlayUltrasound()Z
    .locals 1

    .line 368
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsPlayUltrasound:Z

    return v0
.end method

.method public isSupportsRaiseHand()Z
    .locals 1

    .line 324
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsRaiseHand:Z

    return v0
.end method

.method public isSupportsShareCamera()Z
    .locals 1

    .line 252
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsShareCamera:Z

    return v0
.end method

.method public isSupportsShareForFloatingAndContentOnly()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsShareForFloatingAndContentOnly:Z

    return v0
.end method

.method public isSupportsShowAudioParticipant()Ljava/lang/Boolean;
    .locals 1

    .line 47
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsShowAudioParticipant:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isSupportsSignoutZR()Z
    .locals 1

    .line 352
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsSignoutZR:Z

    return v0
.end method

.method public isSupportsSipCallout()Z
    .locals 1

    .line 236
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsSipCallout:Z

    return v0
.end method

.method public isSupportsSoftwareAudioProcessing()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsSoftwareAudioProcessing:Z

    return v0
.end method

.method public isSupportsWebSettingsPush()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsWebSettingsPush:Z

    return v0
.end method

.method public setAecSettingStoredInZR(Z)V
    .locals 0

    .line 159
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->aecSettingStoredInZR:Z

    return-void
.end method

.method public setAirhostDisabled(Z)V
    .locals 0

    .line 232
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isAirhostDisabled:Z

    return-void
.end method

.method public setCanDtmfForInviteByPhone(Z)V
    .locals 0

    .line 135
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->canDtmfForInviteByPhone:Z

    return-void
.end method

.method public setCanMuteOnEntry(Z)V
    .locals 0

    .line 67
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->canMuteOnEntry:Z

    return-void
.end method

.method public setCanRingingInPstnCall(Z)V
    .locals 0

    .line 151
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->canRingingInPstnCall:Z

    return-void
.end method

.method public setCanSwitchToSpecificCamera(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->canSwitchToSpecificCamera:Z

    return-void
.end method

.method public setPstnCallInLocalPresentation(Z)V
    .locals 0

    .line 143
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->pstnCallInLocalPresentation:Z

    return-void
.end method

.method public setSupportClaimHost(Z)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportClaimHost:Z

    return-void
.end method

.method public setSupportOutRoomDisplay(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportOutRoomDisplay:Z

    return-void
.end method

.method public setSupportPinAndSpotlight(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportPinAndSpotlight:Z

    return-void
.end method

.method public setSupportsAudioCheckup(Z)V
    .locals 0

    .line 264
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsAudioCheckup:Z

    return-void
.end method

.method public setSupportsCalendarAddAttendees(Z)V
    .locals 0

    .line 348
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsCalendarAddAttendees:Z

    return-void
.end method

.method public setSupportsCheckIn(Z)V
    .locals 0

    .line 272
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsCheckIn:Z

    return-void
.end method

.method public setSupportsDefaultCameraPreset(Z)V
    .locals 0

    .line 388
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsDefaultCameraPreset:Z

    return-void
.end method

.method public setSupportsEncryptedConnection(Z)V
    .locals 0

    .line 304
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsEncryptedConnection:Z

    return-void
.end method

.method public setSupportsExpelUserPermanently(Z)V
    .locals 0

    .line 280
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsExpelUserPermanently:Z

    return-void
.end method

.method public setSupportsHdmiCecControl(Z)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsHdmiCecControl:Z

    return-void
.end method

.method public setSupportsHideSelfVideo(Z)V
    .locals 0

    .line 312
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsHideSelfVideo:Z

    return-void
.end method

.method public setSupportsHighlyReverberantRoom(Z)V
    .locals 0

    .line 115
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsHighlyReverberantRoom:Z

    return-void
.end method

.method public setSupportsLoadingContactsDynamically(Z)V
    .locals 0

    .line 248
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsLoadingContactsDynamically:Z

    return-void
.end method

.method public setSupportsLoadingParticipantsDynamically(Z)V
    .locals 0

    .line 228
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsLoadingParticipantsDynamically:Z

    return-void
.end method

.method public setSupportsMeetingChat(Z)V
    .locals 0

    .line 340
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsMeetingChat:Z

    return-void
.end method

.method public setSupportsMicRecordTest(Z)V
    .locals 0

    .line 296
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsMicRecordTest:Z

    return-void
.end method

.method public setSupportsMultiControllers(Z)V
    .locals 0

    .line 364
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsMultiControllers:Z

    return-void
.end method

.method public setSupportsMultiShare(Z)V
    .locals 0

    .line 288
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsMultiShare:Z

    return-void
.end method

.method public setSupportsMultiSipCall(Z)V
    .locals 0

    .line 380
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsMultiSipCall:Z

    return-void
.end method

.method public setSupportsPlayUltrasound(Z)V
    .locals 0

    .line 372
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsPlayUltrasound:Z

    return-void
.end method

.method public setSupportsRaiseHand(Z)V
    .locals 0

    .line 328
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsRaiseHand:Z

    return-void
.end method

.method public setSupportsShareCamera(Z)V
    .locals 0

    .line 256
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsShareCamera:Z

    return-void
.end method

.method public setSupportsShareForFloatingAndContentOnly(Z)V
    .locals 0

    .line 123
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsShareForFloatingAndContentOnly:Z

    return-void
.end method

.method public setSupportsShowAudioParticipant(Ljava/lang/Boolean;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsShowAudioParticipant:Ljava/lang/Boolean;

    return-void
.end method

.method public setSupportsSignoutZR(Z)V
    .locals 0

    .line 356
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsSignoutZR:Z

    return-void
.end method

.method public setSupportsSipCallout(Z)V
    .locals 0

    .line 240
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsSipCallout:Z

    return-void
.end method

.method public setSupportsSoftwareAudioProcessing(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsSoftwareAudioProcessing:Z

    return-void
.end method

.method public setSupportsWebSettingsPush(Z)V
    .locals 0

    .line 167
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsWebSettingsPush:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZRCFeatureListInfo{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 395
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isAirhostDisabled:Z

    if-eqz v1, :cond_0

    const-string v1, "isAirhostDisabled;"

    .line 396
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isCanDtmfForInviteByPhone()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "canDtmfForInviteByPhone;"

    .line 399
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    :cond_1
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->pstnCallInLocalPresentation:Z

    if-eqz v1, :cond_2

    const-string v1, "pstnCallInLocalPresentation;"

    .line 402
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    :cond_2
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->canRingingInPstnCall:Z

    if-eqz v1, :cond_3

    const-string v1, "canRingingInPstnCall;"

    .line 405
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    :cond_3
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->aecSettingStoredInZR:Z

    if-eqz v1, :cond_4

    const-string v1, "aecSettingStoredInZR;"

    .line 408
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    :cond_4
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsWebSettingsPush:Z

    if-eqz v1, :cond_5

    const-string v1, "supportsWebSettingsPush;"

    .line 411
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    :cond_5
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsSipCallout:Z

    if-eqz v1, :cond_6

    const-string v1, "supportsSipCallout;"

    .line 414
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    :cond_6
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->canMuteOnEntry:Z

    if-eqz v1, :cond_7

    const-string v1, "canMuteOnEntry;"

    .line 417
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    :cond_7
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportClaimHost:Z

    if-eqz v1, :cond_8

    const-string v1, "supportClaimHost;"

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    :cond_8
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportPinAndSpotlight:Z

    if-eqz v1, :cond_9

    const-string v1, "supportPinAndSpotlight;"

    .line 423
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    :cond_9
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportOutRoomDisplay:Z

    if-eqz v1, :cond_a

    const-string v1, "supportOutRoomDisplay;"

    .line 426
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    :cond_a
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->canSwitchToSpecificCamera:Z

    if-eqz v1, :cond_b

    const-string v1, "canSwitchToSpecificCamera;"

    .line 429
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    :cond_b
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsSoftwareAudioProcessing:Z

    if-eqz v1, :cond_c

    const-string v1, "supportsSoftwareAudioProcessing;"

    .line 432
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    :cond_c
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsHdmiCecControl:Z

    if-eqz v1, :cond_d

    const-string v1, "supportsHdmiCecControl;"

    .line 435
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    :cond_d
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsHighlyReverberantRoom:Z

    if-eqz v1, :cond_e

    const-string v1, "supportsHighlyReverberantRoom;"

    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    :cond_e
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsShareForFloatingAndContentOnly:Z

    if-eqz v1, :cond_f

    const-string v1, "supportsShareForFloatingAndContentOnly;"

    .line 441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    :cond_f
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsShareForFloatingAndContentOnly:Z

    if-eqz v1, :cond_10

    const-string v1, "supportsShareForFloatingAndContentOnly;"

    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    :cond_10
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsLoadingContactsDynamically:Z

    if-eqz v1, :cond_11

    const-string v1, "supportsLoadingContactsDynamically;"

    .line 447
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    :cond_11
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsShareCamera:Z

    if-eqz v1, :cond_12

    const-string v1, "supportsShareCamera;"

    .line 450
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    :cond_12
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsAudioCheckup:Z

    if-eqz v1, :cond_13

    const-string v1, "supportsAudioCheckup;"

    .line 453
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    :cond_13
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsLoadingParticipantsDynamically:Z

    if-eqz v1, :cond_14

    const-string v1, "supportsLoadingParticipantsDynamically;"

    .line 456
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    :cond_14
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsCheckIn:Z

    if-eqz v1, :cond_15

    const-string v1, "supportsCheckIn;"

    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    :cond_15
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsExpelUserPermanently:Z

    if-eqz v1, :cond_16

    const-string v1, "supportsExpelUserPermanently;"

    .line 462
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    :cond_16
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsMultiShare:Z

    if-eqz v1, :cond_17

    const-string v1, "supportsMultiShare;"

    .line 465
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    :cond_17
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsMicRecordTest:Z

    if-eqz v1, :cond_18

    const-string v1, "supportsMicRecordTest;"

    .line 468
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    :cond_18
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsEncryptedConnection:Z

    if-eqz v1, :cond_19

    const-string v1, "supportsEncryptedConnection;"

    .line 471
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    :cond_19
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsH323Dtmf:Z

    if-eqz v1, :cond_1a

    const-string v1, "supportsH323Dtmf;"

    .line 474
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    :cond_1a
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsHideSelfVideo:Z

    if-eqz v1, :cond_1b

    const-string v1, "supportsHideSelfVideo;"

    .line 477
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    :cond_1b
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsCloudPbx:Z

    if-eqz v1, :cond_1c

    const-string v1, "supportsCloudPbx;"

    .line 480
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    :cond_1c
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsCrcCalloutOnly:Z

    if-eqz v1, :cond_1d

    const-string v1, "supportsCrcCalloutOnly;"

    .line 483
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    :cond_1d
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsMeetingChat:Z

    if-eqz v1, :cond_1e

    const-string v1, "supportsMeetingChat;"

    .line 486
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    :cond_1e
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsCalendarAddAttendees:Z

    if-eqz v1, :cond_1f

    const-string v1, "supportsCalendarAddAttendees;"

    .line 489
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    :cond_1f
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsSignoutZR:Z

    if-eqz v1, :cond_20

    const-string v1, "supportsSignoutZR;"

    .line 492
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    :cond_20
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsPlayUltrasound:Z

    if-eqz v1, :cond_21

    const-string v1, "supportsPlayUltrasound"

    .line 495
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    :cond_21
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsMultiControllers:Z

    if-eqz v1, :cond_22

    const-string v1, "supportsMultiControllers;"

    .line 498
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    :cond_22
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsMultiSipCall:Z

    if-eqz v1, :cond_23

    const-string v1, "supportsMultiSipCall;"

    .line 501
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    :cond_23
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->supportsDefaultCameraPreset:Z

    if-eqz v1, :cond_24

    const-string v1, "supportsDefaultCameraPreset"

    .line 504
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    const-string v1, "}"

    .line 506
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
