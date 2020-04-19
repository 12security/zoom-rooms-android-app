.class public Lus/zoom/zrc/model/AppModel;
.super Ljava/lang/Object;
.source "AppModel.java"


# static fields
.field private static instance:Lus/zoom/zrc/model/AppModel;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private audioCheckupInfo:Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;

.field private audioStatus:Lus/zoom/zrcsdk/model/ZRCAudioStatus;

.field private batteryCharging:Z

.field private batteryLevel:F

.field private batteryReportTime:J

.field private calendarServiceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;",
            ">;"
        }
    .end annotation
.end field

.field private cameraPresetsManager:Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;

.field private cameraSharingStatus:Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

.field private comDeviceInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCComDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private contactAvailableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;"
        }
    .end annotation
.end field

.field private contactList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;"
        }
    .end annotation
.end field

.field private contactTransportFinished:Z

.field private dynamicContactList:Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

.field private isConnectionVerified:Z

.field private isOnEntryMuted:Z

.field private isOnEntryWaiting:Z

.field private logfilePath:Ljava/lang/String;

.field private loginInfo:Lus/zoom/zrcsdk/model/LoginInfo;

.field private mContext:Landroid/content/Context;

.field private meetingAlertManager:Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

.field private meetingInfo:Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

.field private meetingLocked:Z

.field private meetingRecordingInfo:Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;

.field private meetingSharingStatus:Lus/zoom/zrcsdk/model/ZRCSharingStatus;

.field private microphoneTestRecordingStatus:I

.field private needWaitHost:Z

.field private otherDeviceLogin:Z

.field private pairingCode:Ljava/lang/String;

.field private pinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

.field private quantifyOfCecAdapterAttachedScreens:I

.field private quantityOfScreens:I

.field private recordingError:Lus/zoom/zrcsdk/model/ZRCMeetingCloudRecordingError;

.field private refreshToken:Ljava/lang/String;

.field private roomLocation:Lus/zoom/zrcsdk/model/ZRCLocationTree;

.field private screenHeight:I

.field private screenResolutionStatus:I

.field private screenWidth:I

.field private selectedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrc/view/ISelectedMeetingListener;",
            ">;"
        }
    .end annotation
.end field

.field private seletedContactList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;"
        }
    .end annotation
.end field

.field private seletedContacts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;"
        }
    .end annotation
.end field

.field private settingsLocked:Z

.field private startAudioCheckTime:J

.field private tpMeetingLaunchPlace:I

.field private userEmail:Ljava/lang/String;

.field private videoLayoutStatus:Lus/zoom/zrcsdk/model/VideoLayoutStatus;

.field private videoPageStatus:Lus/zoom/zrcsdk/model/VideoPageStatus;

.field private videoStatus:Lus/zoom/zrcsdk/model/ZRCVideoStatus;

.field private videoThumbInfo:Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

.field private videoThumbInfoUpdate:Z

.field private waitingType:I

.field private zoomRoomAvailableContactList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;"
        }
    .end annotation
.end field

.field private zoomRoomContactList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;"
        }
    .end annotation
.end field

.field private zrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/RoomInfo;",
            ">;"
        }
    .end annotation
.end field

.field private zrcContactIm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrc/model/ZRCContactImData;",
            ">;"
        }
    .end annotation
.end field

.field private zrcContactsAvailableHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;"
        }
    .end annotation
.end field

.field private zrcContactsHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;"
        }
    .end annotation
.end field

.field private zrcFeatureListInfo:Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

.field private zrcGenericSettings:Lus/zoom/zrcsdk/model/ZRCGenericSettings;

.field private zrcLegacyRoomSystems:Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

.field private zrcMeetingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingListItem;",
            ">;"
        }
    .end annotation
.end field

.field private zrcSettingsDeviceInfo:Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lus/zoom/zrc/model/AppModel;->isOnEntryMuted:Z

    .line 102
    iput-boolean v0, p0, Lus/zoom/zrc/model/AppModel;->isOnEntryWaiting:Z

    const/4 v0, 0x0

    .line 918
    iput v0, p0, Lus/zoom/zrc/model/AppModel;->tpMeetingLaunchPlace:I

    return-void
.end method

.method private addOrRemoveFromAvailableList(Lus/zoom/zrcsdk/model/ZRCContact;)V
    .locals 2

    .line 395
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->getPresence()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->getPresence()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 406
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->zrcContactsAvailableHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->getJid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 407
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->zrcContactsAvailableHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->getJid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->isZoomRoomsGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->zoomRoomAvailableContactList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 411
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->contactAvailableList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lus/zoom/zrc/model/AppModel;
    .locals 2

    const-class v0, Lus/zoom/zrc/model/AppModel;

    monitor-enter v0

    .line 133
    :try_start_0
    sget-object v1, Lus/zoom/zrc/model/AppModel;->instance:Lus/zoom/zrc/model/AppModel;

    if-nez v1, :cond_0

    .line 134
    new-instance v1, Lus/zoom/zrc/model/AppModel;

    invoke-direct {v1}, Lus/zoom/zrc/model/AppModel;-><init>()V

    sput-object v1, Lus/zoom/zrc/model/AppModel;->instance:Lus/zoom/zrc/model/AppModel;

    .line 135
    :cond_0
    sget-object v1, Lus/zoom/zrc/model/AppModel;->instance:Lus/zoom/zrc/model/AppModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private pstnDisplayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "+999"

    .line 802
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p1
.end method


