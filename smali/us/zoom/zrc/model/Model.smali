.class public Lus/zoom/zrc/model/Model;
.super Landroidx/databinding/BaseObservable;
.source "Model.java"

# interfaces
.implements Lus/zoom/zrcsdk/IZRConnectionEventListener;
.implements Lus/zoom/zrcsdk/IGoogleEventListener;
.implements Lus/zoom/zrcsdk/ICreateRoomListener;
.implements Lus/zoom/zrcsdk/ICalendarEventListener;
.implements Lus/zoom/zrcsdk/IMeetingShareEventListener;
.implements Lus/zoom/zrcsdk/ILoginListener;
.implements Lus/zoom/zrcsdk/IPushNotificationEventListener;


# static fields
.field private static final MAX_CONTINUOUS_REFRESH_XMPP_TOKEN_TIMES:I = 0x3

.field private static final MAX_REQUESTING_PARTICIPANTS:I = 0x32

.field private static final TAG:Ljava/lang/String; = "Model"

.field private static instance:Lus/zoom/zrc/model/Model;


# instance fields
.field private accountID:Ljava/lang/String;

.field private accountLocationTree:Lus/zoom/zrcsdk/model/ZRCLocationTree;

.field private airPlayBlackMagicStatus:Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;

.field private allRoomListItemDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;",
            ">;"
        }
    .end annotation
.end field

.field private allRoomsFetchedTimeMillis:J

.field private amICoHost:Z

.field private amIGuest:Z

.field private amIHost:Z

.field private appState:I

.field private audioCheckupInfo:Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;

.field private audioStatus:Lus/zoom/zrcsdk/model/ZRCAudioStatus;

.field private cachedLocationInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCLocationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private cachedRoomMeetingLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;",
            ">;"
        }
    .end annotation
.end field

.field private calendarInfo:Lus/zoom/zrcsdk/model/ZRCCalendarInfo;

.field private calendarRefreshInterval:I

.field private calendarRefreshTokenExpired:Z

.field private calendarType:I

.field private callHistoryDisabled:Z

.field private callOutCountryCode:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/CountryCode;",
            ">;"
        }
    .end annotation
.end field

.field private callOutNumberInCalling:Ljava/lang/String;

.field private callOutUserName:Ljava/lang/String;

.field private cameraSharingStatus:Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

.field private canAttendeesUnmuteThemselves:Ljava/lang/Boolean;

.field private canRaiseHandForAttendee:Z

.field private checkInOption:Lus/zoom/zrc/model/ZRCCheckInOption;

.field private closedCaptionInfo:Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;

.field private cloudPbxContactList:Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

.field private cloudRecordingNotificationEmail:Ljava/lang/String;

.field private connectionVerified:Z

.field private continuousRefreshXmppTokenTimes:I

.field private controlSystemDevices:Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;

.field private crcCalloutOnlyEnabled:Z

.field private currentSelectedMicrophoneMuted:Z

.field private customHDMILabel:Ljava/lang/String;

.field private defaultCallInCountry:Ljava/lang/String;

.field private deviceCapability:Lus/zoom/zrcsdk/model/ZRCControllerDeviceCapability;

.field private disableNextMeetingAlert:Z

.field private disableNextMeetingAlertInMeeting:Z

.field private disableNextMeetingAlertOnController:Z

.field private disableNextMeetingAlertOnTV:Z

.field private displayTopBanner:Ljava/lang/Boolean;

.field private featureList:Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

.field private forcePrivateMeeting:Z

.field private genericSettings:Lus/zoom/zrcsdk/model/ZRCGenericSettings;

.field private googleAuthAccessToken:Ljava/lang/String;

.field private h323Enabled:Z

.field private hideContactList:Z

.field private hideHostInfoForPrivateMeeting:Z

.field private iOSSharingDisabled:Z

.field private isAutoStartScheduleMeeting:Z

.field private isInSilentMode:Z

.field private isLocalView:Z

.field private isPublicRoomEnabled:Z

.field private isRefreshingXmppToken:Z

.field private isShownAllVirtualAudioDevices:Z

.field private isSpeakerTestingStopped:Ljava/lang/Boolean;

.field private isStandaloneDigitalSignage:Z

.field private isStandaloneZRP:Z

.field private kickedOutBy:Ljava/lang/Integer;

.field private lastMeetingNumber:Ljava/lang/String;

.field private licenseKey:Ljava/lang/String;

.field private listMeetingResult:I

.field private mConfApp:Lus/zoom/zrcsdk/ConfApp;

.field private mPTApp:Lus/zoom/zrcsdk/PTApp;

.field private meetingAudioTroubleShootingStatus:Lus/zoom/zrcsdk/model/ZRCMeetingAudioTroubleShootingStatus;

.field private meetingChatMessageManager:Lus/zoom/zrc/model/MeetingChatMessageManager;

.field private meetingInfo:Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

.field private meetingList:Lus/zoom/zrc/model/MeetingList;

.field private meetingStatus:I

.field private meetingType:I

.field private microphoneTestRecordingStatus:I

.field private operationTimeStatus:Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;

.field private pairingCode:Ljava/lang/String;

.field private participantList:Lus/zoom/zrc/model/ZRCParticipantList;

.field private password:Ljava/lang/StringBuffer;

.field private postMeetingFeedbackEnabled:Z

.field private pstnCallOutStatus:I

.field private releaseNotesRefreshInterval:J

.field private reserveOtherRoomInLocation:I

.field private restartHandler:Landroid/os/Handler;

.field private roomInfo:Lus/zoom/zrcsdk/model/ZRCRoomInfo;

.field private roomParentLocationID:Ljava/lang/String;

.field private roomParentLocationInfo:Lus/zoom/zrcsdk/model/ZRCLocationInfo;

.field private roomProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private roomScreenInfo:Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;

.field private roomSystemSessionStatus:Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

.field private screenResolutionStatus:I

.field private selectedVirtualBackground:Ljava/lang/String;

.field private selectedWhiteboardCamera:Lus/zoom/zrcsdk/model/ZMDeviceItem;

.field private settingsDeviceInfo:Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

.field private settingsLocked:Z

.field private sharingStatus:Lus/zoom/zrcsdk/model/ZRCSharingStatus;

.field private showAudioParticipant:Z

.field private sipCallInfoList:Lus/zoom/zrc/model/SipCallInfoList;

.field private sipService:Lus/zoom/zrcsdk/model/ZRCSipService;

.field private speakerVolume:F

.field private speakerVolumeControlLocked:Z

.field private spotlightStatus:Lus/zoom/zrcsdk/model/ZRCSpotlightStatus;

.field private standaloneZRPResources:[Ljava/lang/String;

.field private thirdPartyMeetingEnabled:Z

.field private totalOfParticipants:I

.field private ultrasoundPlayerCandidateDeviceId:Ljava/lang/String;

.field private userID:Ljava/lang/String;

.field private userProfile:Lus/zoom/zrc/model/ZRCUserProfile;

.field private videoLayoutStatus:Lus/zoom/zrcsdk/model/VideoLayoutStatus;

.field private videoStatus:Lus/zoom/zrcsdk/model/ZRCVideoStatus;

.field private virtualAudioDeviceList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private virtualBackgrounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCVirtualBackground;",
            ">;"
        }
    .end annotation
.end field

.field private whiteboardCameraInfo:Lus/zoom/zrcsdk/model/ZMDeviceInfo;

.field private whiteboardCameraList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZMDeviceItem;",
            ">;"
        }
    .end annotation
.end field

.field private workEmail:Ljava/lang/String;

.field private zoomRoomCapability:Lus/zoom/zrcsdk/model/ZoomRoomCapability;

.field private zoomRoomJid:Ljava/lang/String;

.field private zoomRoomPassCode:Ljava/lang/String;

.field private zoomRoomVersion:Ljava/lang/String;

.field private zrcVersion:Ljava/lang/String;

.field private zrpBackgroundImgUrl:Ljava/lang/String;

.field private zrpReserveDisabled:Z

.field private zrwSharingStatus:Lus/zoom/zrcsdk/model/ZRWSharingStatus;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1777
    invoke-direct {p0}, Landroidx/databinding/BaseObservable;-><init>()V

    .line 147
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lus/zoom/zrc/model/Model;->restartHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    .line 152
    iput v0, p0, Lus/zoom/zrc/model/Model;->meetingType:I

    .line 172
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/Model;->cloudPbxContactList:Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    .line 180
    new-instance v0, Lus/zoom/zrc/model/MeetingChatMessageManager;

    invoke-direct {v0}, Lus/zoom/zrc/model/MeetingChatMessageManager;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/Model;->meetingChatMessageManager:Lus/zoom/zrc/model/MeetingChatMessageManager;

    .line 182
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCControllerDeviceCapability;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/ZRCControllerDeviceCapability;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/Model;->deviceCapability:Lus/zoom/zrcsdk/model/ZRCControllerDeviceCapability;

    .line 195
    new-instance v0, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/Model;->roomSystemSessionStatus:Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    const/4 v0, 0x0

    .line 230
    iput v0, p0, Lus/zoom/zrc/model/Model;->calendarType:I

    .line 1778
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    .line 1779
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/model/Model;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/model/Model;I)V
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->closeNotificationServerConnection(I)V

    return-void
.end method

.method private cleanupMeetingData()V
    .locals 2

    const/4 v0, 0x0

    .line 4563
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setMeetingStatus(I)V

    .line 4564
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->cleanMeetingData()V

    const/4 v1, 0x0

    .line 4565
    invoke-virtual {p0, v1}, Lus/zoom/zrc/model/Model;->setMeetingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V

    .line 4566
    invoke-virtual {p0, v1}, Lus/zoom/zrc/model/Model;->setAudioStatus(Lus/zoom/zrcsdk/model/ZRCAudioStatus;)V

    .line 4567
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setInSilentMode(Z)V

    .line 4568
    invoke-direct {p0, v1}, Lus/zoom/zrc/model/Model;->setClosedCaptionInfo(Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;)V

    .line 4569
    invoke-direct {p0, v1}, Lus/zoom/zrc/model/Model;->setDisplayTopBanner(Ljava/lang/Boolean;)V

    .line 4570
    invoke-direct {p0, v1}, Lus/zoom/zrc/model/Model;->setSharingStatus(Lus/zoom/zrcsdk/model/ZRCSharingStatus;)V

    .line 4571
    invoke-direct {p0, v1}, Lus/zoom/zrc/model/Model;->setCallOutUserName(Ljava/lang/String;)V

    .line 4572
    invoke-direct {p0, v1}, Lus/zoom/zrc/model/Model;->setCallOutNumberInCalling(Ljava/lang/String;)V

    .line 4573
    invoke-direct {p0, v1}, Lus/zoom/zrc/model/Model;->setParticipantList(Lus/zoom/zrc/model/ZRCParticipantList;)V

    .line 4574
    invoke-virtual {p0, v1}, Lus/zoom/zrc/model/Model;->setSpotlightStatus(Lus/zoom/zrcsdk/model/ZRCSpotlightStatus;)V

    .line 4575
    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/Model;->setAmIHost(Z)V

    .line 4576
    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/Model;->setAmICoHost(Z)V

    .line 4577
    invoke-virtual {p0, v1}, Lus/zoom/zrc/model/Model;->setCloudRecordingNotificationEmail(Ljava/lang/String;)V

    .line 4578
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->meetingChatMessageManager:Lus/zoom/zrc/model/MeetingChatMessageManager;

    invoke-virtual {v0}, Lus/zoom/zrc/model/MeetingChatMessageManager;->cleanupMeetingData()V

    .line 4579
    invoke-direct {p0, v1}, Lus/zoom/zrc/model/Model;->setMeetingAudioTroubleShootingStatus(Lus/zoom/zrcsdk/model/ZRCMeetingAudioTroubleShootingStatus;)V

    .line 4581
    invoke-static {}, Lus/zoom/zrc/model/VirtualBackgroundHelper;->getDefault()Lus/zoom/zrc/model/VirtualBackgroundHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/VirtualBackgroundHelper;->removeCaches()V

    return-void
.end method

