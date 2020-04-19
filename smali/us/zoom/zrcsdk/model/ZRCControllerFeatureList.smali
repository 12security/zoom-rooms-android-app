.class public Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;
.super Ljava/lang/Object;
.source "ZRCControllerFeatureList.java"


# instance fields
.field private aecSettingStoredInZR:Z

.field private answerSipCall:Z

.field private supportsAdjustShareAudio:Z

.field private supportsAudioCheckup:Z

.field private supportsAutoStartEndMeeting:Z

.field private supportsBatchIMContactUpdate:Z

.field private supportsClosedCaption:Z

.field private supportsCohost:Z

.field private supportsDigitalSignageOnly:Z

.field private supportsDirectPresentation:Z

.field private supportsEncryptedConnection:Z

.field private supportsInMeetingAudioTroubleShooting:Z

.field private supportsLoadingContactsDynamically:Z

.field private supportsLoadingParticipantsDynamically:Z

.field private supportsLocalView:Z

.field private supportsMeetingViewChat:Z

.field private supportsMultiControllers:Z

.field private supportsMultiShare:Z

.field private supportsMultiSipCall:Z

.field private supportsMuteVideoByOther:Z

.field private supportsPrivateMeeting:Z

.field private supportsRecordingConsentReminder:Z

.field private supportsScreenResolutionAdjustment:Z

.field private supportsShowMeetingEncryptionIcon:Z

.field private supportsSilentMode:Z

.field private supportsSoftwareAudioProcessing:Z

.field private supportsVanityUrl:Z

.field private supportsVirtualAudioDevice:Z

.field private supportsWebSettingsPush:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZZZZZZZZZZZZZZZZZZZZZZZ)V
    .locals 2

    move-object v0, p0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 57
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->aecSettingStoredInZR:Z

    move v1, p2

    .line 58
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsPrivateMeeting:Z

    move v1, p3

    .line 59
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsDirectPresentation:Z

    move v1, p4

    .line 60
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->answerSipCall:Z

    move v1, p5

    .line 61
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsClosedCaption:Z

    move v1, p6

    .line 62
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsWebSettingsPush:Z

    move v1, p7

    .line 63
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsMuteVideoByOther:Z

    move v1, p8

    .line 64
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsBatchIMContactUpdate:Z

    move v1, p9

    .line 65
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsSoftwareAudioProcessing:Z

    move v1, p10

    .line 66
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsAutoStartEndMeeting:Z

    move v1, p11

    .line 67
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsScreenResolutionAdjustment:Z

    move v1, p12

    .line 68
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsAudioCheckup:Z

    move v1, p13

    .line 69
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsLoadingParticipantsDynamically:Z

    move/from16 v1, p14

    .line 70
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsDigitalSignageOnly:Z

    move/from16 v1, p15

    .line 71
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsEncryptedConnection:Z

    move/from16 v1, p16

    .line 72
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsSilentMode:Z

    move/from16 v1, p17

    .line 73
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsCohost:Z

    move/from16 v1, p18

    .line 74
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsRecordingConsentReminder:Z

    move/from16 v1, p19

    .line 75
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsMeetingViewChat:Z

    move/from16 v1, p20

    .line 76
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsMultiControllers:Z

    move/from16 v1, p21

    .line 77
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsInMeetingAudioTroubleShooting:Z

    move/from16 v1, p22

    .line 78
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsVirtualAudioDevice:Z

    move/from16 v1, p23

    .line 79
    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsShowMeetingEncryptionIcon:Z

    return-void
.end method


# virtual methods
.method public isAecSettingStoredInZR()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->aecSettingStoredInZR:Z

    return v0
.end method

.method public isAnswerSipCall()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->answerSipCall:Z

    return v0
.end method

.method public isSupportsAdjustShareAudio()Z
    .locals 1

    .line 275
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsAdjustShareAudio:Z

    return v0
.end method

.method public isSupportsAudioCheckup()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsAudioCheckup:Z

    return v0
.end method

.method public isSupportsAutoStartEndMeeting()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsAutoStartEndMeeting:Z

    return v0
.end method