# virtual methods
.method public addSelected(Lus/zoom/zrcsdk/model/ZRCContact;)V
    .locals 2

    .line 537
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->getJid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->seletedContacts:Ljava/util/Map;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->getJid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 540
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->getJid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->seletedContacts:Ljava/util/Map;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->getScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 543
    :cond_1
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->getJid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 544
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->seletedContacts:Ljava/util/Map;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->getScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 546
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->seletedContacts:Ljava/util/Map;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->getJid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->seletedContactList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->selectedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/view/ISelectedMeetingListener;

    .line 550
    invoke-interface {v1, p1}, Lus/zoom/zrc/view/ISelectedMeetingListener;->onSelected(Lus/zoom/zrcsdk/model/ZRCContact;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public addSelectedListener(Lus/zoom/zrc/view/ISelectedMeetingListener;)V
    .locals 1

    .line 529
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->selectedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method cleanMeetingData()V
    .locals 3

    const/4 v0, 0x0

    .line 735
    iput-object v0, p0, Lus/zoom/zrc/model/AppModel;->audioStatus:Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    .line 736
    iput-object v0, p0, Lus/zoom/zrc/model/AppModel;->meetingInfo:Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    .line 737
    iput-object v0, p0, Lus/zoom/zrc/model/AppModel;->videoPageStatus:Lus/zoom/zrcsdk/model/VideoPageStatus;

    .line 738
    iput-object v0, p0, Lus/zoom/zrc/model/AppModel;->videoThumbInfo:Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    .line 741
    iget-object v1, p0, Lus/zoom/zrc/model/AppModel;->pinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    if-eqz v1, :cond_0

    .line 742
    invoke-virtual {v1}, Lus/zoom/zrc/model/ZRCPinUserManager;->cleanUp()V

    .line 745
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/model/AppModel;->zrcLegacyRoomSystems:Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 746
    invoke-virtual {v1, v2}, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->resetRooms(Z)V

    .line 749
    :cond_1
    iput-object v0, p0, Lus/zoom/zrc/model/AppModel;->recordingError:Lus/zoom/zrcsdk/model/ZRCMeetingCloudRecordingError;

    .line 751
    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/AppModel;->setCameraSharingStatus(Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;)V

    .line 752
    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/AppModel;->setPinUserManager(Lus/zoom/zrc/model/ZRCPinUserManager;)V

    return-void
.end method

.method cleanupZoomPresenceData()V
    .locals 2

    .line 756
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->dynamicContactList:Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->clear()V

    const/4 v0, -0x1

    .line 757
    iput v0, p0, Lus/zoom/zrc/model/AppModel;->screenResolutionStatus:I

    .line 758
    invoke-virtual {p0}, Lus/zoom/zrc/model/AppModel;->cleanMeetingData()V

    .line 759
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppModel;->setAudioCheckupInfo(Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;)V

    .line 760
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppModel;->setMeetingSharingStatus(Lus/zoom/zrcsdk/model/ZRCSharingStatus;)V

    .line 761
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppModel;->setZRCMeetingAlertManager(Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;)V

    .line 762
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->zrcLegacyRoomSystems:Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->resetRooms(Z)V

    .line 763
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->zrcLegacyRoomSystems:Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->resetRooms(Z)V

    return-void
.end method

.method public clearSelectedContacts()V
    .locals 2

    .line 518
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->seletedContacts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->seletedContactList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 521
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->seletedContacts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 522
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->seletedContactList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 523
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->selectedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/view/ISelectedMeetingListener;

    .line 524
    invoke-interface {v1}, Lus/zoom/zrc/view/ISelectedMeetingListener;->onClear()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public containsSelectedContact(Lus/zoom/zrcsdk/model/ZRCContact;)Z
    .locals 1

    .line 555
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->getJid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->seletedContacts:Ljava/util/Map;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->getScreenName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 558
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->seletedContacts:Ljava/util/Map;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->getJid()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public filter(Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;)V"
        }
    .end annotation

    .line 457
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lus/zoom/zrc/model/AppModel;->contactList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    if-nez p1, :cond_0

    const-string p1, ""

    .line 460
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 461
    iget-object v1, p0, Lus/zoom/zrc/model/AppModel;->zrcLegacyRoomSystems:Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->getRoomsOfCurrentMeeting()Ljava/util/List;

    move-result-object v1

    .line 462
    iget-object v2, p0, Lus/zoom/zrc/model/AppModel;->zrcLegacyRoomSystems:Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->getRoomsOfMine()Ljava/util/List;

    move-result-object v2

    .line 463
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lus/zoom/zrcsdk/model/ZRCContact;

    .line 464
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCContact;->getScreenName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 465
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 468
    :cond_2
    new-instance v1, Lus/zoom/zrc/view/model/ContactComparator;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v3}, Lus/zoom/zrc/view/model/ContactComparator;-><init>(Ljava/util/Locale;)V

    invoke-static {p2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 470
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCContact;

    .line 471
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCContact;->getScreenName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 472
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 475
    :cond_4
    new-instance v1, Lus/zoom/zrc/view/model/ContactComparator;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v2}, Lus/zoom/zrc/view/model/ContactComparator;-><init>(Ljava/util/Locale;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 476
    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 477
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 479
    iget-object v1, p0, Lus/zoom/zrc/model/AppModel;->zoomRoomContactList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_2
    const/4 v3, 0x0

    if-ltz v1, :cond_7

    .line 480
    iget-object v4, p0, Lus/zoom/zrc/model/AppModel;->zoomRoomContactList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lus/zoom/zrcsdk/model/ZRCContact;

    .line 481
    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/ZRCContact;->getScreenName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 483
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v3, 0x1

    :cond_5
    if-eqz v3, :cond_6

    .line 486
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 489
    :cond_7
    new-instance v1, Lus/zoom/zrc/view/model/ContactComparator;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v1, v4}, Lus/zoom/zrc/view/model/ContactComparator;-><init>(Ljava/util/Locale;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 490
    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 491
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 493
    iget-object v1, p0, Lus/zoom/zrc/model/AppModel;->contactList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_3
    if-ltz v1, :cond_a

    .line 494
    iget-object v4, p0, Lus/zoom/zrc/model/AppModel;->contactList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lus/zoom/zrcsdk/model/ZRCContact;

    .line 495
    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/ZRCContact;->getScreenName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 497
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_9

    .line 500
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 503
    :cond_a
    new-instance p1, Lus/zoom/zrc/view/model/ContactComparator;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p1, v1}, Lus/zoom/zrc/view/model/ContactComparator;-><init>(Ljava/util/Locale;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 504
    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 505
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getAudioCheckupInfo()Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;
    .locals 1

    .line 893
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->audioCheckupInfo:Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;

    return-object v0
.end method

.method public getAudioStatus()Lus/zoom/zrcsdk/model/ZRCAudioStatus;
    .locals 1

    .line 305
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->audioStatus:Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    return-object v0
.end method

.method public getBatteryLevel()F
    .locals 1

    .line 659
    iget v0, p0, Lus/zoom/zrc/model/AppModel;->batteryLevel:F

    return v0
.end method

.method public getBatteryReportTime()J
    .locals 2

    .line 667
    iget-wide v0, p0, Lus/zoom/zrc/model/AppModel;->batteryReportTime:J

    return-wide v0
.end method

.method public getCalendarServiceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;",
            ">;"
        }
    .end annotation

    .line 818
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->calendarServiceList:Ljava/util/List;

    return-object v0