.method private cleanupZoomRoomData()V
    .locals 3

    const/4 v0, 0x0

    .line 4585
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setFeatureList(Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;)V

    .line 4586
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->cleanupMeetingData()V

    .line 4587
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setSipService(Lus/zoom/zrcsdk/model/ZRCSipService;)V

    .line 4588
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/SipCallInfoList;->release()V

    .line 4589
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setZoomRoomVersion(Ljava/lang/String;)V

    .line 4590
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setCallOutNumberInCalling(Ljava/lang/String;)V

    .line 4591
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getRoomInfo()Lus/zoom/zrcsdk/model/ZRCRoomInfo;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->setMeetingNumber(Ljava/lang/String;)V

    .line 4592
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getRoomInfo()Lus/zoom/zrcsdk/model/ZRCRoomInfo;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->setDisplayVersion(Ljava/lang/String;)V

    .line 4593
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getDynamicallyCloudPbxContactList()Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->clear()V

    .line 4594
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setCanAttendeesUnmuteThemselves(Ljava/lang/Boolean;)V

    .line 4595
    new-instance v1, Lus/zoom/zrc/model/MeetingList;

    invoke-direct {v1}, Lus/zoom/zrc/model/MeetingList;-><init>()V

    invoke-virtual {p0, v1}, Lus/zoom/zrc/model/Model;->setMeetingList(Lus/zoom/zrc/model/MeetingList;)V

    .line 4596
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setAirPlayBlackMagicStatus(Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;)V

    .line 4597
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setCallOutCountryCode(Ljava/util/List;)V

    .line 4598
    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/Model;->setRoomProfiles(Ljava/util/List;)V

    .line 4600
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->cleanupZoomPresenceData()V

    .line 4601
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setSpeakerTestingStopped(Ljava/lang/Boolean;)V

    .line 4603
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setUltrasoundPlayerCandidateDeviceId(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 4605
    invoke-virtual {p0, v1}, Lus/zoom/zrc/model/Model;->setReserveOtherRoomInLocation(I)V

    .line 4606
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setAccountLocationTree(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V

    .line 4607
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setRoomParentLocationID(Ljava/lang/String;)V

    .line 4608
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setRoomParentLocationInfo(Lus/zoom/zrcsdk/model/ZRCLocationInfo;)V

    .line 4609
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->getCachedLocationInfos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 4610
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->getCachedRoomMeetingLists()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 4611
    iput-object v0, p0, Lus/zoom/zrc/model/Model;->allRoomListItemDetails:Ljava/util/List;

    .line 4612
    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/Model;->setUserID(Ljava/lang/String;)V

    .line 4613
    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/Model;->setAccountID(Ljava/lang/String;)V

    .line 4614
    invoke-direct {p0, v1}, Lus/zoom/zrc/model/Model;->setCalendarType(I)V

    .line 4615
    invoke-virtual {p0, v1}, Lus/zoom/zrc/model/Model;->setCalendarRefreshInterval(I)V

    .line 4616
    invoke-virtual {p0, v1}, Lus/zoom/zrc/model/Model;->setCalendarRefreshTokenExpired(Z)V

    .line 4617
    invoke-virtual {p0, v1}, Lus/zoom/zrc/model/Model;->setListMeetingResult(I)V

    .line 4619
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setStandaloneZRPResources([Ljava/lang/String;)V

    .line 4621
    invoke-static {}, Lus/zoom/zrc/model/VirtualBackgroundHelper;->getDefault()Lus/zoom/zrc/model/VirtualBackgroundHelper;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/VirtualBackgroundHelper;->deleteFiles()V

    .line 4622
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setControlSystemDevices(Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;)V

    .line 4623
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setZoomRoomCapability(Lus/zoom/zrcsdk/model/ZoomRoomCapability;)V

    .line 4625
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/AppModel;->getMeetingAlertManager()Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->cleanup()V

    .line 4626
    invoke-virtual {p0, v1}, Lus/zoom/zrc/model/Model;->setShownAllVirtualAudioDevices(Z)V

    .line 4627
    iput-object v0, p0, Lus/zoom/zrc/model/Model;->virtualAudioDeviceList:Ljava/util/HashMap;

    .line 4629
    invoke-direct {p0, v1}, Lus/zoom/zrc/model/Model;->setLocalViewStatus(Z)V

    .line 4631
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setWhiteboardCameraInfo(Lus/zoom/zrcsdk/model/ZMDeviceInfo;)V

    .line 4632
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setSelectedWhiteboardCamera(Lus/zoom/zrcsdk/model/ZMDeviceItem;)V

    .line 4633
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setWhiteboardCameraList(Ljava/util/List;)V

    return-void
.end method

.method private cloneVirtualDeviceList()Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;",
            ">;>;"
        }
    .end annotation

    .line 1676
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1677
    iget-object v1, p0, Lus/zoom/zrc/model/Model;->virtualAudioDeviceList:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 1678
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    .line 1680
    :cond_0
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1681
    iget-object v3, p0, Lus/zoom/zrc/model/Model;->virtualAudioDeviceList:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1682
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-nez v3, :cond_1

    goto :goto_0

    .line 1686
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;

    if-nez v5, :cond_2

    goto :goto_1

    .line 1690
    :cond_2
    new-instance v6, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;

    invoke-virtual {v5}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->getState()I

    move-result v9

    invoke-virtual {v5}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->isIdentifiable()Z

    move-result v5

    invoke-direct {v6, v7, v8, v9, v5}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1691
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1693
    :cond_3
    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private closeNotificationServerConnection(I)V
    .locals 1

    .line 2116
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->isStandaloneZRP()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/16 p1, 0xbb9

    .line 2123
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/PTApp;->closeNotificationServerConnection(I)Z

    .line 2124
    iget-object p1, p0, Lus/zoom/zrc/model/Model;->restartHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private createUserNameForPhone(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 2324
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getMeetingType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v1, v0, :cond_2

    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getMeetingType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move-object v0, p1

    const/4 v2, 0x0

    .line 2330
    :goto_0
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->hasPurePhoneParticipantNamed(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    return-object p1
.end method

.method private getCachedLocationInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCLocationInfo;",
            ">;"
        }
    .end annotation

    .line 426
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->cachedLocationInfos:Ljava/util/List;

    if-nez v0, :cond_0

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/Model;->cachedLocationInfos:Ljava/util/List;

    .line 429
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->cachedLocationInfos:Ljava/util/List;

    return-object v0
.end method

.method private getCachedRoomMeetingLists()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;",
            ">;"
        }
    .end annotation

    .line 462
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->cachedRoomMeetingLists:Ljava/util/List;

    if-nez v0, :cond_0

    .line 463
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/Model;->cachedRoomMeetingLists:Ljava/util/List;

    .line 465
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->cachedRoomMeetingLists:Ljava/util/List;

    return-object v0
.end method

.method public static declared-synchronized getDefault()Lus/zoom/zrc/model/Model;
    .locals 2

    const-class v0, Lus/zoom/zrc/model/Model;

    monitor-enter v0

    .line 1771
    :try_start_0
    sget-object v1, Lus/zoom/zrc/model/Model;->instance:Lus/zoom/zrc/model/Model;

    if-nez v1, :cond_0

    .line 1772
    new-instance v1, Lus/zoom/zrc/model/Model;

    invoke-direct {v1}, Lus/zoom/zrc/model/Model;-><init>()V

    sput-object v1, Lus/zoom/zrc/model/Model;->instance:Lus/zoom/zrc/model/Model;

    .line 1774
    :cond_0
    sget-object v1, Lus/zoom/zrc/model/Model;->instance:Lus/zoom/zrc/model/Model;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getDeviceName()Ljava/lang/String;
    .locals 1

    .line 4380
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/utils/DeviceInfoUtils;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTotalOfParticipants()I
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1635
    iget v0, p0, Lus/zoom/zrc/model/Model;->totalOfParticipants:I

    return v0
.end method

.method private getZoomRoomAddress()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 4329
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    .line 4330
    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->getZoomPresenceAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method private getZoomRoomEmail()Ljava/lang/String;
    .locals 1

    .line 4343
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    .line 4344
    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->getRoomEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getZoomRoomJid()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 610
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->zoomRoomJid:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    return-object v0
.end method

.method private getZoomRoomToken()Ljava/lang/String;
    .locals 1

    .line 4353
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    .line 4354
    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->getZoomPresenceToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hasPurePhoneParticipantNamed(Ljava/lang/String;)Z
    .locals 4

    .line 2312
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getParticipantList()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object v0

    .line 2313
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCParticipant;

    .line 2314
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getAudioStatus()Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getAudioStatus()Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->getAudioType()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 2315
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lus/zoom/zrcsdk/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private initZoomRoomConnection()V
    .locals 7

    .line 2085
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getWorkMode()I

    move-result v1

    .line 2086
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->getZoomRoomAddress()Ljava/lang/String;

    move-result-object v2

    .line 2087
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->getZoomRoomToken()Ljava/lang/String;

    move-result-object v3

    .line 2089
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getUserProfile()Lus/zoom/zrc/model/ZRCUserProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2090
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    invoke-static {v0, v1}, Lus/zoom/zrc/utils/DeviceInfoUtils;->updateDeviceInfo(Landroid/content/Context;I)V

    .line 2093
    :cond_0
    invoke-static {v3}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    const-string v0, "initZoomRoomConnection, but ZoomRoom token is null!!!"

    .line 2094
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2095
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->closeConnection()V

    .line 2096
    invoke-virtual {p0, v4}, Lus/zoom/zrc/model/Model;->onClose(I)V

    return-void

    .line 2100
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getControllerDeviceCapability()Lus/zoom/zrcsdk/model/ZRCControllerDeviceCapability;

    move-result-object v0

    invoke-static {}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->getInstance()Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;

    move-result-object v5

    invoke-virtual {v5}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->isSupportedDevice()Z

    move-result v5

    invoke-virtual {v0, v5}, Lus/zoom/zrcsdk/model/ZRCControllerDeviceCapability;->set_ultrasound_capability(Z)V

    .line 2101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initZoomRoomConnection deviceCapability="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getControllerDeviceCapability()Lus/zoom/zrcsdk/model/ZRCControllerDeviceCapability;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2103
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-static {}, Lus/zoom/zrc/utils/Util;->getControllerFeatureList()Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;

    move-result-object v4

    invoke-static {}, Lus/zoom/zrc/utils/Util;->getControllerDeviceInfo()Lus/zoom/zrcsdk/model/ZRCControllerDeviceInfo;

    move-result-object v5

    iget-object v6, p0, Lus/zoom/zrc/model/Model;->deviceCapability:Lus/zoom/zrcsdk/model/ZRCControllerDeviceCapability;

    invoke-virtual/range {v0 .. v6}, Lus/zoom/zrcsdk/PTApp;->verifyConnection(ILjava/lang/String;Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCControllerFeatureList;Lus/zoom/zrcsdk/model/ZRCControllerDeviceInfo;Lus/zoom/zrcsdk/model/ZRCControllerDeviceCapability;)I

    return-void
.end method

.method private insertMeetingItemToCachedRoomMeetingLists(Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 3

    .line 510
    invoke-static {p1}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 514
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->getCachedRoomMeetingLists()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;

    if-eqz v1, :cond_1

    .line 515
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;->getRoomID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 516
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;->getMeetingList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method private isConnectionVerified()Z
    .locals 1

    .line 647
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->connectionVerified:Z

    return v0
.end method

.method private isLoggedInWith(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 4410
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getLoginType()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 4411
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->getZoomRoomEmail()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4412
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getZoomRefreshToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lus/zoom/zrcsdk/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private logoutInternal(ZI)V
    .locals 3

    .line 1814
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/PTApp;->logout(Z)I

    .line 1815
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/AppModel;->onSignOut(Z)V

    .line 1817
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getUserProfile()Lus/zoom/zrc/model/ZRCUserProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1819
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/PTApp;->deleteDevice()Z

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 1823
    iput-object v1, p0, Lus/zoom/zrc/model/Model;->pairingCode:Ljava/lang/String;

    .line 1824
    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/Model;->setWorkMode(I)V

    const/4 v2, 0x2

    .line 1825
    invoke-virtual {p0, v2}, Lus/zoom/zrc/model/Model;->setAppState(I)V

    .line 1827
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->closeConnection()V

    .line 1830
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->isStandaloneZRP()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1831
    invoke-direct {p0, p2}, Lus/zoom/zrc/model/Model;->closeNotificationServerConnection(I)V

    .line 1834
    :cond_2
    invoke-direct {p0, v1}, Lus/zoom/zrc/model/Model;->setRoomInfo(Lus/zoom/zrcsdk/model/ZRCRoomInfo;)V

    .line 1835
    invoke-direct {p0, v1}, Lus/zoom/zrc/model/Model;->setUserProfile(Lus/zoom/zrc/model/ZRCUserProfile;)V

    .line 1836
    invoke-direct {p0, v1}, Lus/zoom/zrc/model/Model;->setZoomRoomVersion(Ljava/lang/String;)V

    .line 1837
    new-instance p2, Lus/zoom/zrc/model/MeetingList;

    invoke-direct {p2}, Lus/zoom/zrc/model/MeetingList;-><init>()V

    invoke-virtual {p0, p2}, Lus/zoom/zrc/model/Model;->setMeetingList(Lus/zoom/zrc/model/MeetingList;)V

    .line 1838
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, v2}, Lus/zoom/zrc/model/AppModel;->setZrcMeetingList(Ljava/util/List;)V

    .line 1839
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setStandaloneZRP(Z)V

    .line 1840
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setStandaloneDigitalSignage(Z)V

    .line 1841
    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/Model;->setPublicRoomEnabled(Z)V

    .line 1842
    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/Model;->setZrpReserveDisabled(Z)V

    .line 1843
    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/Model;->setCallHistoryDisabled(Z)V

    xor-int/lit8 p1, p1, 0x1

    .line 1844
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->setSettingsLocked(Z)V

    const/4 p1, -0x1

    .line 1845
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setLoginType(I)V

    .line 1846
    invoke-direct {p0, v1}, Lus/zoom/zrc/model/Model;->setZoomRoomPassCode(Ljava/lang/String;)V

    .line 1848
    invoke-static {}, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->getInstance()Lus/zoom/zrc/model/MeetingHistoryStorageManager;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->clearAllHistories()V

    .line 1849
    invoke-static {}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getDefault()Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->forceEndRoomSystemUISession()V

    .line 1850
    iput-object v1, p0, Lus/zoom/zrc/model/Model;->workEmail:Ljava/lang/String;

    .line 1851
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->wipePassword()V

    .line 1853
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->cleanupZoomRoomData()V

    return-void
.end method

.method private onVerifyConnectionSuccess()V
    .locals 2

    const/4 v0, 0x1

    .line 2936
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setConnectionVerified(Z)V

    .line 2938
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getWorkMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 2939
    invoke-static {}, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->getInstance()Lus/zoom/zrc/model/MeetingHistoryStorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->clearAllHistories()V

    :cond_0
    return-void
.end method

.method private parseUserProfile(Lus/zoom/zrcsdk/model/LoginInfo;)V
    .locals 10

    .line 4449
    new-instance v0, Lus/zoom/zrc/model/ZRCUserProfile;

    invoke-direct {v0}, Lus/zoom/zrc/model/ZRCUserProfile;-><init>()V

    .line 4450
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/ZRCUserProfile;->setFirstName(Ljava/lang/String;)V

    .line 4451
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getRoomName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/ZRCUserProfile;->setRoomName(Ljava/lang/String;)V

    .line 4452
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getBillingType()I

    move-result v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/ZRCUserProfile;->setBillingType(I)V

    .line 4453
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getFreeTrialDays()I

    move-result v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/ZRCUserProfile;->setBillingFreeTrialDays(I)V

    .line 4454
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setUserProfile(Lus/zoom/zrc/model/ZRCUserProfile;)V

    .line 4456
    new-instance v1, Lus/zoom/zrc/model/ZRCCheckInOption;

    invoke-direct {v1}, Lus/zoom/zrc/model/ZRCCheckInOption;-><init>()V

    .line 4457
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->isCheckInStatus()Z

    move-result v2

    invoke-virtual {v1, v2}, Lus/zoom/zrc/model/ZRCCheckInOption;->setStatus(Z)V

    .line 4458
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getTimeForPriorCheckIn()I

    move-result v2

    invoke-virtual {v1, v2}, Lus/zoom/zrc/model/ZRCCheckInOption;->setTimeForPriorCheckIn(I)V

    .line 4459
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getTimeForNoCheckInRelease()I

    move-result v2

    invoke-virtual {v1, v2}, Lus/zoom/zrc/model/ZRCCheckInOption;->setTimeForNoCheckInRelease(I)V

    .line 4460
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getCountForReleaseRecurringMeetings()I

    move-result v2

    invoke-virtual {v1, v2}, Lus/zoom/zrc/model/ZRCCheckInOption;->setCountForReleaseRecurringMeetings(I)V

    .line 4461
    invoke-direct {p0, v1}, Lus/zoom/zrc/model/Model;->setCheckInOption(Lus/zoom/zrc/model/ZRCCheckInOption;)V

    .line 4463
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getCalloutCountryCodes()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getCalloutCountryCodes()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4464
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getCalloutCountryCodes()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lus/zoom/zrc/model/Model;->setCallOutCountryCode(Ljava/util/List;)V

    .line 4467
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lus/zoom/zrc/model/Model;->setUserID(Ljava/lang/String;)V

    .line 4468
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getAccountID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lus/zoom/zrc/model/Model;->setAccountID(Ljava/lang/String;)V

    .line 4470
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getDefaultCallinCountry()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lus/zoom/zrc/model/Model;->setDefaultCallInCountry(Ljava/lang/String;)V

    .line 4471
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getPasscode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lus/zoom/zrc/model/Model;->setZoomRoomPassCode(Ljava/lang/String;)V

    .line 4472
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->isForcePrivateMeeting()Z

    move-result v1

    invoke-direct {p0, v1}, Lus/zoom/zrc/model/Model;->setForcePrivateMeeting(Z)V

    .line 4473
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->isHideHostInfoForPrivateMeeting()Z

    move-result v1

    invoke-direct {p0, v1}, Lus/zoom/zrc/model/Model;->setHideHostInfoForPrivateMeeting(Z)V

    .line 4474
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getCalendarType()I

    move-result v1

    invoke-direct {p0, v1}, Lus/zoom/zrc/model/Model;->setCalendarType(I)V

    .line 4475
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getCalendarRefreshInterval()I

    move-result v1

    invoke-virtual {p0, v1}, Lus/zoom/zrc/model/Model;->setCalendarRefreshInterval(I)V

    .line 4476
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->isCalendarRefreshTokenExpired()Z

    move-result v1

    invoke-virtual {p0, v1}, Lus/zoom/zrc/model/Model;->setCalendarRefreshTokenExpired(Z)V

    .line 4477
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->isStandaloneZRP()Z

    move-result v1

    invoke-direct {p0, v1}, Lus/zoom/zrc/model/Model;->setStandaloneZRP(Z)V

    .line 4478
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->isStandaloneDigitalSignage()Z

    move-result v1

    invoke-direct {p0, v1}, Lus/zoom/zrc/model/Model;->setStandaloneDigitalSignage(Z)V

    .line 4479
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->isZrpReserveDisabled()Z

    move-result v1

    invoke-virtual {p0, v1}, Lus/zoom/zrc/model/Model;->setZrpReserveDisabled(Z)V

    .line 4480
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->isCallHistoryDisabled()Z

    move-result v1

    invoke-virtual {p0, v1}, Lus/zoom/zrc/model/Model;->setCallHistoryDisabled(Z)V

    .line 4481
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getZrpBackgroundImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lus/zoom/zrc/model/Model;->setZrpBackgroundImgUrl(Ljava/lang/String;)V

    .line 4482
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->isHideContactList()Z

    move-result v1

    invoke-direct {p0, v1}, Lus/zoom/zrc/model/Model;->setHideContactList(Z)V

    .line 4483
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->isPublicRoomEnabled()Z

    move-result v1

    invoke-virtual {p0, v1}, Lus/zoom/zrc/model/Model;->setPublicRoomEnabled(Z)V

    .line 4484
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getReleaseNotesRefreshInterval()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lus/zoom/zrc/model/Model;->setReleaseNotesRefreshInterval(J)V

    .line 4485
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->isSpeakerVolumeControlLocked()Z

    move-result v1

    invoke-direct {p0, v1}, Lus/zoom/zrc/model/Model;->setSpeakerVolumeControlLocked(Z)V

    .line 4486
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->isSupportDialToThirdPartyMeeting()Z

    move-result v1

    invoke-direct {p0, v1}, Lus/zoom/zrc/model/Model;->setThirdPartyMeetingEnabled(Z)V

    .line 4487
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getZrSharedCustomHdmiText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lus/zoom/zrc/model/Model;->setCustomHDMILabel(Ljava/lang/String;)V

    .line 4488
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getReserveOtherRoomInLocation()I

    move-result v1

    invoke-virtual {p0, v1}, Lus/zoom/zrc/model/Model;->setReserveOtherRoomInLocation(I)V

    .line 4490
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getOperationTimeStatus()Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->copy()Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;

    move-result-object v1

    .line 4491
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getOperationTimeStart()J

    move-result-wide v3

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getOperationTimeEnd()J

    move-result-wide v5

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getOperationTimeOptions()J

    move-result-wide v7

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getOperationTimeDays()I

    move-result v9

    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->setWebConfigs(JJJI)V

    .line 4492
    invoke-virtual {p0, v1}, Lus/zoom/zrc/model/Model;->setOperationTimeStatus(Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;)V

    .line 4494
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->isiOSSharingDisabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lus/zoom/zrc/model/Model;->setIOSSharingDisabled(Z)V

    .line 4496
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->isPostMeetingFeedbackEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lus/zoom/zrc/model/Model;->setPostMeetingFeedbackEnabled(Z)V

    .line 4498
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->isDisableNextMeetingAlert()Z

    move-result v1

    invoke-virtual {p0, v1}, Lus/zoom/zrc/model/Model;->setDisableNextMeetingAlert(Z)V

    .line 4499
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->isDisableNextMeetingAlertInMeeting()Z

    move-result v1

    invoke-virtual {p0, v1}, Lus/zoom/zrc/model/Model;->setDisableNextMeetingAlertInMeeting(Z)V

    .line 4500
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->isDisableNextMeetingAlertOnController()Z

    move-result v1

    invoke-virtual {p0, v1}, Lus/zoom/zrc/model/Model;->setDisableNextMeetingAlertOnController(Z)V

    .line 4501
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->isDisableNextMeetingAlertOnTV()Z

    move-result v1

    invoke-virtual {p0, v1}, Lus/zoom/zrc/model/Model;->setDisableNextMeetingAlertOnTV(Z)V

    .line 4502
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->isAutoStartScheduleMeeting()Z

    move-result v1

    invoke-virtual {p0, v1}, Lus/zoom/zrc/model/Model;->setAutoStartScheduleMeeting(Z)V

    const-string v1, "Normal"

    .line 4505
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->isStandaloneZRP()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "Standalone ZRP"

    goto :goto_0

    .line 4507
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->isStandaloneDigitalSignage()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "DSOnly"

    :cond_2
    :goto_0
    const-string v2, "get Zoom Room type: %s"

    const/4 v3, 0x1

    .line 4510
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v4}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "got ZoomRoom info, roomJid=%s, roomName=%s, address=%s, zoomRoomToken=%s, zoomRefreshToken=%s, settingsPassword=%s, iOSSharingDisabled=%s, disableNextMeetingAlert=%s, publicRoomMode=%s, speakerVolumeControlLocked=%s, postMeetingFeedbackEnabled=%s, ultrasonicDisabled=%s, calloutCountryCount=%s, voiceCmdEnabled=%s, forcePrivateMeeting=%s, hideHostInfoForPrivateMeeting=%s, autoStartScheduleMeeting=%s, autoEndScheduleMeeting=%s, thirdPartyMeetingEnabled=%s, hideContactList=%s,  operationTimeStart=%s, operationTimeEnd=%s, operationTimeOptions=%s, operationTimeDays=%s, releaseNotesRefreshInterval=%s, reserveOtherRoomInLocation=%s, calendarRefreshTokenExpired=%s"

    const/16 v2, 0x1b

    .line 4512
    new-array v2, v2, [Ljava/lang/Object;

    .line 4519
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->getZoomRoomJid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCUserProfile;->getRoomName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x2

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getZoomPresenceAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getZoomToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lus/zoom/zrcsdk/util/StringUtil;->logToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    .line 4520
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getZoomPresenceToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lus/zoom/zrcsdk/util/StringUtil;->logToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x5

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getPasscode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lus/zoom/zrcsdk/util/StringUtil;->logToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x6

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->isiOSSharingDisabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x7

    .line 4521
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->isDisableNextMeetingAlert()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0x8

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->isPublicRoomEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0x9

    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->isSpeakerVolumeControlLocked()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0xa

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->isPostMeetingFeedbackEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0xb

    .line 4522
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->isUltrasonicDisabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0xc

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getCalloutCountryCodes()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getCalloutCountryCodes()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0xd

    .line 4523
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0xe

    iget-boolean v3, p0, Lus/zoom/zrc/model/Model;->forcePrivateMeeting:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0xf

    iget-boolean v3, p0, Lus/zoom/zrc/model/Model;->hideHostInfoForPrivateMeeting:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0x10

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->isAutoStartScheduleMeeting()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0x11

    .line 4524
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->isAutoEndScheduleMeeting()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0x12

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->isSupportDialToThirdPartyMeeting()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0x13

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->isHideContactList()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0x14

    .line 4525
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getOperationTimeStart()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0x15

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getOperationTimeEnd()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0x16

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getOperationTimeOptions()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0x17

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getOperationTimeDays()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0x18

    .line 4526
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getReleaseNotesRefreshInterval()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0x19

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->getReserveOtherRoomInLocation()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->isCalendarRefreshTokenExpired()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v0

    .line 4512
    invoke-static {v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private refreshExchangeCalendarAccessToken()V
    .locals 6

    .line 2522
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->isStandaloneZRP()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2526
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->calendarInfo:Lus/zoom/zrcsdk/model/ZRCCalendarInfo;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->getExchangeAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2530
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->calendarInfo:Lus/zoom/zrcsdk/model/ZRCCalendarInfo;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->getNextRefreshExchangeCalendarAccessTokenTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    return-void

    .line 2534
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2536
    iget-object v4, p0, Lus/zoom/zrc/model/Model;->calendarInfo:Lus/zoom/zrcsdk/model/ZRCCalendarInfo;

    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->getNextRefreshExchangeCalendarAccessTokenTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    .line 2538
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->calendarInfo:Lus/zoom/zrcsdk/model/ZRCCalendarInfo;

    const-wide/32 v1, 0x88b8

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->updateExchangeAccessTokenRefreshInterval(J)V

    .line 2539
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/PTApp;->refreshCalendarAccessToken()Z

    :cond_3
    return-void
.end method

.method private refreshGoogleCalendarAccessToken()V
    .locals 6

    .line 2500
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->isStandaloneZRP()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2504
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->calendarInfo:Lus/zoom/zrcsdk/model/ZRCCalendarInfo;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->getZrGoogleAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2508
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->calendarInfo:Lus/zoom/zrcsdk/model/ZRCCalendarInfo;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->getNextRefreshGoogleCalendarAccessTokenTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    return-void

    .line 2512
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2514
    iget-object v4, p0, Lus/zoom/zrc/model/Model;->calendarInfo:Lus/zoom/zrcsdk/model/ZRCCalendarInfo;

    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->getNextRefreshGoogleCalendarAccessTokenTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    .line 2516
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->calendarInfo:Lus/zoom/zrcsdk/model/ZRCCalendarInfo;

    const-wide/32 v1, 0x88b8

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->updateGoogleAccessTokenRefreshInterval(J)V

    .line 2517
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/PTApp;->refreshCalendarAccessToken()Z

    :cond_3
    return-void
.end method

.method private refreshXmppToken()V
    .locals 1

    const/4 v0, 0x1

    .line 2471
    iput-boolean v0, p0, Lus/zoom/zrc/model/Model;->isRefreshingXmppToken:Z

    .line 2472
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/PTApp;->refreshXmppToken()Z

    return-void
.end method

.method private saveLoginAndRoomInfo()V
    .locals 1

    .line 4373
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    .line 4374
    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->saveLoginUserAndRoomInfo()V

    return-void
.end method

.method private setAccountLocationTree(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V
    .locals 1

    .line 395
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->accountLocationTree:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->accountLocationTree:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    .line 397
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->accountLocationTree:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setAirPlayBlackMagicStatus(Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;)V
    .locals 1
    .param p1    # Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1435
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->airPlayBlackMagicStatus:Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1436
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->airPlayBlackMagicStatus:Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;

    .line 1437
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->airPlayBlackMagicStatus:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setAllRoomListItemDetails(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;",
            ">;)V"
        }
    .end annotation

    .line 528
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->allRoomListItemDetails:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 529
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->allRoomListItemDetails:Ljava/util/List;

    .line 530
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->allRoomListItemDetails:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setAllRoomsFetchedTimeMillis(J)V
    .locals 0

    .line 535
    iput-wide p1, p0, Lus/zoom/zrc/model/Model;->allRoomsFetchedTimeMillis:J

    return-void
.end method

.method private setAudioCheckupInfo(Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;)V
    .locals 1

    .line 1218
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->audioCheckupInfo:Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1219
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->audioCheckupInfo:Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;

    .line 1220
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->audioCheckupInfo:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setCalendarInfo(Lus/zoom/zrcsdk/model/ZRCCalendarInfo;)V
    .locals 1

    .line 1389
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->calendarInfo:Lus/zoom/zrcsdk/model/ZRCCalendarInfo;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1390
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->calendarInfo:Lus/zoom/zrcsdk/model/ZRCCalendarInfo;

    .line 1391
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->calendarInfo:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setCalendarType(I)V
    .locals 1

    .line 1031
    iget v0, p0, Lus/zoom/zrc/model/Model;->calendarType:I

    if-eq v0, p1, :cond_0

    .line 1032
    iput p1, p0, Lus/zoom/zrc/model/Model;->calendarType:I

    .line 1033
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->calendarType:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setCallOutCountryCode(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/CountryCode;",
            ">;)V"
        }
    .end annotation

    .line 743
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->callOutCountryCode:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 744
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->callOutCountryCode:Ljava/util/List;

    .line 745
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->callOutCountryCode:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setCallOutNumberInCalling(Ljava/lang/String;)V
    .locals 1

    .line 1486
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->callOutNumberInCalling:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1487
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->callOutNumberInCalling:Ljava/lang/String;

    .line 1488
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->callOutNumberInCalling:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setCallOutUserName(Ljava/lang/String;)V
    .locals 0

    .line 668
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->callOutUserName:Ljava/lang/String;

    return-void
.end method

.method private setCanAttendeesUnmuteThemselves(Ljava/lang/Boolean;)V
    .locals 1

    .line 1320
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->canAttendeesUnmuteThemselves:Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1321
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->canAttendeesUnmuteThemselves:Ljava/lang/Boolean;

    .line 1322
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->canAttendeesUnmuteThemselves:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setCanRaiseHandForAttendee(Z)V
    .locals 1

    .line 1240
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->canRaiseHandForAttendee:Z

    if-eq v0, p1, :cond_0

    .line 1241
    iput-boolean p1, p0, Lus/zoom/zrc/model/Model;->canRaiseHandForAttendee:Z

    .line 1242
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->canRaiseHandForAttendee:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setCheckInOption(Lus/zoom/zrc/model/ZRCCheckInOption;)V
    .locals 2

    .line 836
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->checkInOption:Lus/zoom/zrc/model/ZRCCheckInOption;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 837
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->checkInOption:Lus/zoom/zrc/model/ZRCCheckInOption;

    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkInOption changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 839
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->checkInOption:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setClosedCaptionInfo(Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;)V
    .locals 1

    .line 1349
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->closedCaptionInfo:Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1350
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->closedCaptionInfo:Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;

    .line 1351
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->closedCaptionInfo:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setConnectionVerified(Z)V
    .locals 1

    .line 651
    iput-boolean p1, p0, Lus/zoom/zrc/model/Model;->connectionVerified:Z

    .line 652
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/AppModel;->setConnectionVerified(Z)V

    return-void
.end method

.method private setControlSystemDevices(Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;)V
    .locals 1

    .line 1729
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->controlSystemDevices:Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1730
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->controlSystemDevices:Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;

    .line 1731
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->controlSystemDevices:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setCrcCalloutOnlyEnabled(Z)V
    .locals 1

    .line 1704
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->crcCalloutOnlyEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1705
    iput-boolean p1, p0, Lus/zoom/zrc/model/Model;->crcCalloutOnlyEnabled:Z

    .line 1706
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->crcCalloutOnlyEnabled:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setCustomHDMILabel(Ljava/lang/String;)V
    .locals 1

    .line 966
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->customHDMILabel:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 967
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->customHDMILabel:Ljava/lang/String;

    .line 968
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->customHDMILabel:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setDefaultCallInCountry(Ljava/lang/String;)V
    .locals 1

    .line 727
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->defaultCallInCountry:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 728
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->defaultCallInCountry:Ljava/lang/String;

    .line 729
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->defaultCallInCountry:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setDisplayTopBanner(Ljava/lang/Boolean;)V
    .locals 1

    .line 1334
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->displayTopBanner:Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1335
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->displayTopBanner:Ljava/lang/Boolean;

    .line 1336
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->displayTopBanner:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setFeatureList(Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;)V
    .locals 1
    .param p1    # Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 853
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->featureList:Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 854
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->featureList:Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    .line 855
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->featureList:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setForcePrivateMeeting(Z)V
    .locals 1

    .line 1006
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->forcePrivateMeeting:Z

    if-eq v0, p1, :cond_0

    .line 1007
    iput-boolean p1, p0, Lus/zoom/zrc/model/Model;->forcePrivateMeeting:Z

    .line 1008
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->forcePrivateMeeting:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setGenericSettings(Lus/zoom/zrcsdk/model/ZRCGenericSettings;)V
    .locals 1

    .line 928
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->genericSettings:Lus/zoom/zrcsdk/model/ZRCGenericSettings;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 929
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->genericSettings:Lus/zoom/zrcsdk/model/ZRCGenericSettings;

    .line 930
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->genericSettings:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setHideContactList(Z)V
    .locals 1

    .line 1265
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->hideContactList:Z

    if-eq v0, p1, :cond_0

    .line 1266
    iput-boolean p1, p0, Lus/zoom/zrc/model/Model;->hideContactList:Z

    .line 1267
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->hideContactList:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setHideHostInfoForPrivateMeeting(Z)V
    .locals 1

    .line 1019
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->hideHostInfoForPrivateMeeting:Z

    if-eq v0, p1, :cond_0

    .line 1020
    iput-boolean p1, p0, Lus/zoom/zrc/model/Model;->hideHostInfoForPrivateMeeting:Z

    .line 1021
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->hideHostInfoForPrivateMeeting:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setIOSSharingDisabled(Z)V
    .locals 1

    .line 1499
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->iOSSharingDisabled:Z

    if-eq v0, p1, :cond_0

    .line 1500
    iput-boolean p1, p0, Lus/zoom/zrc/model/Model;->iOSSharingDisabled:Z

    .line 1501
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->iOSSharingDisabled:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setInSilentMode(Z)V
    .locals 0

    .line 3997
    iput-boolean p1, p0, Lus/zoom/zrc/model/Model;->isInSilentMode:Z

    return-void
.end method

.method private setLastMeetingNumber(Ljava/lang/String;)V
    .locals 0

    .line 1139
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->lastMeetingNumber:Ljava/lang/String;

    return-void
.end method

.method private setLocalViewStatus(Z)V
    .locals 1

    .line 544
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->isLocalView:Z

    if-eq v0, p1, :cond_0

    .line 545
    iput-boolean p1, p0, Lus/zoom/zrc/model/Model;->isLocalView:Z

    .line 546
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->localViewStatus:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setLoginType(I)V
    .locals 1

    .line 4285
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    .line 4286
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/ZRCSdkContext;->setLogin_type(I)V

    .line 4287
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/ZRCSdkContext;->saveLoginType(I)V

    return-void
.end method

.method private setMeetingAudioTroubleShootingStatus(Lus/zoom/zrcsdk/model/ZRCMeetingAudioTroubleShootingStatus;)V
    .locals 1

    .line 1363
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->meetingAudioTroubleShootingStatus:Lus/zoom/zrcsdk/model/ZRCMeetingAudioTroubleShootingStatus;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1364
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->meetingAudioTroubleShootingStatus:Lus/zoom/zrcsdk/model/ZRCMeetingAudioTroubleShootingStatus;

    .line 1365
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->meetingAudioTroubleShootingStatus:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setMeetingStatus(I)V
    .locals 0

    .line 361
    iput p1, p0, Lus/zoom/zrc/model/Model;->meetingStatus:I

    return-void
.end method

.method private setMicrophoneTestRecordingStatus(I)V
    .locals 1

    .line 1277
    iget v0, p0, Lus/zoom/zrc/model/Model;->microphoneTestRecordingStatus:I

    if-eq v0, p1, :cond_0

    .line 1278
    iput p1, p0, Lus/zoom/zrc/model/Model;->microphoneTestRecordingStatus:I

    .line 1279
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->microphoneTestRecordingStatus:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setParticipantList(Lus/zoom/zrc/model/ZRCParticipantList;)V
    .locals 1

    .line 1627
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->participantList:Lus/zoom/zrc/model/ZRCParticipantList;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1628
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->participantList:Lus/zoom/zrc/model/ZRCParticipantList;

    .line 1629
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->participantList:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setPostMeetingFeedbackEnabled(Z)V
    .locals 0

    .line 672
    iput-boolean p1, p0, Lus/zoom/zrc/model/Model;->postMeetingFeedbackEnabled:Z

    return-void
.end method

.method private setPstnCallOutStatus(I)V
    .locals 0

    .line 660
    iput p1, p0, Lus/zoom/zrc/model/Model;->pstnCallOutStatus:I

    return-void
.end method

.method private setReleaseNotesRefreshInterval(J)V
    .locals 3

    .line 1404
    iget-wide v0, p0, Lus/zoom/zrc/model/Model;->releaseNotesRefreshInterval:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    .line 1405
    iput-wide p1, p0, Lus/zoom/zrc/model/Model;->releaseNotesRefreshInterval:J

    .line 1406
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->releaseNotesRefreshInterval:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setRoomInfo(Lus/zoom/zrcsdk/model/ZRCRoomInfo;)V
    .locals 1
    .param p1    # Lus/zoom/zrcsdk/model/ZRCRoomInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 869
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->roomInfo:Lus/zoom/zrcsdk/model/ZRCRoomInfo;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 870
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->roomInfo:Lus/zoom/zrcsdk/model/ZRCRoomInfo;

    .line 871
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->isConnectedToZoomRoom()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 872
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->roomInfo:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setRoomParentLocationID(Ljava/lang/String;)V
    .locals 1

    .line 407
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->roomParentLocationID:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->roomParentLocationID:Ljava/lang/String;

    .line 409
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->roomParentLocationID:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setRoomParentLocationInfo(Lus/zoom/zrcsdk/model/ZRCLocationInfo;)V
    .locals 1

    .line 419
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->roomParentLocationInfo:Lus/zoom/zrcsdk/model/ZRCLocationInfo;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->roomParentLocationInfo:Lus/zoom/zrcsdk/model/ZRCLocationInfo;

    .line 421
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->roomParentLocationInfo:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setRoomScreenInfo(Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;)V
    .locals 1

    .line 1293
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->roomScreenInfo:Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1294
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->roomScreenInfo:Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;

    .line 1295
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->roomScreenInfo:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setScreenResolutionStatus(I)V
    .locals 1

    .line 1306
    iget v0, p0, Lus/zoom/zrc/model/Model;->screenResolutionStatus:I

    if-eq v0, p1, :cond_0

    .line 1307
    iput p1, p0, Lus/zoom/zrc/model/Model;->screenResolutionStatus:I

    .line 1308
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->screenResolutionStatus:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setSelectedVirtualBackground(Ljava/lang/String;)V
    .locals 1

    .line 1756
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->selectedVirtualBackground:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1757
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->selectedVirtualBackground:Ljava/lang/String;

    .line 1758
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->selectedVirtualBackground:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setSelectedWhiteboardCamera(Lus/zoom/zrcsdk/model/ZMDeviceItem;)V
    .locals 1

    .line 581
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->selectedWhiteboardCamera:Lus/zoom/zrcsdk/model/ZMDeviceItem;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 582
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->selectedWhiteboardCamera:Lus/zoom/zrcsdk/model/ZMDeviceItem;

    .line 583
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->selectedWhiteboardCamera:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setSharingStatus(Lus/zoom/zrcsdk/model/ZRCSharingStatus;)V
    .locals 1
    .param p1    # Lus/zoom/zrcsdk/model/ZRCSharingStatus;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1420
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->sharingStatus:Lus/zoom/zrcsdk/model/ZRCSharingStatus;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1421
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->sharingStatus:Lus/zoom/zrcsdk/model/ZRCSharingStatus;

    .line 1422
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->sharingStatus:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setShowAudioParticipant(Z)V
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 639
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->showAudioParticipant:Z

    if-eq v0, p1, :cond_0

    .line 640
    iput-boolean p1, p0, Lus/zoom/zrc/model/Model;->showAudioParticipant:Z

    .line 641
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->showAudioParticipant:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setSipService(Lus/zoom/zrcsdk/model/ZRCSipService;)V
    .locals 1

    .line 1253
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->sipService:Lus/zoom/zrcsdk/model/ZRCSipService;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1254
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->sipService:Lus/zoom/zrcsdk/model/ZRCSipService;

    .line 1255
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->sipService:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setSpeakerTestingStopped(Ljava/lang/Boolean;)V
    .locals 0

    .line 634
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->isSpeakerTestingStopped:Ljava/lang/Boolean;

    return-void
.end method

.method private setSpeakerVolume(F)V
    .locals 1

    .line 953
    iget v0, p0, Lus/zoom/zrc/model/Model;->speakerVolume:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 954
    iput p1, p0, Lus/zoom/zrc/model/Model;->speakerVolume:F

    .line 955
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->speakerVolume:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setSpeakerVolumeControlLocked(Z)V
    .locals 1

    .line 1375
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->speakerVolumeControlLocked:Z

    if-eq v0, p1, :cond_0

    .line 1376
    iput-boolean p1, p0, Lus/zoom/zrc/model/Model;->speakerVolumeControlLocked:Z

    .line 1377
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->speakerVolumeControlLocked:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setStandaloneDigitalSignage(Z)V
    .locals 1

    .line 1091
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->isStandaloneDigitalSignage:Z

    if-eq v0, p1, :cond_0

    .line 1092
    iput-boolean p1, p0, Lus/zoom/zrc/model/Model;->isStandaloneDigitalSignage:Z

    .line 1093
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->standaloneDigitalSignage:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setStandaloneZRP(Z)V
    .locals 1

    .line 1079
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->isStandaloneZRP:Z

    if-eq v0, p1, :cond_0

    .line 1080
    iput-boolean p1, p0, Lus/zoom/zrc/model/Model;->isStandaloneZRP:Z

    .line 1081
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->standaloneZRP:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setStandaloneZRPResources([Ljava/lang/String;)V
    .locals 0

    .line 689
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->standaloneZRPResources:[Ljava/lang/String;

    return-void
.end method

.method private setThirdPartyMeetingEnabled(Z)V
    .locals 1

    .line 780
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->thirdPartyMeetingEnabled:Z

    if-eq v0, p1, :cond_0

    .line 781
    iput-boolean p1, p0, Lus/zoom/zrc/model/Model;->thirdPartyMeetingEnabled:Z

    .line 782
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->thirdPartyMeetingEnabled:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setTotalOfParticipants(I)V
    .locals 1

    .line 1639
    iget v0, p0, Lus/zoom/zrc/model/Model;->totalOfParticipants:I

    if-eq v0, p1, :cond_0

    .line 1640
    iput p1, p0, Lus/zoom/zrc/model/Model;->totalOfParticipants:I

    .line 1641
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->totalOfParticipants:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setUltrasoundPlayerCandidateDeviceId(Ljava/lang/String;)V
    .locals 1

    .line 1716
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->ultrasoundPlayerCandidateDeviceId:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1717
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->ultrasoundPlayerCandidateDeviceId:Ljava/lang/String;

    .line 1718
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->ultrasoundPlayerCandidateDeviceId:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setUserProfile(Lus/zoom/zrc/model/ZRCUserProfile;)V
    .locals 1
    .param p1    # Lus/zoom/zrc/model/ZRCUserProfile;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 900
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->userProfile:Lus/zoom/zrc/model/ZRCUserProfile;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 901
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->userProfile:Lus/zoom/zrc/model/ZRCUserProfile;

    .line 902
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->userProfile:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setVirtualAudioDeviceList(Ljava/util/HashMap;)V
    .locals 2
    .param p1    # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 1655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVirtualAudioDeviceList "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1656
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->virtualAudioDeviceList:Ljava/util/HashMap;

    .line 1657
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->virtualAudioDeviceList:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    return-void
.end method

.method private setVirtualBackgrounds(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCVirtualBackground;",
            ">;)V"
        }
    .end annotation

    .line 1743
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->virtualBackgrounds:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1744
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->virtualBackgrounds:Ljava/util/List;

    .line 1745
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->virtualBackgrounds:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setWhiteboardCameraInfo(Lus/zoom/zrcsdk/model/ZMDeviceInfo;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->whiteboardCameraInfo:Lus/zoom/zrcsdk/model/ZMDeviceInfo;

    .line 558
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->whiteboardCameraInfo:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    return-void
.end method

.method private setWhiteboardCameraList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZMDeviceItem;",
            ">;)V"
        }
    .end annotation

    .line 568
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->whiteboardCameraList:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 569
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->whiteboardCameraList:Ljava/util/List;

    .line 570
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->whiteboardCameraList:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setZRWSharingStatus(Lus/zoom/zrcsdk/model/ZRWSharingStatus;)V
    .locals 1
    .param p1    # Lus/zoom/zrcsdk/model/ZRWSharingStatus;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1473
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->zrwSharingStatus:Lus/zoom/zrcsdk/model/ZRWSharingStatus;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1474
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->zrwSharingStatus:Lus/zoom/zrcsdk/model/ZRWSharingStatus;

    .line 1475
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->zRWSharingStatus:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setZoomRefreshToken(Ljava/lang/String;)V
    .locals 1

    .line 4368
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    .line 4369
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/ZRCSdkContext;->setZoomToken(Ljava/lang/String;)V

    return-void
.end method

.method private setZoomRoomAddress(Ljava/lang/String;)V
    .locals 1

    .line 4338
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    .line 4339
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/ZRCSdkContext;->setZoomPresenceAddress(Ljava/lang/String;)V

    return-void
.end method

.method private setZoomRoomCapability(Lus/zoom/zrcsdk/model/ZoomRoomCapability;)V
    .locals 1

    .line 887
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->zoomRoomCapability:Lus/zoom/zrcsdk/model/ZoomRoomCapability;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 888
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->zoomRoomCapability:Lus/zoom/zrcsdk/model/ZoomRoomCapability;

    .line 889
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->zoomRoomCapability:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setZoomRoomEmail(Ljava/lang/String;)V
    .locals 1

    .line 4348
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    .line 4349
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/ZRCSdkContext;->setRoomEmail(Ljava/lang/String;)V

    return-void
.end method

.method private setZoomRoomJid(Ljava/lang/String;)V
    .locals 0

    .line 617
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->zoomRoomJid:Ljava/lang/String;

    return-void
.end method

.method private setZoomRoomPassCode(Ljava/lang/String;)V
    .locals 1

    .line 979
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->zoomRoomPassCode:Ljava/lang/String;

    invoke-static {v0, p1}, Lus/zoom/zrcsdk/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 980
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->zoomRoomPassCode:Ljava/lang/String;

    .line 981
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->zoomRoomPassCode:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setZoomRoomToken(Ljava/lang/String;)V
    .locals 1

    .line 4358
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    .line 4359
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/ZRCSdkContext;->setZoomPresenceToken(Ljava/lang/String;)V

    return-void
.end method

.method private setZoomRoomVersion(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 913
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->zoomRoomVersion:Ljava/lang/String;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 914
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->zoomRoomVersion:Ljava/lang/String;

    .line 915
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->zoomRoomVersion:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private setZrpBackgroundImgUrl(Ljava/lang/String;)V
    .locals 3

    .line 1149
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->zrpBackgroundImgUrl:Ljava/lang/String;

    invoke-static {v0, p1}, Lus/zoom/zrcsdk/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1150
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->zrpBackgroundImgUrl:Ljava/lang/String;

    const-string v0, ""

    .line 1151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setZrpBackgroundImgUrl zrpBackgroundImgUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1152
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->zrpBackgroundImgUrl:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method private switchWorkMode(I)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    if-eq p1, v0, :cond_0

    const-string v0, "Model"

    .line 2038
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchWorkMode() called with: illegal newMode = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 2041
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getWorkMode()I

    move-result v3

    if-ne p1, v3, :cond_1

    const-string p1, "Model"

    const-string v0, "switchWorkMode() called to switch to same mode %s"

    .line 2043
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Lus/zoom/zrcsdk/model/ZRCWorkMode;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p1, v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v4, "switching workMode from %s to %s"

    .line 2046
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3}, Lus/zoom/zrcsdk/model/ZRCWorkMode;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {p1}, Lus/zoom/zrcsdk/model/ZRCWorkMode;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v4, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2047
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->setWorkMode(I)V

    .line 2048
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->closeConnection()V

    .line 2050
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/SipCallInfoList;->release()V

    .line 2051
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getMeetingAlertManager()Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->cleanup()V

    .line 2053
    invoke-virtual {p0, v2}, Lus/zoom/zrc/model/Model;->setSettingsLocked(Z)V

    .line 2054
    invoke-virtual {p0, v1}, Lus/zoom/zrc/model/Model;->setShownAllVirtualAudioDevices(Z)V

    .line 2055
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->connectWithZoomRoom()V

    .line 2056
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p1

    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->SwitchingWorkMode:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;)V

    return-void
.end method

.method private updateCachedLocationInfo(Lus/zoom/zrcsdk/model/ZRCLocationInfo;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 451
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->getCachedLocationInfos()Ljava/util/List;

    move-result-object v0

    .line 452
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCLocationInfo;

    if-eqz v2, :cond_1

    .line 453
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->getLocationID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->getLocationID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 454
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 458
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private updateCachedRoomMeetingList(Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 497
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;->setFetchedTimeMillis(J)V

    .line 499
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->getCachedRoomMeetingLists()Ljava/util/List;

    move-result-object v0

    .line 500
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;

    if-eqz v2, :cond_1

    .line 501
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;->getRoomID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;->getRoomID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 502
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 506
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private updateCachedRoomMeetingLists(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 487
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;

    .line 488
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->updateCachedRoomMeetingList(Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private wipePassword()V
    .locals 4

    .line 326
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->password:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 329
    iget-object v2, p0, Lus/zoom/zrc/model/Model;->password:Ljava/lang/StringBuffer;

    const/16 v3, 0x30

    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 333
    iput-object v0, p0, Lus/zoom/zrc/model/Model;->password:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public LoginInfoPullBack(Lus/zoom/zrcsdk/model/LoginInfo;)V
    .locals 5

    const-string v0, "Get release note done."

    const/4 v1, 0x0

    .line 2899
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "Model"

    const-string v2, "LoginInfoPullBack: loginInfo=%s"

    const/4 v3, 0x1

    .line 2900
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2901
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->parseUserProfile(Lus/zoom/zrcsdk/model/LoginInfo;)V

    .line 2902
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->isH323Enabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/Model;->setH323Enabled(Z)V

    .line 2903
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/LoginInfo;->isCrcCalloutOnlyEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setCrcCalloutOnlyEnabled(Z)V

    .line 2906
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->checkEncryptedCommunicationWithZoomRoom()Z

    return-void
.end method

.method public absentRecurringEvent(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z
    .locals 1
    .param p1    # Lus/zoom/zrcsdk/model/ZRCMeetingListItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2201
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/PTApp;->absentRecurringEvent(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result p1

    return p1
.end method

.method public acceptIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)V
    .locals 1

    .line 2442
    instance-of v0, p1, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    if-eqz v0, :cond_0

    .line 2443
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/PTApp;->acceptIncomingSipCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)I

    goto :goto_0

    .line 2445
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/PTApp;->acceptIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;)I

    const/4 p1, 0x0

    .line 2446
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->setMeetingType(I)V

    :goto_0
    return-void
.end method

.method public amIHostOrCoHost()Z
    .locals 1

    .line 1530
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->amIHost:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->amICoHost:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public assignClosedCaption(IZ)Z
    .locals 1

    .line 2233
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrcsdk/ConfApp;->requestAssignClosedCaption(IZ)Z

    move-result p1

    return p1
.end method

.method public assignCohost(IZ)Z
    .locals 1

    .line 2228
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrcsdk/ConfApp;->requestAssignCohost(IZ)Z

    move-result p1

    return p1
.end method

.method public assignRoomCalendar(Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1965
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;->getServiceId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-eqz p3, :cond_1

    .line 1966
    invoke-virtual {p3}, Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;->getEmail()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    if-eqz p3, :cond_2

    .line 1967
    invoke-virtual {p3}, Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;->getResourceId()Ljava/lang/String;

    move-result-object v0

    .line 1968
    :cond_2
    iget-object p3, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {p3, p1, p2, v1, v0}, Lus/zoom/zrcsdk/PTApp;->assignRoomCalendar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public assignRoomLocation(Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCLocationTree;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 1973
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getLocationID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getType()I

    move-result p2

    invoke-virtual {v0, p1, v1, p2}, Lus/zoom/zrcsdk/PTApp;->assignRoomLocation(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1

    .line 1975
    :cond_0
    iget-object p2, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    const-string v0, ""

    const/16 v1, 0x5a

    invoke-virtual {p2, p1, v0, v1}, Lus/zoom/zrcsdk/PTApp;->assignRoomLocation(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public batchListCalendarEventsWithRooms(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
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

    .line 4664
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0, p1, p2, p3}, Lus/zoom/zrcsdk/PTApp;->batchListCalendarEventsWithRooms(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public callOutPSTNUser(Ljava/lang/String;Z)Z
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 2363
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getCallOutUserName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->createUserNameForPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v3, v0

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    .line 2365
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setCallOutUserName(Ljava/lang/String;)V

    .line 2366
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setCallOutNumberInCalling(Ljava/lang/String;)V

    .line 2367
    invoke-static {}, Lus/zoom/zrc/phonecall/PstnTonePlayer;->getInstance()Lus/zoom/zrc/phonecall/PstnTonePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/phonecall/PstnTonePlayer;->stopRingTone()V

    goto :goto_1

    .line 2369
    :cond_1
    invoke-direct {p0, v3}, Lus/zoom/zrc/model/Model;->setCallOutUserName(Ljava/lang/String;)V

    .line 2370
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setCallOutNumberInCalling(Ljava/lang/String;)V

    .line 2373
    :goto_1
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isCanRingingInPstnCall()Z

    move-result v7

    .line 2374
    iget-object v1, p0, Lus/zoom/zrc/model/Model;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    invoke-static {p1}, Lus/zoom/zrc/phonecall/PhoneCallNumberUtils;->pstnRealPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v4, p2

    invoke-virtual/range {v1 .. v7}, Lus/zoom/zrcsdk/ConfApp;->callOutPSTNUser(Ljava/lang/String;Ljava/lang/String;ZZZZ)Z

    move-result p1

    return p1
.end method

.method callThirdPartyMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 7
    .param p1    # Lus/zoom/zrcsdk/model/ZRCMeetingListItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2378
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;-><init>()V

    const/4 v1, 0x2

    .line 2379
    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->setMeetingType(I)V

    .line 2380
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->setMeetingListItem(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    .line 2381
    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/Model;->setMeetingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V

    const/16 v0, 0x1e

    .line 2383
    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/Model;->startPSTNCall(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "launch meeting failed when try to join third party meeting."

    const/4 v0, 0x0

    .line 2384
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 2388
    :cond_0
    invoke-static {p1}, Lus/zoom/zrc/model/ZRCThirdPartyMeetingUtils;->getDialNumber(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;

    move-result-object p1

    .line 2389
    invoke-static {p1}, Lus/zoom/zrc/phonecall/PhoneCallNumberUtils;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2391
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->createUserNameForPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2392
    invoke-direct {p0, v2}, Lus/zoom/zrc/model/Model;->setCallOutUserName(Ljava/lang/String;)V

    .line 2393
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setCallOutNumberInCalling(Ljava/lang/String;)V

    .line 2395
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    invoke-static {p1}, Lus/zoom/zrc/phonecall/PhoneCallNumberUtils;->pstnRealPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lus/zoom/zrcsdk/ConfApp;->callOutPSTNUser(Ljava/lang/String;Ljava/lang/String;ZZZZ)Z

    return-void
.end method

.method public canReserveOtherRoom()Z
    .locals 2

    .line 386
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getReserveOtherRoomInLocation()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public changeDomain(Ljava/lang/String;)V
    .locals 1

    .line 1795
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/ZRCSdk;->changeDomain(Ljava/lang/String;)V

    return-void
.end method

.method public changeSpeakerVolume(FZ)V
    .locals 13

    .line 1887
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setSpeakerVolume(F)V

    .line 1889
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1890
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSelectedSpeaker()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_1

    const-string v5, "changeSpeakerVolume volume=%s, isPersistent=%s for %s"

    const/4 v6, 0x3

    .line 1892
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v4

    invoke-static {v5, v6}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1894
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->setSpeaker_volume(F)V

    .line 1895
    iget-object v7, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getDeviceAlias()Ljava/lang/String;

    move-result-object v11

    move v8, p1

    move v12, p2

    invoke-virtual/range {v7 .. v12}, Lus/zoom/zrcsdk/PTApp;->setSpeakerVolume(FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_1

    :cond_1
    const-string v0, "changeSpeakerVolume volume=%s, isPersistent=%s"

    .line 1897
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1899
    iget-object v4, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    move v5, p1

    move v9, p2

    invoke-virtual/range {v4 .. v9}, Lus/zoom/zrcsdk/PTApp;->setSpeakerVolume(FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    :goto_1
    return-void
.end method

.method public checkEncryptedCommunicationWithZoomRoom()Z
    .locals 4

    .line 4533
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->featureList:Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 4540
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->isStandaloneZRP()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4545
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    .line 4546
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsEncryptedConnection()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 4547
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/PTApp;->isEncryptedConnectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x32

    .line 4550
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/model/Model;->kickedOutBy:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 4551
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setConnectionVerified(Z)V

    const/4 v1, 0x3

    .line 4552
    invoke-virtual {p0, v1}, Lus/zoom/zrc/model/Model;->setAppState(I)V

    .line 4553
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->closeConnection()V

    .line 4555
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v1

    sget-object v2, Lus/zoom/zrc/base/notification/ModelEvent;->ConnectionClosed:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return v0

    :cond_2
    return v1
.end method

.method public checkIfNeedGetProfileAmendment()V
    .locals 1

    .line 2476
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/PTApp;->checkIfNeedGetProfileAmendment()V

    return-void
.end method

.method public checkInCalendarEvent(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z
    .locals 4
    .param p1    # Lus/zoom/zrcsdk/model/ZRCMeetingListItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2207
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->meetingList:Lus/zoom/zrc/model/MeetingList;

    invoke-virtual {v0}, Lus/zoom/zrc/model/MeetingList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    .line 2208
    invoke-virtual {v2, p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isSame(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const-string v0, "checking in meeting \'%s\' is not found in model\'s meeting list."

    const/4 v1, 0x1

    .line 2214
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getMeetingName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 2218
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {p1, v1}, Lus/zoom/zrcsdk/PTApp;->checkInCalendarEvent(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result p1

    return p1
.end method

.method public closeConnection()V
    .locals 2

    .line 2111
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/PTApp;->closeConnection()I

    .line 2112
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->restartHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public connectWithZoomRoom()V
    .locals 4

    const/4 v0, 0x0

    .line 2069
    iput-object v0, p0, Lus/zoom/zrc/model/Model;->kickedOutBy:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 2070
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setConnectionVerified(Z)V

    .line 2072
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->isStandaloneZRP()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2073
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->isRefreshingXmppToken:Z

    if-eqz v0, :cond_0

    return-void

    .line 2076
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/PTApp;->connectWithNotificationServer()Z

    goto :goto_0

    .line 2078
    :cond_1
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->getZoomRoomAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "connect to Zoom Room: %s"

    const/4 v3, 0x1

    .line 2079
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2080
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/PTApp;->connectZR(Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public createNewRoom(Ljava/lang/String;)Z
    .locals 2

    .line 1961
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lus/zoom/zrcsdk/PTApp;->createNewRoom(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public declineIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)V
    .locals 1

    .line 2434
    instance-of v0, p1, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    if-eqz v0, :cond_0

    .line 2435
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/PTApp;->declineIncomingSipCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)I

    goto :goto_0

    .line 2437
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/PTApp;->declineIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;)I

    :goto_0
    return-void
.end method

.method public deleteCalendarEvent(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z
    .locals 1
    .param p1    # Lus/zoom/zrcsdk/model/ZRCMeetingListItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2193
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/PTApp;->deleteCalendarEvent(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result p1

    return p1
.end method

.method public deleteCalendarEventWithRoom(Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z
    .locals 1

    .line 4673
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrcsdk/PTApp;->deleteCalendarEventWithRoom(Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result p1

    return p1
.end method

.method public deleteCalendarRecurrence(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z
    .locals 1
    .param p1    # Lus/zoom/zrcsdk/model/ZRCMeetingListItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2197
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/PTApp;->deleteCalendarRecurrence(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result p1

    return p1
.end method

.method public directRefreshExchangeCalendarAccessToken()V
    .locals 1

    .line 2484
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/PTApp;->refreshCalendarAccessToken()Z

    return-void
.end method

.method public directRefreshGoogleCalendarAccessToken()V
    .locals 1

    .line 2480
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/PTApp;->refreshCalendarAccessToken()Z

    return-void
.end method

.method public downloadFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1862
    invoke-virtual {p0, p1, p2, v0, v0}, Lus/zoom/zrc/model/Model;->downloadFile(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public downloadFile(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    .line 1866
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0, p1, p2, p3, p4}, Lus/zoom/zrcsdk/PTApp;->downloadingFile(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    return-void
.end method

.method public endAndAcceptSipCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 1

    .line 4854
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/PTApp;->endAndAcceptSipCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)I

    return-void
.end method

.method public exitMeeting(Z)Z
    .locals 1

    .line 2289
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/ConfApp;->exitMeeting(Z)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public expelUser(I)V
    .locals 1

    .line 2293
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/ConfApp;->expelUser(I)I

    return-void
.end method

.method public findLocationInfoInCachedListByLocationID(Ljava/lang/String;)Lus/zoom/zrcsdk/model/ZRCLocationInfo;
    .locals 4

    .line 433
    invoke-static {p1}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 437
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->getCachedLocationInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCLocationInfo;

    if-eqz v2, :cond_1

    .line 438
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->getLocationID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method public findRoomMeetingsInCachedListByRoomID(Ljava/lang/String;)Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;
    .locals 4

    .line 469
    invoke-static {p1}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 473
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->getCachedRoomMeetingLists()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;

    if-eqz v2, :cond_1

    .line 474
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;->getRoomID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method public generateGoogleLoginUrl()Ljava/lang/String;
    .locals 1

    .line 1940
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/PTApp;->GenerateGoogleLoginURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateZoomAuthParameter()Ljava/lang/String;
    .locals 1

    .line 1953
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/PTApp;->generateZoomAuthParameter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountID()Ljava/lang/String;
    .locals 1

    .line 601
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->accountID:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountLocationTree()Lus/zoom/zrcsdk/model/ZRCLocationTree;
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 391
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->accountLocationTree:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    return-object v0
.end method

.method public getAirPlayBlackMagicStatus()Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1429
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->airPlayBlackMagicStatus:Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;

    if-nez v0, :cond_0

    .line 1430
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/Model;->airPlayBlackMagicStatus:Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;

    .line 1431
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->airPlayBlackMagicStatus:Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;

    return-object v0
.end method

.method public getAllRoomListItemDetails()Ljava/util/List;
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;",
            ">;"
        }
    .end annotation

    .line 524
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->allRoomListItemDetails:Ljava/util/List;

    return-object v0
.end method

.method public getAppState()I
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 339
    iget v0, p0, Lus/zoom/zrc/model/Model;->appState:I

    return v0
.end method

.method public getAudioCheckupInfo()Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1214
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->audioCheckupInfo:Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;

    return-object v0
.end method

.method public getAudioStatus()Lus/zoom/zrcsdk/model/ZRCAudioStatus;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1188
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->audioStatus:Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    return-object v0
.end method

.method public getCalendarInfo()Lus/zoom/zrcsdk/model/ZRCCalendarInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1385
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->calendarInfo:Lus/zoom/zrcsdk/model/ZRCCalendarInfo;

    return-object v0
.end method

.method public getCalendarRefreshInterval()I
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1039
    iget v0, p0, Lus/zoom/zrc/model/Model;->calendarRefreshInterval:I

    return v0
.end method

.method public getCalendarType()I
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1027
    iget v0, p0, Lus/zoom/zrc/model/Model;->calendarType:I

    return v0
.end method

.method public getCallOutCountryCode()Ljava/util/List;
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/CountryCode;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 736
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->callOutCountryCode:Ljava/util/List;

    if-nez v0, :cond_0

    .line 737
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    return-object v0
.end method

.method public getCallOutNumberInCalling()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1482
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->callOutNumberInCalling:Ljava/lang/String;

    return-object v0
.end method

.method public getCallOutUserName()Ljava/lang/String;
    .locals 1

    .line 664
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->callOutUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getCameraSharingStatus()Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1444
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->cameraSharingStatus:Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    if-nez v0, :cond_0

    .line 1445
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/Model;->cameraSharingStatus:Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    .line 1446
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->cameraSharingStatus:Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    return-object v0
.end method

.method public getCheckInOption()Lus/zoom/zrc/model/ZRCCheckInOption;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 829
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->checkInOption:Lus/zoom/zrc/model/ZRCCheckInOption;

    if-nez v0, :cond_0

    .line 830
    new-instance v0, Lus/zoom/zrc/model/ZRCCheckInOption;

    invoke-direct {v0}, Lus/zoom/zrc/model/ZRCCheckInOption;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/Model;->checkInOption:Lus/zoom/zrc/model/ZRCCheckInOption;

    .line 832
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->checkInOption:Lus/zoom/zrc/model/ZRCCheckInOption;

    return-object v0
.end method

.method public getClosedCaptionInfo()Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1343
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->closedCaptionInfo:Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;

    if-nez v0, :cond_0

    .line 1344
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/Model;->closedCaptionInfo:Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;

    .line 1345
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->closedCaptionInfo:Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;

    return-object v0
.end method

.method public getCloudPBXServiceInfo()Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 4403
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getSipService()Lus/zoom/zrcsdk/model/ZRCSipService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4404
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSipService;->getCloudPBXServiceInfo()Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCloudRecordingNotificationEmail()Ljava/lang/String;
    .locals 1

    .line 1461
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->cloudRecordingNotificationEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getControlSystemDevices()Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1725
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->controlSystemDevices:Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;

    return-object v0
.end method

.method public getControllerDeviceCapability()Lus/zoom/zrcsdk/model/ZRCControllerDeviceCapability;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 685
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->deviceCapability:Lus/zoom/zrcsdk/model/ZRCControllerDeviceCapability;

    return-object v0
.end method

.method public getCurrentCameraIntelligentZoomStatus()Z
    .locals 1

    .line 2271
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/PTApp;->getCurrentCameraIntelligentZoomStatus()Z

    move-result v0

    return v0
.end method

.method public getCustomHDMILabel()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 962
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->customHDMILabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getDefaultCallInCountry()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 720
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->defaultCallInCountry:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 4079
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/PTApp;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayRoomName()Ljava/lang/String;
    .locals 3

    .line 4033
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getUserProfile()Lus/zoom/zrc/model/ZRCUserProfile;

    move-result-object v0

    .line 4034
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getRoomInfo()Lus/zoom/zrcsdk/model/ZRCRoomInfo;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 4035
    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCUserProfile;->getFirstName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 4036
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public getDynamicallyCloudPbxContactList()Lus/zoom/zrcsdk/model/ZRCDynamicContactList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 622
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->cloudPbxContactList:Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    return-object v0
.end method

.method public getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 846
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->featureList:Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    if-nez v0, :cond_0

    .line 847
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;-><init>()V

    return-object v0

    :cond_0
    return-object v0
.end method

.method public getGenericSettings()Lus/zoom/zrcsdk/model/ZRCGenericSettings;
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 922
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->genericSettings:Lus/zoom/zrcsdk/model/ZRCGenericSettings;

    if-nez v0, :cond_0

    .line 923
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCGenericSettings;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/ZRCGenericSettings;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/Model;->genericSettings:Lus/zoom/zrcsdk/model/ZRCGenericSettings;

    .line 924
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->genericSettings:Lus/zoom/zrcsdk/model/ZRCGenericSettings;

    return-object v0
.end method

.method public getIpAddressOfZoomRoom()Ljava/lang/String;
    .locals 5

    .line 4009
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->getZoomRoomAddress()Ljava/lang/String;

    move-result-object v0

    .line 4011
    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v1, "://((?:[^:]*:){7}[^:]*):?"

    const/4 v2, 0x2

    .line 4016
    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 4017
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 4018
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    if-lt v3, v4, :cond_1

    .line 4019
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v1, "://([^:]+):?"

    .line 4023
    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 4024
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 4025
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    if-lt v2, v4, :cond_2

    .line 4026
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v0
.end method

.method public getKickedOutBy()Ljava/lang/Integer;
    .locals 1

    .line 370
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->kickedOutBy:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLastMeetingNumber()Ljava/lang/String;
    .locals 1

    .line 1135
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->lastMeetingNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getListMeetingResult()I
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1063
    iget v0, p0, Lus/zoom/zrc/model/Model;->listMeetingResult:I

    return v0
.end method

.method public getLocalViewStatus()Z
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 540
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->isLocalView:Z

    return v0
.end method

.method public getLoginType()I
    .locals 1

    .line 4280
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    .line 4281
    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->getLogin_type()I

    move-result v0

    return v0
.end method

.method public getMeetingAudioTroubleShootingStatus()Lus/zoom/zrcsdk/model/ZRCMeetingAudioTroubleShootingStatus;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1359
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->meetingAudioTroubleShootingStatus:Lus/zoom/zrcsdk/model/ZRCMeetingAudioTroubleShootingStatus;

    return-object v0
.end method

.method public getMeetingChatMessageManager()Lus/zoom/zrc/model/MeetingChatMessageManager;
    .locals 1

    .line 680
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->meetingChatMessageManager:Lus/zoom/zrc/model/MeetingChatMessageManager;

    return-object v0
.end method

.method public getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1124
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->meetingInfo:Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    return-object v0
.end method

.method public getMeetingList()Lus/zoom/zrc/model/MeetingList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 813
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->meetingList:Lus/zoom/zrc/model/MeetingList;

    if-nez v0, :cond_0

    .line 814
    new-instance v0, Lus/zoom/zrc/model/MeetingList;

    invoke-direct {v0}, Lus/zoom/zrc/model/MeetingList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/Model;->meetingList:Lus/zoom/zrc/model/MeetingList;

    .line 816
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->meetingList:Lus/zoom/zrc/model/MeetingList;

    return-object v0
.end method

.method public getMeetingStatus()I
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 366
    iget v0, p0, Lus/zoom/zrc/model/Model;->meetingStatus:I

    return v0
.end method

.method public getMeetingType()I
    .locals 1

    .line 350
    iget v0, p0, Lus/zoom/zrc/model/Model;->meetingType:I

    return v0
.end method

.method public getMicrophoneTestRecordingStatus()I
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1273
    iget v0, p0, Lus/zoom/zrc/model/Model;->microphoneTestRecordingStatus:I

    return v0
.end method

.method public getOperationTimeStatus()Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1172
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->operationTimeStatus:Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;

    if-nez v0, :cond_0

    .line 1173
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/Model;->operationTimeStatus:Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;

    .line 1175
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->operationTimeStatus:Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;

    return-object v0
.end method

.method public getParticipantList()Lus/zoom/zrc/model/ZRCParticipantList;
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1620
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->participantList:Lus/zoom/zrc/model/ZRCParticipantList;

    if-nez v0, :cond_0

    .line 1621
    new-instance v0, Lus/zoom/zrc/model/ZRCParticipantList;

    invoke-direct {v0}, Lus/zoom/zrc/model/ZRCParticipantList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/Model;->participantList:Lus/zoom/zrc/model/ZRCParticipantList;

    .line 1622
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->participantList:Lus/zoom/zrc/model/ZRCParticipantList;

    return-object v0
.end method

.method public getPinUserManager()Lus/zoom/zrc/model/ZRCPinUserManager;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 4057
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getPinUserManager()Lus/zoom/zrc/model/ZRCPinUserManager;

    move-result-object v0

    return-object v0
.end method

.method public getPstnCallOutStatus()I
    .locals 1

    .line 656
    iget v0, p0, Lus/zoom/zrc/model/Model;->pstnCallOutStatus:I

    return v0
.end method

.method public getPushedActivationCode()Ljava/lang/String;
    .locals 1

    .line 4308
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    .line 4309
    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->getPushedActivationCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPushedAutoSignInSequence()Ljava/lang/String;
    .locals 1

    .line 4318
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    .line 4319
    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->getPushedAutoSignInSequence()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPushedWorkMode()I
    .locals 1

    .line 4313
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    .line 4314
    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->getPushedWorkMode()I

    move-result v0

    return v0
.end method

.method public getReleaseNotesRefreshInterval()J
    .locals 4
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1400
    iget-wide v0, p0, Lus/zoom/zrc/model/Model;->releaseNotesRefreshInterval:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public getReserveOtherRoomInLocation()I
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 375
    iget v0, p0, Lus/zoom/zrc/model/Model;->reserveOtherRoomInLocation:I

    return v0
.end method

.method public getRoomDisplayVersion()Ljava/lang/String;
    .locals 2

    .line 4040
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getRoomInfo()Lus/zoom/zrcsdk/model/ZRCRoomInfo;

    move-result-object v0

    .line 4041
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->getDisplayVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4042
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->getDisplayVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4044
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/PTApp;->getZRVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoomInfo()Lus/zoom/zrcsdk/model/ZRCRoomInfo;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 862
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->roomInfo:Lus/zoom/zrcsdk/model/ZRCRoomInfo;

    if-nez v0, :cond_0

    .line 863
    invoke-static {}, Lus/zoom/zrc/model/ZRCNullRoomInfo;->get()Lus/zoom/zrc/model/ZRCNullRoomInfo;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/model/Model;->roomInfo:Lus/zoom/zrcsdk/model/ZRCRoomInfo;

    .line 865
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->roomInfo:Lus/zoom/zrcsdk/model/ZRCRoomInfo;

    return-object v0
.end method

.method public getRoomParentLocationID()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 403
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->roomParentLocationID:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomParentLocationInfo()Lus/zoom/zrcsdk/model/ZRCLocationInfo;
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 415
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->roomParentLocationInfo:Lus/zoom/zrcsdk/model/ZRCLocationInfo;

    return-object v0
.end method

.method public getRoomProfiles()Ljava/util/List;
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;",
            ">;"
        }
    .end annotation

    .line 1662
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->roomProfiles:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1663
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/Model;->roomProfiles:Ljava/util/List;

    .line 1665
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->roomProfiles:Ljava/util/List;

    return-object v0
.end method

.method public getRoomScreenInfo()Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1286
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->roomScreenInfo:Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;

    if-nez v0, :cond_0

    .line 1287
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/Model;->roomScreenInfo:Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;

    .line 1289
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->roomScreenInfo:Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;

    return-object v0
.end method

.method getRoomSystemSessionStatus()Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 789
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->roomSystemSessionStatus:Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    return-object v0
.end method

.method public getScreenResolutionStatus()I
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1302
    iget v0, p0, Lus/zoom/zrc/model/Model;->screenResolutionStatus:I

    return v0
.end method

.method public getSelectedVirtualBackground()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1752
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->selectedVirtualBackground:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedWhiteboardCamera()Lus/zoom/zrcsdk/model/ZMDeviceItem;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 577
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->selectedWhiteboardCamera:Lus/zoom/zrcsdk/model/ZMDeviceItem;

    return-object v0
.end method

.method public getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 937
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->settingsDeviceInfo:Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    return-object v0
.end method

.method public getSharingStatus()Lus/zoom/zrcsdk/model/ZRCSharingStatus;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1414
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->sharingStatus:Lus/zoom/zrcsdk/model/ZRCSharingStatus;

    if-nez v0, :cond_0

    .line 1415
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCSharingStatus;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/ZRCSharingStatus;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/Model;->sharingStatus:Lus/zoom/zrcsdk/model/ZRCSharingStatus;

    .line 1416
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->sharingStatus:Lus/zoom/zrcsdk/model/ZRCSharingStatus;

    return-object v0
.end method

.method public getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 4843
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->sipCallInfoList:Lus/zoom/zrc/model/SipCallInfoList;

    if-nez v0, :cond_0

    .line 4844
    new-instance v0, Lus/zoom/zrc/model/SipCallInfoList;

    invoke-direct {v0}, Lus/zoom/zrc/model/SipCallInfoList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/Model;->sipCallInfoList:Lus/zoom/zrc/model/SipCallInfoList;

    .line 4846
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->sipCallInfoList:Lus/zoom/zrc/model/SipCallInfoList;

    return-object v0
.end method

.method public getSipService()Lus/zoom/zrcsdk/model/ZRCSipService;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1249
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->sipService:Lus/zoom/zrcsdk/model/ZRCSipService;

    return-object v0
.end method

.method public getSpeakerVolume()F
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 949
    iget v0, p0, Lus/zoom/zrc/model/Model;->speakerVolume:F

    return v0
.end method

.method public getSpotlightStatus()Lus/zoom/zrcsdk/model/ZRCSpotlightStatus;
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1548
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->spotlightStatus:Lus/zoom/zrcsdk/model/ZRCSpotlightStatus;

    return-object v0
.end method

.method public getTotalVisibleParticipantNumber()I
    .locals 3

    .line 1598
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1601
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->getTotalOfParticipants()I

    move-result v0

    .line 1603
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isSupportSilentModeMeeting()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 1606
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->amIHostOrCoHost()Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 1609
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getParticipantList()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/ZRCParticipantList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCParticipant;

    if-eqz v2, :cond_3

    .line 1610
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isInSilentMode()Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public getUltrasoundPlayerCandidateDeviceId()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1712
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->ultrasoundPlayerCandidateDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 592
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->userID:Ljava/lang/String;

    return-object v0
.end method

.method public getUserProfile()Lus/zoom/zrc/model/ZRCUserProfile;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 896
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->userProfile:Lus/zoom/zrc/model/ZRCUserProfile;

    return-object v0
.end method

.method public getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1159
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->videoLayoutStatus:Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    return-object v0
.end method

.method public getVideoStatus()Lus/zoom/zrcsdk/model/ZRCVideoStatus;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1201
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->videoStatus:Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    return-object v0
.end method

.method public getVirtualAudioDeviceList()Ljava/util/HashMap;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;",
            ">;>;"
        }
    .end annotation

    .line 1648
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->virtualAudioDeviceList:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 1649
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/Model;->virtualAudioDeviceList:Ljava/util/HashMap;

    .line 1651
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->virtualAudioDeviceList:Ljava/util/HashMap;

    return-object v0
.end method

.method public getVirtualBackgrounds()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCVirtualBackground;",
            ">;"
        }
    .end annotation

    .line 1739
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->virtualBackgrounds:Ljava/util/List;

    return-object v0
.end method

.method public getWhiteboardCameraInfo()Lus/zoom/zrcsdk/model/ZMDeviceInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 553
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->whiteboardCameraInfo:Lus/zoom/zrcsdk/model/ZMDeviceInfo;

    return-object v0
.end method

.method public getWhiteboardCameraList()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZMDeviceItem;",
            ">;"
        }
    .end annotation

    .line 564
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->whiteboardCameraList:Ljava/util/List;

    return-object v0
.end method

.method public getWorkEmail()Ljava/lang/String;
    .locals 1

    .line 318
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->workEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkMode()I
    .locals 1

    .line 4292
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    .line 4293
    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->getWorkMode()I

    move-result v0

    return v0
.end method

.method public getZRCDisplayVersion()Ljava/lang/String;
    .locals 1

    .line 4049
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->zrcVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 4050
    :cond_0
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/PTApp;->getZRCDisplayVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/model/Model;->zrcVersion:Ljava/lang/String;

    .line 4052
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->zrcVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getZRWSharingStatus()Lus/zoom/zrcsdk/model/ZRWSharingStatus;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1467
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->zrwSharingStatus:Lus/zoom/zrcsdk/model/ZRWSharingStatus;

    if-nez v0, :cond_0

    .line 1468
    new-instance v0, Lus/zoom/zrcsdk/model/ZRWSharingStatus;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/ZRWSharingStatus;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/Model;->zrwSharingStatus:Lus/zoom/zrcsdk/model/ZRWSharingStatus;

    .line 1469
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->zrwSharingStatus:Lus/zoom/zrcsdk/model/ZRWSharingStatus;

    return-object v0
.end method

.method public getZoomRefreshToken()Ljava/lang/String;
    .locals 1

    .line 4363
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    .line 4364
    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->getZoomToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZoomRoomCapability()Lus/zoom/zrcsdk/model/ZoomRoomCapability;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 880
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->zoomRoomCapability:Lus/zoom/zrcsdk/model/ZoomRoomCapability;

    if-nez v0, :cond_0

    .line 881
    new-instance v0, Lus/zoom/zrcsdk/model/ZoomRoomCapability;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/ZoomRoomCapability;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/Model;->zoomRoomCapability:Lus/zoom/zrcsdk/model/ZoomRoomCapability;

    .line 883
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->zoomRoomCapability:Lus/zoom/zrcsdk/model/ZoomRoomCapability;

    return-object v0
.end method

.method public getZoomRoomPassCode()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 975
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->zoomRoomPassCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getZoomRoomVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 909
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->zoomRoomVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getZrpBackgroundImgUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1145
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->zrpBackgroundImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public handleGoogleOAuthURLAction(Ljava/lang/String;)Z
    .locals 1

    .line 1944
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/PTApp;->handleGoogleOAuthURLAction(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hangupAllSipCall()V
    .locals 3

    const-string v0, "Model"

    const-string v1, "hangupAllSipCall() called"

    const/4 v2, 0x0

    .line 2464
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2465
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/SipCallInfoList;->getSipCallInfos()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    .line 2466
    invoke-virtual {p0, v1}, Lus/zoom/zrc/model/Model;->hangupSipCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public hangupSipCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 3

    const-string v0, "Model"

    .line 2451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hangup() called with: call = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    return-void

    .line 2455
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->isIncomingCall()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getStatus()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 2457
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->declineIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)V

    goto :goto_0

    .line 2459
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/PTApp;->hangupSipCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)I

    :goto_0
    return-void
.end method

.method public hasPassword()Z
    .locals 1

    .line 322
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->password:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPurePhoneUser()Z
    .locals 4

    .line 4439
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getParticipantList()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object v0

    .line 4440
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCParticipant;

    .line 4441
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getAudioStatus()Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCAudioStatus;->getAudioType()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    return v2

    .line 4445
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getCallOutNumberInCalling()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v2

    return v0
.end method

.method public hasUserInSilentMode()Z
    .locals 3

    .line 1572
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1574
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->isSupportSilentModeMeeting()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 1576
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getParticipantList()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCParticipantList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCParticipant;

    if-eqz v2, :cond_2

    .line 1577
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isInSilentMode()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_3
    return v1
.end method

.method public hasUserRaisingHand()Z
    .locals 4

    .line 1585
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1587
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsRaiseHand()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 1589
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getParticipantList()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCParticipantList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCParticipant;

    if-eqz v2, :cond_2

    .line 1590
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getHandStatus()Lus/zoom/zrcsdk/model/ZRCHandStatus;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getHandStatus()Lus/zoom/zrcsdk/model/ZRCHandStatus;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCHandStatus;->isRaiseHand()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_3
    return v1
.end method

.method public holdAndAcceptSipCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 1

    .line 4850
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/PTApp;->holdAndAcceptSipCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)I

    return-void
.end method

.method public holdSipCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 1

    .line 4858
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/PTApp;->holdSipCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)I

    return-void
.end method

.method public isAllRoomsExpired()Z
    .locals 5

    .line 588
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lus/zoom/zrc/model/Model;->allRoomsFetchedTimeMillis:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x6ddd00

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAmICoHost()Z
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1519
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->amICoHost:Z

    return v0
.end method

.method public isAmIGuest()Z
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1535
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->amIGuest:Z

    return v0
.end method

.method public isAmIHost()Z
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1507
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->amIHost:Z

    return v0
.end method

.method public isAuthenticated()Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    .line 4385
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getLoginType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    .line 4389
    :pswitch_0
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getZoomRefreshToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isAutoStartScheduleMeeting()Z
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 4831
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->isAutoStartScheduleMeeting:Z

    return v0
.end method

.method public isCalendarRefreshTokenExpired()Z
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1051
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->calendarRefreshTokenExpired:Z

    return v0
.end method

.method public isCallHistoryDisabled()Z
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1111
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->callHistoryDisabled:Z

    return v0
.end method

.method public isCanAttendeesUnmuteThemselves()Z
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1314
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->canAttendeesUnmuteThemselves:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1316
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isCanRaiseHandForAttendee()Z
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1236
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->canRaiseHandForAttendee:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsRaiseHand()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCheckInEnabled()Z
    .locals 2

    .line 4001
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getCheckInOption()Lus/zoom/zrc/model/ZRCCheckInOption;

    move-result-object v0

    .line 4002
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->isStandaloneZRP()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4003
    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCCheckInOption;->getStatus()Z

    move-result v0

    return v0

    .line 4005
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCCheckInOption;->getStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsCheckIn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCloudPBXSupported()Z
    .locals 2

    .line 4396
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    .line 4397
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getCloudPBXServiceInfo()Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;

    move-result-object v1

    .line 4398
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsCloudPbx()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConnectedToZoomRoom()Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    .line 4422
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public isConnectingToZoomRoom()Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    .line 4417
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCrcCalloutOnlyEnabled()Z
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1700
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->crcCalloutOnlyEnabled:Z

    return v0
.end method

.method public isCurrentSelectedMicrophoneMuted()Z
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1226
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->currentSelectedMicrophoneMuted:Z

    return v0
.end method

.method public isDisableNextMeetingAlert()Z
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 4783
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->disableNextMeetingAlert:Z

    return v0
.end method

.method public isDisableNextMeetingAlertInMeeting()Z
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 4795
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->disableNextMeetingAlertInMeeting:Z

    return v0
.end method

.method public isDisableNextMeetingAlertOnController()Z
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 4807
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->disableNextMeetingAlertOnController:Z

    return v0
.end method

.method public isDisableNextMeetingAlertOnTV()Z
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 4819
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->disableNextMeetingAlertOnTV:Z

    return v0
.end method

.method public isDisplayTopBanner()Z
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1328
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->displayTopBanner:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1330
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isForcePrivateMeeting()Z
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1002
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->forcePrivateMeeting:Z

    return v0
.end method

.method public isH323Enabled()Z
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 763
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->h323Enabled:Z

    return v0
.end method

.method public isHideContactList()Z
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1261
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->hideContactList:Z

    return v0
.end method

.method public isHideHostInfoForPrivateMeeting()Z
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1015
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->hideHostInfoForPrivateMeeting:Z

    return v0
.end method

.method public isIOSSharingDisabled()Z
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1495
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->iOSSharingDisabled:Z

    return v0
.end method

.method public isInAirHostShare()Z
    .locals 2

    .line 3987
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getAirPlayBlackMagicStatus()Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;

    move-result-object v0

    .line 3988
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isAirHostClientConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3989
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->getInstructionDisplayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isInNormalMeeting()Z
    .locals 2

    .line 4948
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getMeetingType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInSharingMeeting()Z
    .locals 3

    .line 4944
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getMeetingType()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isInSilentMode()Z
    .locals 1

    .line 3993
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->isInSilentMode:Z

    return v0
.end method

.method public isLocalPresentationSharing()Z
    .locals 1

    .line 4940
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->isInSharingMeeting()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getAirPlayBlackMagicStatus()Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isAirHostClientConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isMasterOfMultiStandaloneZRP()Z
    .locals 3

    .line 693
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->isStandaloneZRP()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0xb

    .line 697
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    .line 701
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->standaloneZRPResources:[Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    array-length v0, v0

    if-gt v0, v2, :cond_2

    goto :goto_0

    .line 705
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lus/zoom/zrc/model/Model;->standaloneZRPResources:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_3
    :goto_0
    return v2
.end method

.method public isPostMeetingFeedbackEnabled()Z
    .locals 1

    .line 676
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->postMeetingFeedbackEnabled:Z

    return v0
.end method

.method public isPublicRoomEnabled()Z
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 751
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->isPublicRoomEnabled:Z

    return v0
.end method

.method public isRequestIdForCurrentDevice(Ljava/lang/String;)Z
    .locals 2

    .line 4771
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsMultiControllers()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 4774
    :cond_0
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public isSettingsLocked()Z
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 987
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->settingsLocked:Z

    return v0
.end method

.method public isShareDualCameraSupported()Z
    .locals 4

    .line 4069
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 4070
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getCameraList()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 4073
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getCameraList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4074
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsShareCamera()Z

    move-result v3

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v1
.end method

.method public isSharingCameraEqualToSelectedCamera()Z
    .locals 3

    .line 3728
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getCameraSharingStatus()Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    move-result-object v0

    .line 3729
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->isSharing()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3730
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3732
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSelectedCamera()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3733
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lus/zoom/zrcsdk/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    return v2
.end method

.method public isShowAudioParticipant()Z
    .locals 1

    .line 626
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->showAudioParticipant:Z

    return v0
.end method

.method public isShownAllVirtualAudioDevices()Z
    .locals 1

    .line 709
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->isShownAllVirtualAudioDevices:Z

    return v0
.end method

.method public isSpeakerTestingStopped()Z
    .locals 1

    .line 630
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->isSpeakerTestingStopped:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public isSpeakerVolumeAdjustable()Z
    .locals 1

    .line 4435
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->isIs_speaker_volume_adjustable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSpeakerVolumeControlLocked()Z
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1371
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->speakerVolumeControlLocked:Z

    return v0
.end method

.method public isStandaloneDigitalSignage()Z
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1087
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->isStandaloneDigitalSignage:Z

    return v0
.end method

.method public isStandaloneZRP()Z
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1075
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->isStandaloneZRP:Z

    return v0
.end method

.method public isSupportAllowAttendeesUnmuteThemselves()Z
    .locals 1

    .line 4061
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->canAttendeesUnmuteThemselves:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSupportDisplayTopBanner()Z
    .locals 1

    .line 4065
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->displayTopBanner:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isThirdPartyMeetingEnabled()Z
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 776
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->thirdPartyMeetingEnabled:Z

    return v0
.end method

.method public isUserSpotlighted(I)Z
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 1562
    :cond_0
    iget-object v2, p0, Lus/zoom/zrc/model/Model;->spotlightStatus:Lus/zoom/zrcsdk/model/ZRCSpotlightStatus;

    if-nez v2, :cond_1

    return v1

    .line 1565
    :cond_1
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCSpotlightStatus;->getUserId()I

    move-result v2

    if-ne v2, v0, :cond_2

    return v1

    .line 1568
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->spotlightStatus:Lus/zoom/zrcsdk/model/ZRCSpotlightStatus;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSpotlightStatus;->getUserId()I

    move-result v0

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/Util;->areTwoUserIdsEqual(II)Z

    move-result p1

    return p1
.end method

.method public isZrpReserveDisabled()Z
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1099
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->zrpReserveDisabled:Z

    return v0
.end method

.method public joinSipCallToMeeting(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 1

    .line 4878
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/PTApp;->joinSipCallToMeeting(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)I

    return-void
.end method

.method public launchSharingMeeting(IILjava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2340
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getAirPlayBlackMagicStatus()Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;

    move-result-object v3

    invoke-virtual {v3, p4}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->setInstructionDisplayState(I)V

    .line 2342
    invoke-direct {p0, v1}, Lus/zoom/zrc/model/Model;->setMeetingStatus(I)V

    const/4 v3, 0x6

    .line 2344
    invoke-virtual {p0, v3}, Lus/zoom/zrc/model/Model;->setAppState(I)V

    .line 2345
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->setMeetingType(I)V

    .line 2347
    iget-object p1, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {p1, v2, p2, p3, p4}, Lus/zoom/zrcsdk/PTApp;->startSharingMeeting(ZILjava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    const-string p1, "launching sharing meeting...."

    .line 2349
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return v1
.end method

.method public listCalendarEventsWithRoom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 4660
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0, p1, p2, p3}, Lus/zoom/zrcsdk/PTApp;->listCalendarEventsWithRoom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public listMeeting()V
    .locals 1

    .line 1857
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/PTApp;->listMeeting()I

    return-void
.end method

.method public loginWithGoogleAccessToken(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1948
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setLoginType(I)V

    .line 1949
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/PTApp;->loginWithGoogleAccessToken(Ljava/lang/String;)Z

    return-void
.end method

.method public loginWithLicenseKey(Ljava/lang/String;)Z
    .locals 6

    .line 1984
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Android"

    sget-object v4, Lus/zoom/zrc/utils/DeviceInfoUtils;->OS_VERSION:Ljava/lang/String;

    iget-object v1, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/PTApp;->getZRCVersion()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lus/zoom/zrcsdk/PTApp;->loginWithLicenseKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1986
    invoke-direct {p0, v1}, Lus/zoom/zrc/model/Model;->setConnectionVerified(Z)V

    .line 1987
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->licenseKey:Ljava/lang/String;

    const/4 p1, 0x0

    .line 1988
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->workEmail:Ljava/lang/String;

    .line 1989
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->wipePassword()V

    .line 1991
    invoke-direct {p0, v2}, Lus/zoom/zrc/model/Model;->setLoginType(I)V

    goto :goto_0

    :cond_0
    const-string v3, "loginWithLicenseKey error (licenseKey=%s)"

    .line 1993
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v3, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0
.end method

.method public loginWithWorkEmail(Ljava/lang/String;Ljava/lang/StringBuffer;)Z
    .locals 6

    .line 1922
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->getZoomRoomEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lus/zoom/zrcsdk/PTApp;->loginWithWorkEmail(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const-string v4, "loginWithWorkEmail(%s, %s)..."

    .line 1924
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {p2}, Lus/zoom/zrcsdk/util/StringUtil;->logPassword(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v4, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1926
    invoke-direct {p0, v3}, Lus/zoom/zrc/model/Model;->setConnectionVerified(Z)V

    .line 1927
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->workEmail:Ljava/lang/String;

    .line 1928
    iput-object p2, p0, Lus/zoom/zrc/model/Model;->password:Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    .line 1929
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->licenseKey:Ljava/lang/String;

    .line 1930
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->pairingCode:Ljava/lang/String;

    .line 1932
    invoke-direct {p0, v2}, Lus/zoom/zrc/model/Model;->setLoginType(I)V

    goto :goto_0

    :cond_0
    const-string v4, "loginWithWorkEmail error (email=%s, password=%s)"

    .line 1934
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {p2}, Lus/zoom/zrcsdk/util/StringUtil;->logPassword(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v4, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0
.end method

.method public logout(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1805
    invoke-virtual {p0, p1, v0}, Lus/zoom/zrc/model/Model;->logout(ZI)V

    return-void
.end method

.method public logout(ZI)V
    .locals 0

    .line 1809
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/model/Model;->logoutInternal(ZI)V

    .line 1810
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p1

    sget-object p2, Lus/zoom/zrc/base/notification/ModelEvent;->Logout:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {p1, p2}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;)V

    return-void
.end method

.method public mergeSipCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 1

    .line 4866
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrcsdk/PTApp;->mergeSipCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)I

    return-void
.end method

.method public notifyZoomRoomControllerLoggedIn()V
    .locals 3

    .line 2015
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getLoginType()I

    move-result v0

    if-nez v0, :cond_0

    .line 2016
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getZoomRefreshToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->getZoomRoomEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrcsdk/PTApp;->loginWithGoogle(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2018
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getZoomRefreshToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->getZoomRoomEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrcsdk/PTApp;->loginWithZoomToken(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    :goto_0
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->ControllerLoggedInAtPairedMode:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;)V

    return-void
.end method

.method public onAllowAttendeesUnmuteThemselvesNotification(Z)V
    .locals 0

    .line 3354
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setCanAttendeesUnmuteThemselves(Ljava/lang/Boolean;)V

    return-void
.end method

.method onAnswerHostRequestUnmuteAudioResult(Z)V
    .locals 2

    .line 3853
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->AnswerHostRequestUnmuteAudioResult:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method onAnswerHostRequestUnmuteVideoResult(Z)V
    .locals 2

    .line 3849
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->AnswerHostRequestUnmuteVideoResult:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method onAnswerIncomingCallResult(ILjava/lang/String;Lus/zoom/zrcsdk/model/ZRCIncomingCall;Z)V
    .locals 10

    .line 3506
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->AnswerIncomingCallResult:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v2, "result"

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3507
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "requestId"

    const-string v6, "call"

    const-string v8, "accepted"

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object v5, p2

    move-object v7, p3

    invoke-static/range {v2 .. v9}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 3506
    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onAskToJoinThirdPartyMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 2

    .line 3511
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->OnAskToJoinThirdPartyMeeting:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onAssignRoomCalendarResult(ILus/zoom/zrcsdk/model/ZRCCalendarResourceItem;)V
    .locals 4

    .line 3258
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->AssignRoomCalendarDidFinished:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v2, "result"

    .line 3259
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "resource"

    invoke-static {v2, p1, v3, p2}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 3258
    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onAssignRoomLocationResult(ILjava/lang/String;)V
    .locals 4

    .line 3264
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->AssignRoomLocationDidFinished:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v2, "result"

    .line 3265
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "passCode"

    invoke-static {p2}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p1, v3, p2}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 3264
    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method onBatchUserChangedNotification(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;",
            ">;)V"
        }
    .end annotation

    .line 4163
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getWorkMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    return-void

    .line 4167
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->participantList:Lus/zoom/zrc/model/ZRCParticipantList;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->getTotalOfParticipants()I

    move-result v0

    if-eqz v0, :cond_4

    .line 4168
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->getTotalOfParticipants()I

    move-result v0

    iget-object v1, p0, Lus/zoom/zrc/model/Model;->participantList:Lus/zoom/zrc/model/ZRCParticipantList;

    invoke-virtual {v1}, Lus/zoom/zrc/model/ZRCParticipantList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 4171
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->participantList:Lus/zoom/zrc/model/ZRCParticipantList;

    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCParticipantList;->mutableCopy()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object v0

    .line 4173
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;

    .line 4174
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;->getEvent()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 4182
    :pswitch_0
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;->getParticipant()Lus/zoom/zrcsdk/model/ZRCParticipant;

    move-result-object v2

    invoke-virtual {v0, v2}, Lus/zoom/zrc/model/ZRCParticipantList;->changeHostTo(Lus/zoom/zrcsdk/model/ZRCParticipant;)V

    goto :goto_0

    .line 4185
    :pswitch_1
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;->getParticipant()Lus/zoom/zrcsdk/model/ZRCParticipant;

    move-result-object v2

    invoke-virtual {v0, v2}, Lus/zoom/zrc/model/ZRCParticipantList;->updateParticipant(Lus/zoom/zrcsdk/model/ZRCParticipant;)Z

    goto :goto_0

    .line 4179
    :pswitch_2
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;->getParticipant()Lus/zoom/zrcsdk/model/ZRCParticipant;

    move-result-object v2

    invoke-virtual {v0, v2}, Lus/zoom/zrc/model/ZRCParticipantList;->removeParticipantByUserId(Lus/zoom/zrcsdk/model/ZRCParticipant;)Z

    goto :goto_0

    .line 4176
    :pswitch_3
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;->getParticipant()Lus/zoom/zrcsdk/model/ZRCParticipant;

    move-result-object v2

    invoke-virtual {v0, v2}, Lus/zoom/zrc/model/ZRCParticipantList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4190
    :cond_2
    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCParticipantList;->sortParticipants()V

    .line 4192
    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCParticipantList;->size()I

    move-result v1

    .line 4193
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->getTotalOfParticipants()I

    move-result v2

    if-eq v2, v1, :cond_3

    .line 4194
    invoke-direct {p0, v1}, Lus/zoom/zrc/model/Model;->setTotalOfParticipants(I)V

    .line 4197
    :cond_3
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setParticipantList(Lus/zoom/zrc/model/ZRCParticipantList;)V

    .line 4199
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->ParticipantChanged:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v2, "changedParticipants"

    .line 4200
    invoke-static {v2, p1}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 4199
    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void

    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method onCalibrateScreenSequenceResult(IILjava/lang/String;I)V
    .locals 2

    .line 2588
    invoke-virtual {p0, p3}, Lus/zoom/zrc/model/Model;->isRequestIdForCurrentDevice(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2589
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getRoomScreenInfo()Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;

    move-result-object v0

    .line 2590
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;

    .line 2591
    invoke-virtual {v0, p2}, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;->setQuantityOfScreens(I)V

    .line 2592
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;->setCurrentScreen(I)V

    .line 2593
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/Model;->onUpdateRoomScreenInfo(Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;)V

    goto :goto_0

    :cond_0
    const-string p1, "Model"

    const-string p2, "onCalibrateScreenSequenceResult from other ZRCs."

    const/4 v0, 0x0

    .line 2595
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2598
    :goto_0
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p1

    sget-object p2, Lus/zoom/zrc/base/notification/ModelEvent;->OnCalibrateScreenSequenceResult:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v0, "requestId"

    const-string v1, "action"

    .line 2599
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {v0, p3, v1, p4}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p3

    .line 2598
    invoke-virtual {p1, p2, p3}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method onCameraControlResult(IIIIZLjava/lang/String;I)V
    .locals 2

    if-nez p1, :cond_0

    .line 3920
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object p1

    const-string v0, "result"

    const/4 v1, 0x1

    .line 3921
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object p1

    const-string v0, "type"

    .line 3922
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object p1

    const-string p2, "action"

    .line 3923
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object p1

    const-string p2, "userId"

    .line 3924
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object p1

    const-string p2, "accept"

    .line 3925
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object p1

    const-string p2, "deviceId"

    .line 3926
    invoke-virtual {p1, p2, p6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object p1

    const-string p2, "panTiltSpeedPercentage"

    .line 3927
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object p1

    .line 3928
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 3929
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p2

    sget-object p3, Lus/zoom/zrc/base/notification/ModelEvent;->OnCameraControlResult:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {p2, p3, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onCameraIntelligentZoomNotification(ZZ)V
    .locals 4

    const-string v0, "onCameraIntelligentZoomNotification. camera_intelligent_zoom_on=%s, can_control_camera=%s."

    const/4 v1, 0x2

    .line 3306
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3307
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3311
    :cond_0
    invoke-virtual {v0, p2}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->setCan_control_camera(Z)V

    .line 3312
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->setCameraIntelligentZoomOn(Z)V

    .line 3313
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p1

    sget-object p2, Lus/zoom/zrc/base/notification/ModelEvent;->onCameraIntelligentZoomNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {p1, p2}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;)V

    return-void
.end method

.method public onClose(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 2861
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->connectionVerified:Z

    if-nez v0, :cond_0

    const/16 v0, 0x64

    .line 2862
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/model/Model;->kickedOutBy:Ljava/lang/Integer;

    .line 2864
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/Model;->setAppState(I)V

    .line 2865
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->ConnectionClosed:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    .line 2867
    iget-object p1, p0, Lus/zoom/zrc/model/Model;->restartHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method onCloseCaptionControlResult(ILjava/lang/String;ZI)V
    .locals 0

    if-nez p1, :cond_0

    .line 3009
    invoke-static {p2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3010
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getClosedCaptionInfo()Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;

    .line 3011
    invoke-virtual {p2, p3}, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->setVisible(Z)V

    .line 3012
    invoke-virtual {p2, p4}, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->setFontSize(I)V

    .line 3013
    invoke-direct {p0, p2}, Lus/zoom/zrc/model/Model;->setClosedCaptionInfo(Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;)V

    .line 3015
    :cond_0
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p2

    sget-object p3, Lus/zoom/zrc/base/notification/ModelEvent;->SetCloseCaptionResult:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string p4, "result"

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3016
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 3015
    invoke-virtual {p2, p3, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onCloseUpcomingMeetingAlertResult(I)V
    .locals 3

    .line 3028
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->CloseUpcomingMeetingAlertResult:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v2, "result"

    .line 3029
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 3028
    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method onClosedCaptionResultNotification(Z)V
    .locals 2

    .line 3005
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->ClosedCaptionResultNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onConnect(I)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x5

    .line 2883
    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/Model;->setAppState(I)V

    .line 2884
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->initZoomRoomConnection()V

    goto :goto_1

    .line 2886
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/Model;->setAppState(I)V

    .line 2887
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->closeConnection()V

    .line 2890
    :goto_1
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->ConnectingFinished:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateRoomResult(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 3241
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->CreateRoomDidFinished:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v2, "result"

    .line 3242
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "roomEmail"

    invoke-static {p2}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "passCode"

    invoke-static {p3}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 3241
    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onCurrentSelectedMicrophoneMuted(Z)V
    .locals 0

    .line 3226
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->setCurrentSelectedMicrophoneMuted(Z)V

    return-void
.end method

.method public onDeleteZoomRoomsFromWeb([Ljava/lang/String;)V
    .locals 5

    .line 3637
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 3638
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->getZoomRoomJid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lus/zoom/zrcsdk/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    const-string v0, "My room has been deleted from web"

    .line 3644
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3645
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->DeleteZoomRoomsFromWeb:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public onDisplayTopBannerNotification(Z)V
    .locals 0

    .line 3362
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setDisplayTopBanner(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onDynamicContactListNotification(Ljava/util/ArrayList;Ljava/lang/String;IZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .line 3326
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->UpdateDynamicContactList:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v2, "contacts"

    const-string v4, "filter"

    .line 3327
    invoke-static {p2}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "totalNumberOfContactsInSearchResult"

    .line 3328
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "searchOnCloudResult"

    .line 3329
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object v3, p1

    .line 3327
    invoke-static/range {v2 .. v9}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 3326
    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onEnableWaitingRoomOnEntryNotification(Z)V
    .locals 2

    .line 3299
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->isOnEntryWaiting()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 3300
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/AppModel;->setOnEntryWaiting(Z)V

    .line 3301
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->PutInWaitingRoomOnEntryOptionChanged:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method onExitMeetingResult(Z)V
    .locals 2

    .line 3857
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->ExitMeetingResult:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method onFarEndCameraControlNotification(Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;)V
    .locals 2

    .line 3591
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->OnFarEndCameraControlNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onGoingToBeInMeetingNotification(IZ)V
    .locals 4

    .line 3116
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->OnGoingToBeInMeetingNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v2, "meetingType"

    .line 3117
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "isStarting"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v2, p1, v3, p2}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 3116
    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onGoogleAuthReturn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    .line 2709
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->googleAuthAccessToken:Ljava/lang/String;

    const-string v0, "accessToken"

    const-string v2, "refreshToken"

    const-string v4, "errorCode"

    .line 2710
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "errorStr"

    move-object v1, p1

    move-object v3, p2

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 2711
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p2

    sget-object p3, Lus/zoom/zrc/base/notification/ModelEvent;->GoogleAuthReturn:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {p2, p3, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method onHostRequestUnmuteAudioNotification(IZ)V
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    if-eqz p2, :cond_1

    .line 3583
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p2

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->OnHostRequestStartMediaDevice:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v2, "type"

    .line 3584
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "isHost"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v2, p1, v3, v0}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 3583
    invoke-virtual {p2, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    goto :goto_1

    .line 3586
    :cond_1
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p2

    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnHostRequestCloseAudioAlert:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method onHostRequestUnmuteVideoNotification(I)V
    .locals 5

    .line 3565
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getParticipantList()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/ZRCParticipantList;->getParticipantByUserId(I)Lus/zoom/zrcsdk/model/ZRCParticipant;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 3569
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isHost()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isCohost()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3570
    :cond_1
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->OnHostRequestStartMediaDevice:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v2, "type"

    const/4 v3, 0x1

    .line 3571
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "isHost"

    .line 3572
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isHost()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 3571
    invoke-static {v2, v3, v4, p1}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 3570
    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public onImUpdateContactNotification(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;)V"
        }
    .end annotation

    .line 3333
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->UpdateContactList:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v2, "contacts"

    .line 3334
    invoke-static {v2, p1}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 3333
    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onInSilentModeNotification(Z)V
    .locals 2

    .line 3292
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->isInSilentMode()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 3293
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setInSilentMode(Z)V

    .line 3294
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->InSilentModeStateChanged:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onIncomingCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "onIncomingCallNotification: call is null!!!"

    const/4 v0, 0x0

    .line 3491
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3494
    :cond_0
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->IncomingCallNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onInviteRoomSystemManuallyResult(Z)V
    .locals 2

    .line 3269
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->OnInviteRoomSystemManuallyResult:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method onJoinMeetingResult(Z)V
    .locals 2

    .line 3553
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->JoinMeetingResult:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method onJoinSipCallToMeetingResult(ILjava/lang/String;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 8

    .line 4896
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->JoinSipCallToMeetingResult:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v2, "result"

    .line 4897
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "requestId"

    const-string v6, "call"

    move-object v5, p2

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 4896
    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method onJoinTestMeetingResult(Z)V
    .locals 2

    .line 3557
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->JoinTestMeetingResult:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method onLaunchSharingMeetingResult(ILjava/lang/String;ZI)V
    .locals 11

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 3905
    invoke-static {p2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p3, :cond_0

    .line 3907
    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/Model;->setMeetingType(I)V

    .line 3909
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getAirPlayBlackMagicStatus()Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;

    move-result-object v1

    invoke-virtual {v1, p4}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->setInstructionDisplayState(I)V

    .line 3911
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setMeetingStatus(I)V

    const/4 v1, 0x6

    .line 3912
    invoke-virtual {p0, v1}, Lus/zoom/zrc/model/Model;->setAppState(I)V

    .line 3914
    :cond_1
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v1

    sget-object v2, Lus/zoom/zrc/base/notification/ModelEvent;->LaunchSharingMeetingResult:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v3, "result"

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 3915
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "requestId"

    const-string v7, "for_share_laptop"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v9, "display_state"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v6, p2

    invoke-static/range {v3 .. v10}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 3914
    invoke-virtual {v1, v2, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onListMeetingParticipantNotification(I)V
    .locals 3

    .line 3338
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getWorkMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    return-void

    .line 3341
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getParticipantList()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object v0

    .line 3342
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 3343
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3345
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    const/4 v1, 0x0

    const/16 v2, 0x32

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrcsdk/ConfApp;->listParticipants(II)I

    return-void
.end method

.method onListMeetingResult(I)V
    .locals 0

    .line 4778
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->setListMeetingResult(I)V

    return-void
.end method

.method public onLoginPushNotificationServerResult(I)V
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 3623
    iput-boolean v0, p0, Lus/zoom/zrc/model/Model;->connectionVerified:Z

    goto :goto_0

    :cond_0
    const-string v1, "login push notification server failed with reason %d"

    .line 3625
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method onMeetWithIMUsersResult(Z)V
    .locals 2

    .line 3549
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->MeetWithIMUsersResult:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onMeetingAllShareSourcesNotification(Ljava/util/List;[I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCShareSource;",
            ">;[I)V"
        }
    .end annotation

    .line 3196
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getPinUserManager()Lus/zoom/zrc/model/ZRCPinUserManager;

    move-result-object v0

    .line 3197
    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/ZRCPinUserManager;->onUpdateMeetingAllShares(Ljava/util/List;)V

    .line 3198
    invoke-virtual {v0, p2}, Lus/zoom/zrc/model/ZRCPinUserManager;->onUpdateZrwAllShares([I)V

    return-void
.end method

.method public onMeetingChatDisplaySettingsNotification(ZZ)V
    .locals 1

    .line 3370
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->meetingChatMessageManager:Lus/zoom/zrc/model/MeetingChatMessageManager;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/MeetingChatMessageManager;->setShowMeetingChatNotificationOnZR(Z)V

    .line 3371
    iget-object p1, p0, Lus/zoom/zrc/model/Model;->meetingChatMessageManager:Lus/zoom/zrc/model/MeetingChatMessageManager;

    invoke-virtual {p1, p2}, Lus/zoom/zrc/model/MeetingChatMessageManager;->setShowMeetingChatListOnZR(Z)V

    return-void
.end method

.method public onMeetingChatMessageNotification(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingChatMessage;",
            ">;)V"
        }
    .end annotation

    .line 3366
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->meetingChatMessageManager:Lus/zoom/zrc/model/MeetingChatMessageManager;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/MeetingChatMessageManager;->onMeetingChatMessageNotification(Ljava/util/List;)V

    return-void
.end method

.method public onMeetingEndedNotification(ILjava/lang/String;)V
    .locals 4

    .line 3235
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->OnMeetingEndedNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v2, "errorCode"

    .line 3236
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "errorMessage"

    invoke-static {p2}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p1, v3, p2}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 3235
    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onMeetingErrorNotification(ILjava/lang/String;)V
    .locals 4

    .line 3230
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->OnMeetingErrorNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v2, "errorCode"

    .line 3231
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "errorMessage"

    invoke-static {p2}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p1, v3, p2}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 3230
    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onMeetingExitedNotification()V
    .locals 4

    .line 3126
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getMeetingNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3127
    :goto_0
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->cleanupMeetingData()V

    .line 3128
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v1

    sget-object v2, Lus/zoom/zrc/base/notification/ModelEvent;->OnMeetingExitedNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v3, "meetingNumber"

    .line 3129
    invoke-static {v0}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 3128
    invoke-virtual {v1, v2, v0}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onMeetingNeedsPassword(ZZ)V
    .locals 4

    .line 3121
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->OnMeetingNeedsPassword:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v2, "showPasswordDialog"

    .line 3122
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v3, "wrongAndRetry"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v2, p1, v3, p2}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 3121
    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onMeetingShareSettingStatusNotification(Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;)V
    .locals 1

    .line 3203
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getPinUserManager()Lus/zoom/zrc/model/ZRCPinUserManager;

    move-result-object v0

    .line 3204
    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/ZRCPinUserManager;->onUpdateMeetingShareSettings(Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;)V

    return-void
.end method

.method onMeetingStatus(I)V
    .locals 5

    .line 3133
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setMeetingStatus(I)V

    const/4 v0, 0x2

    const/4 v1, 0x7

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3147
    :pswitch_0
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->cleanupMeetingData()V

    .line 3148
    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/Model;->setAppState(I)V

    goto :goto_0

    .line 3141
    :pswitch_1
    invoke-virtual {p0, v1}, Lus/zoom/zrc/model/Model;->setAppState(I)V

    goto :goto_0

    :pswitch_2
    const/4 v2, 0x6

    .line 3144
    invoke-virtual {p0, v2}, Lus/zoom/zrc/model/Model;->setAppState(I)V

    goto :goto_0

    .line 3137
    :pswitch_3
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->cleanupMeetingData()V

    const/4 v2, 0x5

    .line 3138
    invoke-virtual {p0, v2}, Lus/zoom/zrc/model/Model;->setAppState(I)V

    .line 3154
    :goto_0
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v2

    sget-object v3, Lus/zoom/zrc/base/notification/ModelEvent;->OnCallStatus:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    .line 3156
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    if-ne v0, p1, :cond_0

    .line 3157
    invoke-virtual {p0, v1}, Lus/zoom/zrc/model/Model;->setAppState(I)V

    .line 3158
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p1

    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnConfReady:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onMicrophoneTestingNotification(I)V
    .locals 2

    .line 2991
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->MicrophoneTestingNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method onMirrorVideoResult(ILjava/lang/String;ZLjava/lang/String;)V
    .locals 10

    if-nez p1, :cond_3

    .line 3742
    invoke-static {p2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3743
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getCameraSharingStatus()Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->clone()Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    move-result-object v0

    .line 3745
    invoke-static {p4}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3746
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3748
    invoke-virtual {v1, p3}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->setIs_self_video_mirrored(Z)V

    .line 3749
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lus/zoom/zrc/model/AppModel;->setSettingsDeviceInfo(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)V

    .line 3751
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->isSharingCameraEqualToSelectedCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3752
    invoke-virtual {v0, p3}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->setMirroerd(Z)V

    goto :goto_0

    .line 3755
    :cond_1
    invoke-virtual {v0, p3}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->setMirroerd(Z)V

    .line 3758
    :cond_2
    :goto_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lus/zoom/zrc/model/AppModel;->setCameraSharingStatus(Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;)V

    .line 3759
    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/Model;->setCameraSharingStatus(Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;)V

    .line 3763
    :cond_3
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->MirrorOwnVideoResult:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v2, "result"

    .line 3764
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "requestId"

    const-string v6, "isMirrored"

    .line 3766
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "deviceID"

    move-object v5, p2

    move-object v9, p4

    .line 3764
    invoke-static/range {v2 .. v9}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 3763
    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onNeedWaitForHost(ZI)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    .line 3173
    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/Model;->setAppState(I)V

    .line 3175
    :cond_0
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->NeedWaitForHost:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v2, "needWait"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v3, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v2, p1, v3, p2}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onOtherDeviceLoginNotification(IZ)V
    .locals 0

    .line 3094
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/model/Model;->kickedOutBy:Ljava/lang/Integer;

    if-eqz p2, :cond_0

    const/4 p1, 0x4

    .line 3096
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/model/Model;->kickedOutBy:Ljava/lang/Integer;

    :cond_0
    return-void
.end method

.method public onPSTNCallOutNotification(I)V
    .locals 3

    .line 3454
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setPstnCallOutStatus(I)V

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    const/16 v0, 0xe

    if-eq p1, v0, :cond_0

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 3460
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setCallOutNumberInCalling(Ljava/lang/String;)V

    .line 3464
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isCanRingingInPstnCall()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 3465
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getMeetingType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getMeetingType()I

    move-result v0

    if-ne v2, v0, :cond_4

    .line 3468
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getCallOutNumberInCalling()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    if-ne p1, v2, :cond_3

    .line 3469
    invoke-static {}, Lus/zoom/zrc/phonecall/PstnTonePlayer;->getInstance()Lus/zoom/zrc/phonecall/PstnTonePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/phonecall/PstnTonePlayer;->startRingTone()V

    goto :goto_0

    .line 3471
    :cond_3
    invoke-static {}, Lus/zoom/zrc/phonecall/PstnTonePlayer;->getInstance()Lus/zoom/zrc/phonecall/PstnTonePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/phonecall/PstnTonePlayer;->stopRingTone()V

    .line 3476
    :cond_4
    :goto_0
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->PSTNCallOutNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v2, "status"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method onPSTNCallOutResult(ILjava/lang/String;ZZ)V
    .locals 12

    move-object v0, p0

    move-object v4, p2

    .line 3426
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getMeetingType()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "received onPSTNCallOutResult in normal meeting, ignored"

    .line 3427
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eqz p4, :cond_1

    .line 3432
    invoke-virtual {p0, v2}, Lus/zoom/zrc/model/Model;->setMeetingType(I)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    const/4 v3, 0x0

    .line 3435
    invoke-direct {p0, v3}, Lus/zoom/zrc/model/Model;->setCallOutUserName(Ljava/lang/String;)V

    .line 3436
    invoke-direct {p0, v3}, Lus/zoom/zrc/model/Model;->setCallOutNumberInCalling(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x5

    .line 3439
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v5

    if-ne v3, v5, :cond_3

    .line 3440
    invoke-direct {p0, v1}, Lus/zoom/zrc/model/Model;->setMeetingStatus(I)V

    const/4 v3, 0x6

    .line 3441
    invoke-virtual {p0, v3}, Lus/zoom/zrc/model/Model;->setAppState(I)V

    .line 3444
    :cond_3
    invoke-direct {p0, p2}, Lus/zoom/zrc/model/Model;->setCallOutNumberInCalling(Ljava/lang/String;)V

    .line 3445
    invoke-direct {p0, p2}, Lus/zoom/zrc/model/Model;->createUserNameForPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lus/zoom/zrc/model/Model;->setCallOutUserName(Ljava/lang/String;)V

    .line 3448
    :goto_0
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v9

    sget-object v10, Lus/zoom/zrc/base/notification/ModelEvent;->PSTNCallOutResult:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v3, "result"

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 3449
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v5, "phoneNumber"

    const-string v6, "isCancelCall"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "isSwitchToNormalMeeting"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    move-object v1, v3

    move-object v3, v5

    move-object v4, p2

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v11

    invoke-static/range {v1 .. v8}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    .line 3448
    invoke-virtual {v9, v10, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onPinStatusOfScreenNotification(Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;I)V
    .locals 1

    .line 3189
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getPinUserManager()Lus/zoom/zrc/model/ZRCPinUserManager;

    move-result-object v0

    .line 3190
    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/ZRCPinUserManager;->onPinStatusOfScreenChanged(Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;)V

    .line 3191
    invoke-virtual {v0, p2}, Lus/zoom/zrc/model/ZRCPinUserManager;->onUpdateShowWarningForSelfSharePinnedToViewerShare(I)V

    return-void
.end method

.method public onPushNotificationClosed(I)V
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0xdb5

    if-eq v1, p1, :cond_0

    .line 2812
    iput v0, p0, Lus/zoom/zrc/model/Model;->continuousRefreshXmppTokenTimes:I

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2830
    :pswitch_1
    iget v4, p0, Lus/zoom/zrc/model/Model;->continuousRefreshXmppTokenTimes:I

    if-ge v4, v2, :cond_1

    add-int/2addr v4, v1

    .line 2831
    iput v4, p0, Lus/zoom/zrc/model/Model;->continuousRefreshXmppTokenTimes:I

    .line 2832
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->refreshXmppToken()V

    goto :goto_0

    .line 2834
    :cond_1
    iput v0, p0, Lus/zoom/zrc/model/Model;->continuousRefreshXmppTokenTimes:I

    .line 2835
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->isConnectionVerified()Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x66

    .line 2836
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lus/zoom/zrc/model/Model;->kickedOutBy:Ljava/lang/Integer;

    goto :goto_0

    .line 2827
    :pswitch_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lus/zoom/zrc/model/Model;->kickedOutBy:Ljava/lang/Integer;

    goto :goto_0

    .line 2822
    :pswitch_3
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->isConnectionVerified()Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x65

    .line 2823
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lus/zoom/zrc/model/Model;->kickedOutBy:Ljava/lang/Integer;

    .line 2843
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getKickedOutBy()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_3

    iget v4, p0, Lus/zoom/zrc/model/Model;->appState:I

    const/16 v5, 0xb

    if-ne v4, v5, :cond_3

    .line 2845
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v4

    invoke-static {v4}, Lus/zoom/zrc/utils/ZRCNetworkUtils;->isNetworkDisconnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    if-eqz v0, :cond_6

    .line 2850
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x2

    :goto_1
    invoke-virtual {p0, v2}, Lus/zoom/zrc/model/Model;->setAppState(I)V

    .line 2851
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->ConnectionClosed:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    const/16 p1, 0xa

    .line 2853
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->setAppState(I)V

    .line 2856
    :goto_2
    iget-object p1, p0, Lus/zoom/zrc/model/Model;->restartHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xdad
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPushNotificationConnected(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 2873
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lus/zoom/zrc/utils/DeviceInfoUtils;->updateDeviceInfo(Landroid/content/Context;I)V

    const/16 v0, 0xb

    .line 2874
    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/Model;->setAppState(I)V

    .line 2877
    :cond_0
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->ConnectingFinished:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onPushNotificationSendWithReason(I)V
    .locals 0

    return-void
.end method

.method public onQueryWithParingCodeResult(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2692
    invoke-direct {p0, p2}, Lus/zoom/zrc/model/Model;->setZoomRoomAddress(Ljava/lang/String;)V

    .line 2693
    invoke-direct {p0, p3}, Lus/zoom/zrc/model/Model;->setZoomRoomToken(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p3, 0x0

    .line 2696
    invoke-virtual {p0, p3}, Lus/zoom/zrc/model/Model;->setSettingsLocked(Z)V

    const/4 v0, 0x1

    .line 2697
    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/Model;->setWorkMode(I)V

    .line 2698
    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/Model;->setCallHistoryDisabled(Z)V

    const-string v1, "Query pairing code success, connect to room: %s"

    .line 2700
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, p3

    invoke-static {v1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2701
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->connectWithZoomRoom()V

    .line 2704
    :cond_0
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p2

    sget-object p3, Lus/zoom/zrc/base/notification/ModelEvent;->QueryWithPairingCodeFinished:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onReceivedListCalendarResult(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;",
            ">;)V"
        }
    .end annotation

    .line 3252
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->ReceivedListCalendar:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v2, "result"

    .line 3253
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "list"

    invoke-static {v2, p1, v3, p2}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 3252
    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onReceivedListLocationResult(ILus/zoom/zrcsdk/model/ZRCLocationTree;)V
    .locals 4
    .param p2    # Lus/zoom/zrcsdk/model/ZRCLocationTree;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 4683
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->setFetchedTimeMillis(J)V

    .line 4684
    invoke-direct {p0, p2}, Lus/zoom/zrc/model/Model;->setAccountLocationTree(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V

    .line 4686
    :cond_0
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->ReceivedListLocation:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v2, "result"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "location"

    invoke-static {v2, p1, v3, p2}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onReceivedPushNotificationEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReceivedRoomList(Ljava/util/List;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/RoomInfo;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 2604
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->wipePassword()V

    .line 2605
    invoke-static {p2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2606
    invoke-direct {p0, p2}, Lus/zoom/zrc/model/Model;->setZoomRefreshToken(Ljava/lang/String;)V

    .line 2607
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->saveLoginAndRoomInfo()V

    .line 2610
    :cond_0
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p2

    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->ReceivedRoomList:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v1, "roomList"

    const-string v2, "billingType"

    .line 2611
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v1, p1, v2, p3}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 2610
    invoke-virtual {p2, v0, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onRecordingConsentNotification(Z)V
    .locals 2

    .line 3358
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->OnRecordingConsentNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onRefreshXmppTokenFinished(ILjava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    .line 3705
    iput-boolean p1, p0, Lus/zoom/zrc/model/Model;->isRefreshingXmppToken:Z

    return-void
.end method

.method public onRemoteControlCalendarEvent(Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 3661
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->isStandaloneZRP()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3662
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->listMeeting()V

    goto :goto_0

    .line 3664
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->listMeeting()V

    :goto_0
    return-void
.end method

.method public onRemoteControlRestartRoom(ZI)V
    .locals 3

    if-eqz p1, :cond_0

    .line 3671
    iget-object p1, p0, Lus/zoom/zrc/model/Model;->restartHandler:Landroid/os/Handler;

    new-instance v0, Lus/zoom/zrc/model/Model$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/model/Model$1;-><init>(Lus/zoom/zrc/model/Model;)V

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method onRequestAllRoomsResult(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 4714
    invoke-direct {p0, p2}, Lus/zoom/zrc/model/Model;->setAllRoomListItemDetails(Ljava/util/List;)V

    .line 4715
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lus/zoom/zrc/model/Model;->setAllRoomsFetchedTimeMillis(J)V

    .line 4717
    :cond_0
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p2

    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnGetAllRoomsResult:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method onRequestLocationInfoByIDResult(ILjava/lang/String;Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCLocationInfo;)V
    .locals 7
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lus/zoom/zrcsdk/model/ZRCLocationInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_1

    .line 4700
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->setFetchedTimeMillis(J)V

    .line 4702
    invoke-virtual {p4}, Lus/zoom/zrcsdk/model/ZRCLocationInfo;->getLocationID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getRoomParentLocationID()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4703
    invoke-direct {p0, p4}, Lus/zoom/zrc/model/Model;->setRoomParentLocationInfo(Lus/zoom/zrcsdk/model/ZRCLocationInfo;)V

    .line 4706
    :cond_0
    invoke-direct {p0, p4}, Lus/zoom/zrc/model/Model;->updateCachedLocationInfo(Lus/zoom/zrcsdk/model/ZRCLocationInfo;)V

    .line 4708
    :cond_1
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p2

    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnGetLocationInfoResult:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v1, "result"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "location_id"

    const-string v5, "location_info"

    move-object v4, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method onRequestRoomParentLocationIDResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    if-eqz p4, :cond_0

    .line 4691
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getUserID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4692
    invoke-direct {p0, p3}, Lus/zoom/zrc/model/Model;->setRoomParentLocationID(Ljava/lang/String;)V

    .line 4694
    :cond_0
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p2

    sget-object p3, Lus/zoom/zrc/base/notification/ModelEvent;->OnGetRoomLocationIDResult:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onRoomSystemCallingStatus(I)V
    .locals 3

    const-string v0, "Model"

    .line 3273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRoomSystemCallingStatus() called with: status = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3274
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->OnRoomSystemCallingStatus:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onRoomSystemCallingUserInfo(ILjava/lang/String;)V
    .locals 4

    .line 3278
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->UpdateRoomSystemCallingUserInfo:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v2, "userId"

    .line 3279
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "userName"

    invoke-static {p2}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p1, v3, p2}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 3278
    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method onSIPCallForegroundCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 1

    .line 4936
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/SipCallInfoList;->updateForegroundCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    return-void
.end method

.method onSIPCallInviteToJoinMeetingNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 2

    .line 4932
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->SIPCallInviteToJoinMeetingNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method onSIPCallMergeCallResultNotification(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 4927
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->SIPCallMergeCallResultNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v2, "result"

    .line 4928
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "srcCallId"

    const-string v6, "dstCallId"

    move-object v5, p2

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 4927
    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method onSIPCallStatusNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;I)V
    .locals 4

    if-nez p1, :cond_0

    const-string p2, "Model"

    .line 3390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSIPCallStatusNotification() called with: call = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3393
    :cond_0
    invoke-virtual {p1, p2}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->setStatus(I)V

    .line 3394
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object p2

    invoke-virtual {p2, p1}, Lus/zoom/zrc/model/SipCallInfoList;->contains(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)Z

    move-result p2

    .line 3395
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/SipCallInfoList;->onSIPCallStatusNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    .line 3396
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->SIPCallStatusNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v2, "call"

    const-string v3, "existBefore"

    .line 3397
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v2, p1, v3, p2}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 3396
    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method onSIPCallTerminatedNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;I)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "onSIPCallTerminatedNotification: call is null!!!"

    .line 3402
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v1, 0x5

    if-ne p2, v1, :cond_1

    .line 3407
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/SipCallInfoList;->release()V

    goto :goto_0

    .line 3409
    :cond_1
    iget-object v1, p0, Lus/zoom/zrc/model/Model;->sipCallInfoList:Lus/zoom/zrc/model/SipCallInfoList;

    invoke-virtual {v1, p1}, Lus/zoom/zrc/model/SipCallInfoList;->contains(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lus/zoom/zrc/model/Model;->sipCallInfoList:Lus/zoom/zrc/model/SipCallInfoList;

    invoke-virtual {v1}, Lus/zoom/zrc/model/SipCallInfoList;->size()I

    move-result v1

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 3410
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lus/zoom/zrc/model/SipCallInfoList;->remove(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    .line 3412
    :goto_0
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v1

    sget-object v2, Lus/zoom/zrc/base/notification/ModelEvent;->SipCallTerminatedNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v3, "call"

    const-string v5, "reason"

    .line 3413
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "isLast"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object v4, p1

    invoke-static/range {v3 .. v8}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 3412
    invoke-virtual {v1, v2, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method onSIPCallTransferResultNotification(ILus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 4

    .line 4917
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->SIPCallTransferResultNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v2, "result"

    .line 4918
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "call"

    invoke-static {v2, p1, v3, p2}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 4917
    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method onSIPCallUpgradeMeetingResultNotification(ILus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 4

    .line 4922
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->SIPCallUpgradeMeetingResultNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v2, "result"

    .line 4923
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "call"

    invoke-static {v2, p1, v3, p2}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 4922
    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method onSelectedVirtualBackgroundNotification(Ljava/lang/String;)V
    .locals 0

    .line 3615
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setSelectedVirtualBackground(Ljava/lang/String;)V

    return-void
.end method

.method public onSendFailed(I)V
    .locals 0

    return-void
.end method

.method onSendFeedbackFinishedResult(I)V
    .locals 2

    .line 3724
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->SendFeedbackFinished:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onSendProblemReportNotification(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 4766
    new-instance p2, Lus/zoom/zrc/utils/ProblemReportSender;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lus/zoom/zrc/utils/ProblemReportSender;-><init>(Z)V

    .line 4767
    invoke-virtual {p2, p1, p3, p4, p5}, Lus/zoom/zrc/utils/ProblemReportSender;->sendProblemReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSendReportResult(I)V
    .locals 2

    .line 3322
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->SendProblemReportFinished:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onSendZoomRoomsProblemReportResult(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 4758
    invoke-virtual {p0, p2}, Lus/zoom/zrc/model/Model;->isRequestIdForCurrentDevice(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4759
    new-instance p1, Lus/zoom/zrc/utils/ProblemReportSender;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lus/zoom/zrc/utils/ProblemReportSender;-><init>(Z)V

    .line 4760
    invoke-virtual {p1, p6, p3, p4, p5}, Lus/zoom/zrc/utils/ProblemReportSender;->sendProblemReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method onSetMeetingPasswordResult(Z)V
    .locals 2

    .line 3778
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->SetMeetingPasswordResult:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method onSetMeetingRecordingResult(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3782
    invoke-static {p2}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3783
    invoke-virtual {p0, p3}, Lus/zoom/zrc/model/Model;->setCloudRecordingNotificationEmail(Ljava/lang/String;)V

    .line 3785
    :cond_0
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p2

    sget-object p3, Lus/zoom/zrc/base/notification/ModelEvent;->SetMeetingRecordingResult:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method onSetMicrophoneVolumeResult(ILjava/lang/String;I)V
    .locals 8

    .line 3861
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->SetMicrophoneVolumeResult:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v2, "result"

    .line 3862
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "deviceId"

    const-string v6, "volume"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v5, p2

    invoke-static/range {v2 .. v7}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 3861
    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method onSetSpeakerVolumeResult(ILjava/lang/String;I)V
    .locals 1

    if-nez p1, :cond_1

    .line 3867
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 3872
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSelectedSpeaker()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3873
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lus/zoom/zrcsdk/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    int-to-float p2, p3

    .line 3874
    invoke-virtual {p1, p2}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->setSpeaker_volume(F)V

    .line 3876
    invoke-direct {p0, p2}, Lus/zoom/zrc/model/Model;->setSpeakerVolume(F)V

    :cond_1
    return-void
.end method

.method public onShareCameraResult(Z)V
    .locals 2

    .line 3720
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->OnShareCameraResult:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method onShowSharingInstructionResult(IZZZI)V
    .locals 14

    move/from16 v0, p5

    const/4 v1, 0x1

    if-nez p1, :cond_2

    if-nez p4, :cond_2

    .line 3883
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getAirPlayBlackMagicStatus()Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;

    move-result-object v2

    if-nez v0, :cond_1

    if-eqz p2, :cond_2

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    .line 3888
    :goto_0
    invoke-virtual {v2, v3}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->setInstructionDisplayState(I)V

    goto :goto_1

    .line 3891
    :cond_1
    invoke-virtual {v2, v0}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->setInstructionDisplayState(I)V

    .line 3895
    :cond_2
    :goto_1
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v2

    sget-object v3, Lus/zoom/zrc/base/notification/ModelEvent;->ShowSharingInstructionResult:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v4, "result"

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 3897
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "is_show_instruction"

    .line 3898
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "is_laptop_instruction"

    .line 3899
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v10, "switch_to_normal_meeting"

    .line 3900
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const-string v12, "instruction_type"

    .line 3901
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 3896
    invoke-static/range {v4 .. v13}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 3895
    invoke-virtual {v2, v3, v0}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onShowUpcomingMeetingAlertResult(IZLjava/lang/String;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 10

    .line 3020
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->ShowUpcomingMeetingAlertResult:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v2, "result"

    .line 3021
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "isDelayed"

    .line 3022
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "voiceCommandPrompt"

    const-string v8, "meetingListItem"

    move-object v7, p3

    move-object v9, p4

    .line 3021
    invoke-static/range {v2 .. v9}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 3020
    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onSinkDownloadFile(Ljava/lang/String;I)V
    .locals 1

    if-nez p2, :cond_0

    .line 3164
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p2

    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->DownloadFileSuccess:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {p2, v0, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    goto :goto_0

    .line 3166
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "file download failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3167
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p2

    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->DownloadFileFailed:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {p2, v0, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method onSipDialOutResult(ILjava/lang/String;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 8

    if-eqz p1, :cond_0

    .line 4910
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    invoke-virtual {v0, p3}, Lus/zoom/zrc/model/SipCallInfoList;->remove(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    .line 4912
    :cond_0
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->SipDialOutResult:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v2, "result"

    .line 4913
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "requestId"

    const-string v6, "call"

    move-object v5, p2

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 4912
    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onSpeakerTestingNotification(Z)V
    .locals 3

    .line 2995
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->SpeakerTestingNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    .line 2996
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setSpeakerTestingStopped(Ljava/lang/Boolean;)V

    return-void
.end method

.method onSpeakerTestingResultNotification(IZ)V
    .locals 5

    .line 3000
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->SpeakerTestingResultNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v2, "result"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "stop"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, p1, v3, v4}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    .line 3001
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setSpeakerTestingStopped(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onStartMeetingResult(ZLjava/lang/String;)V
    .locals 4

    .line 3545
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->StartMeetingResult:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v2, "result"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v3, "requestId"

    invoke-static {v2, p1, v3, p2}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onStartPmiResult(ZLjava/lang/String;ILus/zoom/zrcsdk/model/ZRCMeetingListItem;Ljava/lang/String;)V
    .locals 2

    .line 3520
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v1, v0, :cond_0

    const/4 v0, 0x6

    .line 3521
    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/Model;->setAppState(I)V

    .line 3524
    :cond_0
    invoke-static {p2}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-eq v0, p3, :cond_1

    .line 3526
    invoke-virtual {p0, p3}, Lus/zoom/zrc/model/Model;->setMeetingType(I)V

    .line 3530
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object p3

    const-string v0, "result"

    .line 3531
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    if-eqz p2, :cond_2

    const-string p1, "requestId"

    .line 3533
    invoke-virtual {p3, p1, p2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    :cond_2
    if-eqz p4, :cond_3

    const-string p1, "meetingListItem"

    .line 3536
    invoke-virtual {p3, p1, p4}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    :cond_3
    if-eqz p5, :cond_4

    const-string p1, "meetingNumber"

    .line 3539
    invoke-virtual {p3, p1, p5}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 3541
    :cond_4
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p1

    sget-object p2, Lus/zoom/zrc/base/notification/ModelEvent;->StartPmiResult:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {p3}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onStartSharingMeetingNotification(Z)V
    .locals 3

    .line 4753
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->StartSharingMeetingNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v2, "result"

    .line 4754
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 4753
    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method onTransferSipCallResult(ILjava/lang/String;ILus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Ljava/lang/String;)V
    .locals 12

    move-object/from16 v9, p5

    .line 4882
    invoke-static {p3}, Lus/zoom/zrcsdk/model/ZRCTransferType;->toTransferType(I)Lus/zoom/zrcsdk/model/ZRCTransferType;

    move-result-object v5

    if-nez p1, :cond_0

    .line 4883
    sget-object v0, Lus/zoom/zrcsdk/model/ZRCTransferType;->WarmTransfer:Lus/zoom/zrcsdk/model/ZRCTransferType;

    if-ne v5, v0, :cond_0

    .line 4884
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;-><init>()V

    .line 4885
    invoke-virtual {v0, v9}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->setPeerNumber(Ljava/lang/String;)V

    .line 4886
    invoke-virtual {v0, v9}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->setPeerUri(Ljava/lang/String;)V

    .line 4887
    invoke-virtual {v0, v9}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->setOriginalPeerUri(Ljava/lang/String;)V

    .line 4888
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lus/zoom/zrc/model/SipCallInfoList;->update(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    .line 4890
    :cond_0
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v10

    sget-object v11, Lus/zoom/zrc/base/notification/ModelEvent;->TransferSipCallResult:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v0, "result"

    .line 4891
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "requestId"

    const-string v4, "transferType"

    const-string v6, "call"

    const-string v8, "peerUri"

    move-object v3, p2

    move-object/from16 v7, p4

    move-object/from16 v9, p5

    invoke-static/range {v0 .. v9}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 4890
    invoke-virtual {v10, v11, v0}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onTreatedCameraControlRequestNotification(ZI)V
    .locals 4

    .line 3349
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->CameraControlRequestTreated:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v2, "accepted"

    .line 3350
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v3, "userid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v2, p1, v3, p2}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 3349
    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onTreatedIncomingCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingCall;Z)V
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "onTreatedIncomingCallNotification: call is null!!!"

    const/4 p2, 0x0

    .line 3499
    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3502
    :cond_0
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->TreatedIncomingCall:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v2, "call"

    const-string v3, "accepted"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v2, p1, v3, p2}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method onUltrasoundPlayerCandidateNotification(Ljava/lang/String;)V
    .locals 2

    .line 3840
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lus/zoom/zrcsdk/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "Play ultrasound myself"

    .line 3841
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "Play ultrasound by other controllers"

    .line 3843
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3845
    :goto_0
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setUltrasoundPlayerCandidateDeviceId(Ljava/lang/String;)V

    return-void
.end method

.method public onUpdateAirPlayBlackMagicStatus(Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;)V
    .locals 2

    .line 3515
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setAirPlayBlackMagicStatus(Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;)V

    .line 3516
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->OnUpdateAirPlayBlackMagicStatus:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method onUpdateAudioCheckupInfo(Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;)V
    .locals 0

    .line 3038
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setAudioCheckupInfo(Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;)V

    return-void
.end method

.method public onUpdateCalendarInfo(Lus/zoom/zrcsdk/model/ZRCCalendarInfo;)V
    .locals 3

    .line 3685
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->calendarInfo:Lus/zoom/zrcsdk/model/ZRCCalendarInfo;

    if-nez v0, :cond_1

    .line 3686
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->getZrGoogleAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3687
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->ZrGoogleAccessTokenChange:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->getZrGoogleAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    .line 3689
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->getExchangeAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3690
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->ExchangeAccessTokenChange:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->getExchangeAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    goto :goto_0

    .line 3693
    :cond_1
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->getZrGoogleAccessToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/model/Model;->calendarInfo:Lus/zoom/zrcsdk/model/ZRCCalendarInfo;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->getZrGoogleAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3694
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->ZrGoogleAccessTokenChange:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->getZrGoogleAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    .line 3696
    :cond_2
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->getExchangeAccessToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/model/Model;->calendarInfo:Lus/zoom/zrcsdk/model/ZRCCalendarInfo;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->getExchangeAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3697
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->ExchangeAccessTokenChange:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->getExchangeAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    .line 3700
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setCalendarInfo(Lus/zoom/zrcsdk/model/ZRCCalendarInfo;)V

    return-void
.end method

.method public onUpdateCallOutNumbersInCalling(Ljava/lang/String;)V
    .locals 1

    .line 3480
    invoke-static {p1}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3481
    invoke-static {p1}, Lus/zoom/zrc/phonecall/PhoneCallNumberUtils;->pstnDisplayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setCallOutNumberInCalling(Ljava/lang/String;)V

    .line 3482
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->createUserNameForPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setCallOutUserName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3484
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setCallOutNumberInCalling(Ljava/lang/String;)V

    .line 3485
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setCallOutUserName(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onUpdateCameraSharingStatus(Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;)V
    .locals 0

    .line 3716
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->setCameraSharingStatus(Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;)V

    return-void
.end method

.method public onUpdateCanRaiseHandForAttendee(Z)V
    .locals 4

    const-string v0, "onUpdateCanRaiseHandForAttendee can_raise_hand=%s"

    const/4 v1, 0x1

    .line 3283
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3284
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setCanRaiseHandForAttendee(Z)V

    return-void
.end method

.method public onUpdateClosedCaptionInfo(Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;)V
    .locals 0

    .line 3054
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setClosedCaptionInfo(Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;)V

    return-void
.end method

.method onUpdateControlSystemDevices(IILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const-string p1, "onUpdateZRCSDevices, receive list is null !!"

    .line 3943
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 3944
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setControlSystemDevices(Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;)V

    goto :goto_2

    .line 3947
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getControlSystemDevices()Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3948
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getControlSystemDevices()Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;->mutableCopy()Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;

    move-result-object v1

    goto :goto_0

    .line 3950
    :cond_1
    new-instance v1, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;

    invoke-direct {v1}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;-><init>()V

    :goto_0
    packed-switch p1, :pswitch_data_0

    const-string p1, "onUpdateZRCSDevices action_type error!!"

    .line 3963
    new-array p3, v0, [Ljava/lang/Object;

    invoke-static {p1, p3}, Lus/zoom/zrcsdk/util/ZRCLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 3960
    :pswitch_0
    invoke-virtual {v1, p3}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;->updateWith(Ljava/util/List;)V

    goto :goto_1

    .line 3957
    :pswitch_1
    invoke-virtual {v1, p3}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;->addWith(Ljava/util/List;)V

    goto :goto_1

    .line 3954
    :pswitch_2
    invoke-virtual {v1, p3}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;->initWith(Ljava/util/List;)V

    .line 3967
    :goto_1
    invoke-virtual {v1, p2}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;->setErrorCode(I)V

    .line 3969
    invoke-direct {p0, v1}, Lus/zoom/zrc/model/Model;->setControlSystemDevices(Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onUpdateFeatureList(Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;)V
    .locals 0
    .param p1    # Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2920
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setFeatureList(Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;)V

    return-void
.end method

.method public onUpdateFeatureListHideSelfVideo(Z)V
    .locals 1

    .line 2924
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    .line 2925
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->setSupportsHideSelfVideo(Z)V

    .line 2926
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setFeatureList(Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;)V

    return-void
.end method

.method public onUpdateGenericSettings(Lus/zoom/zrcsdk/model/ZRCGenericSettings;)V
    .locals 0

    .line 3288
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setGenericSettings(Lus/zoom/zrcsdk/model/ZRCGenericSettings;)V

    return-void
.end method

.method onUpdateInitMeetingParticipants(Ljava/util/ArrayList;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCParticipant;",
            ">;II)V"
        }
    .end annotation

    .line 4098
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getWorkMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    if-lez p2, :cond_6

    .line 4105
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->participantList:Lus/zoom/zrc/model/ZRCParticipantList;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    .line 4106
    :cond_1
    new-instance v0, Lus/zoom/zrc/model/ZRCParticipantList;

    invoke-direct {v0}, Lus/zoom/zrc/model/ZRCParticipantList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/Model;->participantList:Lus/zoom/zrc/model/ZRCParticipantList;

    .line 4109
    :cond_2
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->getTotalOfParticipants()I

    move-result v0

    if-eq v0, p2, :cond_3

    .line 4110
    invoke-direct {p0, p2}, Lus/zoom/zrc/model/Model;->setTotalOfParticipants(I)V

    .line 4113
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-lez p2, :cond_5

    .line 4114
    iget-object p2, p0, Lus/zoom/zrc/model/Model;->participantList:Lus/zoom/zrc/model/ZRCParticipantList;

    invoke-virtual {p2}, Lus/zoom/zrc/model/ZRCParticipantList;->size()I

    move-result p2

    if-eq p3, p2, :cond_4

    const-string p1, "start index(%s) isn\'t equal to current participants count(%s), ignore current action"

    .line 4115
    new-array p2, v1, [Ljava/lang/Object;

    .line 4116
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v2

    iget-object p3, p0, Lus/zoom/zrc/model/Model;->participantList:Lus/zoom/zrc/model/ZRCParticipantList;

    invoke-virtual {p3}, Lus/zoom/zrc/model/ZRCParticipantList;->size()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    .line 4115
    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 4121
    :cond_4
    iget-object p2, p0, Lus/zoom/zrc/model/Model;->participantList:Lus/zoom/zrc/model/ZRCParticipantList;

    invoke-virtual {p2}, Lus/zoom/zrc/model/ZRCParticipantList;->mutableCopy()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object p2

    .line 4122
    invoke-virtual {p2, p1}, Lus/zoom/zrc/model/ZRCParticipantList;->addAll(Ljava/util/Collection;)Z

    .line 4123
    invoke-direct {p0, p2}, Lus/zoom/zrc/model/Model;->setParticipantList(Lus/zoom/zrc/model/ZRCParticipantList;)V

    .line 4125
    iget-object p1, p0, Lus/zoom/zrc/model/Model;->participantList:Lus/zoom/zrc/model/ZRCParticipantList;

    invoke-virtual {p1}, Lus/zoom/zrc/model/ZRCParticipantList;->updateMyRolesInMeeting()V

    .line 4129
    :cond_5
    iget-object p1, p0, Lus/zoom/zrc/model/Model;->participantList:Lus/zoom/zrc/model/ZRCParticipantList;

    invoke-virtual {p1}, Lus/zoom/zrc/model/ZRCParticipantList;->size()I

    move-result p1

    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->getTotalOfParticipants()I

    move-result p2

    if-ge p1, p2, :cond_6

    const-string p1, "onUpdateInitMeetingParticipants, list participants from %d to MAX_REQUESTING_PARTICIPANTS=%d"

    .line 4130
    new-array p2, v1, [Ljava/lang/Object;

    iget-object p3, p0, Lus/zoom/zrc/model/Model;->participantList:Lus/zoom/zrc/model/ZRCParticipantList;

    invoke-virtual {p3}, Lus/zoom/zrc/model/ZRCParticipantList;->size()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v2

    const/16 p3, 0x32

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4131
    iget-object p1, p0, Lus/zoom/zrc/model/Model;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    iget-object p2, p0, Lus/zoom/zrc/model/Model;->participantList:Lus/zoom/zrc/model/ZRCParticipantList;

    invoke-virtual {p2}, Lus/zoom/zrc/model/ZRCParticipantList;->size()I

    move-result p2

    invoke-virtual {p1, p2, p3}, Lus/zoom/zrcsdk/ConfApp;->listParticipants(II)I

    :cond_6
    return-void
.end method

.method onUpdateLocalViewStatus(Z)V
    .locals 0

    .line 2963
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setLocalViewStatus(Z)V

    return-void
.end method

.method public onUpdateMeetingAudioStatus(Lus/zoom/zrcsdk/model/ZRCAudioStatus;)V
    .locals 0

    .line 3218
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->setAudioStatus(Lus/zoom/zrcsdk/model/ZRCAudioStatus;)V

    return-void
.end method

.method public onUpdateMeetingAudioTroubleShootingStatus(Lus/zoom/zrcsdk/model/ZRCMeetingAudioTroubleShootingStatus;)V
    .locals 0

    .line 3058
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setMeetingAudioTroubleShootingStatus(Lus/zoom/zrcsdk/model/ZRCMeetingAudioTroubleShootingStatus;)V

    return-void
.end method

.method public onUpdateMeetingChatMessageCount(I)V
    .locals 2

    .line 3375
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->meetingChatMessageManager:Lus/zoom/zrc/model/MeetingChatMessageManager;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/MeetingChatMessageManager;->onUpdateMessageCount(I)V

    .line 3376
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->UpdateMeetingChatMessageInitCount:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onUpdateMeetingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 3105
    :cond_0
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->setMeetingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V

    .line 3106
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getMeetingType()I

    move-result v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/Model;->setMeetingType(I)V

    .line 3107
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getMeetingNumber()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setLastMeetingNumber(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 3109
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getMeetingStatus()I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x7

    .line 3110
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->setAppState(I)V

    .line 3111
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p1

    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnConfReady:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;)V

    :cond_1
    return-void
.end method

.method public onUpdateMeetingList(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingListItem;",
            ">;)V"
        }
    .end annotation

    .line 3066
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getMeetingList()Lus/zoom/zrc/model/MeetingList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/MeetingList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/model/MeetingList;

    .line 3069
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    .line 3070
    invoke-virtual {v0}, Lus/zoom/zrc/model/MeetingList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    .line 3071
    invoke-virtual {v2, v4}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isSame(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isCheckedIn()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3072
    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getCheckInStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->setCheckInStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 3078
    :cond_2
    invoke-virtual {v0}, Lus/zoom/zrc/model/MeetingList;->clear()V

    .line 3079
    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/MeetingList;->addAll(Ljava/util/Collection;)Z

    .line 3080
    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/Model;->setMeetingList(Lus/zoom/zrc/model/MeetingList;)V

    return-void
.end method

.method public onUpdateMeetingParticipants(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCParticipant;",
            ">;)V"
        }
    .end annotation

    .line 4086
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getWorkMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    return-void

    .line 4089
    :cond_0
    new-instance v0, Lus/zoom/zrc/model/ZRCParticipantList;

    invoke-direct {v0}, Lus/zoom/zrc/model/ZRCParticipantList;-><init>()V

    .line 4090
    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/ZRCParticipantList;->mutableCopyFrom(Ljava/util/ArrayList;)V

    .line 4091
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setParticipantList(Lus/zoom/zrc/model/ZRCParticipantList;)V

    .line 4092
    iget-object p1, p0, Lus/zoom/zrc/model/Model;->participantList:Lus/zoom/zrc/model/ZRCParticipantList;

    invoke-virtual {p1}, Lus/zoom/zrc/model/ZRCParticipantList;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setTotalOfParticipants(I)V

    .line 4093
    iget-object p1, p0, Lus/zoom/zrc/model/Model;->participantList:Lus/zoom/zrc/model/ZRCParticipantList;

    invoke-virtual {p1}, Lus/zoom/zrc/model/ZRCParticipantList;->updateMyRolesInMeeting()V

    return-void
.end method

.method public onUpdateMeetingVideoLayoutStatus(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V
    .locals 0

    .line 3208
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->setVideoLayoutStatus(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V

    return-void
.end method

.method public onUpdateMeetingVideoStatus(Lus/zoom/zrcsdk/model/ZRCVideoStatus;)V
    .locals 0

    .line 3222
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->setVideoStatus(Lus/zoom/zrcsdk/model/ZRCVideoStatus;)V

    return-void
.end method

.method onUpdateMeetingZRWSharingStatus(Lus/zoom/zrcsdk/model/ZRWSharingStatus;)V
    .locals 0

    .line 3595
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setZRWSharingStatus(Lus/zoom/zrcsdk/model/ZRWSharingStatus;)V

    return-void
.end method

.method onUpdateMicrophoneTestRecordingStatus(I)V
    .locals 0

    .line 3042
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setMicrophoneTestRecordingStatus(I)V

    return-void
.end method

.method public onUpdateMyAudioResult(Z)V
    .locals 2

    .line 3561
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->UpdateMyAudioResult:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method onUpdateMySipPhoneAudioResult(I)V
    .locals 3

    .line 3422
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->UpdateMySipPhoneAudioResult:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v2, "result"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method onUpdateMySipPhoneAudioStatus(Z)V
    .locals 1

    .line 3417
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object v0

    .line 3418
    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/SipCallInfoList;->setMuted(Z)V

    return-void
.end method

.method public onUpdateRoomInfo(Lus/zoom/zrcsdk/model/ZRCRoomInfo;)V
    .locals 1
    .param p1    # Lus/zoom/zrcsdk/model/ZRCRoomInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2944
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getUserProfile()Lus/zoom/zrc/model/ZRCUserProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2945
    iput-object v0, p0, Lus/zoom/zrc/model/Model;->pairingCode:Ljava/lang/String;

    .line 2948
    :cond_0
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setRoomInfo(Lus/zoom/zrcsdk/model/ZRCRoomInfo;)V

    .line 2949
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->saveLoginAndRoomInfo()V

    .line 2951
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->isConnectionVerified()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2952
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->onVerifyConnectionSuccess()V

    .line 2955
    :cond_1
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p1

    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->InitConnectionFinished:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;)V

    return-void
.end method

.method public onUpdateRoomProfiles(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;",
            ">;)V"
        }
    .end annotation

    .line 3934
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->setRoomProfiles(Ljava/util/List;)V

    return-void
.end method

.method public onUpdateRoomResult(I)V
    .locals 2

    .line 3247
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->UpdateRoomDidFinished:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method onUpdateRoomScreenInfo(Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;)V
    .locals 0

    .line 3046
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setRoomScreenInfo(Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;)V

    return-void
.end method

.method onUpdateScreenResolutionStatus(I)V
    .locals 0

    .line 3050
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setScreenResolutionStatus(I)V

    return-void
.end method

.method public onUpdateSettingsDeviceInfo(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)V
    .locals 0

    .line 3033
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->setSettingsDeviceInfo(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)V

    .line 3034
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSpeaker_volume()F

    move-result p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setSpeakerVolume(F)V

    return-void
.end method

.method onUpdateSharingStatus(Lus/zoom/zrcsdk/model/ZRCSharingStatus;)V
    .locals 5

    .line 3710
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getSharingStatus()Lus/zoom/zrcsdk/model/ZRCSharingStatus;

    move-result-object v0

    .line 3711
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setSharingStatus(Lus/zoom/zrcsdk/model/ZRCSharingStatus;)V

    .line 3712
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v1

    sget-object v2, Lus/zoom/zrc/base/notification/ModelEvent;->OnUpdateSharingStatus:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v3, "from"

    const-string v4, "to"

    invoke-static {v3, v0, v4, p1}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onUpdateShowAudioParticipants(Z)V
    .locals 2

    .line 3317
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->setSupportsShowAudioParticipant(Ljava/lang/Boolean;)V

    .line 3318
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setShowAudioParticipant(Z)V

    return-void
.end method

.method onUpdateSipService(Lus/zoom/zrcsdk/model/ZRCSipService;)V
    .locals 1

    .line 3380
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCSipService;->getSipServiceStatus()I

    move-result v0

    if-nez v0, :cond_0

    .line 3381
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCSipService;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCSipService;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 3382
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setSipService(Lus/zoom/zrcsdk/model/ZRCSipService;)V

    goto :goto_0

    .line 3384
    :cond_0
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setSipService(Lus/zoom/zrcsdk/model/ZRCSipService;)V

    :goto_0
    return-void
.end method

.method onUpdateSpeakerVolume(F)V
    .locals 0

    .line 3938
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setSpeakerVolume(F)V

    return-void
.end method

.method public onUpdateStandaloneZRPResources([Ljava/lang/String;)V
    .locals 4

    .line 3651
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setStandaloneZRPResources([Ljava/lang/String;)V

    const-string v0, "onUpdateStandaloneZRPResources me=%s, resources=%s"

    const/4 v1, 0x2

    .line 3652
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method onUpdateVirtualAudioDeviceList(Ljava/lang/String;Ljava/util/ArrayList;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "onUpdateVirtualAudioDeviceList virtualDeviceId=%s, devicesInfo=%s, action=%d"

    const/4 v1, 0x3

    .line 3793
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v2, v6

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3794
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->cloneVirtualDeviceList()Ljava/util/HashMap;

    move-result-object v0

    const/4 v2, 0x0

    .line 3795
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 3796
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 3798
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3799
    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-nez p3, :cond_1

    .line 3802
    invoke-static {v2, p2}, Lus/zoom/zrc/settings/MediaDeviceUtils;->isNetworkDeviceListEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_a

    const-string p1, "onUpdateVirtualAudioDeviceList refresh list"

    .line 3803
    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p1, p3}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3804
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3805
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3806
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3807
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setVirtualAudioDeviceList(Ljava/util/HashMap;)V

    goto/16 :goto_3

    :cond_1
    if-ne v5, p3, :cond_6

    .line 3810
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 3811
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 3812
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;

    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 3816
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3817
    invoke-virtual {p3}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;

    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lus/zoom/zrcsdk/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3818
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3822
    :cond_5
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setVirtualAudioDeviceList(Ljava/util/HashMap;)V

    goto :goto_3

    :cond_6
    if-ne v6, p3, :cond_7

    const-string p1, "onUpdateVirtualAudioDeviceList add"

    .line 3824
    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p1, p3}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3825
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3826
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setVirtualAudioDeviceList(Ljava/util/HashMap;)V

    goto :goto_3

    :cond_7
    if-ne v1, p3, :cond_a

    .line 3828
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onUpdateVirtualAudioDeviceList update "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p1, p3}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3829
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v3, p1, :cond_9

    .line 3830
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;

    invoke-static {v2, p1}, Lus/zoom/zrc/settings/MediaDeviceUtils;->indexOfZRCNetworkDevice(Ljava/util/List;Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;)I

    move-result p1

    const/4 p3, -0x1

    if-eq p1, p3, :cond_8

    .line 3832
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v2, p1, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3835
    :cond_9
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setVirtualAudioDeviceList(Ljava/util/HashMap;)V

    :cond_a
    :goto_3
    return-void
.end method

.method onUpdateVirtualBackgroundList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCVirtualBackground;",
            ">;)V"
        }
    .end annotation

    .line 3611
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setVirtualBackgrounds(Ljava/util/List;)V

    return-void
.end method

.method onUpdateWBCameraInfo(Lus/zoom/zrcsdk/model/ZMDeviceInfo;)V
    .locals 1

    .line 2968
    invoke-static {}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->getDefault()Lus/zoom/zrc/utils/WhiteboardCameraHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->getSuccessfullyPairedItem(Lus/zoom/zrcsdk/model/ZMDeviceInfo;)Lus/zoom/zrcsdk/model/ZMDeviceItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setSelectedWhiteboardCamera(Lus/zoom/zrcsdk/model/ZMDeviceItem;)V

    .line 2970
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setWhiteboardCameraInfo(Lus/zoom/zrcsdk/model/ZMDeviceInfo;)V

    return-void
.end method

.method onUpdateWBCameraList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZMDeviceItem;",
            ">;)V"
        }
    .end annotation

    .line 2974
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setWhiteboardCameraList(Ljava/util/List;)V

    return-void
.end method

.method onUpdateZoomRoomCapability(Lus/zoom/zrcsdk/model/ZoomRoomCapability;)V
    .locals 0

    .line 2959
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setZoomRoomCapability(Lus/zoom/zrcsdk/model/ZoomRoomCapability;)V

    return-void
.end method

.method onUpdateZoomRoomsVersion(Ljava/lang/String;)V
    .locals 0

    .line 3062
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setZoomRoomVersion(Ljava/lang/String;)V

    return-void
.end method

.method public onUpdatedDeleteCalendarEventNotification(I)V
    .locals 2

    .line 3185
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->DeleteCalendarResult:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onUpdatedOperationTimeStatusNotification(Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;)V
    .locals 1

    .line 3212
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getOperationTimeStatus()Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->copy()Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;

    move-result-object v0

    .line 3213
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->isShouldDimScreenFromZR()Z

    move-result p1

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;->setShouldDimScreenFromZR(Z)V

    .line 3214
    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/Model;->setOperationTimeStatus(Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;)V

    return-void
.end method

.method public onUpdatedScheduleCalendarEventNotification(I)V
    .locals 2

    .line 3180
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->ScheduleCalendarResult:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onUpdatedWebSettingsNotification(Lus/zoom/zrcsdk/model/LoginInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2911
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->parseUserProfile(Lus/zoom/zrcsdk/model/LoginInfo;)V

    goto :goto_0

    :cond_0
    const-string p1, "onUpdatedWebSettingsNotification loginInfo is null!"

    const/4 v0, 0x0

    .line 2913
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2916
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->checkEncryptedCommunicationWithZoomRoom()Z

    return-void
.end method

.method onUpgradeDeviceROMNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3976
    invoke-static {p1}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3977
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignore onUpgradeDeviceROMNotification, not for us: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3980
    :cond_0
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p1

    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->UpgradeDeviceROMNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {p1, v0, p2}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method onUpgradeSipCallToMeetingResult(ILjava/lang/String;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 8

    .line 4901
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->UpgradeSipCallToMeetingResult:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v2, "result"

    .line 4902
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "requestId"

    const-string v6, "call"

    move-object v5, p2

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 4901
    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method onUserChangedNotification(ILus/zoom/zrcsdk/model/ZRCParticipant;)V
    .locals 3

    .line 4138
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getWorkMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 4144
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;

    .line 4145
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v1

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2, p2}, Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;-><init>(IILjava/lang/String;Lus/zoom/zrcsdk/model/ZRCParticipant;)V

    .line 4148
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getParticipantList()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/ZRCParticipantList;->mutableCopy()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object p1

    .line 4150
    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/ZRCParticipantList;->updateParticipantListByEvent(Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4151
    invoke-virtual {p1}, Lus/zoom/zrc/model/ZRCParticipantList;->sortParticipants()V

    .line 4152
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setParticipantList(Lus/zoom/zrc/model/ZRCParticipantList;)V

    .line 4155
    :cond_1
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p1

    sget-object p2, Lus/zoom/zrc/base/notification/ModelEvent;->ParticipantChanged:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v1, "changedParticipants"

    .line 4156
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 4155
    invoke-virtual {p1, p2, v0}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    goto :goto_0

    .line 4158
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/model/Model;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    const/4 p2, -0x1

    invoke-virtual {p1, p2, p2}, Lus/zoom/zrcsdk/ConfApp;->listParticipants(II)I

    :goto_0
    return-void
.end method

.method public onUserRefreshZAKReturn(ILjava/lang/String;)V
    .locals 0

    const/16 p2, 0x3e9

    if-ne p2, p1, :cond_0

    .line 2798
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->closeConnection()V

    const/4 p1, 0x0

    .line 2799
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->logout(Z)V

    .line 2800
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p1

    sget-object p2, Lus/zoom/zrc/base/notification/ModelEvent;->UserRefreshZAKError:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {p1, p2}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;)V

    :cond_0
    return-void
.end method

.method public onVerifyConnectionFinished(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 2931
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->onVerifyConnectionSuccess()V

    :cond_0
    return-void
.end method

.method public onWebLoginFinish(ILus/zoom/zrcsdk/model/LoginInfo;)V
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_5

    const/4 v1, 0x0

    .line 2618
    invoke-direct {p0, v1}, Lus/zoom/zrc/model/Model;->setZoomRoomVersion(Ljava/lang/String;)V

    .line 2620
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isOnlySupportZRPMode()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2621
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/LoginInfo;->isStandaloneDigitalSignage()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 p1, -0x2712

    const-string v1, "get ZoomRoom info succeed, but \"%s\" is a DS Only room, not supported on this device"

    .line 2623
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/LoginInfo;->getRoomName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v3

    invoke-static {v1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2627
    :cond_0
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/LoginInfo;->getRoomName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "get ZoomRoom info succeed, but roomName=%s"

    .line 2629
    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/LoginInfo;->getRoomName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v3

    invoke-static {p1, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    goto/16 :goto_0

    .line 2642
    :cond_1
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/LoginInfo;->isStandaloneZRP()Z

    move-result v2

    const/4 v4, 0x5

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v2

    if-eq v4, v2, :cond_3

    .line 2643
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/LoginInfo;->getZoomPresenceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x2

    const-string v1, "get ZoomRoom info succeed, but address=%s"

    .line 2645
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/LoginInfo;->getZoomPresenceAddress()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v3

    invoke-static {v1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2649
    :cond_2
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/LoginInfo;->getZoomPresenceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lus/zoom/zrc/model/Model;->setZoomRoomAddress(Ljava/lang/String;)V

    .line 2651
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/LoginInfo;->getZoomPresenceToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 p1, 0x3

    const-string v1, "get ZoomRoom info succeed, but token=%s"

    .line 2653
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/LoginInfo;->getZoomPresenceToken()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v3

    invoke-static {v1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2658
    :cond_3
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v2

    if-eq v4, v2, :cond_4

    const/4 v2, 0x4

    .line 2659
    invoke-virtual {p0, v2}, Lus/zoom/zrc/model/Model;->setAppState(I)V

    .line 2660
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->cleanupZoomRoomData()V

    .line 2663
    :cond_4
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/LoginInfo;->getRoomJid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lus/zoom/zrc/model/Model;->setZoomRoomJid(Ljava/lang/String;)V

    .line 2664
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/LoginInfo;->getZoomToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lus/zoom/zrc/model/Model;->setZoomRefreshToken(Ljava/lang/String;)V

    .line 2665
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/LoginInfo;->getZoomPresenceToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lus/zoom/zrc/model/Model;->setZoomRoomToken(Ljava/lang/String;)V

    .line 2666
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/LoginInfo;->getRoomLogicEmail()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lus/zoom/zrc/model/Model;->setZoomRoomEmail(Ljava/lang/String;)V

    .line 2668
    invoke-direct {p0, p2}, Lus/zoom/zrc/model/Model;->parseUserProfile(Lus/zoom/zrcsdk/model/LoginInfo;)V

    .line 2670
    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/Model;->setSettingsLocked(Z)V

    .line 2672
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->saveLoginAndRoomInfo()V

    .line 2674
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/LoginInfo;->isH323Enabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/Model;->setH323Enabled(Z)V

    .line 2675
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/LoginInfo;->isCrcCalloutOnlyEnabled()Z

    move-result p2

    invoke-direct {p0, p2}, Lus/zoom/zrc/model/Model;->setCrcCalloutOnlyEnabled(Z)V

    .line 2678
    iput-object v1, p0, Lus/zoom/zrc/model/Model;->googleAuthAccessToken:Ljava/lang/String;

    :cond_5
    :goto_0
    const/16 p2, 0x3e9

    if-eq p2, p1, :cond_6

    const/16 p2, 0x3ea

    if-ne p2, p1, :cond_7

    .line 2684
    :cond_6
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->wipePassword()V

    .line 2687
    :cond_7
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p2

    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->WebLoginFinished:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method onWebinarRoleChanged(I)V
    .locals 2

    .line 3774
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->WebinarRoleChanged:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method onWindowsPasswordChanged(I)V
    .locals 2

    .line 3789
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->WindowsPasswordChanged:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method onZMDeviceOperationResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2978
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object p6

    const-string p7, "result"

    .line 2979
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p6, p7, p2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object p2

    const-string p6, "requestId"

    .line 2980
    invoke-virtual {p2, p6, p1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object p1

    const-string p2, "action_type"

    .line 2981
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object p1

    const-string p2, "zmd_host"

    .line 2982
    invoke-virtual {p1, p2, p4}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object p1

    const-string p2, "zmd_id"

    .line 2983
    invoke-virtual {p1, p2, p5}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object p1

    .line 2986
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 2987
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p2

    sget-object p3, Lus/zoom/zrc/base/notification/ModelEvent;->onControlWhiteboardCameraResult:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {p2, p3, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method onZRWPinStatusOfScreenNotification(Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;I)V
    .locals 0

    .line 3600
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getPinUserManager()Lus/zoom/zrc/model/ZRCPinUserManager;

    move-result-object p2

    .line 3601
    invoke-virtual {p2, p1}, Lus/zoom/zrc/model/ZRCPinUserManager;->onZrwPinStatusOfScreenUpdate(Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;)V

    return-void
.end method

.method onZRWUserChangeNotification(II)V
    .locals 1

    .line 3605
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getPinUserManager()Lus/zoom/zrc/model/ZRCPinUserManager;

    move-result-object v0

    .line 3606
    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/model/ZRCPinUserManager;->onZRWUserChanged(II)V

    return-void
.end method

.method onZoomCalendarServiceBatchListEventsResult(ILjava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 4732
    invoke-direct {p0, p3}, Lus/zoom/zrc/model/Model;->updateCachedRoomMeetingLists(Ljava/util/List;)V

    .line 4734
    :cond_0
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p2

    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnZoomCalendarServiceBatchListEventsResult:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v1, "result"

    .line 4735
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "room_meeting_lists"

    .line 4734
    invoke-static {v1, p1, v2, p3}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method onZoomCalendarServiceDeleteEventResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method onZoomCalendarServiceListEventsResult(ILjava/lang/String;Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;)V
    .locals 3

    if-nez p1, :cond_0

    .line 4723
    invoke-direct {p0, p3}, Lus/zoom/zrc/model/Model;->updateCachedRoomMeetingList(Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;)V

    .line 4725
    :cond_0
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p2

    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnZoomCalendarServiceListEventsResult:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v1, "result"

    .line 4726
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "room_meeting_list"

    .line 4725
    invoke-static {v1, p1, v2, p3}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method onZoomCalendarServiceScheduleEventResult(ILjava/lang/String;Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 2

    if-nez p1, :cond_0

    .line 4741
    invoke-direct {p0, p3, p4}, Lus/zoom/zrc/model/Model;->insertMeetingItemToCachedRoomMeetingLists(Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    .line 4743
    :cond_0
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p2

    sget-object p4, Lus/zoom/zrc/base/notification/ModelEvent;->OnZoomCalendarServiceScheduleEventResult:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v0, "result"

    .line 4744
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "roomID"

    .line 4743
    invoke-static {v0, p1, v1, p3}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    invoke-virtual {p2, p4, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onZoomPresenceLoginFailed(I)V
    .locals 2

    .line 2792
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->ZRLoggedInAtPairedMode:Lus/zoom/zrc/base/notification/ModelEvent;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public onZoomPresenceLoginWithGoogle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2754
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    const-string p3, "Zoom Room logged in with Google, room=%s"

    const/4 p4, 0x1

    .line 2758
    new-array v0, p4, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p3, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2760
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getUserProfile()Lus/zoom/zrc/model/ZRCUserProfile;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 2762
    invoke-direct {p0, v1, p2, p1}, Lus/zoom/zrc/model/Model;->isLoggedInWith(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "update room token, length = %s"

    .line 2763
    new-array p2, p4, [Ljava/lang/Object;

    invoke-static {p5}, Lus/zoom/zrcsdk/util/StringUtil;->logToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v1

    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2764
    invoke-direct {p0, p5}, Lus/zoom/zrc/model/Model;->setZoomRoomToken(Ljava/lang/String;)V

    .line 2765
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->saveLoginAndRoomInfo()V

    goto :goto_0

    :cond_1
    const-string p1, "Zoom Room logged in with different room, will verify failed."

    .line 2767
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2768
    invoke-direct {p0, v1}, Lus/zoom/zrc/model/Model;->setConnectionVerified(Z)V

    .line 2771
    :goto_0
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->isConnectionVerified()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "current connection is not verified."

    .line 2772
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2773
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->initZoomRoomConnection()V

    goto :goto_1

    :cond_2
    const/4 p3, 0x3

    .line 2776
    invoke-virtual {p0, p3}, Lus/zoom/zrc/model/Model;->setAppState(I)V

    .line 2778
    invoke-direct {p0, v1}, Lus/zoom/zrc/model/Model;->setLoginType(I)V

    .line 2779
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setZoomRefreshToken(Ljava/lang/String;)V

    .line 2780
    invoke-direct {p0, p5}, Lus/zoom/zrc/model/Model;->setZoomRoomToken(Ljava/lang/String;)V

    .line 2781
    invoke-direct {p0, p2}, Lus/zoom/zrc/model/Model;->setZoomRoomEmail(Ljava/lang/String;)V

    .line 2782
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->saveLoginAndRoomInfo()V

    .line 2783
    invoke-direct {p0, v1}, Lus/zoom/zrc/model/Model;->setConnectionVerified(Z)V

    .line 2784
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->requestZoomRoomInfo()Z

    .line 2786
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p1

    sget-object p2, Lus/zoom/zrc/base/notification/ModelEvent;->ZRLoggedInAtPairedMode:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onZoomPresenceLoginWithZoom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 2716
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Zoom Room logged in with Zoom, room=%s"

    const/4 v1, 0x1

    .line 2720
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2722
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getUserProfile()Lus/zoom/zrc/model/ZRCUserProfile;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2724
    invoke-direct {p0, v1, p2, p1}, Lus/zoom/zrc/model/Model;->isLoggedInWith(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "update room token, length = %s"

    .line 2725
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p3}, Lus/zoom/zrcsdk/util/StringUtil;->logToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2726
    invoke-direct {p0, p3}, Lus/zoom/zrc/model/Model;->setZoomRoomToken(Ljava/lang/String;)V

    .line 2727
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->saveLoginAndRoomInfo()V

    goto :goto_0

    :cond_1
    const-string p1, "Zoom Room logged in with different room, will verify failed."

    .line 2729
    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2730
    invoke-direct {p0, v3}, Lus/zoom/zrc/model/Model;->setConnectionVerified(Z)V

    .line 2733
    :goto_0
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->isConnectionVerified()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "current connection is not verified."

    .line 2734
    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2735
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->initZoomRoomConnection()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    .line 2738
    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/Model;->setAppState(I)V

    .line 2740
    invoke-direct {p0, v1}, Lus/zoom/zrc/model/Model;->setLoginType(I)V

    .line 2741
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setZoomRefreshToken(Ljava/lang/String;)V

    .line 2742
    invoke-direct {p0, p3}, Lus/zoom/zrc/model/Model;->setZoomRoomToken(Ljava/lang/String;)V

    .line 2743
    invoke-direct {p0, p2}, Lus/zoom/zrc/model/Model;->setZoomRoomEmail(Ljava/lang/String;)V

    .line 2744
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->saveLoginAndRoomInfo()V

    .line 2745
    invoke-direct {p0, v3}, Lus/zoom/zrc/model/Model;->setConnectionVerified(Z)V

    .line 2746
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->requestZoomRoomInfo()Z

    .line 2748
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p1

    sget-object p2, Lus/zoom/zrc/base/notification/ModelEvent;->ZRLoggedInAtPairedMode:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onZoomPresenceSignedOutNotification()V
    .locals 2

    .line 3086
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3089
    invoke-direct {p0, v0, v0}, Lus/zoom/zrc/model/Model;->logoutInternal(ZI)V

    .line 3090
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->ZR_SignOut:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;)V

    return-void
.end method

.method public pinShareSourceOnZRScreen(IIZ)Z
    .locals 1

    .line 2298
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    invoke-virtual {v0, p1, p2, p3}, Lus/zoom/zrcsdk/ConfApp;->pinShareSourceOnScreen(IIZ)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public pinShareSourceOnZRWScreen(IIZ)Z
    .locals 1

    .line 2303
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    invoke-virtual {v0, p1, p2, p3}, Lus/zoom/zrcsdk/ConfApp;->zrwPinShareSourceOnScreen(IIZ)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public queryWithPairingCode(Ljava/lang/String;)Z
    .locals 10

    const-string v0, "pair ZR with code %s"

    const/4 v1, 0x1

    .line 1999
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2000
    iget-object v4, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->getDeviceName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Android"

    sget-object v8, Lus/zoom/zrc/utils/DeviceInfoUtils;->OS_VERSION:Ljava/lang/String;

    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/PTApp;->getZRCVersion()Ljava/lang/String;

    move-result-object v9

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lus/zoom/zrcsdk/PTApp;->queryWithParingCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2002
    invoke-direct {p0, v3}, Lus/zoom/zrc/model/Model;->setConnectionVerified(Z)V

    .line 2003
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->pairingCode:Ljava/lang/String;

    const/4 p1, 0x0

    .line 2004
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->workEmail:Ljava/lang/String;

    .line 2005
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->wipePassword()V

    const/4 p1, -0x1

    .line 2007
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setLoginType(I)V

    goto :goto_0

    :cond_0
    const-string v2, "queryWithPairingCode error (pairingCode=%s)"

    .line 2009
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0
.end method

.method public refreshCalendarAccessToken()V
    .locals 2

    .line 2488
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->calendarInfo:Lus/zoom/zrcsdk/model/ZRCCalendarInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2492
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->getCalendarType()I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 2493
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->refreshGoogleCalendarAccessToken()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 2494
    iget-object v1, p0, Lus/zoom/zrc/model/Model;->calendarInfo:Lus/zoom/zrcsdk/model/ZRCCalendarInfo;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->getCalendarType()I

    move-result v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lus/zoom/zrc/model/Model;->calendarInfo:Lus/zoom/zrcsdk/model/ZRCCalendarInfo;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCCalendarInfo;->getCalendarType()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 2495
    :cond_2
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->refreshExchangeCalendarAccessToken()V

    :cond_3
    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 1789
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/PTApp;->removeCalendarEventListener(Lus/zoom/zrcsdk/ICalendarEventListener;)V

    .line 1790
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/PTApp;->removeMeetingShareEventListener(Lus/zoom/zrcsdk/IMeetingShareEventListener;)V

    .line 1791
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/PTApp;->removePushNotificationEventListener(Lus/zoom/zrcsdk/IPushNotificationEventListener;)V

    return-void
.end method

.method public requestAgreeRecordingConsent(Z)Z
    .locals 1

    .line 2545
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/ConfApp;->requestAgreeRecordingConsent(Z)Z

    move-result p1

    return p1
.end method

.method public requestAllRooms()Z
    .locals 1

    .line 4656
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/PTApp;->getAllRooms()Z

    move-result v0

    return v0
.end method

.method public requestAllowAttendeesUnmuteThemselves(Z)Z
    .locals 1

    .line 2281
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/ConfApp;->requestAllowAttendeesUnmuteThemselves(Z)Z

    move-result p1

    return p1
.end method

.method public requestConnectZRCSDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 2573
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    const/4 v1, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lus/zoom/zrcsdk/PTApp;->requestZRCSDeviceOperation(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public requestControlZRCSDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 2578
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    const/4 v1, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lus/zoom/zrcsdk/PTApp;->requestZRCSDeviceOperation(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public requestDisplayTopBanner(Z)Z
    .locals 1

    .line 2554
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/ConfApp;->requestDisplayTopBanner(Z)Z

    move-result p1

    return p1
.end method

.method public requestDynamicallyCloudPbxContactFrom(IILjava/lang/String;Z)V
    .locals 1

    .line 2275
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0, p1, p2, p4, p3}, Lus/zoom/zrcsdk/PTApp;->requestSipPhoneUserDynamicallyFrom(IIZLjava/lang/String;)V

    .line 2276
    iget-object p1, p0, Lus/zoom/zrc/model/Model;->cloudPbxContactList:Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->setRequestingContacts(Z)V

    return-void
.end method

.method public requestEnableWaitingRoomOnEntry(Z)Z
    .locals 1

    .line 2261
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/ConfApp;->requestEnableWaitingRoomOnEntry(Z)Z

    move-result p1

    return p1
.end method

.method public requestGetReleaseNote()V
    .locals 1

    .line 2549
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/PTApp;->getReleaseNote()Z

    return-void
.end method

.method public requestLocationInfoByID(Ljava/lang/String;)Z
    .locals 1

    .line 4652
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/PTApp;->getLocationInfo(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public requestLogoutZR()V
    .locals 2

    .line 1912
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getLoginType()I

    move-result v1

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/PTApp;->requestLogoutZR(I)Z

    return-void
.end method

.method public requestMuteUserAudioShare(IZ)Z
    .locals 1

    .line 2308
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrcsdk/ConfApp;->requestMuteShareAudio(IZ)Z

    move-result p1

    return p1
.end method

.method public varargs requestPutInSilentMode([I)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2239
    iget-object v1, p0, Lus/zoom/zrc/model/Model;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    invoke-virtual {v1, p1, v0}, Lus/zoom/zrcsdk/ConfApp;->requestSilentModeAction([IZ)Z

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public varargs requestPutOutSilentMode([I)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 2248
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lus/zoom/zrcsdk/ConfApp;->requestSilentModeAction([IZ)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public requestRaiseHand(IZ)Z
    .locals 1

    .line 2223
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrcsdk/ConfApp;->requestRaiseHand(IZ)Z

    move-result p1

    return p1
.end method

.method public requestRestartZR()V
    .locals 1

    .line 1904
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/PTApp;->requestRestartZR()Z

    return-void
.end method

.method public requestRoomParentLocationID(Ljava/lang/String;)Z
    .locals 1

    .line 4648
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/PTApp;->getRoomLocationID(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public requestSetDeviceDisplayName(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 2285
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0, p1, p2, p3, p4}, Lus/zoom/zrcsdk/PTApp;->setDeviceDisplayName(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    return-void
.end method

.method public requestShowAudioParticipants(Z)Z
    .locals 1

    .line 2266
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/ConfApp;->requestShowAudioParticipants(Z)Z

    move-result p1

    return p1
.end method

.method public requestShutdownZR()V
    .locals 1

    .line 1908
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/PTApp;->requestShutdownZR()Z

    return-void
.end method

.method public requestSilentModeAdmitAll()Z
    .locals 1

    .line 2256
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ConfApp;->requestSilentModeAdmitAll()Z

    move-result v0

    return v0
.end method

.method public requestZMDeviceOperation(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 4677
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lus/zoom/zrcsdk/PTApp;->requestZMDeviceOperation(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public requestZoomPresenceCalendar(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1980
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/PTApp;->requestZoomPresenceCalendar(Ljava/lang/String;)Z

    return-void
.end method

.method public requestZoomPresenceLocation()Z
    .locals 1

    .line 4644
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/PTApp;->requestZoomPresenceLocation()Z

    move-result v0

    return v0
.end method

.method public requestZoomRoomInfo()Z
    .locals 7

    .line 2128
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->cleanupZoomRoomData()V

    const/4 v0, 0x0

    .line 2130
    iput-object v0, p0, Lus/zoom/zrc/model/Model;->kickedOutBy:Ljava/lang/Integer;

    .line 2133
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getLoginType()I

    move-result v0

    const-string v1, ""

    .line 2137
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "login with "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 2141
    :pswitch_0
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getZoomRefreshToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2142
    iget-object v4, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v4}, Lus/zoom/zrcsdk/PTApp;->loginZRWithLocalToken()Z

    move-result v4

    goto :goto_0

    .line 2143
    :cond_0
    iget-object v4, p0, Lus/zoom/zrc/model/Model;->workEmail:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->hasPassword()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2144
    iget-object v4, p0, Lus/zoom/zrc/model/Model;->workEmail:Ljava/lang/String;

    iget-object v5, p0, Lus/zoom/zrc/model/Model;->password:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v4, v5}, Lus/zoom/zrc/model/Model;->loginWithWorkEmail(Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    move-result v4

    goto :goto_0

    .line 2145
    :cond_1
    iget-object v4, p0, Lus/zoom/zrc/model/Model;->licenseKey:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2146
    iget-object v4, p0, Lus/zoom/zrc/model/Model;->licenseKey:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lus/zoom/zrc/model/Model;->loginWithLicenseKey(Ljava/lang/String;)Z

    move-result v4

    goto :goto_0

    :cond_2
    const-string v4, "requesting ZoomRoom info, but no available credential"

    .line 2148
    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lus/zoom/zrcsdk/util/ZRCLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x0

    .line 2150
    :goto_0
    invoke-static {v0}, Lus/zoom/zrcsdk/model/LoginEmailType;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2153
    :pswitch_1
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->getZoomRoomEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2154
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getZoomRefreshToken()Ljava/lang/String;

    move-result-object v4

    .line 2155
    invoke-static {v4}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v4, "requestZoomRoomInfo: zoomRefreshToken is empty, use googleAuthAccessToken"

    .line 2156
    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2157
    iget-object v4, p0, Lus/zoom/zrc/model/Model;->googleAuthAccessToken:Ljava/lang/String;

    .line 2160
    :cond_3
    iget-object v5, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v5, v4, v1}, Lus/zoom/zrcsdk/PTApp;->loginWithGoogleAccessToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 2162
    invoke-static {v0}, Lus/zoom/zrcsdk/model/LoginEmailType;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v6, v4

    move v4, v1

    move-object v1, v6

    goto :goto_2

    .line 2165
    :pswitch_2
    iget-object v4, p0, Lus/zoom/zrc/model/Model;->pairingCode:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2166
    iget-object v4, p0, Lus/zoom/zrc/model/Model;->pairingCode:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lus/zoom/zrc/model/Model;->queryWithPairingCode(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "pairingCode"

    .line 2167
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2169
    :cond_4
    invoke-static {v0}, Lus/zoom/zrcsdk/model/LoginEmailType;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_7

    const/4 v5, 0x1

    if-ne v5, v0, :cond_5

    const-string v0, "roomEmail="

    .line 2175
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->getZoomRoomEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "token("

    .line 2176
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getZoomRefreshToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->logToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    if-nez v0, :cond_6

    const-string v0, "roomEmail="

    .line 2178
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->getZoomRoomEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "token("

    .line 2179
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lus/zoom/zrcsdk/util/StringUtil;->logToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2182
    :cond_6
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requesting ZoomRoom info failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    return v4

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public scheduleCalendarEvent(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z
    .locals 1
    .param p1    # Lus/zoom/zrcsdk/model/ZRCMeetingListItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2189
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/PTApp;->scheduleCalendarEvent(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result p1

    return p1
.end method

.method public scheduleCalendarEventWithRoom(Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;Z)Z
    .locals 1

    .line 4668
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0, p1, p2, p3}, Lus/zoom/zrcsdk/PTApp;->scheduleCalendarEventWithRoom(Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;Z)Z

    move-result p1

    return p1
.end method

.method public selectZoomRoom(Lus/zoom/zrcsdk/model/RoomInfo;)V
    .locals 2
    .param p1    # Lus/zoom/zrcsdk/model/RoomInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2025
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setConnectionVerified(Z)V

    .line 2026
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/RoomInfo;->getEmail()Ljava/lang/String;

    move-result-object p1

    .line 2027
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/Model;->setZoomRoomEmail(Ljava/lang/String;)V

    .line 2028
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getLoginType()I

    move-result v0

    if-nez v0, :cond_0

    .line 2029
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getZoomRefreshToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrcsdk/PTApp;->loginWithGoogleAccessToken(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 2031
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getZoomRefreshToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrcsdk/PTApp;->loginRoom(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2033
    :goto_0
    invoke-direct {p0}, Lus/zoom/zrc/model/Model;->saveLoginAndRoomInfo()V

    return-void
.end method

.method public sendDTMF(ILjava/lang/String;)V
    .locals 1

    .line 4640
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    invoke-virtual {v0, p2, p1}, Lus/zoom/zrcsdk/ConfApp;->sendDTMF(Ljava/lang/String;I)I

    return-void
.end method

.method public sendFeedback(Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2565
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    .line 2566
    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->getFeedbackFirstImpression(Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;)Ljava/lang/String;

    move-result-object v1

    .line 2567
    invoke-static {p1, p2}, Lus/zoom/zrc/utils/Util;->getFeedbackContent(Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2568
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCFeedBackInfo;->getResponderEmail()Ljava/lang/String;

    move-result-object p1

    .line 2565
    invoke-virtual {v0, v1, p2, p1}, Lus/zoom/zrcsdk/PTApp;->sendFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public sendSipCallDTMF(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2427
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrcsdk/PTApp;->sendSipCallDTMF(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "sendSipCallDTMF sipCall is null!!!"

    const/4 p2, 0x0

    .line 2429
    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setAccountID(Ljava/lang/String;)V
    .locals 0

    .line 605
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->accountID:Ljava/lang/String;

    return-void
.end method

.method setAmICoHost(Z)V
    .locals 1

    .line 1523
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->amICoHost:Z

    if-eq v0, p1, :cond_0

    .line 1524
    iput-boolean p1, p0, Lus/zoom/zrc/model/Model;->amICoHost:Z

    .line 1525
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->amICoHost:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method setAmIGuest(Z)V
    .locals 1

    .line 1539
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->amIGuest:Z

    if-eq v0, p1, :cond_0

    .line 1540
    iput-boolean p1, p0, Lus/zoom/zrc/model/Model;->amIGuest:Z

    .line 1541
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->amIGuest:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method setAmIHost(Z)V
    .locals 1

    .line 1511
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->amIHost:Z

    if-eq v0, p1, :cond_0

    .line 1512
    iput-boolean p1, p0, Lus/zoom/zrc/model/Model;->amIHost:Z

    .line 1513
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->amIHost:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method public setAppState(I)V
    .locals 1

    .line 343
    iget v0, p0, Lus/zoom/zrc/model/Model;->appState:I

    if-eq v0, p1, :cond_0

    .line 344
    iput p1, p0, Lus/zoom/zrc/model/Model;->appState:I

    .line 345
    invoke-static {}, Lus/zoom/zrc/model/AppStateMonitor;->getInstance()Lus/zoom/zrc/model/AppStateMonitor;

    move-result-object p1

    iget v0, p0, Lus/zoom/zrc/model/Model;->appState:I

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/AppStateMonitor;->setAppState(I)V

    :cond_0
    return-void
.end method

.method setAudioStatus(Lus/zoom/zrcsdk/model/ZRCAudioStatus;)V
    .locals 1
    .param p1    # Lus/zoom/zrcsdk/model/ZRCAudioStatus;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1192
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->audioStatus:Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1193
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->audioStatus:Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    .line 1194
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->audioStatus:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method public setAutoStartScheduleMeeting(Z)V
    .locals 1

    .line 4835
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->isAutoStartScheduleMeeting:Z

    if-eq v0, p1, :cond_0

    .line 4836
    iput-boolean p1, p0, Lus/zoom/zrc/model/Model;->isAutoStartScheduleMeeting:Z

    .line 4837
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->autoStartScheduleMeeting:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method public setCalendarRefreshInterval(I)V
    .locals 1

    .line 1043
    iget v0, p0, Lus/zoom/zrc/model/Model;->calendarRefreshInterval:I

    if-eq v0, p1, :cond_0

    .line 1044
    iput p1, p0, Lus/zoom/zrc/model/Model;->calendarRefreshInterval:I

    .line 1045
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->calendarRefreshInterval:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method public setCalendarRefreshTokenExpired(Z)V
    .locals 1

    .line 1055
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->calendarRefreshTokenExpired:Z

    if-eq v0, p1, :cond_0

    .line 1056
    iput-boolean p1, p0, Lus/zoom/zrc/model/Model;->calendarRefreshTokenExpired:Z

    .line 1057
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->calendarRefreshTokenExpired:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method public setCallHistoryDisabled(Z)V
    .locals 1

    .line 1115
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->callHistoryDisabled:Z

    if-eq v0, p1, :cond_0

    .line 1116
    iput-boolean p1, p0, Lus/zoom/zrc/model/Model;->callHistoryDisabled:Z

    .line 1117
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->callHistoryDisabled:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method public setCameraSharingStatus(Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;)V
    .locals 1

    .line 1450
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getCameraSharingStatus()Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1451
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->cameraSharingStatus:Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    .line 1452
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->cameraSharingStatus:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method public setCloudRecordingNotificationEmail(Ljava/lang/String;)V
    .locals 0

    .line 1457
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->cloudRecordingNotificationEmail:Ljava/lang/String;

    return-void
.end method

.method public setCurrentSelectedMicrophoneMuted(Z)V
    .locals 0

    .line 1230
    iput-boolean p1, p0, Lus/zoom/zrc/model/Model;->currentSelectedMicrophoneMuted:Z

    .line 1231
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->currentSelectedMicrophoneMuted:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    return-void
.end method

.method public setDisableNextMeetingAlert(Z)V
    .locals 1

    .line 4787
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->disableNextMeetingAlert:Z

    if-eq v0, p1, :cond_0

    .line 4788
    iput-boolean p1, p0, Lus/zoom/zrc/model/Model;->disableNextMeetingAlert:Z

    .line 4789
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->disableNextMeetingAlert:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method public setDisableNextMeetingAlertInMeeting(Z)V
    .locals 1

    .line 4799
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->disableNextMeetingAlertInMeeting:Z

    if-eq v0, p1, :cond_0

    .line 4800
    iput-boolean p1, p0, Lus/zoom/zrc/model/Model;->disableNextMeetingAlertInMeeting:Z

    .line 4801
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->disableNextMeetingAlertInMeeting:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method public setDisableNextMeetingAlertOnController(Z)V
    .locals 1

    .line 4811
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->disableNextMeetingAlertOnController:Z

    if-eq v0, p1, :cond_0

    .line 4812
    iput-boolean p1, p0, Lus/zoom/zrc/model/Model;->disableNextMeetingAlertOnController:Z

    .line 4813
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->disableNextMeetingAlertOnController:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method public setDisableNextMeetingAlertOnTV(Z)V
    .locals 1

    .line 4823
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->disableNextMeetingAlertOnTV:Z

    if-eq v0, p1, :cond_0

    .line 4824
    iput-boolean p1, p0, Lus/zoom/zrc/model/Model;->disableNextMeetingAlertOnTV:Z

    .line 4825
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->disableNextMeetingAlertOnTV:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method public setH323Enabled(Z)V
    .locals 1

    .line 767
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->h323Enabled:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 770
    :cond_0
    iput-boolean p1, p0, Lus/zoom/zrc/model/Model;->h323Enabled:Z

    .line 771
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->h323Enabled:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    return-void
.end method

.method public setLanguageIDtoWeb()V
    .locals 2

    .line 1916
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    const-string v1, "en"

    invoke-static {v1}, Lcom/zipow/cmmlib/AppUtil;->getLanguageID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/PTApp;->setLanguageID(Ljava/lang/String;)V

    return-void
.end method

.method public setListMeetingResult(I)V
    .locals 1

    .line 1067
    iget v0, p0, Lus/zoom/zrc/model/Model;->listMeetingResult:I

    if-eq v0, p1, :cond_0

    .line 1068
    iput p1, p0, Lus/zoom/zrc/model/Model;->listMeetingResult:I

    .line 1069
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->listMeetingResult:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method setMeetingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V
    .locals 1
    .param p1    # Lus/zoom/zrcsdk/model/ZRCMeetingInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1128
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->meetingInfo:Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1129
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->meetingInfo:Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    .line 1130
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->meetingInfo:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method public setMeetingList(Lus/zoom/zrc/model/MeetingList;)V
    .locals 1
    .param p1    # Lus/zoom/zrc/model/MeetingList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 820
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->meetingList:Lus/zoom/zrc/model/MeetingList;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 821
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->meetingList:Lus/zoom/zrc/model/MeetingList;

    .line 822
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->meetingList:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method public setMeetingType(I)V
    .locals 2

    .line 354
    iget v0, p0, Lus/zoom/zrc/model/Model;->meetingType:I

    if-eq v0, p1, :cond_0

    .line 355
    iput p1, p0, Lus/zoom/zrc/model/Model;->meetingType:I

    .line 356
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->MeetingTypeChanged:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method setOperationTimeStatus(Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;)V
    .locals 1

    .line 1179
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->operationTimeStatus:Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1180
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->operationTimeStatus:Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;

    .line 1181
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->operationTimeStatus:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method public setPublicRoomEnabled(Z)V
    .locals 1

    .line 755
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->isPublicRoomEnabled:Z

    if-eq v0, p1, :cond_0

    .line 756
    iput-boolean p1, p0, Lus/zoom/zrc/model/Model;->isPublicRoomEnabled:Z

    .line 757
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->publicRoomEnabled:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method public setPushedAutoSignInData(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 4323
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    .line 4324
    invoke-virtual {v0, p1, p2, p3}, Lus/zoom/zrcsdk/ZRCSdkContext;->setPushedAutoSignInData(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public setReserveOtherRoomInLocation(I)V
    .locals 1

    .line 379
    iget v0, p0, Lus/zoom/zrc/model/Model;->reserveOtherRoomInLocation:I

    if-eq v0, p1, :cond_0

    .line 380
    iput p1, p0, Lus/zoom/zrc/model/Model;->reserveOtherRoomInLocation:I

    .line 381
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->reserveOtherRoomInLocation:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method setRoomProfiles(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;",
            ">;)V"
        }
    .end annotation

    .line 1669
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->roomProfiles:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1670
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->roomProfiles:Ljava/util/List;

    .line 1671
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->roomProfiles:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method setRoomSystemSessionStatus(I)V
    .locals 1

    .line 805
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->roomSystemSessionStatus:Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getStatus()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 806
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->roomSystemSessionStatus:Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->setStatus(I)V

    .line 807
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->roomSystemSessionStatus:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    return-void
.end method

.method setRoomSystemSessionStatus(Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;)V
    .locals 1
    .param p1    # Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 796
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->roomSystemSessionStatus:Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    if-ne v0, p1, :cond_0

    return-void

    .line 797
    :cond_0
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->roomSystemSessionStatus:Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    .line 798
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->roomSystemSessionStatus:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    return-void
.end method

.method public setSettingsDeviceInfo(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)V
    .locals 1

    .line 941
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->settingsDeviceInfo:Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 942
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->settingsDeviceInfo:Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    .line 943
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->settingsDeviceInfo:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method public setSettingsLocked(Z)V
    .locals 1

    .line 991
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->settingsLocked:Z

    if-eq v0, p1, :cond_1

    .line 992
    iput-boolean p1, p0, Lus/zoom/zrc/model/Model;->settingsLocked:Z

    .line 993
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->isSettingsLocked()Z

    move-result p1

    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->settingsLocked:Z

    if-eq p1, v0, :cond_0

    .line 994
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->settingsLocked:Z

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/AppModel;->setSettingsLocked(Z)V

    .line 996
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->settingsLocked:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_1
    return-void
.end method

.method public setShownAllVirtualAudioDevices(Z)V
    .locals 0

    .line 713
    iput-boolean p1, p0, Lus/zoom/zrc/model/Model;->isShownAllVirtualAudioDevices:Z

    return-void
.end method

.method public setSpotlightStatus(Lus/zoom/zrcsdk/model/ZRCSpotlightStatus;)V
    .locals 1

    .line 1552
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->spotlightStatus:Lus/zoom/zrcsdk/model/ZRCSpotlightStatus;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1553
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->spotlightStatus:Lus/zoom/zrcsdk/model/ZRCSpotlightStatus;

    .line 1554
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->spotlightStatus:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 0

    .line 596
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->userID:Ljava/lang/String;

    return-void
.end method

.method setVideoLayoutStatus(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V
    .locals 1
    .param p1    # Lus/zoom/zrcsdk/model/VideoLayoutStatus;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1163
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->videoLayoutStatus:Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1164
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->videoLayoutStatus:Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    .line 1165
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->videoLayoutStatus:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method setVideoStatus(Lus/zoom/zrcsdk/model/ZRCVideoStatus;)V
    .locals 1
    .param p1    # Lus/zoom/zrcsdk/model/ZRCVideoStatus;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1205
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->videoStatus:Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1206
    iput-object p1, p0, Lus/zoom/zrc/model/Model;->videoStatus:Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    .line 1207
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->videoStatus:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method public setWorkMode(I)V
    .locals 1

    .line 4300
    invoke-static {}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getInstance()Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->supportsGetWorkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4301
    invoke-static {}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getInstance()Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->reportWorkMode(I)V

    .line 4303
    :cond_0
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    .line 4304
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/ZRCSdkContext;->setWorkMode(I)V

    return-void
.end method

.method public setZrpReserveDisabled(Z)V
    .locals 1

    .line 1103
    iget-boolean v0, p0, Lus/zoom/zrc/model/Model;->zrpReserveDisabled:Z

    if-eq v0, p1, :cond_0

    .line 1104
    iput-boolean p1, p0, Lus/zoom/zrc/model/Model;->zrpReserveDisabled:Z

    .line 1105
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->zrpReserveDisabled:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/Model;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method public setup()V
    .locals 1

    .line 1783
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/PTApp;->addCalendarEventListener(Lus/zoom/zrcsdk/ICalendarEventListener;)V

    .line 1784
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/PTApp;->addMeetingShareEventListener(Lus/zoom/zrcsdk/IMeetingShareEventListener;)V

    .line 1785
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/PTApp;->addPushNotificationEventListener(Lus/zoom/zrcsdk/IPushNotificationEventListener;)V

    return-void
.end method

.method public showSharingInstruction(ZZZI)V
    .locals 1

    .line 2559
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getAirPlayBlackMagicStatus()Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;

    move-result-object v0

    invoke-virtual {v0, p4}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->setInstructionDisplayState(I)V

    .line 2561
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    invoke-virtual {v0, p1, p2, p3, p4}, Lus/zoom/zrcsdk/ConfApp;->showSharingInstruction(ZZZI)I

    return-void
.end method

.method public sipDialOut(Ljava/lang/String;)Z
    .locals 2

    .line 2408
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getCloudPBXServiceInfo()Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2409
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->getDefaultCallerID()Lus/zoom/zrcsdk/model/ZRCCallerID;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2410
    :goto_0
    iget-object v1, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v1, v0, p1}, Lus/zoom/zrcsdk/PTApp;->onSipDialOut(Lus/zoom/zrcsdk/model/ZRCCallerID;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public startPSTNCall(I)Z
    .locals 2

    const/4 v0, 0x1

    .line 2355
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setMeetingStatus(I)V

    const/4 v0, 0x6

    .line 2356
    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/Model;->setAppState(I)V

    const/4 v0, 0x2

    .line 2357
    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/Model;->setMeetingType(I)V

    .line 2358
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getMeetingListItem()Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2359
    :goto_0
    iget-object v1, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v1, p1, v0}, Lus/zoom/zrcsdk/PTApp;->startPSTNCall(ILus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result p1

    return p1
.end method

.method public startTestingMicrophoneVolume(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V
    .locals 3

    if-nez p1, :cond_1

    .line 1872
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1873
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getSelectedMicrophone()Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 1876
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getDeviceAlias()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lus/zoom/zrcsdk/PTApp;->startTestingMicrophone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1878
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    invoke-virtual {p1, v0, v1, v2}, Lus/zoom/zrcsdk/PTApp;->startTestingMicrophone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public stopTestingMicrophoneVolume()V
    .locals 1

    .line 1883
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/PTApp;->stopTestingMicrophone()I

    return-void
.end method

.method public switchPstnCallToMeeting()Z
    .locals 8

    .line 2399
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isCanRingingInPstnCall()Z

    move-result v7

    .line 2400
    iget-object v1, p0, Lus/zoom/zrc/model/Model;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v7}, Lus/zoom/zrcsdk/ConfApp;->callOutPSTNUser(Ljava/lang/String;Ljava/lang/String;ZZZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2402
    invoke-virtual {p0, v1}, Lus/zoom/zrc/model/Model;->setMeetingType(I)V

    :cond_0
    return v0
.end method

.method public switchWorkMode()V
    .locals 2

    .line 2060
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getWorkMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    .line 2065
    :cond_0
    invoke-direct {p0, v1}, Lus/zoom/zrc/model/Model;->switchWorkMode(I)V

    return-void
.end method

.method public transferSipCall(Lus/zoom/zrcsdk/model/ZRCTransferType;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Ljava/lang/String;)V
    .locals 1

    .line 4870
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0, p1, p2, p3}, Lus/zoom/zrcsdk/PTApp;->transferSipCall(Lus/zoom/zrcsdk/model/ZRCTransferType;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Ljava/lang/String;)I

    return-void
.end method

.method public unholdSipCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 1

    .line 4862
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/PTApp;->unholdSipCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)I

    return-void
.end method

.method public updateDeviceCapability()V
    .locals 2

    .line 2107
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getControllerDeviceCapability()Lus/zoom/zrcsdk/model/ZRCControllerDeviceCapability;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/PTApp;->setControllerDeviceCapability(Lus/zoom/zrcsdk/model/ZRCControllerDeviceCapability;)Z

    return-void
.end method

.method updateMeetingUserAudioStatus(ILus/zoom/zrcsdk/model/ZRCAudioStatus;)V
    .locals 4

    .line 4204
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getParticipantList()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCParticipantList;->mutableCopy()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object v0

    .line 4206
    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCParticipantList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCParticipant;

    .line 4207
    invoke-virtual {v2, p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isSameAs(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4208
    invoke-virtual {v2, p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->setAudioStatus(Lus/zoom/zrcsdk/model/ZRCAudioStatus;)V

    .line 4213
    :cond_1
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setParticipantList(Lus/zoom/zrc/model/ZRCParticipantList;)V

    return-void
.end method

.method updateMeetingUserCameraStatus(ILus/zoom/zrcsdk/model/ZRCCameraControlStatus;)V
    .locals 4

    .line 4230
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getParticipantList()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCParticipantList;->mutableCopy()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object v0

    .line 4232
    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCParticipantList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCParticipant;

    .line 4233
    invoke-virtual {v2, p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isSameAs(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4234
    invoke-virtual {v2, p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->setCameraControlStatus(Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;)V

    .line 4239
    :cond_1
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setParticipantList(Lus/zoom/zrc/model/ZRCParticipantList;)V

    return-void
.end method

.method updateMeetingUserHostStatus(IZ)V
    .locals 3

    .line 4258
    invoke-virtual {p0, p2}, Lus/zoom/zrc/model/Model;->setAmIHost(Z)V

    .line 4260
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getParticipantList()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/ZRCParticipantList;->mutableCopy()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object p2

    .line 4262
    invoke-virtual {p2}, Lus/zoom/zrc/model/ZRCParticipantList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCParticipant;

    .line 4263
    invoke-virtual {v1, p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isSameAs(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 4264
    invoke-virtual {v1, v2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->setHost(Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4266
    invoke-virtual {v1, v2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->setHost(Z)V

    goto :goto_0

    .line 4270
    :cond_1
    invoke-virtual {p2}, Lus/zoom/zrc/model/ZRCParticipantList;->sortParticipants()V

    .line 4272
    invoke-direct {p0, p2}, Lus/zoom/zrc/model/Model;->setParticipantList(Lus/zoom/zrc/model/ZRCParticipantList;)V

    return-void
.end method

.method updateMeetingUserRecordingStatus(IZZ)V
    .locals 4

    .line 4243
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getParticipantList()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCParticipantList;->mutableCopy()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object v0

    .line 4245
    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCParticipantList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCParticipant;

    .line 4246
    invoke-virtual {v2, p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isSameAs(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4247
    invoke-virtual {v2, p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->setCanRecord(Z)V

    .line 4248
    invoke-virtual {v2, p3}, Lus/zoom/zrcsdk/model/ZRCParticipant;->setRecording(Z)V

    .line 4253
    :cond_1
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setParticipantList(Lus/zoom/zrc/model/ZRCParticipantList;)V

    return-void
.end method

.method updateMeetingUserVideoStatus(ILus/zoom/zrcsdk/model/ZRCVideoStatus;)V
    .locals 4

    .line 4217
    invoke-virtual {p0}, Lus/zoom/zrc/model/Model;->getParticipantList()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCParticipantList;->mutableCopy()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object v0

    .line 4219
    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCParticipantList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCParticipant;

    .line 4220
    invoke-virtual {v2, p1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isSameAs(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4221
    invoke-virtual {v2, p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->setVideoStatus(Lus/zoom/zrcsdk/model/ZRCVideoStatus;)V

    .line 4226
    :cond_1
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/Model;->setParticipantList(Lus/zoom/zrc/model/ZRCParticipantList;)V

    return-void
.end method

.method public updateMyAudio(Z)V
    .locals 1

    .line 2414
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mConfApp:Lus/zoom/zrcsdk/ConfApp;

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/ConfApp;->updateAudioStatus(Z)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "updateMyAudio error!"

    const/4 v0, 0x0

    .line 2415
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public updateMySipPhoneAudio(Z)V
    .locals 1

    .line 2420
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/PTApp;->updateMySipPhoneAudio(Z)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "updateMySipPhoneAudio error!"

    const/4 v0, 0x0

    .line 2421
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public updateRoomNameOrLockCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1957
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0, p1, p2, p3}, Lus/zoom/zrcsdk/PTApp;->updateRoomNameOrLockCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public upgradeSipCallToMeeting(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Z)V
    .locals 1

    .line 4874
    iget-object v0, p0, Lus/zoom/zrc/model/Model;->mPTApp:Lus/zoom/zrcsdk/PTApp;

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrcsdk/PTApp;->upgradeSipCallToMeeting(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Z)I

    return-void
.end method

.method public webDomain()Ljava/lang/String;
    .locals 1

    .line 1801
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->currentDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