.method public isSupportsBatchIMContactUpdate()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsBatchIMContactUpdate:Z

    return v0
.end method

.method public isSupportsClosedCaption()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsClosedCaption:Z

    return v0
.end method

.method public isSupportsCohost()Z
    .locals 1

    .line 243
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsCohost:Z

    return v0
.end method

.method public isSupportsDigitalSignageOnly()Z
    .locals 1

    .line 203
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsDigitalSignageOnly:Z

    return v0
.end method

.method public isSupportsDirectPresentation()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsDirectPresentation:Z

    return v0
.end method

.method public isSupportsEncryptedConnection()Z
    .locals 1

    .line 227
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsEncryptedConnection:Z

    return v0
.end method

.method public isSupportsInMeetingAudioTroubleShooting()Z
    .locals 1

    .line 263
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsInMeetingAudioTroubleShooting:Z

    return v0
.end method

.method public isSupportsLoadingContactsDynamically()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsLoadingContactsDynamically:Z

    return v0
.end method

.method public isSupportsLoadingParticipantsDynamically()Z
    .locals 1

    .line 195
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsLoadingParticipantsDynamically:Z

    return v0
.end method

.method public isSupportsMeetingViewChat()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsMeetingViewChat:Z

    return v0
.end method

.method public isSupportsMultiShare()Z
    .locals 1

    .line 219
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsMultiShare:Z

    return v0
.end method

.method public isSupportsMuteVideoByOther()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsMuteVideoByOther:Z

    return v0
.end method

.method public isSupportsPrivateMeeting()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsPrivateMeeting:Z

    return v0
.end method

.method public isSupportsRecordingConsentReminder()Z
    .locals 1

    .line 251
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsRecordingConsentReminder:Z

    return v0
.end method

.method public isSupportsScreenResolutionAdjustment()Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsScreenResolutionAdjustment:Z

    return v0
.end method

.method public isSupportsSilentMode()Z
    .locals 1

    .line 235
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsSilentMode:Z

    return v0
.end method

.method public isSupportsSoftwareAudioProcessing()Z
    .locals 1

    .line 155
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsSoftwareAudioProcessing:Z

    return v0
.end method

.method public isSupportsVanityUrl()Z
    .locals 1

    .line 211
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsVanityUrl:Z

    return v0
.end method

.method public isSupportsWebSettingsPush()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsWebSettingsPush:Z

    return v0
.end method