.end method

.method public getCameraPresetsManager()Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;
    .locals 1

    .line 791
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->cameraPresetsManager:Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;

    return-object v0
.end method

.method public getCameraSharingStatus()Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;
    .locals 1

    .line 865
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->cameraSharingStatus:Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    return-object v0
.end method

.method public getComDeviceInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCComDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->comDeviceInfos:Ljava/util/List;

    return-object v0
.end method

.method public getContactAvailableList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->contactAvailableList:Ljava/util/List;

    return-object v0
.end method

.method public getContactList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;"
        }
    .end annotation

    .line 635
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->contactList:Ljava/util/List;

    return-object v0
.end method

.method public getDisplayedRoomName()Ljava/lang/String;
    .locals 3

    .line 726
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getRoomInfo()Lus/zoom/zrcsdk/model/ZRCRoomInfo;

    move-result-object v0

    .line 727
    invoke-virtual {p0}, Lus/zoom/zrc/model/AppModel;->getLoginInfo()Lus/zoom/zrcsdk/model/LoginInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 728
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/LoginInfo;->getFirstName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 729
    :goto_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 730
    invoke-static {v1}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method public getDynamicContactList()Lus/zoom/zrcsdk/model/ZRCDynamicContactList;
    .locals 1

    .line 783
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->dynamicContactList:Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    return-object v0
.end method

.method public getLogfilePath()Ljava/lang/String;
    .locals 1

    .line 619
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->logfilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginInfo()Lus/zoom/zrcsdk/model/LoginInfo;
    .locals 1

    .line 230
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->loginInfo:Lus/zoom/zrcsdk/model/LoginInfo;

    return-object v0
.end method

.method public getMeetingAlertManager()Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;
    .locals 1

    .line 716
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->meetingAlertManager:Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    if-nez v0, :cond_0

    .line 717
    new-instance v0, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    invoke-direct {v0}, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/AppModel;->meetingAlertManager:Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    .line 718
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->meetingAlertManager:Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    return-object v0
.end method

.method public getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;
    .locals 1

    .line 313
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v0

    return-object v0
.end method

.method public getMeetingRecordingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;
    .locals 1

    .line 338
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->meetingRecordingInfo:Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;

    return-object v0
.end method

.method public getMeetingSharingStatus()Lus/zoom/zrcsdk/model/ZRCSharingStatus;
    .locals 1

    .line 347
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->meetingSharingStatus:Lus/zoom/zrcsdk/model/ZRCSharingStatus;

    return-object v0
.end method

.method public getMicrophoneTestRecordingStatus()I
    .locals 1

    .line 929
    iget v0, p0, Lus/zoom/zrc/model/AppModel;->microphoneTestRecordingStatus:I

    return v0
.end method

