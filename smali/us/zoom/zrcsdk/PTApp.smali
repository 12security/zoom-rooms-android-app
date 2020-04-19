.class public Lus/zoom/zrcsdk/PTApp;
.super Ljava/lang/Object;
.source "PTApp.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PTApp"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native GenerateGoogleLoginURLImp()Ljava/lang/String;
.end method

.method private native VTLSConfirmAcceptCertItemImpl(Lus/zoom/zrcsdk/model/ZRCVerifyCertEvent;ZZ)V
.end method

.method private native absentRecurringEventImpl(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)I
.end method

.method private native acceptIncomingCallImpl(Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;)I
.end method

.method private native acceptIncomingSipCallImp(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)I
.end method

.method private native assignRoomCalendarImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native assignRoomLocationImpl(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native audioCheckupImp(I)I
.end method

.method private native batchListCalendarEventsWithRoomsImpl(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation
.end method

.method private native calibrateScreenSequenceImp(IIII)I
.end method

.method private native changeWebDomainToImpl(Ljava/lang/String;)V
.end method

.method private native checkInCalendarEventImpl(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)I
.end method

.method private native closeConnectionImpl()I
.end method

.method private native closeUpcomingMeetingAlertImpl()I
.end method

.method private native confirmNumberOfCombinedMicrophonesImpl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native connectToZRImpl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILus/zoom/zrcsdk/model/ZRCControllerFeatureList;Lus/zoom/zrcsdk/model/ZRCControllerDeviceInfo;Lus/zoom/zrcsdk/model/ZRCControllerDeviceCapability;)I
.end method

.method private native createNewRoomImpl(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native declineIncomingCallImpl(Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;)I
.end method

.method private native declineIncomingSipCallImp(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)I
.end method

.method private native deleteCalendarEventImpl(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)I
.end method

.method private native deleteCalendarEventWithRoomImpl(Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z
.end method

.method private native deleteCalendarRecurrenceImpl(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)I
.end method

.method private native deleteDeviceImpl()Z
.end method

.method private native downloadingFileImpl(Ljava/lang/String;Ljava/lang/String;ZZ)Z
.end method

.method private native enableAcousticEchoCancellationImpl(Z)I
.end method

.method private native enableAutomaticGainControlImpl(Z)I
.end method

.method private native endAndAcceptSipCallImpl(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)I
.end method

.method private native generateZoomAuthParameterImpl()Ljava/lang/String;
.end method

.method private native getAllRoomsImpl()Z
.end method

.method private native getCurrentCameraIntelligentZoomStatusImpl()I
.end method

.method private native getDisplayVersionImpl()Ljava/lang/String;
.end method

.method private native getLocationInfoImpl(Ljava/lang/String;)Z
.end method

.method private native getReleaseNoteImp()Z
.end method

.method private native getRoomLocationIDImpl(Ljava/lang/String;)Z
.end method

.method private native getVersionImpl()Ljava/lang/String;
.end method

.method private native getWebDomainImpl()Ljava/lang/String;
.end method

.method private native goToCameraPresetImpl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native handleGoogleOAuthURLActionImpl(Ljava/lang/String;)Z
.end method

.method private native handleWebRequestOnIdleImpl()V
.end method

.method private native hangupSipCallImp(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)I
.end method

.method private native holdAndAcceptSipCallImpl(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)I
.end method

.method private native holdSipCallImpl(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)I
.end method

.method private native initConnectionToZRImpl(Ljava/lang/String;)I
.end method

.method private native initImpl()V
.end method

.method private native inviteLegacyRoomSystemsImp(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method private native isEncryptedConnectionEnabledImpl()Z
.end method

.method private native joinMeetingImpl(Ljava/lang/String;)I
.end method

.method private native joinSipCallToMeetingImpl(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)I
.end method

.method private native joinTestMeetingImpl()I
.end method

.method private native launchSharingMeetingImpl(ZILjava/lang/String;I)I
.end method

.method private native listCalendarEventsWithRoomImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native listMeetingImpl()I
.end method

.method private native loginWithGoogleAccessTokenImp(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native loginWithGoogleImpl(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native loginWithLicenseKeyImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native loginWithZoomRefreshTokenImp(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native loginWithZoomTokenImpl(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native loginZoomImpl(Ljava/lang/String;[CLjava/lang/String;)Z
.end method

.method private native logoutWebServiceImpl(Z)Z
.end method

.method private native meetWithIMUsersImp(Ljava/util/List;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation
.end method

.method private native mergeSipCallImpl(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)I
.end method

.method private native muteMyAudioVideoWhenMeetingBeginsImpl(Z)I
.end method

.method private native nameCameraPresetImpl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native notifySwitchToTabImp(IZ)I
.end method

.method private native onSipDialOutImp(Lus/zoom/zrcsdk/model/ZRCCallerID;Ljava/lang/String;)I
.end method

.method private native optimizeScreenResolutionImp(I)I
.end method

.method private native queryWithParingCodeImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native reportControllerBatteryLevelImp(IFZ)I
.end method

.method private native reportControllerChargingStateImp(IZ)I
.end method

.method private native requestContactsDynamicallyFromImp(IIZLjava/lang/String;Z)I
.end method

.method private native requestLogoutZRImpl(I)Z
.end method

.method private native requestRestartZRImpl()Z
.end method

.method private native requestShutdownZRImpl()Z
.end method

.method private native requestZMDeviceOperationImpl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native requestZRCSDeviceOperationImpl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native requestZoomPresenceCalendarImpl(Ljava/lang/String;)Z
.end method

.method private native requestZoomPresenceLocationImpl()Z
.end method

.method private native restartOperatingSystemImp(Z)I
.end method

.method private native scheduleCalendarEventImpl(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)I
.end method

.method private native scheduleCalendarEventWithRoomImpl(Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;Z)Z
.end method

.method private native searchBuddyOnWebImp(Ljava/lang/String;)Z
.end method

.method private native selectCameraImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native selectComCameraImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method private native selectMicrophoneImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native selectRoomProfileImpl(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native selectSpeakerImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native sendClientLogFilesImpl(Ljava/lang/String;)Z
.end method

.method private native sendEmailToImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method private native sendFeedbackImp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native sendReportImp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method private native sendSipCallDTMFImp(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Ljava/lang/String;)I
.end method

.method private native sendUsageTrackWithLogTypeImp(IIILjava/lang/String;)I
.end method

.method private native sendZoomRoomsProblemReportToImp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native setAdvancedNoiseSuppressionModeImpl(I)I
.end method

.method private native setCameraIntelligentZoomOnImpl(Z)I
.end method

.method private native setCameraPresetDefaultPositionImpl(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native setCameraPresetImpl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native setDeviceDisplayNameImpl(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
.end method

.method private native setHighlyReverberantRoomOnImpl(Z)I
.end method

.method private native setLanguageIDImpl(Ljava/lang/String;)V
.end method

.method private native setMicrophoneEnableSuppressNoiseImpl(Z)I
.end method

.method private native setMicrophonePickupRangeImpl(I)I
.end method

.method private native setMicrophoneVolumeImpl(FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native setMyVideoHiddenImpl(Z)I
.end method

.method private native setSpeakerVolumeImpl(FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method private native showUpcomingMeetingAlertImpl(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)I
.end method

.method private native startMeetingImpl(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)I
.end method

.method private native startPMIMeetingImpl(ILus/zoom/zrcsdk/model/ZRCMeetingListItem;)I
.end method

.method private native startPSTNCallImpl(ILus/zoom/zrcsdk/model/ZRCMeetingListItem;)I
.end method

.method private native startTestingMicrophoneImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native startTestingSpeakerImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native stopTestingMicrophoneImpl()I
.end method

.method private native stopTestingSpeakerImpl()I
.end method

.method private native testMicrophoneStartRecordingImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native testMicrophoneStopRecordingImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native transferSipCallImpl(ILus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Ljava/lang/String;)I
.end method

.method private native turnScreensOnImpl(Z)I
.end method

.method private native unholdSipCallImpl(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)I
.end method

.method private native updateDeviceInfoImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
.end method

.method private native updateMySipPhoneAudioImp(Z)I
.end method

.method private native updateRoomNameOrLockCodeImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native upgradeSipCallToMeetingImpl(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Z)I
.end method

.method private native userInputUsernamePasswordForProxyImpl(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
.end method


# virtual methods
.method public GenerateGoogleLoginURL()Ljava/lang/String;
    .locals 1

    .line 619
    invoke-direct {p0}, Lus/zoom/zrcsdk/PTApp;->GenerateGoogleLoginURLImp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public VTLSConfirmAcceptCertItem(Lus/zoom/zrcsdk/model/ZRCVerifyCertEvent;ZZ)V
    .locals 0

    .line 1024
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrcsdk/PTApp;->VTLSConfirmAcceptCertItemImpl(Lus/zoom/zrcsdk/model/ZRCVerifyCertEvent;ZZ)V

    return-void
.end method

.method public absentRecurringEvent(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z
    .locals 0

    .line 973
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/PTApp;->absentRecurringEventImpl(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public acceptIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;)I
    .locals 0

    .line 612
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/PTApp;->acceptIncomingCallImpl(Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;)I

    move-result p1

    return p1
.end method

.method public acceptIncomingSipCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)I
    .locals 0

    .line 687
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/PTApp;->acceptIncomingSipCallImp(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)I

    move-result p1

    return p1
.end method

.method public addCalendarEventListener(Lus/zoom/zrcsdk/ICalendarEventListener;)V
    .locals 1

    .line 171
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/CallBackUI;->addCalendarEventListener(Lus/zoom/zrcsdk/ICalendarEventListener;)V

    return-void
.end method

.method public addCameraControlListener(Lus/zoom/zrcsdk/CameraControlListener;)V
    .locals 1

    .line 131
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/CallBackUI;->addCameraControlListener(Lus/zoom/zrcsdk/CameraControlListener;)V

    return-void
.end method

.method public addCertItemVerifyFailedListener(Lus/zoom/zrcsdk/ICertItemVerifyFailedListener;)V
    .locals 1

    .line 155
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/CallBackUI;->addCertItemVerifyFailedListener(Lus/zoom/zrcsdk/ICertItemVerifyFailedListener;)V

    return-void
.end method

.method public addCreateRoomListener(Lus/zoom/zrcsdk/ICreateRoomListener;)V
    .locals 1

    .line 139
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/CallBackUI;->addCreateRoomListener(Lus/zoom/zrcsdk/ICreateRoomListener;)V

    return-void
.end method

.method public addFileDownloadListener(Lus/zoom/zrcsdk/IFileDownloadListener;)V
    .locals 1

    .line 115
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/CallBackUI;->addFileDownloadListener(Lus/zoom/zrcsdk/IFileDownloadListener;)V

    return-void
.end method

.method public addGoogleListener(Lus/zoom/zrcsdk/IGoogleEventListener;)V
    .locals 1

    .line 66
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/CallBackUI;->addGoogleListener(Lus/zoom/zrcsdk/IGoogleEventListener;)V

    return-void
.end method

.method public addLoginListener(Lus/zoom/zrcsdk/ILoginListener;)V
    .locals 1

    .line 58
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/CallBackUI;->addLoginListener(Lus/zoom/zrcsdk/ILoginListener;)V

    return-void
.end method

.method public addMeetingShareEventListener(Lus/zoom/zrcsdk/IMeetingShareEventListener;)V
    .locals 1

    .line 179
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/CallBackUI;->addMeetingShareEventListener(Lus/zoom/zrcsdk/IMeetingShareEventListener;)V

    return-void
.end method

.method public addMicrophoneTestRecordingListener(Lus/zoom/zrcsdk/IMicrophoneTestRecordingListener;)V
    .locals 1

    .line 163
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/CallBackUI;->addMicrophoneTestRecordingListener(Lus/zoom/zrcsdk/IMicrophoneTestRecordingListener;)V

    return-void
.end method

.method public addPtEventListener(Lus/zoom/zrcsdk/IPtEventListener;)V
    .locals 1

    .line 82
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/CallBackUI;->addPtEventListener(Lus/zoom/zrcsdk/IPtEventListener;)V

    return-void
.end method

.method public addPushNotificationEventListener(Lus/zoom/zrcsdk/IPushNotificationEventListener;)V
    .locals 1

    .line 187
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/CallBackUI;->addPushNotificationEventListener(Lus/zoom/zrcsdk/IPushNotificationEventListener;)V

    return-void
.end method

.method public addReserveOtherRoomEventsListener(Lus/zoom/zrcsdk/IReserveOtherRoomEventsListener;)V
    .locals 1

    .line 203
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/CallBackUI;->addReserveOtherRoomEventsListener(Lus/zoom/zrcsdk/IReserveOtherRoomEventsListener;)V

    return-void
.end method

.method public addRoomLocationListener(Lus/zoom/zrcsdk/IRoomLocationListener;)V
    .locals 1

    .line 195
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/CallBackUI;->addRoomLocationListener(Lus/zoom/zrcsdk/IRoomLocationListener;)V

    return-void
.end method

.method public addSendClientLogListener(Lus/zoom/zrcsdk/ISendClientLogListener;)V
    .locals 1

    .line 147
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/CallBackUI;->addSendClientLogListener(Lus/zoom/zrcsdk/ISendClientLogListener;)V

    return-void
.end method

.method public addSipServiceListener(Lus/zoom/zrcsdk/ISipServiceListener;)V
    .locals 1

    .line 50
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/CallBackUI;->addSipServiceListener(Lus/zoom/zrcsdk/ISipServiceListener;)V

    return-void
.end method

.method public addUltrasoundWhiteListListener(Lus/zoom/zrcsdk/IUltrasoundWhiteListListener;)V
    .locals 1

    .line 123
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/CallBackUI;->addUltrasoundWhiteListListener(Lus/zoom/zrcsdk/IUltrasoundWhiteListListener;)V

    return-void
.end method

.method public addWebEventListener(Lus/zoom/zrcsdk/IWebEventListener;)V
    .locals 1

    .line 99
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/CallBackUI;->addWebEventListener(Lus/zoom/zrcsdk/IWebEventListener;)V

    return-void
.end method

.method public addWebPullCallBackEventListener(Lus/zoom/zrcsdk/IWebPullCallBackListener;)V
    .locals 1

    .line 107
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/CallBackUI;->addWebPullCallBackEventListener(Lus/zoom/zrcsdk/IWebPullCallBackListener;)V

    return-void
.end method

.method public addWebinarRoleChangedListener(Lus/zoom/zrcsdk/IWebinarRoleChangedListener;)V
    .locals 1

    .line 74
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/CallBackUI;->addWebinarRoleChangedListener(Lus/zoom/zrcsdk/IWebinarRoleChangedListener;)V

    return-void
.end method

.method public addZRConnectionEventListener(Lus/zoom/zrcsdk/IZRConnectionEventListener;)V
    .locals 1

    .line 91
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/CallBackUI;->addZRConnectionEventListener(Lus/zoom/zrcsdk/IZRConnectionEventListener;)V

    return-void
.end method

.method public assignRoomCalendar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    const-string p3, ""

    :goto_1
    if-eqz p4, :cond_2

    goto :goto_2

    :cond_2
    const-string p4, ""

    .line 914
    :goto_2
    invoke-direct {p0, p1, p2, p3, p4}, Lus/zoom/zrcsdk/PTApp;->assignRoomCalendarImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public assignRoomLocation(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    .line 919
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrcsdk/PTApp;->assignRoomLocationImpl(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public batchListCalendarEventsWithRooms(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 998
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrcsdk/PTApp;->batchListCalendarEventsWithRoomsImpl(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public calibrateScreenSequence(IIII)I
    .locals 0

    .line 627
    invoke-direct {p0, p1, p2, p3, p4}, Lus/zoom/zrcsdk/PTApp;->calibrateScreenSequenceImp(IIII)I

    move-result p1

    return p1
.end method

.method public cancelAudioCheckup()I
    .locals 1

    const/4 v0, 0x1

    .line 952
    invoke-direct {p0, v0}, Lus/zoom/zrcsdk/PTApp;->audioCheckupImp(I)I

    move-result v0

    return v0
.end method

.method changeWebDomainTo(Ljava/lang/String;)V
    .locals 0

    .line 1020
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/PTApp;->changeWebDomainToImpl(Ljava/lang/String;)V

    return-void
.end method

.method public changeWindowsPassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1080
    invoke-virtual {p0, p1, p2}, Lus/zoom/zrcsdk/PTApp;->changeWindowsPasswordImpl(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public native changeWindowsPasswordImpl(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native checkIfNeedGetProfileAmendment()V
.end method

.method public checkInCalendarEvent(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z
    .locals 0

    .line 977
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/PTApp;->checkInCalendarEventImpl(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public closeConnection()I
    .locals 1

    .line 325
    invoke-direct {p0}, Lus/zoom/zrcsdk/PTApp;->closeConnectionImpl()I

    move-result v0

    return v0
.end method

.method public native closeNotificationServerConnection(I)Z
.end method

.method public closeUpcomingMeetingAlert()I
    .locals 3

    .line 789
    sget-object v0, Lus/zoom/zrcsdk/PTApp;->TAG:Ljava/lang/String;

    const-string v1, "closeUpcomingMeetingAlert"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 790
    invoke-direct {p0}, Lus/zoom/zrcsdk/PTApp;->closeUpcomingMeetingAlertImpl()I

    move-result v0

    return v0
.end method

.method public confirmNumberOfCombinedMicrophones(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 812
    invoke-direct {p0, p1, p2, p3, p4}, Lus/zoom/zrcsdk/PTApp;->confirmNumberOfCombinedMicrophonesImpl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public native connectWithNotificationServer()Z
.end method

.method public connectZR(Ljava/lang/String;)I
    .locals 0

    .line 309
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/PTApp;->initConnectionToZRImpl(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public createNewRoom(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 906
    :goto_0
    invoke-direct {p0, p1, p2}, Lus/zoom/zrcsdk/PTApp;->createNewRoomImpl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public declineIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;)I
    .locals 0

    .line 635
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/PTApp;->declineIncomingCallImpl(Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;)I

    move-result p1

    return p1
.end method

.method public declineIncomingSipCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)I
    .locals 0

    .line 680
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/PTApp;->declineIncomingSipCallImp(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)I

    move-result p1

    return p1
.end method

.method public deleteCalendarEvent(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z
    .locals 0

    .line 965
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/PTApp;->deleteCalendarEventImpl(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public deleteCalendarEventWithRoom(Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z
    .locals 0

    .line 1006
    invoke-direct {p0, p1, p2}, Lus/zoom/zrcsdk/PTApp;->deleteCalendarEventWithRoomImpl(Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result p1

    return p1
.end method

.method public deleteCalendarRecurrence(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z
    .locals 0

    .line 969
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/PTApp;->deleteCalendarRecurrenceImpl(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public deleteDevice()Z
    .locals 1

    .line 763
    invoke-direct {p0}, Lus/zoom/zrcsdk/PTApp;->deleteDeviceImpl()Z

    move-result v0

    return v0
.end method

.method public downloadingFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 794
    invoke-virtual {p0, p1, p2, v0, v0}, Lus/zoom/zrcsdk/PTApp;->downloadingFile(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p1

    return p1
.end method

.method public downloadingFile(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 0

    .line 801
    invoke-direct {p0, p1, p2, p3, p4}, Lus/zoom/zrcsdk/PTApp;->downloadingFileImpl(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p1

    return p1
.end method

.method public enableAcousticEchoCancellation(Z)I
    .locals 0

    .line 483
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/PTApp;->enableAcousticEchoCancellationImpl(Z)I

    move-result p1

    return p1
.end method

.method public enableAutomaticGainControl(Z)I
    .locals 0

    .line 490
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/PTApp;->enableAutomaticGainControlImpl(Z)I

    move-result p1

    return p1
.end method

.method public endAndAcceptSipCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)I
    .locals 0

    .line 725
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/PTApp;->endAndAcceptSipCallImpl(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)I

    move-result p1

    return p1
.end method

.method public generateZoomAuthParameter()Ljava/lang/String;
    .locals 1

    .line 931
    invoke-direct {p0}, Lus/zoom/zrcsdk/PTApp;->generateZoomAuthParameterImpl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllRooms()Z
    .locals 1

    .line 990
    invoke-direct {p0}, Lus/zoom/zrcsdk/PTApp;->getAllRoomsImpl()Z

    move-result v0

    return v0
.end method

.method public getCurrentCameraIntelligentZoomStatus()Z
    .locals 1

    .line 1048
    invoke-direct {p0}, Lus/zoom/zrcsdk/PTApp;->getCurrentCameraIntelligentZoomStatusImpl()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 235
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocationInfo(Ljava/lang/String;)Z
    .locals 0

    .line 986
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/PTApp;->getLocationInfoImpl(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getReleaseNote()Z
    .locals 1

    .line 529
    invoke-direct {p0}, Lus/zoom/zrcsdk/PTApp;->getReleaseNoteImp()Z

    move-result v0

    return v0
.end method

.method public getRoomLocationID(Ljava/lang/String;)Z
    .locals 0

    .line 982
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/PTApp;->getRoomLocationIDImpl(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method getWebDomain()Ljava/lang/String;
    .locals 1

    .line 1016
    invoke-direct {p0}, Lus/zoom/zrcsdk/PTApp;->getWebDomainImpl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZRCDisplayVersion()Ljava/lang/String;
    .locals 1

    .line 221
    invoke-direct {p0}, Lus/zoom/zrcsdk/PTApp;->getDisplayVersionImpl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZRCVersion()Ljava/lang/String;
    .locals 1

    .line 214
    invoke-direct {p0}, Lus/zoom/zrcsdk/PTApp;->getVersionImpl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZRVersion()Ljava/lang/String;
    .locals 1

    .line 228
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->getZRVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goToCameraPreset(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 842
    invoke-direct {p0, p1, p2, p3, p4}, Lus/zoom/zrcsdk/PTApp;->goToCameraPresetImpl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public handleGoogleOAuthURLAction(Ljava/lang/String;)Z
    .locals 0

    .line 1088
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/PTApp;->handleGoogleOAuthURLActionImpl(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public handleWebRequestOnIdle()V
    .locals 0

    .line 646
    invoke-direct {p0}, Lus/zoom/zrcsdk/PTApp;->handleWebRequestOnIdleImpl()V

    return-void
.end method

.method public hangupSipCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)I
    .locals 0

    .line 701
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/PTApp;->hangupSipCallImp(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)I

    move-result p1

    return p1
.end method

.method public holdAndAcceptSipCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)I
    .locals 0

    .line 721
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/PTApp;->holdAndAcceptSipCallImpl(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)I

    move-result p1

    return p1
.end method

.method public holdSipCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)I
    .locals 0

    .line 729
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/PTApp;->holdSipCallImpl(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)I

    move-result p1

    return p1
.end method

.method public identifyNetworkDevice(Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1069
    invoke-virtual/range {v0 .. v5}, Lus/zoom/zrcsdk/PTApp;->requestVirtualAudioDeviceImpl(Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method initNative()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lus/zoom/zrcsdk/PTApp;->initImpl()V

    return-void
.end method

.method public inviteLegacyRoomSystems(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;)I"
        }
    .end annotation

    .line 410
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 411
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCContact;

    .line 412
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCContact;->getScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 414
    :cond_0
    invoke-direct {p0, v0}, Lus/zoom/zrcsdk/PTApp;->inviteLegacyRoomSystemsImp(Ljava/util/List;)I

    move-result p1

    return p1
.end method

.method public isEncryptedConnectionEnabled()Z
    .locals 1

    .line 1044
    invoke-direct {p0}, Lus/zoom/zrcsdk/PTApp;->isEncryptedConnectionEnabledImpl()Z

    move-result v0

    return v0
.end method

.method public joinMeeting(Ljava/lang/String;)I
    .locals 4

    const-string v0, "PTApp"

    const-string v1, "joinMeeting meetingNumber=%s"

    const/4 v2, 0x1

    .line 386
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/PTApp;->joinMeetingImpl(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public joinSipCallToMeeting(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)I
    .locals 0

    .line 749
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/PTApp;->joinSipCallToMeetingImpl(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)I

    move-result p1

    return p1
.end method

.method public joinTestMeeting()I
    .locals 1

    .line 927
    invoke-direct {p0}, Lus/zoom/zrcsdk/PTApp;->joinTestMeetingImpl()I

    move-result v0

    return v0
.end method

.method public listCalendarEventsWithRoom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 994
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrcsdk/PTApp;->listCalendarEventsWithRoomImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public listMeeting()I
    .locals 1

    .line 642
    invoke-direct {p0}, Lus/zoom/zrcsdk/PTApp;->listMeetingImpl()I

    move-result v0

    return v0
.end method

.method public loginRoom(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 284
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    invoke-virtual {v0, p2}, Lus/zoom/zrcsdk/ZRCSdkContext;->setRoomEmail(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const-string p2, ""

    .line 285
    :goto_1
    invoke-direct {p0, p1, p2}, Lus/zoom/zrcsdk/PTApp;->loginWithZoomRefreshTokenImp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public loginWithGoogle(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 935
    invoke-direct {p0, p1, p2}, Lus/zoom/zrcsdk/PTApp;->loginWithGoogleImpl(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public loginWithGoogleAccessToken(Ljava/lang/String;)Z
    .locals 2

    .line 262
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->setRoomEmail(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    const-string v0, ""

    .line 263
    invoke-direct {p0, p1, v0}, Lus/zoom/zrcsdk/PTApp;->loginWithGoogleAccessTokenImp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public loginWithGoogleAccessToken(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 273
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    invoke-virtual {v0, p2}, Lus/zoom/zrcsdk/ZRCSdkContext;->setRoomEmail(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const-string p2, ""

    .line 274
    :goto_1
    invoke-direct {p0, p1, p2}, Lus/zoom/zrcsdk/PTApp;->loginWithGoogleAccessTokenImp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public loginWithLicenseKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 923
    invoke-direct/range {p0 .. p5}, Lus/zoom/zrcsdk/PTApp;->loginWithLicenseKeyImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public loginWithWorkEmail(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/String;)Z
    .locals 3

    .line 246
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->cleanLoginUserAndRoomInfo(Z)V

    .line 247
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/ZRCSdkContext;->setUserEmail(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 250
    new-array v1, v0, [C

    const/4 v2, 0x0

    .line 251
    invoke-virtual {p2, v2, v0, v1, v2}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 253
    invoke-direct {p0, p1, v1, p3}, Lus/zoom/zrcsdk/PTApp;->loginZoomImpl(Ljava/lang/String;[CLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public loginWithZoomToken(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 939
    invoke-direct {p0, p1, p2}, Lus/zoom/zrcsdk/PTApp;->loginWithZoomTokenImpl(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public loginZRWithLocalToken()Z
    .locals 2

    .line 292
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->getZoomToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 293
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 296
    :cond_0
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->getRoomEmail()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 297
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v0, ""

    .line 300
    :cond_2
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->getZoomToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lus/zoom/zrcsdk/PTApp;->loginWithZoomRefreshTokenImp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public logout()I
    .locals 1

    const/4 v0, 0x0

    .line 543
    invoke-virtual {p0, v0}, Lus/zoom/zrcsdk/PTApp;->logout(Z)I

    move-result v0

    return v0
.end method

.method public logout(Z)I
    .locals 2

    .line 559
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/ZRCSdkContext;->cleanLoginUserAndRoomInfo(Z)V

    .line 560
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->cleanLoginType()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 562
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->setWorkMode(I)V

    .line 564
    :cond_0
    invoke-virtual {p0, p1}, Lus/zoom/zrcsdk/PTApp;->logoutWebService(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public logoutWebService(Z)Z
    .locals 0

    .line 1012
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/PTApp;->logoutWebServiceImpl(Z)Z

    move-result p1

    return p1
.end method

.method public meetWithIMUsers(Ljava/util/List;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;I)I"
        }
    .end annotation

    .line 397
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 398
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCContact;

    .line 399
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCContact;->getJid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 401
    :cond_0
    invoke-direct {p0, v0, p2}, Lus/zoom/zrcsdk/PTApp;->meetWithIMUsersImp(Ljava/util/List;I)I

    move-result p1

    return p1
.end method

.method public mergeSipCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)I
    .locals 0

    .line 737
    invoke-direct {p0, p1, p2}, Lus/zoom/zrcsdk/PTApp;->mergeSipCallImpl(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)I

    move-result p1

    return p1
.end method

.method public nameCameraPreset(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 856
    invoke-direct/range {p0 .. p5}, Lus/zoom/zrcsdk/PTApp;->nameCameraPresetImpl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public notifySwitchToTab(IZ)I
    .locals 0

    .line 774
    invoke-direct {p0, p1, p2}, Lus/zoom/zrcsdk/PTApp;->notifySwitchToTabImp(IZ)I

    move-result p1

    return p1
.end method

.method public onSipDialOut(Lus/zoom/zrcsdk/model/ZRCCallerID;Ljava/lang/String;)I
    .locals 0

    .line 710
    invoke-direct {p0, p1, p2}, Lus/zoom/zrcsdk/PTApp;->onSipDialOutImp(Lus/zoom/zrcsdk/model/ZRCCallerID;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public optimizeScreenResolution(I)I
    .locals 0

    .line 943
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/PTApp;->optimizeScreenResolutionImp(I)I

    move-result p1

    return p1
.end method

.method public queryWithParingCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 894
    invoke-direct/range {p0 .. p5}, Lus/zoom/zrcsdk/PTApp;->queryWithParingCodeImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public native refreshCalendarAccessToken()Z
.end method

.method public native refreshXmppToken()Z
.end method

.method public removeCalendarEventListener(Lus/zoom/zrcsdk/ICalendarEventListener;)V
    .locals 1

    .line 175
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/CallBackUI;->removeCalendarEventListener(Lus/zoom/zrcsdk/ICalendarEventListener;)V

    return-void
.end method

.method public removeCameraControlListener(Lus/zoom/zrcsdk/CameraControlListener;)V
    .locals 1

    .line 135
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/CallBackUI;->removeCameraControlListener(Lus/zoom/zrcsdk/CameraControlListener;)V

    return-void
.end method

.method public removeCertItemVerifyFailedListener(Lus/zoom/zrcsdk/ICertItemVerifyFailedListener;)V
    .locals 1

    .line 159
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/CallBackUI;->removeCertItemVerifyFailedListener(Lus/zoom/zrcsdk/ICertItemVerifyFailedListener;)V

    return-void
.end method

.method public removeCreateRoomListener(Lus/zoom/zrcsdk/ICreateRoomListener;)V
    .locals 1

    .line 143
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/CallBackUI;->removeCreateRoomListener(Lus/zoom/zrcsdk/ICreateRoomListener;)V

    return-void
.end method

.method public removeFileDownloadListener(Lus/zoom/zrcsdk/IFileDownloadListener;)V
    .locals 1

    .line 119
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/CallBackUI;->removeFileDownloadListener(Lus/zoom/zrcsdk/IFileDownloadListener;)V

    return-void
.end method

.method public removeGoogleListener(Lus/zoom/zrcsdk/IGoogleEventListener;)V
    .locals 1

    .line 70
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/CallBackUI;->removeGoogleListener(Lus/zoom/zrcsdk/IGoogleEventListener;)V

    return-void
.end method

.method public removeLoginListener(Lus/zoom/zrcsdk/ILoginListener;)V
    .locals 1

    .line 62
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/CallBackUI;->removeLoginListener(Lus/zoom/zrcsdk/ILoginListener;)V

    return-void
.end method

.method public removeMeetingShareEventListener(Lus/zoom/zrcsdk/IMeetingShareEventListener;)V
    .locals 1

    .line 183
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/CallBackUI;->removeMeetingShareEventListener(Lus/zoom/zrcsdk/IMeetingShareEventListener;)V

    return-void
.end method

.method public removeMicrophoneTestRecordingListener(Lus/zoom/zrcsdk/IMicrophoneTestRecordingListener;)V
    .locals 1

    .line 167
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/CallBackUI;->removeMicrophoneTestRecordingListener(Lus/zoom/zrcsdk/IMicrophoneTestRecordingListener;)V

    return-void
.end method

.method public removePtEventListener(Lus/zoom/zrcsdk/IPtEventListener;)V
    .locals 1

    .line 87
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/CallBackUI;->removePtEventListener(Lus/zoom/zrcsdk/IPtEventListener;)V

    return-void
.end method

.method public removePushNotificationEventListener(Lus/zoom/zrcsdk/IPushNotificationEventListener;)V
    .locals 1

    .line 191
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/CallBackUI;->removePushNotificationEventListener(Lus/zoom/zrcsdk/IPushNotificationEventListener;)V

    return-void
.end method

.method public removeReserveOtherRoomEventsListener(Lus/zoom/zrcsdk/IReserveOtherRoomEventsListener;)V
    .locals 1

    .line 207
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/CallBackUI;->removeReserveOtherRoomEventsListener(Lus/zoom/zrcsdk/IReserveOtherRoomEventsListener;)V

    return-void
.end method

.method public removeRoomLocationListener(Lus/zoom/zrcsdk/IRoomLocationListener;)V
    .locals 1

    .line 199
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/CallBackUI;->removeRoomLocationListener(Lus/zoom/zrcsdk/IRoomLocationListener;)V

    return-void
.end method

.method public removeSendClientLogListener(Lus/zoom/zrcsdk/ISendClientLogListener;)V
    .locals 1

    .line 151
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/CallBackUI;->removeSendClientLogListener(Lus/zoom/zrcsdk/ISendClientLogListener;)V

    return-void
.end method

.method public removeSipServiceListener(Lus/zoom/zrcsdk/ISipServiceListener;)V
    .locals 1

    .line 54
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/CallBackUI;->removeSipServiceListener(Lus/zoom/zrcsdk/ISipServiceListener;)V

    return-void
.end method

.method public removeUltrasoundWhiteListListener(Lus/zoom/zrcsdk/IUltrasoundWhiteListListener;)V
    .locals 1

    .line 127
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/CallBackUI;->removeUltrasoundWhiteListListener(Lus/zoom/zrcsdk/IUltrasoundWhiteListListener;)V

    return-void
.end method

.method public removeWebEventListener(Lus/zoom/zrcsdk/IWebEventListener;)V
    .locals 1

    .line 103
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/CallBackUI;->removeWebEventListener(Lus/zoom/zrcsdk/IWebEventListener;)V

    return-void
.end method

.method public removeWebPullCallBackEventListener(Lus/zoom/zrcsdk/IWebPullCallBackListener;)V
    .locals 1

    .line 111
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/CallBackUI;->removeWebPullCallBackEventListener(Lus/zoom/zrcsdk/IWebPullCallBackListener;)V

    return-void
.end method

.method public removeWebinarRoleChangedListener(Lus/zoom/zrcsdk/IWebinarRoleChangedListener;)V
    .locals 1

    .line 78
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/CallBackUI;->removeWebinarRoleChangedListener(Lus/zoom/zrcsdk/IWebinarRoleChangedListener;)V

    return-void
.end method

.method public removeZRConnectionEventListener(Lus/zoom/zrcsdk/IZRConnectionEventListener;)V
    .locals 1

    .line 95
    invoke-static {}, Lus/zoom/zrcsdk/CallBackUI;->getInstance()Lus/zoom/zrcsdk/CallBackUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/CallBackUI;->removeZRConnectionEventListener(Lus/zoom/zrcsdk/IZRConnectionEventListener;)V

    return-void
.end method

.method public reportControllerBatteryLevel(FZ)I
    .locals 1

    .line 665
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->getWorkMode()I

    move-result v0

    .line 666
    invoke-direct {p0, v0, p1, p2}, Lus/zoom/zrcsdk/PTApp;->reportControllerBatteryLevelImp(IFZ)I

    move-result p1

    return p1
.end method

.method public reportControllerChargingState(Z)I
    .locals 1

    .line 657
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->getWorkMode()I

    move-result v0

    .line 658
    invoke-direct {p0, v0, p1}, Lus/zoom/zrcsdk/PTApp;->reportControllerChargingStateImp(IZ)I

    move-result p1

    return p1
.end method

.method public requestAvailableNetworkDevice(Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1076
    invoke-virtual/range {v0 .. v5}, Lus/zoom/zrcsdk/PTApp;->requestVirtualAudioDeviceImpl(Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public requestContactsDynamicallyFrom(IIZLjava/lang/String;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    const-string v2, "subscribe contacts: startIndex:%d"

    .line 880
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 881
    :cond_0
    invoke-static {p4}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "search contacts: filter=%s"

    .line 882
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p4, v1, v0

    invoke-static {v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v2, "request contacts: startIndex:%d"

    .line 884
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 v9, 0x0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    .line 886
    invoke-direct/range {v4 .. v9}, Lus/zoom/zrcsdk/PTApp;->requestContactsDynamicallyFromImp(IIZLjava/lang/String;Z)I

    return-void
.end method

.method public requestLogoutZR(I)Z
    .locals 0

    .line 1108
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/PTApp;->requestLogoutZRImpl(I)Z

    move-result p1

    return p1
.end method

.method public requestRestartZR()Z
    .locals 1

    .line 1100
    invoke-direct {p0}, Lus/zoom/zrcsdk/PTApp;->requestRestartZRImpl()Z

    move-result v0

    return v0
.end method

.method public requestShutdownZR()Z
    .locals 1

    .line 1104
    invoke-direct {p0}, Lus/zoom/zrcsdk/PTApp;->requestShutdownZRImpl()Z

    move-result v0

    return v0
.end method

.method public requestSipPhoneUserDynamicallyFrom(IIZLjava/lang/String;)V
    .locals 10

    .line 870
    invoke-static {p4}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string v0, "search SIP contacts: filter=%s"

    .line 871
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p4, v2, v1

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "request SIP contacts: startIndex:%d"

    .line 873
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 v9, 0x1

    move-object v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    .line 875
    invoke-direct/range {v4 .. v9}, Lus/zoom/zrcsdk/PTApp;->requestContactsDynamicallyFromImp(IIZLjava/lang/String;Z)I

    return-void
.end method

.method public native requestVirtualAudioDeviceImpl(Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public requestZMDeviceOperation(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1096
    invoke-direct/range {p0 .. p5}, Lus/zoom/zrcsdk/PTApp;->requestZMDeviceOperationImpl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public requestZRCSDeviceOperation(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1084
    invoke-direct/range {p0 .. p5}, Lus/zoom/zrcsdk/PTApp;->requestZRCSDeviceOperationImpl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public requestZoomPresenceCalendar(Ljava/lang/String;)Z
    .locals 0

    .line 898
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/PTApp;->requestZoomPresenceCalendarImpl(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public requestZoomPresenceLocation()Z
    .locals 1

    .line 902
    invoke-direct {p0}, Lus/zoom/zrcsdk/PTApp;->requestZoomPresenceLocationImpl()Z

    move-result v0

    return v0
.end method

.method public restartOperatingSystem(Z)I
    .locals 0

    .line 956
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/PTApp;->restartOperatingSystemImp(Z)I

    move-result p1

    return p1
.end method

.method public scheduleCalendarEvent(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z
    .locals 0

    .line 961
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/PTApp;->scheduleCalendarEventImpl(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public scheduleCalendarEventWithRoom(Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;Z)Z
    .locals 0

    .line 1002
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrcsdk/PTApp;->scheduleCalendarEventWithRoomImpl(Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;Z)Z

    move-result p1

    return p1
.end method

.method public searchBuddyOnWeb(Ljava/lang/String;)Z
    .locals 0

    .line 808
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/PTApp;->searchBuddyOnWebImp(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public selectCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 435
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrcsdk/PTApp;->selectCameraImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public selectComCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 442
    invoke-direct {p0, p1, p2, p3, p4}, Lus/zoom/zrcsdk/PTApp;->selectComCameraImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public selectMicrophone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 421
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrcsdk/PTApp;->selectMicrophoneImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public selectNetworkDevice(Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1055
    invoke-virtual/range {v0 .. v5}, Lus/zoom/zrcsdk/PTApp;->requestVirtualAudioDeviceImpl(Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public selectRoomProfile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "selectRoomProfile profile Id %s, name %s"

    const/4 v1, 0x2

    .line 446
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    invoke-direct {p0, p1, p2}, Lus/zoom/zrcsdk/PTApp;->selectRoomProfileImpl(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public selectSpeaker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 428
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrcsdk/PTApp;->selectSpeakerImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sendClientLogFiles(Ljava/lang/String;)Z
    .locals 3

    .line 596
    sget-object v0, Lus/zoom/zrcsdk/PTApp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendClientLogFiles filename="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 597
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/PTApp;->sendClientLogFilesImpl(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public sendEmailTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 572
    invoke-direct/range {p0 .. p5}, Lus/zoom/zrcsdk/PTApp;->sendEmailToImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public sendFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 673
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrcsdk/PTApp;->sendFeedbackImp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p7

    .line 580
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 581
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    .line 583
    invoke-virtual/range {p7 .. p7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 584
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 585
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 589
    invoke-direct/range {v0 .. v8}, Lus/zoom/zrcsdk/PTApp;->sendReportImp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public sendSipCallDTMF(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Ljava/lang/String;)I
    .locals 0

    .line 717
    invoke-direct {p0, p1, p2}, Lus/zoom/zrcsdk/PTApp;->sendSipCallDTMFImp(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sendUsageTrackWithLogType(IIILjava/lang/String;)I
    .locals 0

    .line 890
    invoke-direct {p0, p1, p2, p3, p4}, Lus/zoom/zrcsdk/PTApp;->sendUsageTrackWithLogTypeImp(IIILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sendZoomRoomsProblemReportTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 650
    invoke-direct {p0, p1, p2, p3, p4}, Lus/zoom/zrcsdk/PTApp;->sendZoomRoomsProblemReportToImp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setAdvancedNoiseSuppressionMode(I)Z
    .locals 0

    .line 1092
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/PTApp;->setAdvancedNoiseSuppressionModeImpl(I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setCameraIntelligentZoomOn(Z)I
    .locals 0

    .line 866
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/PTApp;->setCameraIntelligentZoomOnImpl(Z)I

    move-result p1

    return p1
.end method

.method public setCameraPreset(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 829
    invoke-direct {p0, p1, p2, p3, p4}, Lus/zoom/zrcsdk/PTApp;->setCameraPresetImpl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setCameraPresetDefaultPosition(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 816
    invoke-direct/range {p0 .. p5}, Lus/zoom/zrcsdk/PTApp;->setCameraPresetDefaultPositionImpl(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public native setControllerDeviceCapability(Lus/zoom/zrcsdk/model/ZRCControllerDeviceCapability;)Z
.end method

.method public setDeviceDisplayName(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 0

    .line 475
    invoke-direct {p0, p1, p2, p3, p4}, Lus/zoom/zrcsdk/PTApp;->setDeviceDisplayNameImpl(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setHighlyReverberantRoomOn(Z)I
    .locals 0

    .line 497
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/PTApp;->setHighlyReverberantRoomOnImpl(Z)I

    move-result p1

    return p1
.end method

.method public setLanguageID(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1112
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/PTApp;->setLanguageIDImpl(Ljava/lang/String;)V

    return-void
.end method

.method public setMicrophoneEnableSuppressNoise(Z)I
    .locals 0

    .line 1036
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/PTApp;->setMicrophoneEnableSuppressNoiseImpl(Z)I

    move-result p1

    return p1
.end method

.method public setMicrophonePickupRange(I)I
    .locals 0

    .line 1040
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/PTApp;->setMicrophonePickupRangeImpl(I)I

    move-result p1

    return p1
.end method

.method public setMicrophoneVolume(FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 456
    invoke-direct {p0, p1, p2, p3, p4}, Lus/zoom/zrcsdk/PTApp;->setMicrophoneVolumeImpl(FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setMyVideoHidden(Z)I
    .locals 0

    .line 504
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/PTApp;->setMyVideoHiddenImpl(Z)I

    move-result p1

    return p1
.end method

.method public setSpeakerVolume(FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 0

    .line 466
    invoke-direct/range {p0 .. p5}, Lus/zoom/zrcsdk/PTApp;->setSpeakerVolumeImpl(FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public showUpcomingMeetingAlert(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)I
    .locals 0

    .line 782
    invoke-direct/range {p0 .. p5}, Lus/zoom/zrcsdk/PTApp;->showUpcomingMeetingAlertImpl(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)I

    move-result p1

    return p1
.end method

.method public startAudioCheckup()I
    .locals 1

    const/4 v0, 0x0

    .line 948
    invoke-direct {p0, v0}, Lus/zoom/zrcsdk/PTApp;->audioCheckupImp(I)I

    move-result v0

    return v0
.end method

.method public startInstantMeeting(I)I
    .locals 1

    const/4 v0, 0x0

    .line 334
    invoke-direct {p0, p1, v0}, Lus/zoom/zrcsdk/PTApp;->startPMIMeetingImpl(ILus/zoom/zrcsdk/model/ZRCMeetingListItem;)I

    move-result p1

    return p1
.end method

.method public startInstantMeeting(ILus/zoom/zrcsdk/model/ZRCMeetingListItem;)I
    .locals 5

    .line 344
    sget-object v0, Lus/zoom/zrcsdk/PTApp;->TAG:Ljava/lang/String;

    const-string v1, "startInstantMeeting duration=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    invoke-direct {p0, p1, p2}, Lus/zoom/zrcsdk/PTApp;->startPMIMeetingImpl(ILus/zoom/zrcsdk/model/ZRCMeetingListItem;)I

    move-result p1

    return p1
.end method

.method public startMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)I
    .locals 5

    const-string v0, "PTApp"

    const-string v1, "startMeeting meetingNumber=%s"

    const/4 v2, 0x1

    .line 376
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/PTApp;->startMeetingImpl(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)I

    move-result p1

    return p1
.end method

.method public startPSTNCall(ILus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z
    .locals 6

    const-string v0, "PTApp"

    const-string v1, "startPSTNCall duration=%d, meeting = %s"

    const/4 v2, 0x2

    .line 354
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    if-nez p2, :cond_0

    const-string v3, "empty"

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    invoke-direct {p0, p1, p2}, Lus/zoom/zrcsdk/PTApp;->startPSTNCallImpl(ILus/zoom/zrcsdk/model/ZRCMeetingListItem;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v4, 0x1

    :cond_1
    return v4
.end method

.method public startSharingMeeting(ZILjava/lang/String;I)I
    .locals 0

    .line 367
    invoke-direct {p0, p1, p2, p3, p4}, Lus/zoom/zrcsdk/PTApp;->launchSharingMeetingImpl(ZILjava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public startTestingMicrophone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 511
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrcsdk/PTApp;->startTestingMicrophoneImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public startTestingSpeaker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 525
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrcsdk/PTApp;->startTestingSpeakerImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public stopTestingMicrophone()I
    .locals 1

    .line 518
    invoke-direct {p0}, Lus/zoom/zrcsdk/PTApp;->stopTestingMicrophoneImpl()I

    move-result v0

    return v0
.end method

.method public stopTestingSpeaker()I
    .locals 1

    .line 536
    invoke-direct {p0}, Lus/zoom/zrcsdk/PTApp;->stopTestingSpeakerImpl()I

    move-result v0

    return v0
.end method

.method public testMicrophoneStartRecording(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1028
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrcsdk/PTApp;->testMicrophoneStartRecordingImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public testMicrophoneStopRecording(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1032
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrcsdk/PTApp;->testMicrophoneStopRecordingImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public transferSipCall(Lus/zoom/zrcsdk/model/ZRCTransferType;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Ljava/lang/String;)I
    .locals 0

    .line 741
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCTransferType;->getNativeValue()I

    move-result p1

    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrcsdk/PTApp;->transferSipCallImpl(ILus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public turnScreensOn(Z)I
    .locals 0

    .line 770
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/PTApp;->turnScreensOnImpl(Z)I

    move-result p1

    return p1
.end method

.method public unSelectNetworkDevice(Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1062
    invoke-virtual/range {v0 .. v5}, Lus/zoom/zrcsdk/PTApp;->requestVirtualAudioDeviceImpl(Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public unholdSipCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)I
    .locals 0

    .line 733
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/PTApp;->unholdSipCallImpl(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)I

    move-result p1

    return p1
.end method

.method public updateDeviceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 0

    .line 756
    invoke-direct/range {p0 .. p5}, Lus/zoom/zrcsdk/PTApp;->updateDeviceInfoImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public updateMySipPhoneAudio(Z)Z
    .locals 0

    .line 694
    invoke-direct {p0, p1}, Lus/zoom/zrcsdk/PTApp;->updateMySipPhoneAudioImp(Z)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public updateRoomNameOrLockCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 910
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrcsdk/PTApp;->updateRoomNameOrLockCodeImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public upgradeSipCallToMeeting(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Z)I
    .locals 0

    .line 745
    invoke-direct {p0, p1, p2}, Lus/zoom/zrcsdk/PTApp;->upgradeSipCallToMeetingImpl(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Z)I

    move-result p1

    return p1
.end method

.method public userInputUsernamePasswordForProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 605
    invoke-direct/range {p0 .. p5}, Lus/zoom/zrcsdk/PTApp;->userInputUsernamePasswordForProxyImpl(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public verifyConnection(ILjava/lang/String;Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;Lus/zoom/zrcsdk/model/ZRCControllerDeviceInfo;Lus/zoom/zrcsdk/model/ZRCControllerDeviceCapability;)I
    .locals 10

    .line 316
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->getUserEmail()Ljava/lang/String;

    move-result-object v5

    .line 317
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->getLogin_type()I

    move-result v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    .line 316
    invoke-direct/range {v1 .. v9}, Lus/zoom/zrcsdk/PTApp;->connectToZRImpl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILus/zoom/zrcsdk/model/ZRCControllerFeatureList;Lus/zoom/zrcsdk/model/ZRCControllerDeviceInfo;Lus/zoom/zrcsdk/model/ZRCControllerDeviceCapability;)I

    move-result v0

    return v0
.end method