.method public setAecSettingStoredInZR(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->aecSettingStoredInZR:Z

    return-void
.end method

.method public setAnswerSipCall(Z)V
    .locals 0

    .line 119
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->answerSipCall:Z

    return-void
.end method

.method public setSupportsAdjustShareAudio(Z)V
    .locals 0

    .line 279
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsAdjustShareAudio:Z

    return-void
.end method

.method public setSupportsAudioCheckup(Z)V
    .locals 0

    .line 191
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsAudioCheckup:Z

    return-void
.end method

.method public setSupportsAutoStartEndMeeting(Z)V
    .locals 0

    .line 167
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsAutoStartEndMeeting:Z

    return-void
.end method

.method public setSupportsBatchIMContactUpdate(Z)V
    .locals 0

    .line 151
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsBatchIMContactUpdate:Z

    return-void
.end method

.method public setSupportsClosedCaption(Z)V
    .locals 0

    .line 127
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsClosedCaption:Z

    return-void
.end method

.method public setSupportsCohost(Z)V
    .locals 0

    .line 247
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsCohost:Z

    return-void
.end method

.method public setSupportsDigitalSignageOnly(Z)V
    .locals 0

    .line 207
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsDigitalSignageOnly:Z

    return-void
.end method

.method public setSupportsDirectPresentation(Z)V
    .locals 0

    .line 111
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsDirectPresentation:Z

    return-void
.end method

.method public setSupportsEncryptedConnection(Z)V
    .locals 0

    .line 231
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsEncryptedConnection:Z

    return-void
.end method

.method public setSupportsInMeetingAudioTroubleShooting(Z)V
    .locals 0

    .line 267
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsInMeetingAudioTroubleShooting:Z

    return-void
.end method

.method public setSupportsLoadingContactsDynamically(Z)V
    .locals 0

    .line 175
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsLoadingContactsDynamically:Z

    return-void
.end method

.method public setSupportsLoadingParticipantsDynamically(Z)V
    .locals 0

    .line 199
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsLoadingParticipantsDynamically:Z

    return-void
.end method

.method public setSupportsLocalView(Z)V
    .locals 0

    .line 286
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsLocalView:Z

    return-void
.end method

.method public setSupportsMeetingViewChat(Z)V
    .locals 0

    .line 87
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsMeetingViewChat:Z

    return-void
.end method

.method public setSupportsMultiControllers(Z)V
    .locals 0

    .line 259
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsMultiControllers:Z

    return-void
.end method

.method public setSupportsMultiShare(Z)V
    .locals 0

    .line 223
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsMultiShare:Z

    return-void
.end method

.method public setSupportsMultiSipCall(Z)V
    .locals 0

    .line 271
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsMultiSipCall:Z

    return-void
.end method

.method public setSupportsMuteVideoByOther(Z)V
    .locals 0

    .line 143
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsMuteVideoByOther:Z

    return-void
.end method

.method public setSupportsPrivateMeeting(Z)V
    .locals 0

    .line 103
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsPrivateMeeting:Z

    return-void
.end method

.method public setSupportsRecordingConsentReminder(Z)V
    .locals 0

    .line 255
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsRecordingConsentReminder:Z

    return-void
.end method

.method public setSupportsScreenResolutionAdjustment(Z)V
    .locals 0

    .line 183
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsScreenResolutionAdjustment:Z

    return-void
.end method

.method public setSupportsShowMeetingEncryptionIcon(Z)V
    .locals 0

    .line 290
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsShowMeetingEncryptionIcon:Z

    return-void
.end method

.method public setSupportsSilentMode(Z)V
    .locals 0

    .line 239
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsSilentMode:Z

    return-void
.end method

.method public setSupportsSoftwareAudioProcessing(Z)V
    .locals 0

    .line 159
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsSoftwareAudioProcessing:Z

    return-void
.end method

.method public setSupportsVanityUrl(Z)V
    .locals 0

    .line 215
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsVanityUrl:Z

    return-void
.end method

.method public setSupportsVirtualAudioDevice(Z)V
    .locals 0

    .line 283
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsVirtualAudioDevice:Z

    return-void
.end method

.method public setSupportsWebSettingsPush(Z)V
    .locals 0

    .line 135
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsWebSettingsPush:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZRCControllerFeatureList{aecSettingStoredInZR="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->aecSettingStoredInZR:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportsPrivateMeeting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsPrivateMeeting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportsDirectPresentation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsDirectPresentation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", answerSipCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->answerSipCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportsClosedCaption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsClosedCaption:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportsWebSettingsPush="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsWebSettingsPush:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportsMuteVideoByOther="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsMuteVideoByOther:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportsBatchIMContactUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsBatchIMContactUpdate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportsSoftwareAudioProcessing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsSoftwareAudioProcessing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportsAutoStartEndMeeting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsAutoStartEndMeeting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportsLoadingContactsDynamically="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsLoadingContactsDynamically:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportsScreenResolutionAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsScreenResolutionAdjustment:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportsAudioCheckup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsAudioCheckup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportsDigitalSignageOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsDigitalSignageOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportsVanityUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsVanityUrl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportsMultiShare="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsMultiShare:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportsEncryptedConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsEncryptedConnection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportsSilentMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsSilentMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportsCohost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsCohost:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportsRecordingConsentReminder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsRecordingConsentReminder:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportsMeetingViewChat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsMeetingViewChat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportsMultiControllers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsMultiControllers:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportsMultiSipCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsMultiSipCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportsInMeetingAudioTroubleShooting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsInMeetingAudioTroubleShooting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportsAdjustShareAudio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsAdjustShareAudio:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportsVirtualAudioDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsVirtualAudioDevice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportsLocalView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsLocalView:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportsShowMeetingEncryptionIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;->supportsShowMeetingEncryptionIcon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