.method public getPairingCode()Ljava/lang/String;
    .locals 1

    .line 885
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->pairingCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPinUserManager()Lus/zoom/zrc/model/ZRCPinUserManager;
    .locals 1

    .line 707
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->pinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    if-nez v0, :cond_0

    new-instance v0, Lus/zoom/zrc/model/ZRCPinUserManager;

    invoke-direct {v0}, Lus/zoom/zrc/model/ZRCPinUserManager;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/AppModel;->pinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    .line 708
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->pinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    return-object v0
.end method

.method public getQuantifyOfCecAdapterAttachedScreens()I
    .locals 1

    .line 699
    iget v0, p0, Lus/zoom/zrc/model/AppModel;->quantifyOfCecAdapterAttachedScreens:I

    return v0
.end method

.method public getQuantityOfScreens()I
    .locals 1

    .line 691
    iget v0, p0, Lus/zoom/zrc/model/AppModel;->quantityOfScreens:I

    return v0
.end method

.method public getRecordingError()Lus/zoom/zrcsdk/model/ZRCMeetingCloudRecordingError;
    .locals 1

    .line 842
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->recordingError:Lus/zoom/zrcsdk/model/ZRCMeetingCloudRecordingError;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomLocation()Lus/zoom/zrcsdk/model/ZRCLocationTree;
    .locals 1

    .line 826
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->roomLocation:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    return-object v0
.end method

.method public getScreenHeight()I
    .locals 1

    .line 186
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 187
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lus/zoom/zrc/model/AppModel;->screenHeight:I

    .line 188
    iget v0, p0, Lus/zoom/zrc/model/AppModel;->screenHeight:I

    return v0
.end method

.method public getScreenResolutionStatus()I
    .locals 1

    .line 198
    iget v0, p0, Lus/zoom/zrc/model/AppModel;->screenResolutionStatus:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .line 192
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 193
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lus/zoom/zrc/model/AppModel;->screenWidth:I

    .line 194
    iget v0, p0, Lus/zoom/zrc/model/AppModel;->screenWidth:I

    return v0
.end method

.method public getSeletedContacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;"
        }
    .end annotation

    .line 509
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->seletedContactList:Ljava/util/List;

    return-object v0
.end method

.method public getSeletedContactsHashMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;"
        }
    .end annotation

    .line 643
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->seletedContacts:Ljava/util/Map;

    return-object v0
.end method

.method public getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;
    .locals 1

    .line 387
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->zrcSettingsDeviceInfo:Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    return-object v0
.end method

.method public getStartAudioCheckTime()J
    .locals 2

    .line 139
    iget-wide v0, p0, Lus/zoom/zrc/model/AppModel;->startAudioCheckTime:J

    return-wide v0
.end method

.method public getTpMeetingLaunchPlace()I
    .locals 1

    .line 925
    iget v0, p0, Lus/zoom/zrc/model/AppModel;->tpMeetingLaunchPlace:I

    return v0
.end method

.method public getUserEmail()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->userEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;
    .locals 1

    .line 355
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->videoLayoutStatus:Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    return-object v0
.end method

.method public getVideoPageStatus()Lus/zoom/zrcsdk/model/VideoPageStatus;
    .locals 1

    .line 371
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->videoPageStatus:Lus/zoom/zrcsdk/model/VideoPageStatus;

    return-object v0
.end method

.method public getVideoStatus()Lus/zoom/zrcsdk/model/ZRCVideoStatus;
    .locals 1

    .line 379
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->videoStatus:Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    return-object v0
.end method

.method public getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;
    .locals 1

    .line 363
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->videoThumbInfo:Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    return-object v0
.end method

.method public getZoomRoomAvailableContactList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;"
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->zoomRoomAvailableContactList:Ljava/util/List;

    return-object v0
.end method

.method public getZoomRoomContactList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;"
        }
    .end annotation

    .line 651
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->zoomRoomContactList:Ljava/util/List;

    return-object v0
.end method

.method public getZrList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/RoomInfo;",
            ">;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->zrList:Ljava/util/List;

    return-object v0
.end method

.method public getZrcContactIm()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrc/model/ZRCContactImData;",
            ">;"
        }
    .end annotation

    .line 675
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->zrcContactIm:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public getZrcContactsAvailableHashMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;"
        }
    .end annotation

    .line 593
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->zrcContactsAvailableHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getZrcContactsHashMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;"
        }
    .end annotation

    .line 627
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->zrcContactsHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getZrcFeatureListInfo()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;
    .locals 1

    .line 254
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->zrcFeatureListInfo:Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    if-nez v0, :cond_0

    new-instance v0, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/AppModel;->zrcFeatureListInfo:Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    .line 255
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->zrcFeatureListInfo:Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    return-object v0
.end method

.method public getZrcGenericSettings()Lus/zoom/zrcsdk/model/ZRCGenericSettings;
    .locals 1

    .line 246
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->zrcGenericSettings:Lus/zoom/zrcsdk/model/ZRCGenericSettings;

    return-object v0
.end method

.method public getZrcLegacyRoomSystems()Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;
    .locals 1

    .line 601
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->zrcLegacyRoomSystems:Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    return-object v0
.end method

.method public getZrcMeetingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingListItem;",
            ">;"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->zrcMeetingList:Ljava/util/List;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 147
    iput-object p1, p0, Lus/zoom/zrc/model/AppModel;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 148
    iput-boolean p1, p0, Lus/zoom/zrc/model/AppModel;->contactTransportFinished:Z

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/AppModel;->zoomRoomContactList:Ljava/util/List;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/AppModel;->contactList:Ljava/util/List;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/AppModel;->comDeviceInfos:Ljava/util/List;

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/AppModel;->zrcContactsHashMap:Ljava/util/HashMap;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/AppModel;->zrcContactIm:Ljava/util/List;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/AppModel;->zoomRoomAvailableContactList:Ljava/util/List;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/AppModel;->contactAvailableList:Ljava/util/List;

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/AppModel;->zrcContactsAvailableHashMap:Ljava/util/HashMap;

    .line 158
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/AppModel;->setSettingsLocked(Z)V

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/AppModel;->seletedContacts:Ljava/util/Map;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/AppModel;->seletedContactList:Ljava/util/List;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/AppModel;->selectedListeners:Ljava/util/List;

    .line 162
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;-><init>()V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/AppModel;->setZrcLegacyRoomSystems(Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;)V

    .line 163
    iput p1, p0, Lus/zoom/zrc/model/AppModel;->quantityOfScreens:I

    .line 165
    new-instance p1, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    invoke-direct {p1}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/model/AppModel;->dynamicContactList:Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    const/4 p1, -0x1

    .line 166
    iput p1, p0, Lus/zoom/zrc/model/AppModel;->screenResolutionStatus:I

    return-void
.end method

.method public isAutoStartEndScheduleMeeting()Z
    .locals 2

    .line 773
    invoke-virtual {p0}, Lus/zoom/zrc/model/AppModel;->getLoginInfo()Lus/zoom/zrcsdk/model/LoginInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 774
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/LoginInfo;->isAutoStartScheduleMeeting()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/LoginInfo;->isAutoEndScheduleMeeting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAutoStartScheduleMeeting()Z
    .locals 1

    .line 778
    invoke-virtual {p0}, Lus/zoom/zrc/model/AppModel;->getLoginInfo()Lus/zoom/zrcsdk/model/LoginInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 779
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/LoginInfo;->isAutoStartScheduleMeeting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBatteryCharging()Z
    .locals 1

    .line 901
    iget-boolean v0, p0, Lus/zoom/zrc/model/AppModel;->batteryCharging:Z

    return v0
.end method

.method public isBillingPlanEnded()Z
    .locals 2

    .line 838
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->loginInfo:Lus/zoom/zrcsdk/model/LoginInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/LoginInfo;->getBillingType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConnectionVerified()Z
    .locals 1

    .line 238
    iget-boolean v0, p0, Lus/zoom/zrc/model/AppModel;->isConnectionVerified:Z

    return v0
.end method

.method public isContactTransportFinished()Z
    .locals 1

    .line 683
    iget-boolean v0, p0, Lus/zoom/zrc/model/AppModel;->contactTransportFinished:Z

    return v0
.end method

.method public isMeetingLocked()Z
    .locals 1

    .line 322
    iget-boolean v0, p0, Lus/zoom/zrc/model/AppModel;->meetingLocked:Z

    return v0
.end method

.method public isOnEntryMuted()Z
    .locals 1

    .line 263
    iget-boolean v0, p0, Lus/zoom/zrc/model/AppModel;->isOnEntryMuted:Z

    return v0
.end method

.method public isOnEntryWaiting()Z
    .locals 1

    .line 271
    iget-boolean v0, p0, Lus/zoom/zrc/model/AppModel;->isOnEntryWaiting:Z

    return v0
.end method

.method public isOtherDeviceLogin()Z
    .locals 1

    .line 178
    iget-boolean v0, p0, Lus/zoom/zrc/model/AppModel;->otherDeviceLogin:Z

    return v0
.end method

.method public isPairedWithoutLogin()Z
    .locals 1

    .line 834
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->loginInfo:Lus/zoom/zrcsdk/model/LoginInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSettingsLocked()Z
    .locals 1

    .line 609
    iget-boolean v0, p0, Lus/zoom/zrc/model/AppModel;->settingsLocked:Z

    return v0
.end method

.method public isShareDualCameraSupported()Z
    .locals 4

    .line 855
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 856
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getCameraList()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lus/zoom/zrc/model/AppModel;->getZrcFeatureListInfo()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 859
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

    .line 860
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/model/AppModel;->getZrcFeatureListInfo()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

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

.method public isStandaloneDigitalSignage()Z
    .locals 1

    .line 915
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->loginInfo:Lus/zoom/zrcsdk/model/LoginInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lus/zoom/zrc/model/AppModel;->getLoginInfo()Lus/zoom/zrcsdk/model/LoginInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/LoginInfo;->isStandaloneDigitalSignage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVideoThumbInfoUpdate()Z
    .locals 1

    .line 810
    iget-boolean v0, p0, Lus/zoom/zrc/model/AppModel;->videoThumbInfoUpdate:Z

    return v0
.end method

.method public onSignOut(Z)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 874
    iput-object v0, p0, Lus/zoom/zrc/model/AppModel;->pairingCode:Ljava/lang/String;

    .line 875
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lus/zoom/zrc/model/Model;->setAppState(I)V

    :cond_0
    const/4 p1, 0x0

    .line 877
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/AppModel;->setSettingsLocked(Z)V

    .line 878
    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/AppModel;->setLoginInfo(Lus/zoom/zrcsdk/model/LoginInfo;)V

    .line 879
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/AppModel;->setOtherDeviceLogin(Z)V

    .line 880
    invoke-virtual {p0}, Lus/zoom/zrc/model/AppModel;->cleanupZoomPresenceData()V

    return-void
.end method

.method public removeSelected(Lus/zoom/zrcsdk/model/ZRCContact;)V
    .locals 2

    .line 562
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->getJid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->seletedContacts:Ljava/util/Map;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->getScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCContact;

    if-eqz v0, :cond_1

    .line 565
    iget-object v1, p0, Lus/zoom/zrc/model/AppModel;->seletedContactList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 568
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->seletedContacts:Ljava/util/Map;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->getJid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCContact;

    if-eqz v0, :cond_1

    .line 570
    iget-object v1, p0, Lus/zoom/zrc/model/AppModel;->seletedContactList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 573
    :cond_1
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->selectedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/view/ISelectedMeetingListener;

    .line 574
    invoke-interface {v1, p1}, Lus/zoom/zrc/view/ISelectedMeetingListener;->onRemove(Lus/zoom/zrcsdk/model/ZRCContact;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public removeSlectedListener(Lus/zoom/zrc/view/ISelectedMeetingListener;)V
    .locals 1

    .line 533
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->selectedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAudioCheckupInfo(Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;)V
    .locals 0

    .line 897
    iput-object p1, p0, Lus/zoom/zrc/model/AppModel;->audioCheckupInfo:Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;

    return-void
.end method

.method public setAudioStatus(Lus/zoom/zrcsdk/model/ZRCAudioStatus;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lus/zoom/zrc/model/AppModel;->audioStatus:Lus/zoom/zrcsdk/model/ZRCAudioStatus;

    return-void
.end method

.method public setBatteryCharging(Z)V
    .locals 0

    .line 905
    iput-boolean p1, p0, Lus/zoom/zrc/model/AppModel;->batteryCharging:Z

    return-void
.end method

.method public setBatteryLevel(F)V
    .locals 0

    .line 663
    iput p1, p0, Lus/zoom/zrc/model/AppModel;->batteryLevel:F

    return-void
.end method

.method public setBatteryReportTime(J)V
    .locals 0

    .line 671
    iput-wide p1, p0, Lus/zoom/zrc/model/AppModel;->batteryReportTime:J

    return-void
.end method

.method public setCalendarServiceList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;",
            ">;)V"
        }
    .end annotation

    .line 822
    iput-object p1, p0, Lus/zoom/zrc/model/AppModel;->calendarServiceList:Ljava/util/List;

    return-void
.end method

.method public setCameraPresetsManager(Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;)V
    .locals 0

    .line 795
    iput-object p1, p0, Lus/zoom/zrc/model/AppModel;->cameraPresetsManager:Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;

    return-void
.end method

.method public setCameraSharingStatus(Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;)V
    .locals 0

    .line 869
    iput-object p1, p0, Lus/zoom/zrc/model/AppModel;->cameraSharingStatus:Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    return-void
.end method

.method public setComDeviceInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCComDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 174
    iput-object p1, p0, Lus/zoom/zrc/model/AppModel;->comDeviceInfos:Ljava/util/List;

    return-void
.end method

.method public setConnectionVerified(Z)V
    .locals 0

    .line 242
    iput-boolean p1, p0, Lus/zoom/zrc/model/AppModel;->isConnectionVerified:Z

    return-void
.end method

.method public setContactList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;)V"
        }
    .end annotation

    .line 639
    iput-object p1, p0, Lus/zoom/zrc/model/AppModel;->contactList:Ljava/util/List;

    return-void
.end method

.method public setContactTransportFinished(Z)V
    .locals 0

    .line 687
    iput-boolean p1, p0, Lus/zoom/zrc/model/AppModel;->contactTransportFinished:Z

    return-void
.end method

.method public setDynamicContactList(Lus/zoom/zrcsdk/model/ZRCDynamicContactList;)V
    .locals 0

    .line 787
    iput-object p1, p0, Lus/zoom/zrc/model/AppModel;->dynamicContactList:Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    return-void
.end method

.method public setLogfilePath(Ljava/lang/String;)V
    .locals 0

    .line 623
    iput-object p1, p0, Lus/zoom/zrc/model/AppModel;->logfilePath:Ljava/lang/String;

    return-void
.end method

.method public setLoginInfo(Lus/zoom/zrcsdk/model/LoginInfo;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lus/zoom/zrc/model/AppModel;->loginInfo:Lus/zoom/zrcsdk/model/LoginInfo;

    return-void
.end method

.method public setMeetingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V
    .locals 0

    return-void
.end method

.method public setMeetingLocked(Z)V
    .locals 0

    .line 326
    iput-boolean p1, p0, Lus/zoom/zrc/model/AppModel;->meetingLocked:Z

    return-void
.end method

.method public setMeetingRecordingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lus/zoom/zrc/model/AppModel;->meetingRecordingInfo:Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;

    return-void
.end method

.method public setMeetingSharingStatus(Lus/zoom/zrcsdk/model/ZRCSharingStatus;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lus/zoom/zrc/model/AppModel;->meetingSharingStatus:Lus/zoom/zrcsdk/model/ZRCSharingStatus;

    return-void
.end method

.method public setMicrophoneTestRecordingStatus(I)V
    .locals 0

    .line 933
    iput p1, p0, Lus/zoom/zrc/model/AppModel;->microphoneTestRecordingStatus:I

    return-void
.end method

.method public setNeedWaitHost(Z)V
    .locals 0

    .line 330
    iput-boolean p1, p0, Lus/zoom/zrc/model/AppModel;->needWaitHost:Z

    return-void
.end method

.method public setOnEntryMuted(Z)V
    .locals 0

    .line 267
    iput-boolean p1, p0, Lus/zoom/zrc/model/AppModel;->isOnEntryMuted:Z

    return-void
.end method

.method public setOnEntryWaiting(Z)V
    .locals 0

    .line 275
    iput-boolean p1, p0, Lus/zoom/zrc/model/AppModel;->isOnEntryWaiting:Z

    return-void
.end method

.method public setOtherDeviceLogin(Z)V
    .locals 0

    .line 182
    iput-boolean p1, p0, Lus/zoom/zrc/model/AppModel;->otherDeviceLogin:Z

    return-void
.end method

.method public setPairingCode(Ljava/lang/String;)V
    .locals 0

    .line 889
    iput-object p1, p0, Lus/zoom/zrc/model/AppModel;->pairingCode:Ljava/lang/String;

    return-void
.end method

.method public setPinUserManager(Lus/zoom/zrc/model/ZRCPinUserManager;)V
    .locals 0

    .line 712
    iput-object p1, p0, Lus/zoom/zrc/model/AppModel;->pinUserManager:Lus/zoom/zrc/model/ZRCPinUserManager;

    return-void
.end method

.method public setQuantifyOfCecAdapterAttachedScreens(I)V
    .locals 0

    .line 703
    iput p1, p0, Lus/zoom/zrc/model/AppModel;->quantifyOfCecAdapterAttachedScreens:I

    return-void
.end method

.method public setQuantityOfScreens(I)V
    .locals 0

    .line 695
    iput p1, p0, Lus/zoom/zrc/model/AppModel;->quantityOfScreens:I

    return-void
.end method

.method public setRecordingError(Lus/zoom/zrcsdk/model/ZRCMeetingCloudRecordingError;)V
    .locals 0

    .line 846
    iput-object p1, p0, Lus/zoom/zrc/model/AppModel;->recordingError:Lus/zoom/zrcsdk/model/ZRCMeetingCloudRecordingError;

    return-void
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lus/zoom/zrc/model/AppModel;->refreshToken:Ljava/lang/String;

    return-void
.end method

.method public setRoomLocation(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V
    .locals 0

    .line 830
    iput-object p1, p0, Lus/zoom/zrc/model/AppModel;->roomLocation:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    return-void
.end method

.method public setScreenResolutionStatus(I)V
    .locals 0

    .line 202
    iput p1, p0, Lus/zoom/zrc/model/AppModel;->screenResolutionStatus:I

    return-void
.end method

.method setSelectedContacts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;)V"
        }
    .end annotation

    .line 513
    iput-object p1, p0, Lus/zoom/zrc/model/AppModel;->seletedContactList:Ljava/util/List;

    return-void
.end method

.method public setSeletedContactsHashMap(Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;)V"
        }
    .end annotation

    .line 647
    iput-object p1, p0, Lus/zoom/zrc/model/AppModel;->seletedContacts:Ljava/util/Map;

    return-void
.end method

.method public setSettingsDeviceInfo(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lus/zoom/zrc/model/AppModel;->zrcSettingsDeviceInfo:Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    return-void
.end method

.method public setSettingsLocked(Z)V
    .locals 1

    .line 613
    iput-boolean p1, p0, Lus/zoom/zrc/model/AppModel;->settingsLocked:Z

    .line 614
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->setSettingsLocked(Z)V

    .line 615
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoObserver;->getInstance()Lus/zoom/zrc/utils/DeviceInfoObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/utils/DeviceInfoObserver;->notifySettingLocked(Z)V

    return-void
.end method

.method public setStartAudioCheckTime(J)V
    .locals 0

    .line 143
    iput-wide p1, p0, Lus/zoom/zrc/model/AppModel;->startAudioCheckTime:J

    return-void
.end method

.method public setTpMeetingLaunchPlaces(I)V
    .locals 0

    .line 921
    iput p1, p0, Lus/zoom/zrc/model/AppModel;->tpMeetingLaunchPlace:I

    return-void
.end method

.method public setUserEmail(Ljava/lang/String;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lus/zoom/zrc/model/AppModel;->userEmail:Ljava/lang/String;

    return-void
.end method

.method public setVideoLayoutStatus(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lus/zoom/zrc/model/AppModel;->videoLayoutStatus:Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    return-void
.end method

.method public setVideoPageStatus(Lus/zoom/zrcsdk/model/VideoPageStatus;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lus/zoom/zrc/model/AppModel;->videoPageStatus:Lus/zoom/zrcsdk/model/VideoPageStatus;

    return-void
.end method

.method public setVideoStatus(Lus/zoom/zrcsdk/model/ZRCVideoStatus;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lus/zoom/zrc/model/AppModel;->videoStatus:Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    return-void
.end method

.method public setVideoThumbInfo(Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lus/zoom/zrc/model/AppModel;->videoThumbInfo:Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    return-void
.end method

.method public setVideoThumbInfoUpdate(Z)V
    .locals 0

    .line 814
    iput-boolean p1, p0, Lus/zoom/zrc/model/AppModel;->videoThumbInfoUpdate:Z

    return-void
.end method

.method public setWaitingType(I)V
    .locals 0

    .line 334
    iput p1, p0, Lus/zoom/zrc/model/AppModel;->waitingType:I

    return-void
.end method

.method public setZRCMeetingAlertManager(Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;)V
    .locals 0

    .line 722
    iput-object p1, p0, Lus/zoom/zrc/model/AppModel;->meetingAlertManager:Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    return-void
.end method

.method public setZoomRoomContactList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;)V"
        }
    .end annotation

    .line 655
    iput-object p1, p0, Lus/zoom/zrc/model/AppModel;->zoomRoomContactList:Ljava/util/List;

    return-void
.end method

.method public setZrList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/RoomInfo;",
            ">;)V"
        }
    .end annotation

    .line 226
    iput-object p1, p0, Lus/zoom/zrc/model/AppModel;->zrList:Ljava/util/List;

    return-void
.end method

.method public setZrcContactIm(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrc/model/ZRCContactImData;",
            ">;)V"
        }
    .end annotation

    .line 679
    iput-object p1, p0, Lus/zoom/zrc/model/AppModel;->zrcContactIm:Ljava/util/List;

    return-void
.end method

.method public setZrcContactsAvailableHashMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;)V"
        }
    .end annotation

    .line 597
    iput-object p1, p0, Lus/zoom/zrc/model/AppModel;->zrcContactsAvailableHashMap:Ljava/util/HashMap;

    return-void
.end method

.method public setZrcContactsHashMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;)V"
        }
    .end annotation

    .line 631
    iput-object p1, p0, Lus/zoom/zrc/model/AppModel;->zrcContactsHashMap:Ljava/util/HashMap;

    return-void
.end method

.method public setZrcFeatureListInfo(Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lus/zoom/zrc/model/AppModel;->zrcFeatureListInfo:Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    return-void
.end method

.method public setZrcGenericSettings(Lus/zoom/zrcsdk/model/ZRCGenericSettings;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lus/zoom/zrc/model/AppModel;->zrcGenericSettings:Lus/zoom/zrcsdk/model/ZRCGenericSettings;

    return-void
.end method

.method public setZrcLegacyRoomSystems(Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;)V
    .locals 0

    .line 605
    iput-object p1, p0, Lus/zoom/zrc/model/AppModel;->zrcLegacyRoomSystems:Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    return-void
.end method

.method public setZrcMeetingList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingListItem;",
            ">;)V"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->zrcMeetingList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 284
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    .line 285
    iget-object v2, p0, Lus/zoom/zrc/model/AppModel;->zrcMeetingList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    .line 286
    invoke-virtual {v3, v1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->isSame(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "1"

    .line 287
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->getCheckInStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "1"

    .line 288
    invoke-virtual {v1, v3}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->setCheckInStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :cond_2
    iput-object p1, p0, Lus/zoom/zrc/model/AppModel;->zrcMeetingList:Ljava/util/List;

    return-void
.end method

.method public tryToAddContact(Lus/zoom/zrcsdk/model/ZRCContact;)Z
    .locals 2

    .line 419
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->zrcContactsHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->getJid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->zrcContactsHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->getJid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCContact;

    .line 421
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/ZRCContact;->update(Lus/zoom/zrcsdk/model/ZRCContact;)V

    .line 422
    invoke-direct {p0, v0}, Lus/zoom/zrc/model/AppModel;->addOrRemoveFromAvailableList(Lus/zoom/zrcsdk/model/ZRCContact;)V

    const/4 p1, 0x0

    return p1

    .line 425
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->zrcContactsHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->getJid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->isZoomRoomsGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->zoomRoomContactList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 429
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/model/AppModel;->contactList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    :goto_0
    invoke-direct {p0, p1}, Lus/zoom/zrc/model/AppModel;->addOrRemoveFromAvailableList(Lus/zoom/zrcsdk/model/ZRCContact;)V

    const/4 p1, 0x1

    return p1
.end method

.method public updateSelectedContactInfo(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;)V"
        }
    .end annotation

    .line 579
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCContact;

    .line 580
    iget-object v1, p0, Lus/zoom/zrc/model/AppModel;->seletedContacts:Ljava/util/Map;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCContact;->getJid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCContact;

    if-nez v1, :cond_0

    goto :goto_0

    .line 584
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCContact;->getAccountStatus()I

    move-result v2

    if-eqz v2, :cond_1

    .line 585
    invoke-virtual {p0, v0}, Lus/zoom/zrc/model/AppModel;->removeSelected(Lus/zoom/zrcsdk/model/ZRCContact;)V

    goto :goto_0

    .line 588
    :cond_1
    invoke-virtual {v1, v0}, Lus/zoom/zrcsdk/model/ZRCContact;->update(Lus/zoom/zrcsdk/model/ZRCContact;)V

    goto :goto_0

    :cond_2
    return-void
.end method
