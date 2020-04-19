.class public Lus/zoom/zrc/model/AppEngine;
.super Ljava/lang/Object;
.source "AppEngine.java"

# interfaces
.implements Lus/zoom/zrcsdk/ILoginListener;
.implements Lus/zoom/zrcsdk/IPtEventListener;
.implements Lus/zoom/zrcsdk/IZRConnectionEventListener;
.implements Lus/zoom/zrcsdk/IMeetingEventListener;
.implements Lus/zoom/zrcsdk/IWebEventListener;
.implements Lus/zoom/zrcsdk/IGoogleEventListener;
.implements Lus/zoom/zrcsdk/IWebinarRoleChangedListener;
.implements Lus/zoom/zrcsdk/IWebPullCallBackListener;
.implements Lus/zoom/zrcsdk/ISipServiceListener;
.implements Lus/zoom/zrcsdk/IFileDownloadListener;
.implements Lus/zoom/zrcsdk/IUltrasoundWhiteListListener;
.implements Lus/zoom/zrcsdk/CameraControlListener;
.implements Lus/zoom/zrcsdk/ICreateRoomListener;
.implements Lus/zoom/zrcsdk/ISendClientLogListener;
.implements Lus/zoom/zrcsdk/ICertItemVerifyFailedListener;
.implements Lus/zoom/zrcsdk/IMicrophoneTestRecordingListener;
.implements Lus/zoom/zrcsdk/IRoomLocationListener;
.implements Lus/zoom/zrcsdk/IReserveOtherRoomEventsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/model/AppEngine$IMicrophoneTestRecordingListener;,
        Lus/zoom/zrc/model/AppEngine$ICertItemVerifyFailedListener;,
        Lus/zoom/zrc/model/AppEngine$ISendClientLogListener;,
        Lus/zoom/zrc/model/AppEngine$ICreateRoomListener;,
        Lus/zoom/zrc/model/AppEngine$IUltrasoundWhiteListListener;,
        Lus/zoom/zrc/model/AppEngine$IZRTreatedIncomingCallEvent;,
        Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;,
        Lus/zoom/zrc/model/AppEngine$IZRIMEvent;,
        Lus/zoom/zrc/model/AppEngine$IZRPtEvent;,
        Lus/zoom/zrc/model/AppEngine$IPresentationEvent;,
        Lus/zoom/zrc/model/AppEngine$IPSTNCallOutEvent;,
        Lus/zoom/zrc/model/AppEngine$IZRMeetingStatusEvent;,
        Lus/zoom/zrc/model/AppEngine$IZRInitConnectionEvent;,
        Lus/zoom/zrc/model/AppEngine$IWebinarRoleChangedEvent;,
        Lus/zoom/zrc/model/AppEngine$IZRConnectionEvent;,
        Lus/zoom/zrc/model/AppEngine$IWebEvent;,
        Lus/zoom/zrc/model/AppEngine$IWebPullCallBackEvent;,
        Lus/zoom/zrc/model/AppEngine$ISipServiceEvent;,
        Lus/zoom/zrc/model/AppEngine$IFileDownloadEvent;,
        Lus/zoom/zrc/model/AppEngine$ILoginEvent;
    }
.end annotation


# static fields
.field private static instance:Lus/zoom/zrc/model/AppEngine;


# instance fields
.field private cameraControlListeners:Lus/zoom/androidlib/util/ListenerList;

.field private certItemVerifyFailedListeners:Lus/zoom/androidlib/util/ListenerList;

.field private createRoomListeners:Lus/zoom/androidlib/util/ListenerList;

.field private executors:Ljava/util/concurrent/ExecutorService;

.field private iFileDownloadEvents:Lus/zoom/androidlib/util/ListenerList;

.field private iLoginEventListeners:Lus/zoom/androidlib/util/ListenerList;

.field private iPSTNCallOutEventListeners:Lus/zoom/androidlib/util/ListenerList;

.field private iPresentationEventListeners:Lus/zoom/androidlib/util/ListenerList;

.field private iSipServiceListener:Lus/zoom/androidlib/util/ListenerList;

.field private iTreatedIncomingCallEvents:Lus/zoom/androidlib/util/ListenerList;

.field private iUltrasoundWhiteListListeners:Lus/zoom/androidlib/util/ListenerList;

.field private iWebEventListeners:Lus/zoom/androidlib/util/ListenerList;

.field private iWebPullCallBackListener:Lus/zoom/androidlib/util/ListenerList;

.field private iWebinarEventListener:Lus/zoom/androidlib/util/ListenerList;

.field private iZRConnectionEventListeners:Lus/zoom/androidlib/util/ListenerList;

.field private iZRIMEventListeners:Lus/zoom/androidlib/util/ListenerList;

.field private iZRInitConnectionEventListeners:Lus/zoom/androidlib/util/ListenerList;

.field private iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

.field private iZRMeetingStatusChangeEventListeners:Lus/zoom/androidlib/util/ListenerList;

.field private iZRPtEventListeners:Lus/zoom/androidlib/util/ListenerList;

.field private isInit:Z

.field private microphoneTestRecordingListeners:Lus/zoom/androidlib/util/ListenerList;

.field private sendClientLogListeners:Lus/zoom/androidlib/util/ListenerList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/model/AppEngine;Lus/zoom/zrcsdk/model/ZRCContact;Ljava/util/List;Ljava/text/Collator;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrc/model/AppEngine;->addContact2Im(Lus/zoom/zrcsdk/model/ZRCContact;Ljava/util/List;Ljava/text/Collator;)V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/model/AppEngine;)Lus/zoom/androidlib/util/ListenerList;
    .locals 0

    .line 107
    iget-object p0, p0, Lus/zoom/zrc/model/AppEngine;->iZRIMEventListeners:Lus/zoom/androidlib/util/ListenerList;

    return-object p0
.end method

.method private addContact2Im(Lus/zoom/zrcsdk/model/ZRCContact;Ljava/util/List;Ljava/text/Collator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            "Ljava/util/List<",
            "Lus/zoom/zrc/model/ZRCContactImData;",
            ">;",
            "Ljava/text/Collator;",
            ")V"
        }
    .end annotation

    .line 1165
    invoke-direct {p0, p1, p3}, Lus/zoom/zrc/model/AppEngine;->getGroupChar(Lus/zoom/zrcsdk/model/ZRCContact;Ljava/text/Collator;)C

    move-result p3

    const/4 v0, 0x0

    .line 1167
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1168
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/model/ZRCContactImData;

    invoke-virtual {v1}, Lus/zoom/zrc/model/ZRCContactImData;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 1169
    invoke-static {p3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1171
    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 1172
    new-instance v0, Lus/zoom/zrc/model/ZRCContactImData;

    invoke-direct {v0}, Lus/zoom/zrc/model/ZRCContactImData;-><init>()V

    .line 1173
    invoke-static {p3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lus/zoom/zrc/model/ZRCContactImData;->setKey(Ljava/lang/String;)V

    .line 1174
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 1175
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1176
    invoke-virtual {v0, p3}, Lus/zoom/zrc/model/ZRCContactImData;->setData(Ljava/util/List;)V

    .line 1177
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1179
    :cond_2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lus/zoom/zrc/model/ZRCContactImData;

    invoke-virtual {p3}, Lus/zoom/zrc/model/ZRCContactImData;->getData()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 1180
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/model/ZRCContactImData;

    invoke-virtual {p2}, Lus/zoom/zrc/model/ZRCContactImData;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    return-void
.end method

.method private getGroupChar(Lus/zoom/zrcsdk/model/ZRCContact;Ljava/text/Collator;)C
    .locals 5

    .line 1195
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/AppEngine;->getItemSortKey(Lus/zoom/zrcsdk/model/ZRCContact;)Ljava/lang/String;

    move-result-object p1

    .line 1196
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x23

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1199
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1201
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x7fff

    if-ne v0, v3, :cond_1

    return v3

    .line 1204
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x61

    if-lt v0, v3, :cond_2

    const/16 v3, 0x7a

    if-gt v0, v3, :cond_2

    add-int/lit8 v0, v0, -0x20

    int-to-char p1, v0

    return p1

    :cond_2
    const/16 v3, 0x5a

    const/16 v4, 0x41

    if-lt v0, v4, :cond_3

    if-gt v0, v3, :cond_3

    return v0

    :cond_3
    :goto_0
    if-gt v4, v3, :cond_5

    .line 1215
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    return v4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    int-to-char v4, v4

    goto :goto_0

    :cond_5
    const-string p2, "#ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 1221
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_6

    .line 1222
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1

    :cond_6
    return v1
.end method

.method public static declared-synchronized getInstance()Lus/zoom/zrc/model/AppEngine;
    .locals 2

    const-class v0, Lus/zoom/zrc/model/AppEngine;

    monitor-enter v0

    .line 452
    :try_start_0
    sget-object v1, Lus/zoom/zrc/model/AppEngine;->instance:Lus/zoom/zrc/model/AppEngine;

    if-nez v1, :cond_0

    .line 453
    new-instance v1, Lus/zoom/zrc/model/AppEngine;

    invoke-direct {v1}, Lus/zoom/zrc/model/AppEngine;-><init>()V

    sput-object v1, Lus/zoom/zrc/model/AppEngine;->instance:Lus/zoom/zrc/model/AppEngine;

    .line 454
    :cond_0
    sget-object v1, Lus/zoom/zrc/model/AppEngine;->instance:Lus/zoom/zrc/model/AppEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private splitMeetingInfoNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1445
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, ";"

    .line 1446
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 1447
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 1448
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\n"

    .line 1449
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1451
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 1452
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 1454
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public LoginInfoPullBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;ZZZZZZZZZLjava/util/ArrayList;IIIZIIIZIIZLjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;JJJIJZIZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZZ",
            "Ljava/lang/String;",
            "ZZZZZZZZZ",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/CountryCode;",
            ">;IIIZIIIZIIZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZ",
            "Ljava/lang/String;",
            "JJJIJZIZ)V"
        }
    .end annotation

    .line 1870
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getLoginInfo()Lus/zoom/zrcsdk/model/LoginInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, ""

    const-string v2, "LoginInfoPullBack dropped: loginInfo is empty!"

    .line 1872
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object v2, p1

    .line 1875
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/LoginInfo;->setFirstName(Ljava/lang/String;)V

    move-object v2, p2

    .line 1876
    invoke-virtual {v0, p2}, Lus/zoom/zrcsdk/model/LoginInfo;->setRoomSupportEmail(Ljava/lang/String;)V

    move-object v2, p3

    .line 1877
    invoke-virtual {v0, p3}, Lus/zoom/zrcsdk/model/LoginInfo;->setRoomSupportPhone(Ljava/lang/String;)V

    move-object v2, p4

    .line 1878
    invoke-virtual {v0, p4}, Lus/zoom/zrcsdk/model/LoginInfo;->setPasscode(Ljava/lang/String;)V

    move v2, p5

    .line 1879
    invoke-virtual {v0, p5}, Lus/zoom/zrcsdk/model/LoginInfo;->setiOSSharingDisabled(Z)V

    move v2, p6

    .line 1880
    invoke-virtual {v0, p6}, Lus/zoom/zrcsdk/model/LoginInfo;->setDisableNextMeetingAlert(Z)V

    move v2, p8

    .line 1881
    invoke-virtual {v0, p8}, Lus/zoom/zrcsdk/model/LoginInfo;->setDisableNextMeetingAlertOnController(Z)V

    move v2, p7

    .line 1882
    invoke-virtual {v0, p7}, Lus/zoom/zrcsdk/model/LoginInfo;->setDisableNextMeetingAlertInMeeting(Z)V

    move v2, p9

    .line 1883
    invoke-virtual {v0, p9}, Lus/zoom/zrcsdk/model/LoginInfo;->setDisableNextMeetingAlertOnTV(Z)V

    move-object/from16 v2, p10

    .line 1884
    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setDefaultCallinCountry(Ljava/lang/String;)V

    move/from16 v2, p11

    .line 1885
    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setSpeakerVolumeControlLocked(Z)V

    move/from16 v2, p12

    .line 1886
    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setPostMeetingFeedbackEnabled(Z)V

    move/from16 v2, p13

    .line 1887
    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setUltrasonicDisabled(Z)V

    move/from16 v2, p14

    .line 1888
    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setPublicRoomEnabled(Z)V

    move/from16 v2, p15

    .line 1889
    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setForcePrivateMeeting(Z)V

    move/from16 v2, p16

    .line 1890
    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setHideHostInfoForPrivateMeeting(Z)V

    move-object/from16 v2, p20

    .line 1891
    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setCalloutCountryCodes(Ljava/util/ArrayList;)V

    move/from16 v2, p17

    .line 1892
    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setAutoStartScheduleMeeting(Z)V

    move/from16 v2, p18

    .line 1893
    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setAutoEndScheduleMeeting(Z)V

    move/from16 v2, p19

    .line 1894
    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setStandaloneDigitalSignage(Z)V

    move/from16 v2, p22

    .line 1895
    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setBillingType(I)V

    move/from16 v2, p23

    .line 1896
    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setFreeTrialDays(I)V

    move/from16 v2, p24

    .line 1897
    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setCheckInStatus(Z)V

    move/from16 v2, p25

    .line 1898
    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setTimeForPriorCheckIn(I)V

    move/from16 v2, p26

    .line 1899
    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setTimeForNoCheckInRelease(I)V

    move/from16 v2, p27

    .line 1900
    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setCountForReleaseRecurringMeetings(I)V

    move/from16 v2, p28

    .line 1901
    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setCheckInEnableNotification(Z)V

    move/from16 v2, p29

    .line 1902
    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setCalendarType(I)V

    move/from16 v2, p30

    .line 1903
    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setCalendarRefreshInterval(I)V

    move/from16 v2, p31

    .line 1904
    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setSupportDialToThirdPartyMeeting(Z)V

    move-object/from16 v2, p32

    .line 1905
    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setRoomLogicEmail(Ljava/lang/String;)V

    move-object/from16 v2, p33

    .line 1906
    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setZrpBackgroundImgUrl(Ljava/lang/String;)V

    move/from16 v2, p34

    .line 1907
    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setCallHistoryDisabled(Z)V

    move/from16 v2, p35

    .line 1908
    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setH323Enabled(Z)V

    move/from16 v2, p36

    .line 1909
    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setZrpReserveDisabled(Z)V

    move/from16 v2, p37

    .line 1910
    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setHideContactList(Z)V

    move-object/from16 v2, p38

    .line 1911
    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setZrSharedCustomHdmiText(Ljava/lang/String;)V

    move-wide/from16 v2, p39

    .line 1912
    invoke-virtual {v0, v2, v3}, Lus/zoom/zrcsdk/model/LoginInfo;->setOperationTimeStart(J)V

    move-wide/from16 v2, p41

    .line 1913
    invoke-virtual {v0, v2, v3}, Lus/zoom/zrcsdk/model/LoginInfo;->setOperationTimeEnd(J)V

    move-wide/from16 v2, p43

    .line 1914
    invoke-virtual {v0, v2, v3}, Lus/zoom/zrcsdk/model/LoginInfo;->setOperationTimeOptions(J)V

    move/from16 v2, p45

    .line 1915
    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setOperationTimeDays(I)V

    move-wide/from16 v2, p46

    .line 1916
    invoke-virtual {v0, v2, v3}, Lus/zoom/zrcsdk/model/LoginInfo;->setReleaseNotesRefreshInterval(J)V

    move/from16 v2, p48

    .line 1917
    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setCrcCalloutOnlyEnabled(Z)V

    move/from16 v2, p49

    .line 1918
    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setReserveOtherRoomInLocation(I)V

    move/from16 v2, p50

    .line 1919
    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setCalendarRefreshTokenExpired(Z)V

    .line 1920
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2, v0}, Lus/zoom/zrc/model/Model;->LoginInfoPullBack(Lus/zoom/zrcsdk/model/LoginInfo;)V

    move-object v0, p0

    .line 1921
    iget-object v2, v0, Lus/zoom/zrc/model/AppEngine;->iWebPullCallBackListener:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v2}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v2

    .line 1922
    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 1923
    check-cast v4, Lus/zoom/zrc/model/AppEngine$IWebPullCallBackEvent;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v5

    invoke-virtual {v5}, Lus/zoom/zrc/model/AppModel;->getLoginInfo()Lus/zoom/zrcsdk/model/LoginInfo;

    move-result-object v5

    invoke-interface {v4, v5}, Lus/zoom/zrc/model/AppEngine$IWebPullCallBackEvent;->LoginInfoPullBack(Lus/zoom/zrcsdk/model/LoginInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addCameraControlListener(Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;)V
    .locals 1

    .line 668
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->cameraControlListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->add(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public addCertItemVerifyFailedListener(Lus/zoom/zrc/model/AppEngine$ICertItemVerifyFailedListener;)V
    .locals 1

    .line 692
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->certItemVerifyFailedListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->add(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public addCreateRoomListener(Lus/zoom/zrc/model/AppEngine$ICreateRoomListener;)V
    .locals 1

    .line 676
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->createRoomListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->add(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public addFileDownloadListener(Lus/zoom/zrc/model/AppEngine$IFileDownloadEvent;)V
    .locals 1

    .line 652
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iFileDownloadEvents:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->add(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public addIPSTNCallOutEventListener(Lus/zoom/zrc/model/AppEngine$IPSTNCallOutEvent;)V
    .locals 1

    .line 620
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iPSTNCallOutEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->add(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public addLoginListener(Lus/zoom/zrc/model/AppEngine$ILoginEvent;)V
    .locals 1

    .line 558
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iLoginEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->add(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public addMicrophoneTestRecordingListener(Lus/zoom/zrc/model/AppEngine$IMicrophoneTestRecordingListener;)V
    .locals 1

    .line 700
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->microphoneTestRecordingListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->add(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public addPresentationListener(Lus/zoom/zrc/model/AppEngine$IPresentationEvent;)V
    .locals 1

    .line 636
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iPresentationEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->add(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public addRooms(Ljava/util/List;Lus/zoom/zrcsdk/model/ZRCContact;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1820
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1821
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCContact;

    .line 1822
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCContact;->getScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCContact;->getScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1825
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSendClientLogListener(Lus/zoom/zrc/model/AppEngine$ISendClientLogListener;)V
    .locals 1

    .line 684
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->sendClientLogListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->add(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public addSipServiceListener(Lus/zoom/zrc/model/AppEngine$ISipServiceEvent;)V
    .locals 1

    .line 533
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iSipServiceListener:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->add(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public addTreatedIncomingCallListener(Lus/zoom/zrc/model/AppEngine$IZRTreatedIncomingCallEvent;)V
    .locals 1

    .line 644
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iTreatedIncomingCallEvents:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->add(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public addUltrasoundWhiteListListener(Lus/zoom/zrc/model/AppEngine$IUltrasoundWhiteListListener;)V
    .locals 1

    .line 660
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iUltrasoundWhiteListListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->add(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public addWebEventListener(Lus/zoom/zrc/model/AppEngine$IWebEvent;)V
    .locals 1

    .line 628
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iWebEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->add(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public addWebPullCallBackListener(Lus/zoom/zrc/model/AppEngine$IWebPullCallBackEvent;)V
    .locals 1

    .line 549
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iWebPullCallBackListener:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->add(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public addWebinarListener(Lus/zoom/zrc/model/AppEngine$IWebinarRoleChangedEvent;)V
    .locals 1

    .line 541
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iWebinarEventListener:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->add(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public addZRConnectionEventListener(Lus/zoom/zrc/model/AppEngine$IZRConnectionEvent;)V
    .locals 1

    .line 567
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRConnectionEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->add(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public addZRIMEventListener(Lus/zoom/zrc/model/AppEngine$IZRIMEvent;)V
    .locals 1

    .line 610
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRIMEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->add(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public addZRInitConnectionEventEventListener(Lus/zoom/zrc/model/AppEngine$IZRInitConnectionEvent;)V
    .locals 1

    .line 577
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRInitConnectionEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->add(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public addZRMeetingEventListener(Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;)V
    .locals 1

    .line 594
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->add(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public addZRMeetingStatusChangeListener(Lus/zoom/zrc/model/AppEngine$IZRMeetingStatusEvent;)V
    .locals 1

    .line 586
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingStatusChangeEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->add(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public addZRPtEventListener(Lus/zoom/zrc/model/AppEngine$IZRPtEvent;)V
    .locals 1

    .line 602
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRPtEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->add(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public destory()V
    .locals 1

    .line 511
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/PTApp;->removeLoginListener(Lus/zoom/zrcsdk/ILoginListener;)V

    .line 512
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/PTApp;->removePtEventListener(Lus/zoom/zrcsdk/IPtEventListener;)V

    .line 513
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/PTApp;->removeZRConnectionEventListener(Lus/zoom/zrcsdk/IZRConnectionEventListener;)V

    .line 514
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/PTApp;->removeWebEventListener(Lus/zoom/zrcsdk/IWebEventListener;)V

    .line 515
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/PTApp;->removeGoogleListener(Lus/zoom/zrcsdk/IGoogleEventListener;)V

    .line 516
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/ConfApp;->removeZRMeetingEventListener(Lus/zoom/zrcsdk/IMeetingEventListener;)V

    .line 517
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/PTApp;->removeWebinarRoleChangedListener(Lus/zoom/zrcsdk/IWebinarRoleChangedListener;)V

    .line 519
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/PTApp;->removeWebPullCallBackEventListener(Lus/zoom/zrcsdk/IWebPullCallBackListener;)V

    .line 520
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/PTApp;->removeSipServiceListener(Lus/zoom/zrcsdk/ISipServiceListener;)V

    .line 521
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/PTApp;->removeFileDownloadListener(Lus/zoom/zrcsdk/IFileDownloadListener;)V

    .line 522
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/PTApp;->removeUltrasoundWhiteListListener(Lus/zoom/zrcsdk/IUltrasoundWhiteListListener;)V

    .line 523
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/PTApp;->removeCameraControlListener(Lus/zoom/zrcsdk/CameraControlListener;)V

    .line 524
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/PTApp;->removeCreateRoomListener(Lus/zoom/zrcsdk/ICreateRoomListener;)V

    .line 525
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/PTApp;->removeSendClientLogListener(Lus/zoom/zrcsdk/ISendClientLogListener;)V

    .line 526
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/PTApp;->removeCertItemVerifyFailedListener(Lus/zoom/zrcsdk/ICertItemVerifyFailedListener;)V

    .line 527
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/PTApp;->removeMicrophoneTestRecordingListener(Lus/zoom/zrcsdk/IMicrophoneTestRecordingListener;)V

    .line 528
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/PTApp;->removeRoomLocationListener(Lus/zoom/zrcsdk/IRoomLocationListener;)V

    .line 529
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/PTApp;->removeReserveOtherRoomEventsListener(Lus/zoom/zrcsdk/IReserveOtherRoomEventsListener;)V

    return-void
.end method

.method public getItemSortKey(Lus/zoom/zrcsdk/model/ZRCContact;)Ljava/lang/String;
    .locals 1

    .line 1185
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->isZoomRoomsGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "@"

    return-object p1

    .line 1188
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->getFirstName()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lus/zoom/androidlib/util/SortUtil;->getSortKey(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    return-object p1
.end method

.method public init()V
    .locals 1

    .line 462
    new-instance v0, Lus/zoom/androidlib/util/ListenerList;

    invoke-direct {v0}, Lus/zoom/androidlib/util/ListenerList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iLoginEventListeners:Lus/zoom/androidlib/util/ListenerList;

    .line 463
    new-instance v0, Lus/zoom/androidlib/util/ListenerList;

    invoke-direct {v0}, Lus/zoom/androidlib/util/ListenerList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRConnectionEventListeners:Lus/zoom/androidlib/util/ListenerList;

    .line 464
    new-instance v0, Lus/zoom/androidlib/util/ListenerList;

    invoke-direct {v0}, Lus/zoom/androidlib/util/ListenerList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRInitConnectionEventListeners:Lus/zoom/androidlib/util/ListenerList;

    .line 465
    new-instance v0, Lus/zoom/androidlib/util/ListenerList;

    invoke-direct {v0}, Lus/zoom/androidlib/util/ListenerList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingStatusChangeEventListeners:Lus/zoom/androidlib/util/ListenerList;

    .line 466
    new-instance v0, Lus/zoom/androidlib/util/ListenerList;

    invoke-direct {v0}, Lus/zoom/androidlib/util/ListenerList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    .line 467
    new-instance v0, Lus/zoom/androidlib/util/ListenerList;

    invoke-direct {v0}, Lus/zoom/androidlib/util/ListenerList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRPtEventListeners:Lus/zoom/androidlib/util/ListenerList;

    .line 468
    new-instance v0, Lus/zoom/androidlib/util/ListenerList;

    invoke-direct {v0}, Lus/zoom/androidlib/util/ListenerList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iPSTNCallOutEventListeners:Lus/zoom/androidlib/util/ListenerList;

    .line 469
    new-instance v0, Lus/zoom/androidlib/util/ListenerList;

    invoke-direct {v0}, Lus/zoom/androidlib/util/ListenerList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iWebEventListeners:Lus/zoom/androidlib/util/ListenerList;

    .line 470
    new-instance v0, Lus/zoom/androidlib/util/ListenerList;

    invoke-direct {v0}, Lus/zoom/androidlib/util/ListenerList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iPresentationEventListeners:Lus/zoom/androidlib/util/ListenerList;

    .line 471
    new-instance v0, Lus/zoom/androidlib/util/ListenerList;

    invoke-direct {v0}, Lus/zoom/androidlib/util/ListenerList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRIMEventListeners:Lus/zoom/androidlib/util/ListenerList;

    .line 472
    new-instance v0, Lus/zoom/androidlib/util/ListenerList;

    invoke-direct {v0}, Lus/zoom/androidlib/util/ListenerList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iWebinarEventListener:Lus/zoom/androidlib/util/ListenerList;

    .line 473
    new-instance v0, Lus/zoom/androidlib/util/ListenerList;

    invoke-direct {v0}, Lus/zoom/androidlib/util/ListenerList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iWebPullCallBackListener:Lus/zoom/androidlib/util/ListenerList;

    .line 474
    new-instance v0, Lus/zoom/androidlib/util/ListenerList;

    invoke-direct {v0}, Lus/zoom/androidlib/util/ListenerList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iSipServiceListener:Lus/zoom/androidlib/util/ListenerList;

    .line 475
    new-instance v0, Lus/zoom/androidlib/util/ListenerList;

    invoke-direct {v0}, Lus/zoom/androidlib/util/ListenerList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iTreatedIncomingCallEvents:Lus/zoom/androidlib/util/ListenerList;

    .line 476
    new-instance v0, Lus/zoom/androidlib/util/ListenerList;

    invoke-direct {v0}, Lus/zoom/androidlib/util/ListenerList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iFileDownloadEvents:Lus/zoom/androidlib/util/ListenerList;

    .line 477
    new-instance v0, Lus/zoom/androidlib/util/ListenerList;

    invoke-direct {v0}, Lus/zoom/androidlib/util/ListenerList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iUltrasoundWhiteListListeners:Lus/zoom/androidlib/util/ListenerList;

    .line 478
    new-instance v0, Lus/zoom/androidlib/util/ListenerList;

    invoke-direct {v0}, Lus/zoom/androidlib/util/ListenerList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/AppEngine;->cameraControlListeners:Lus/zoom/androidlib/util/ListenerList;

    .line 479
    new-instance v0, Lus/zoom/androidlib/util/ListenerList;

    invoke-direct {v0}, Lus/zoom/androidlib/util/ListenerList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/AppEngine;->createRoomListeners:Lus/zoom/androidlib/util/ListenerList;

    .line 480
    new-instance v0, Lus/zoom/androidlib/util/ListenerList;

    invoke-direct {v0}, Lus/zoom/androidlib/util/ListenerList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/AppEngine;->sendClientLogListeners:Lus/zoom/androidlib/util/ListenerList;

    .line 481
    new-instance v0, Lus/zoom/androidlib/util/ListenerList;

    invoke-direct {v0}, Lus/zoom/androidlib/util/ListenerList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/AppEngine;->certItemVerifyFailedListeners:Lus/zoom/androidlib/util/ListenerList;

    .line 482
    new-instance v0, Lus/zoom/androidlib/util/ListenerList;

    invoke-direct {v0}, Lus/zoom/androidlib/util/ListenerList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/AppEngine;->microphoneTestRecordingListeners:Lus/zoom/androidlib/util/ListenerList;

    .line 484
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/PTApp;->addLoginListener(Lus/zoom/zrcsdk/ILoginListener;)V

    .line 485
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/PTApp;->addPtEventListener(Lus/zoom/zrcsdk/IPtEventListener;)V

    .line 486
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/PTApp;->addZRConnectionEventListener(Lus/zoom/zrcsdk/IZRConnectionEventListener;)V

    .line 487
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/PTApp;->addWebEventListener(Lus/zoom/zrcsdk/IWebEventListener;)V

    .line 488
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/PTApp;->addGoogleListener(Lus/zoom/zrcsdk/IGoogleEventListener;)V

    .line 489
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/ConfApp;->addZRMeetingEventListener(Lus/zoom/zrcsdk/IMeetingEventListener;)V

    .line 490
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/PTApp;->addWebinarRoleChangedListener(Lus/zoom/zrcsdk/IWebinarRoleChangedListener;)V

    .line 491
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/PTApp;->addWebPullCallBackEventListener(Lus/zoom/zrcsdk/IWebPullCallBackListener;)V

    .line 492
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/PTApp;->addSipServiceListener(Lus/zoom/zrcsdk/ISipServiceListener;)V

    .line 493
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/PTApp;->addFileDownloadListener(Lus/zoom/zrcsdk/IFileDownloadListener;)V

    .line 494
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/PTApp;->addUltrasoundWhiteListListener(Lus/zoom/zrcsdk/IUltrasoundWhiteListListener;)V

    .line 495
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/PTApp;->addCameraControlListener(Lus/zoom/zrcsdk/CameraControlListener;)V

    .line 496
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/PTApp;->addCreateRoomListener(Lus/zoom/zrcsdk/ICreateRoomListener;)V

    .line 497
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/PTApp;->addSendClientLogListener(Lus/zoom/zrcsdk/ISendClientLogListener;)V

    .line 498
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/PTApp;->addCertItemVerifyFailedListener(Lus/zoom/zrcsdk/ICertItemVerifyFailedListener;)V

    .line 500
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/PTApp;->addMicrophoneTestRecordingListener(Lus/zoom/zrcsdk/IMicrophoneTestRecordingListener;)V

    .line 501
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/PTApp;->addRoomLocationListener(Lus/zoom/zrcsdk/IRoomLocationListener;)V

    .line 502
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lus/zoom/zrcsdk/PTApp;->addReserveOtherRoomEventsListener(Lus/zoom/zrcsdk/IReserveOtherRoomEventsListener;)V

    const/4 v0, 0x1

    .line 503
    iput-boolean v0, p0, Lus/zoom/zrc/model/AppEngine;->isInit:Z

    return-void
.end method

.method public isInited()Z
    .locals 1

    .line 507
    iget-boolean v0, p0, Lus/zoom/zrc/model/AppEngine;->isInit:Z

    return v0
.end method

.method public onAddLegacyRoom(Ljava/lang/String;Z)V
    .locals 4

    const-string v0, ""

    .line 1811
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAddLegacyRoom name is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  isMyRooms "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1812
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getZrcLegacyRoomSystems()Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->addRooms(Ljava/lang/String;Z)V

    .line 1813
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRIMEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1814
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1815
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRIMEvent;

    invoke-interface {v3, p1, p2}, Lus/zoom/zrc/model/AppEngine$IZRIMEvent;->onAddLegacyRoom(Ljava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAllowAttendeesUnmuteThemselvesNotification(Z)V
    .locals 1

    .line 2613
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onAllowAttendeesUnmuteThemselvesNotification(Z)V

    return-void
.end method

.method public onAllowRecordingNotification(IZZZ)V
    .locals 4

    .line 1659
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lus/zoom/zrc/model/Model;->updateMeetingUserRecordingStatus(IZZ)V

    .line 1661
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1662
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1663
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v3, p1, p2, p3, p4}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onUpdateMeetingUserRecordingStatus(IZZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAnswerHostRequestUnmuteAudioResult(Z)V
    .locals 1

    .line 2746
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onAnswerHostRequestUnmuteAudioResult(Z)V

    return-void
.end method

.method public onAnswerHostRequestUnmuteVideoResult(Z)V
    .locals 1

    .line 2741
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onAnswerHostRequestUnmuteVideoResult(Z)V

    return-void
.end method

.method public onAnswerIncomingCallResult(ILjava/lang/String;Lus/zoom/zrcsdk/model/ZRCIncomingCall;Z)V
    .locals 1

    .line 2751
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lus/zoom/zrc/model/Model;->onAnswerIncomingCallResult(ILjava/lang/String;Lus/zoom/zrcsdk/model/ZRCIncomingCall;Z)V

    return-void
.end method

.method public onAskToJoinThirdPartyMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 5

    const-string v0, "ZRCThirdPartyMeeting Start NOT"

    const-string v1, "meeting is =%s"

    const/4 v2, 0x1

    .line 2671
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2672
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRPtEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 2673
    array-length v1, v0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v2, v0, v4

    .line 2674
    check-cast v2, Lus/zoom/zrc/model/AppEngine$IZRPtEvent;

    invoke-interface {v2, p1}, Lus/zoom/zrc/model/AppEngine$IZRPtEvent;->onAskToJoinThirdPartyMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2676
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onAskToJoinThirdPartyMeeting(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    return-void
.end method

.method public onAssignRoomCalendarResult(ILus/zoom/zrcsdk/model/ZRCCalendarResourceItem;)V
    .locals 4

    .line 865
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->createRoomListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 866
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 867
    check-cast v3, Lus/zoom/zrc/model/AppEngine$ICreateRoomListener;

    invoke-interface {v3, p1, p2}, Lus/zoom/zrc/model/AppEngine$ICreateRoomListener;->onAssignRoomCalendarResult(ILus/zoom/zrcsdk/model/ZRCCalendarResourceItem;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 869
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/model/Model;->onAssignRoomCalendarResult(ILus/zoom/zrcsdk/model/ZRCCalendarResourceItem;)V

    return-void
.end method

.method public onAssignRoomLocationResult(ILjava/lang/String;)V
    .locals 4

    .line 874
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->createRoomListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 875
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 876
    check-cast v3, Lus/zoom/zrc/model/AppEngine$ICreateRoomListener;

    invoke-interface {v3, p1, p2}, Lus/zoom/zrc/model/AppEngine$ICreateRoomListener;->onAssignRoomLocationResult(ILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 878
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/model/Model;->onAssignRoomLocationResult(ILjava/lang/String;)V

    return-void
.end method

.method public onAudioCheckupNotification(Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;)V
    .locals 4

    .line 2521
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/AppModel;->setAudioCheckupInfo(Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;)V

    .line 2522
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onUpdateAudioCheckupInfo(Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;)V

    .line 2523
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2527
    :cond_0
    :pswitch_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/model/AppModel;->setStartAudioCheckTime(J)V

    .line 2532
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRPtEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 2533
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2534
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRPtEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRPtEvent;->onAudioCheckupNotification(Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onAudioRequestUnmuteByhostNotification(IZ)V
    .locals 1

    .line 2256
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/model/Model;->onHostRequestUnmuteAudioNotification(IZ)V

    return-void
.end method

.method public onBatchUserChangedNotification(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCUserChangedEntity;",
            ">;)V"
        }
    .end annotation

    .line 2552
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onBatchUserChangedNotification(Ljava/util/ArrayList;)V

    .line 2554
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 2555
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2556
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onBatchUserChangedEntityNotification(Ljava/util/List;)V

    .line 2557
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrc/model/Model;->getParticipantList()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object v4

    invoke-interface {v3, v4}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onBatchUserChangedNotification(Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2560
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getPinUserManager()Lus/zoom/zrc/model/ZRCPinUserManager;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getParticipantList()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/ZRCPinUserManager;->onUpdateParticipants(Ljava/util/List;)V

    return-void
.end method

.method public onCalibrateScreenSequenceResult(IILjava/lang/String;I)V
    .locals 1

    .line 1944
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lus/zoom/zrc/model/AppModel;->setQuantityOfScreens(I)V

    .line 1946
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lus/zoom/zrc/model/Model;->onCalibrateScreenSequenceResult(IILjava/lang/String;I)V

    return-void
.end method

.method public onCallStatus(I)V
    .locals 6

    .line 1324
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onMeetingStatus(I)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    .line 1326
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/AppModel;->getZrcLegacyRoomSystems()Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    move-result-object v2

    const/4 v3, 0x0

    .line 1327
    :goto_0
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->getRoomsOfCurrentMeeting()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1328
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrc/model/AppModel;->getZoomRoomAvailableContactList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->getRoomsOfCurrentMeeting()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1330
    :cond_0
    invoke-virtual {v2, v1}, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->resetRooms(Z)V

    .line 1331
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/AppEngine;->rebuildContactImData()V

    :cond_1
    if-ne p1, v0, :cond_2

    .line 1336
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->clearSelectedContacts()V

    :cond_2
    if-nez p1, :cond_3

    .line 1339
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAirPlayBlackMagicStatus()Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;

    move-result-object v0

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->setAirHostClientConnected(Z)V

    .line 1340
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAirPlayBlackMagicStatus()Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;

    move-result-object v0

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->setInstructionDisplayState(I)V

    .line 1342
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingStatusChangeEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1343
    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 1344
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRMeetingStatusEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRMeetingStatusEvent;->onZRMeetingStatusChange(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public onCameraControlResult(IIIIZLjava/lang/String;I)V
    .locals 8

    .line 2786
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lus/zoom/zrc/model/Model;->onCameraControlResult(IIIIZLjava/lang/String;I)V

    return-void
.end method

.method public onCameraIntelligentZoomFinished(Z)V
    .locals 4

    .line 2424
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->cameraControlListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 2425
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2426
    check-cast v3, Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;

    invoke-interface {v3, p1}, Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;->onCameraIntelligentZoomFinished(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCameraIntelligentZoomNotification(ZZ)V
    .locals 1

    .line 2593
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/model/Model;->onCameraIntelligentZoomNotification(ZZ)V

    return-void
.end method

.method public onCameraPresetActionFinished(Z)V
    .locals 4

    .line 2377
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->cameraControlListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 2378
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2379
    check-cast v3, Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;

    invoke-interface {v3, p1}, Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;->onCameraPresetActionFinished(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCameraPresetsChanged()V
    .locals 4

    .line 2388
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->cameraControlListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 2389
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2390
    check-cast v3, Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;

    invoke-interface {v3}, Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;->onCameraPresetsChanged()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCameraSharingStatusChanged(Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;)V
    .locals 6

    if-nez p1, :cond_0

    .line 2299
    new-instance p1, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, ""

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;-><init>(ZZZLjava/lang/String;I)V

    .line 2301
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/AppModel;->setCameraSharingStatus(Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;)V

    .line 2302
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onUpdateCameraSharingStatus(Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;)V

    .line 2305
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 2306
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2307
    check-cast v4, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v5

    invoke-virtual {v5}, Lus/zoom/zrc/model/AppModel;->getCameraSharingStatus()Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    move-result-object v5

    invoke-interface {v4, v5}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onCameraSharingStatusChanged(Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2311
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->cameraControlListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 2312
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 2313
    check-cast v3, Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;

    invoke-interface {v3, p1}, Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;->onCameraSharingStatusChanged(Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onCertItemVerifyFailed(Lus/zoom/zrcsdk/model/ZRCVerifyCertEvent;)V
    .locals 4

    .line 2718
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->certItemVerifyFailedListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 2719
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2720
    check-cast v3, Lus/zoom/zrc/model/AppEngine$ICertItemVerifyFailedListener;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$ICertItemVerifyFailedListener;->onCertItemVerifyFailed(Lus/zoom/zrcsdk/model/ZRCVerifyCertEvent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onClaimHostNotification(I)V
    .locals 4

    .line 2290
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 2291
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2292
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onClaimHostNotification(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onClose(I)V
    .locals 4

    const-string v0, ""

    const-string v1, "onClose----"

    const/4 v2, 0x0

    .line 719
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 720
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onClose(I)V

    .line 721
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRConnectionEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 722
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 723
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRConnectionEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRConnectionEvent;->onClose(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCloseCaptionControlResult(ILjava/lang/String;ZI)V
    .locals 1

    .line 2791
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lus/zoom/zrc/model/Model;->onCloseCaptionControlResult(ILjava/lang/String;ZI)V

    return-void
.end method

.method public onCloseUpcomingMeetingAlertResult(I)V
    .locals 1

    .line 2846
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onCloseUpcomingMeetingAlertResult(I)V

    return-void
.end method

.method public onClosedCaptionNotification(Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;)V
    .locals 4

    .line 2261
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onUpdateClosedCaptionInfo(Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;)V

    .line 2262
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 2263
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2264
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onClosedCaptionNotification(Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onClosedCaptionResult(Z)V
    .locals 4

    .line 2270
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onClosedCaptionResultNotification(Z)V

    .line 2271
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 2272
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2273
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onClosedCaptionResult(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onComDeviceListNotification(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCComDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 920
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/AppModel;->setComDeviceInfos(Ljava/util/List;)V

    .line 921
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRPtEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 922
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 923
    check-cast v4, Lus/zoom/zrc/model/AppEngine$IZRPtEvent;

    invoke-interface {v4, p1}, Lus/zoom/zrc/model/AppEngine$IZRPtEvent;->onComDeviceListNotification(Ljava/util/ArrayList;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 925
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 926
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 927
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onComDeviceListNotification(Ljava/util/ArrayList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onConnect(I)V
    .locals 4

    .line 709
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onConnect(I)V

    .line 710
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRConnectionEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 711
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 712
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRConnectionEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRConnectionEvent;->onConnect(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreateRoomResult(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 847
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->createRoomListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 848
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 849
    check-cast v3, Lus/zoom/zrc/model/AppEngine$ICreateRoomListener;

    invoke-interface {v3, p1, p2, p3}, Lus/zoom/zrc/model/AppEngine$ICreateRoomListener;->onCreateRoomResult(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 851
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lus/zoom/zrc/model/Model;->onCreateRoomResult(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCurrentSelectedMicrophoneMuted(Z)V
    .locals 4

    const-string v0, ""

    .line 2241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the currentSelectedMicrophoneMuted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2242
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onCurrentSelectedMicrophoneMuted(Z)V

    .line 2243
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 2244
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2245
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onCurrentSelectedMicrophoneMuted(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDisplayTopBannerNotification(Z)V
    .locals 1

    .line 2623
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onDisplayTopBannerNotification(Z)V

    return-void
.end method

.method public onDynamicContactListNotification(Ljava/util/ArrayList;Ljava/lang/String;IZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;",
            "Ljava/lang/String;",
            "IZZ)V"
        }
    .end annotation

    if-eqz p5, :cond_0

    .line 2451
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p5

    invoke-virtual {p5}, Lus/zoom/zrc/model/Model;->getDynamicallyCloudPbxContactList()Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object p5

    invoke-virtual {p5, p1, p2, p3, p4}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->updateDynamicContactList(Ljava/util/ArrayList;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 2453
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p5

    invoke-virtual {p5}, Lus/zoom/zrc/model/AppModel;->getDynamicContactList()Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object p5

    .line 2454
    invoke-virtual {p5, p1, p2, p3, p4}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->updateDynamicContactList(Ljava/util/ArrayList;Ljava/lang/String;IZ)V

    .line 2455
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p5

    invoke-virtual {p5, p1}, Lus/zoom/zrc/model/AppModel;->updateSelectedContactInfo(Ljava/util/List;)V

    .line 2458
    :goto_0
    iget-object p5, p0, Lus/zoom/zrc/model/AppEngine;->iZRIMEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {p5}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object p5

    .line 2459
    array-length v0, p5

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p5, v1

    .line 2460
    check-cast v2, Lus/zoom/zrc/model/AppEngine$IZRIMEvent;

    invoke-interface {v2, p1, p2, p3, p4}, Lus/zoom/zrc/model/AppEngine$IZRIMEvent;->onDynamicContactListNotification(Ljava/util/ArrayList;Ljava/lang/String;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2463
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p5

    invoke-virtual {p5, p1, p2, p3, p4}, Lus/zoom/zrc/model/Model;->onDynamicContactListNotification(Ljava/util/ArrayList;Ljava/lang/String;IZ)V

    return-void
.end method

.method public onDynamicContactsBasicInfoNotification(III)V
    .locals 5

    .line 2432
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getDynamicContactList()Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v0

    .line 2433
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getNumberOfContacts()I

    move-result v1

    if-ne v1, p2, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getNumberOfRooms()I

    move-result v1

    if-eq v1, p3, :cond_1

    .line 2434
    :cond_0
    invoke-virtual {v0, p2}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->setNumberOfContacts(I)V

    .line 2435
    invoke-virtual {v0, p3}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->setNumberOfRooms(I)V

    .line 2438
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v1

    const/16 v2, 0x14

    const-string v3, ""

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v4, v3}, Lus/zoom/zrcsdk/PTApp;->requestContactsDynamicallyFrom(IIZLjava/lang/String;)V

    const/4 v1, 0x1

    .line 2439
    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->setRequestingContacts(Z)V

    .line 2440
    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->setContactsExpired(Z)V

    .line 2441
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRIMEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 2442
    array-length v1, v0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v2, v0, v4

    .line 2443
    check-cast v2, Lus/zoom/zrc/model/AppEngine$IZRIMEvent;

    invoke-interface {v2, p1, p2, p3}, Lus/zoom/zrc/model/AppEngine$IZRIMEvent;->onDynamicContactsBasicInfoNotification(III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onEnableWaitingRoomOnEntryNotification(Z)V
    .locals 1

    .line 2588
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onEnableWaitingRoomOnEntryNotification(Z)V

    return-void
.end method

.method public onExitMeetingResult(Z)V
    .locals 1

    .line 2756
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onExitMeetingResult(Z)V

    return-void
.end method

.method public onFarEndCameraControlNotification(Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;)V
    .locals 1

    .line 1552
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onFarEndCameraControlNotification(Lus/zoom/zrcsdk/model/ZRCFarEndCameraControl;)V

    return-void
.end method

.method public onFinishReceivingLegacyRoomList(Z)V
    .locals 6

    const-string v0, ""

    const-string v1, "onFinishReceivingLegacyRoomList"

    const/4 v2, 0x0

    .line 1830
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1831
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getZrcLegacyRoomSystems()Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    move-result-object v0

    .line 1832
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->getRoomsOfCurrentMeeting()Ljava/util/List;

    move-result-object v0

    .line 1833
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getZrcLegacyRoomSystems()Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->getRoomsOfMine()Ljava/util/List;

    move-result-object v1

    .line 1834
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/AppModel;->getZoomRoomAvailableContactList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    .line 1835
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 1836
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lus/zoom/zrcsdk/model/ZRCContact;

    invoke-virtual {p0, v3, v5}, Lus/zoom/zrc/model/AppEngine;->addRooms(Ljava/util/List;Lus/zoom/zrcsdk/model/ZRCContact;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1838
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1839
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lus/zoom/zrcsdk/model/ZRCContact;

    invoke-virtual {p0, v3, v4}, Lus/zoom/zrc/model/AppEngine;->addRooms(Ljava/util/List;Lus/zoom/zrcsdk/model/ZRCContact;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1841
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/model/AppEngine;->rebuildContactImData()V

    .line 1842
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRIMEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1843
    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 1844
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRIMEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRIMEvent;->onFinishReceivingLegacyRoomList(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public onGetAllRoomsResult(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCRoomListItemDetail;",
            ">;)V"
        }
    .end annotation

    .line 2816
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/model/Model;->onRequestAllRoomsResult(ILjava/util/List;)V

    return-void
.end method

.method public onGetLocationInfoResult(ILjava/lang/String;Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCLocationInfo;)V
    .locals 1

    .line 2811
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lus/zoom/zrc/model/Model;->onRequestLocationInfoByIDResult(ILjava/lang/String;Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCLocationInfo;)V

    return-void
.end method

.method public onGetRoomLocationIDResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2806
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lus/zoom/zrc/model/Model;->onRequestRoomParentLocationIDResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGoingToBeInMeetingNotification(IZ)V
    .locals 1

    .line 1067
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->setMeetingType(I)V

    .line 1068
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/model/Model;->onGoingToBeInMeetingNotification(IZ)V

    return-void
.end method

.method public onGoogleAuthReturn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 2861
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lus/zoom/zrc/model/Model;->onGoogleAuthReturn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onHostChangedNotification(IZ)V
    .locals 4

    .line 1636
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/model/Model;->updateMeetingUserHostStatus(IZ)V

    .line 1638
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1639
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1640
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v3, p1, p2}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onHostChangedNotification(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onImAddContactNotification(Lus/zoom/zrcsdk/model/ZRCContact;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    .line 1090
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/AppModel;->tryToAddContact(Lus/zoom/zrcsdk/model/ZRCContact;)Z

    move-result v0

    .line 1091
    iget-object v1, p0, Lus/zoom/zrc/model/AppEngine;->iZRIMEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v1}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v1

    .line 1092
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v0, :cond_0

    .line 1094
    check-cast v4, Lus/zoom/zrc/model/AppEngine$IZRIMEvent;

    invoke-interface {v4, p1, p2, p3, p4}, Lus/zoom/zrc/model/AppEngine$IZRIMEvent;->onImAddContactNotification(Lus/zoom/zrcsdk/model/ZRCContact;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 1096
    :cond_0
    check-cast v4, Lus/zoom/zrc/model/AppEngine$IZRIMEvent;

    invoke-interface {v4, p1, p2, p3, p4}, Lus/zoom/zrc/model/AppEngine$IZRIMEvent;->onImUpdateContactNotification(Lus/zoom/zrcsdk/model/ZRCContact;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1099
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->isContactTransportFinished()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1100
    invoke-virtual {p0}, Lus/zoom/zrc/model/AppEngine;->rebuildContactImData()V

    :cond_2
    return-void
.end method

.method public onImConnectingResultNotification(I)V
    .locals 4

    .line 1244
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRIMEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1245
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1246
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRIMEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRIMEvent;->onImConnectingResultNotification(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onImFinishTransportingContactsNotification()V
    .locals 4

    const-string v0, ""

    const-string v1, "onImFinishTransportingContactsNotification"

    const/4 v2, 0x0

    .line 1304
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1305
    invoke-virtual {p0}, Lus/zoom/zrc/model/AppEngine;->rebuildContactImData()V

    .line 1306
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppModel;->setContactTransportFinished(Z)V

    .line 1307
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRIMEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1308
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1309
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRIMEvent;

    invoke-interface {v3}, Lus/zoom/zrc/model/AppEngine$IZRIMEvent;->onImFinishTransportingContactsNotification()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onImMyPresenceChangedNotification(ILjava/lang/String;)V
    .locals 4

    .line 1315
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRIMEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1316
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1317
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRIMEvent;

    invoke-interface {v3, p1, p2}, Lus/zoom/zrc/model/AppEngine$IZRIMEvent;->onImMyPresenceChangedNotification(ILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onImReconnectingNotification()V
    .locals 4

    .line 1252
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRIMEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1253
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1254
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRIMEvent;

    invoke-interface {v3}, Lus/zoom/zrc/model/AppEngine$IZRIMEvent;->onImReconnectingNotification()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onImStartTransportingContactsNotification()V
    .locals 8

    const-string v0, ""

    const-string v1, "onImStartTransportingContactsNotification"

    const/4 v2, 0x0

    .line 1260
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1261
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lus/zoom/zrc/model/AppModel;->setContactTransportFinished(Z)V

    .line 1262
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getZoomRoomAvailableContactList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1263
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1265
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getZrcLegacyRoomSystems()Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    move-result-object v1

    .line 1266
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->getRoomsOfCurrentMeeting()Ljava/util/List;

    move-result-object v1

    .line 1267
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/AppModel;->getZrcLegacyRoomSystems()Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->getRoomsOfMine()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    .line 1268
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1269
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lus/zoom/zrcsdk/model/ZRCContact;

    invoke-virtual {p0, v0, v5}, Lus/zoom/zrc/model/AppEngine;->addRooms(Ljava/util/List;Lus/zoom/zrcsdk/model/ZRCContact;)V

    const-string v5, ""

    .line 1270
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "roomsOfCurrentMeeting-->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1272
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1273
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lus/zoom/zrcsdk/model/ZRCContact;

    invoke-virtual {p0, v0, v4}, Lus/zoom/zrc/model/AppEngine;->addRooms(Ljava/util/List;Lus/zoom/zrcsdk/model/ZRCContact;)V

    const-string v4, ""

    .line 1274
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "roomsOfMine-->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1277
    :cond_2
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getContactAvailableList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1278
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1284
    :cond_3
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getSeletedContacts()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1285
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1286
    :cond_4
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getZrcContactsHashMap()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1287
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1288
    :cond_5
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getContactList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1289
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1290
    :cond_6
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getSeletedContactsHashMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1291
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1292
    :cond_7
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getZrcContactsAvailableHashMap()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1293
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1294
    :cond_8
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getZoomRoomContactList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1295
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1296
    :cond_9
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRIMEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1297
    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_a

    aget-object v3, v0, v2

    .line 1298
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRIMEvent;

    invoke-interface {v3}, Lus/zoom/zrc/model/AppEngine$IZRIMEvent;->onImStartTransportingContactsNotification()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_a
    return-void
.end method

.method public onImUpdateContactNotification(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;)V"
        }
    .end annotation

    .line 2468
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getDynamicContactList()Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v0

    .line 2469
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->updateContacts(Ljava/util/ArrayList;)V

    .line 2471
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getDynamicallyCloudPbxContactList()Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->updateContacts(Ljava/util/ArrayList;)V

    .line 2473
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/AppModel;->updateSelectedContactInfo(Ljava/util/List;)V

    .line 2475
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRIMEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 2476
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2477
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRIMEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRIMEvent;->onImUpdateContactNotification(Ljava/util/ArrayList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2480
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onImUpdateContactNotification(Ljava/util/List;)V

    return-void
.end method

.method public onImUpdateContactNotification(Lus/zoom/zrcsdk/model/ZRCContact;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    .line 1230
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/AppModel;->tryToAddContact(Lus/zoom/zrcsdk/model/ZRCContact;)Z

    move-result v0

    .line 1231
    invoke-virtual {p0}, Lus/zoom/zrc/model/AppEngine;->rebuildContactImData()V

    .line 1232
    iget-object v1, p0, Lus/zoom/zrc/model/AppEngine;->iZRIMEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v1}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v1

    .line 1233
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v0, :cond_0

    .line 1235
    check-cast v4, Lus/zoom/zrc/model/AppEngine$IZRIMEvent;

    invoke-interface {v4, p1, p2, p3, p4}, Lus/zoom/zrc/model/AppEngine$IZRIMEvent;->onImAddContactNotification(Lus/zoom/zrcsdk/model/ZRCContact;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 1237
    :cond_0
    check-cast v4, Lus/zoom/zrc/model/AppEngine$IZRIMEvent;

    invoke-interface {v4, p1, p2, p3, p4}, Lus/zoom/zrc/model/AppEngine$IZRIMEvent;->onImUpdateContactNotification(Lus/zoom/zrcsdk/model/ZRCContact;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onInSilentModeNotification(Z)V
    .locals 1

    .line 2583
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onInSilentModeNotification(Z)V

    return-void
.end method

.method public onIncomingCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 4

    .line 2104
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onIncomingCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)V

    .line 2105
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iSipServiceListener:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 2106
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2107
    check-cast v3, Lus/zoom/zrc/model/AppEngine$ISipServiceEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$ISipServiceEvent;->onIncomingCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onIncomingCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;)V
    .locals 5

    .line 1072
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onIncomingCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingCall;)V

    .line 1073
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRPtEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1074
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 1075
    check-cast v4, Lus/zoom/zrc/model/AppEngine$IZRPtEvent;

    invoke-interface {v4, p1}, Lus/zoom/zrc/model/AppEngine$IZRPtEvent;->onIncomingCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1077
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1078
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1079
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onIncomingCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onInviteRoomSystemManuallyResult(Z)V
    .locals 4

    .line 1608
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1609
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1610
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onInviteRoomSystemManuallyResult(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1612
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onInviteRoomSystemManuallyResult(Z)V

    return-void
.end method

.method public onJoinMeetingResult(Z)V
    .locals 1

    .line 1084
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onJoinMeetingResult(Z)V

    return-void
.end method

.method public onJoinSipCallToMeetingResult(ILjava/lang/String;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 1

    .line 2146
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lus/zoom/zrc/model/Model;->onJoinSipCallToMeetingResult(ILjava/lang/String;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    return-void
.end method

.method public onJoinTestMeetingResult(Z)V
    .locals 1

    .line 2708
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onJoinTestMeetingResult(Z)V

    return-void
.end method

.method public onLaunchSharingMeetingResult(ILjava/lang/String;ZI)V
    .locals 1

    .line 2776
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lus/zoom/zrc/model/Model;->onLaunchSharingMeetingResult(ILjava/lang/String;ZI)V

    return-void
.end method

.method public onListMeetingParticipantNotification(I)V
    .locals 1

    .line 2603
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onListMeetingParticipantNotification(I)V

    return-void
.end method

.method public onListMeetingResult(I)V
    .locals 1

    .line 2901
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onListMeetingResult(I)V

    return-void
.end method

.method public onMeetWithIMUsersResult(Z)V
    .locals 1

    .line 2703
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onMeetWithIMUsersResult(Z)V

    return-void
.end method

.method public onMeetingChatDisplaySettingsNotification(ZZ)V
    .locals 1

    .line 2633
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/model/Model;->onMeetingChatDisplaySettingsNotification(ZZ)V

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

    .line 2628
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onMeetingChatMessageNotification(Ljava/util/List;)V

    return-void
.end method

.method public onMeetingCloudRecordingErrorNotification(I)V
    .locals 4

    .line 2279
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCMeetingCloudRecordingError;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingCloudRecordingError;-><init>()V

    .line 2280
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/ZRCMeetingCloudRecordingError;->setErrorCode(I)V

    .line 2281
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lus/zoom/zrc/model/AppModel;->setRecordingError(Lus/zoom/zrcsdk/model/ZRCMeetingCloudRecordingError;)V

    .line 2282
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 2283
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2284
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onMeetingCloudRecordingErrorNotification(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMeetingEndedNotification(ILjava/lang/String;)V
    .locals 4

    .line 1010
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1011
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1012
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v3, p1, p2}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onMeetingEndedNotification(ILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1014
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/model/Model;->onMeetingEndedNotification(ILjava/lang/String;)V

    return-void
.end method

.method public onMeetingErrorNotification(ILjava/lang/String;)V
    .locals 4

    .line 1001
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRPtEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1002
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1003
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRPtEvent;

    invoke-interface {v3, p1, p2}, Lus/zoom/zrc/model/AppEngine$IZRPtEvent;->onMeetingErrorNotification(ILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1005
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/model/Model;->onMeetingErrorNotification(ILjava/lang/String;)V

    return-void
.end method

.method public onMeetingExitedNotification(I)V
    .locals 4

    .line 1647
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->onMeetingExitedNotification()V

    .line 1648
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppModel;->setMeetingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V

    .line 1649
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->setAppState(I)V

    .line 1650
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->setMeetingType(I)V

    .line 1651
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1652
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1653
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onMeetingExitedNotification(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMeetingNeedsPassword(ZZ)V
    .locals 5

    .line 1353
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRPtEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1354
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 1355
    check-cast v4, Lus/zoom/zrc/model/AppEngine$IZRPtEvent;

    invoke-interface {v4, p1, p2}, Lus/zoom/zrc/model/AppEngine$IZRPtEvent;->onMeetingNeedsPassword(ZZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1357
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1358
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1359
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v3, p1, p2}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onMeetingNeedsPassword(ZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1361
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/model/Model;->onMeetingNeedsPassword(ZZ)V

    return-void
.end method

.method public onMessageEventNotification(I)V
    .locals 4

    .line 2191
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 2192
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2193
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onMessageEventNotification(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMicrophoneRecordingNotification(I)V
    .locals 4

    .line 2726
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/AppModel;->setMicrophoneTestRecordingStatus(I)V

    .line 2727
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onUpdateMicrophoneTestRecordingStatus(I)V

    .line 2728
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->microphoneTestRecordingListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 2729
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2730
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IMicrophoneTestRecordingListener;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IMicrophoneTestRecordingListener;->onMicrophoneRecordingNotification(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMicrophoneTestingNotification(I)V
    .locals 5

    .line 1045
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onMicrophoneTestingNotification(I)V

    .line 1046
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRPtEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1047
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 1048
    check-cast v4, Lus/zoom/zrc/model/AppEngine$IZRPtEvent;

    invoke-interface {v4, p1}, Lus/zoom/zrc/model/AppEngine$IZRPtEvent;->onMicrophoneTestingNotification(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1050
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1051
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1052
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onMicrophoneTestingNotification(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onMirrorVideoResult(ILjava/lang/String;ZLjava/lang/String;)V
    .locals 1

    .line 2186
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lus/zoom/zrc/model/Model;->onMirrorVideoResult(ILjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public onNamedPresetsOfCurrentCameraChangedTo(Ljava/util/Map;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 2403
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getCameraPresetsManager()Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2405
    invoke-static {}, Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;->getManager()Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;

    move-result-object v0

    .line 2406
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lus/zoom/zrc/model/AppModel;->setCameraPresetsManager(Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;)V

    .line 2409
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lus/zoom/zrc/camera_control/model/ZRCCameraPresetsManager;->setNamedPresets(Ljava/util/Map;II)V

    .line 2411
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->cameraControlListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 2412
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2413
    check-cast v3, Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;

    invoke-interface {v3, p1, p2, p3}, Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;->onNamedPresetsOfCurrentCameraChangedTo(Ljava/util/Map;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onNeedWaitForHost(ZI)V
    .locals 5

    .line 1366
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/AppModel;->setNeedWaitHost(Z)V

    .line 1367
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lus/zoom/zrc/model/AppModel;->setWaitingType(I)V

    .line 1368
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/model/Model;->onNeedWaitForHost(ZI)V

    .line 1369
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRPtEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1370
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 1371
    check-cast v4, Lus/zoom/zrc/model/AppEngine$IZRPtEvent;

    invoke-interface {v4, p1, p2}, Lus/zoom/zrc/model/AppEngine$IZRPtEvent;->onNeedWaitForHost(ZI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1373
    :cond_0
    iget-object p2, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {p2}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object p2

    .line 1374
    array-length v0, p2

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v1, p2, v2

    .line 1375
    check-cast v1, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v1, p1}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onNeedWaitForHost(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onOtherDeviceLoginNotification(IZ)V
    .locals 4

    .line 1020
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppModel;->setOtherDeviceLogin(Z)V

    .line 1022
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRPtEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1023
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1024
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRPtEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRPtEvent;->onOtherDeviceLoginNotification(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1027
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/model/Model;->onOtherDeviceLoginNotification(IZ)V

    return-void
.end method

.method public onPSTNCallOutNotification(I)V
    .locals 5

    .line 1669
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onPSTNCallOutNotification(I)V

    .line 1671
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iPSTNCallOutEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1672
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 1673
    check-cast v4, Lus/zoom/zrc/model/AppEngine$IPSTNCallOutEvent;

    invoke-interface {v4, p1}, Lus/zoom/zrc/model/AppEngine$IPSTNCallOutEvent;->onPSTNCallOutStatus(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_6

    .line 1711
    :pswitch_0
    array-length p1, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_1

    aget-object v3, v0, v1

    .line 1712
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IPSTNCallOutEvent;

    invoke-interface {v3, v2}, Lus/zoom/zrc/model/AppEngine$IPSTNCallOutEvent;->onCancelCallOutResult(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1706
    :pswitch_1
    array-length p1, v0

    :goto_2
    if-ge v2, p1, :cond_1

    aget-object v3, v0, v2

    .line 1707
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IPSTNCallOutEvent;

    invoke-interface {v3, v1}, Lus/zoom/zrc/model/AppEngine$IPSTNCallOutEvent;->onCancelCallOutResult(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1686
    :pswitch_2
    array-length p1, v0

    :goto_3
    if-ge v2, p1, :cond_1

    aget-object v3, v0, v2

    .line 1687
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IPSTNCallOutEvent;

    invoke-interface {v3, v1}, Lus/zoom/zrc/model/AppEngine$IPSTNCallOutEvent;->onPSTNCallOutResult(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1699
    :pswitch_3
    array-length p1, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, p1, :cond_1

    aget-object v3, v0, v1

    .line 1700
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IPSTNCallOutEvent;

    invoke-interface {v3, v2}, Lus/zoom/zrc/model/AppEngine$IPSTNCallOutEvent;->onPSTNCallOutResult(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1677
    :pswitch_4
    array-length p1, v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, p1, :cond_1

    aget-object v3, v0, v1

    .line 1678
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IPSTNCallOutEvent;

    invoke-interface {v3, v2}, Lus/zoom/zrc/model/AppEngine$IPSTNCallOutEvent;->onPSTNCallOutResult(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1
    :goto_6
    :pswitch_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onPSTNCallOutResult(ILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 2781
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2, p1, p3, p4, p5}, Lus/zoom/zrc/model/Model;->onPSTNCallOutResult(ILjava/lang/String;ZZ)V

    return-void
.end method

.method public onPinStatusOfScreenNotification(Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;I)V
    .locals 3

    .line 2199
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/model/Model;->onPinStatusOfScreenNotification(Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;I)V

    .line 2200
    iget-object p2, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {p2}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object p2

    .line 2201
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 2202
    check-cast v2, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v2, p1}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onPinStatusOfScreenNotification(Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onQueryWithParingCodeResult(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 772
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v1

    invoke-virtual {v1, p2}, Lus/zoom/zrcsdk/ZRCSdkContext;->setZoomPresenceAddress(Ljava/lang/String;)V

    .line 773
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v1

    invoke-virtual {v1, p3}, Lus/zoom/zrcsdk/ZRCSdkContext;->setZoomPresenceToken(Ljava/lang/String;)V

    .line 776
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lus/zoom/zrc/model/AppModel;->setSettingsLocked(Z)V

    .line 778
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/model/AppEngine;->iLoginEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v1}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v1

    .line 779
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 780
    check-cast v3, Lus/zoom/zrc/model/AppEngine$ILoginEvent;

    invoke-interface {v3, p1, p2, p3}, Lus/zoom/zrc/model/AppEngine$ILoginEvent;->onQueryWithParingCodeResult(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 782
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lus/zoom/zrc/model/Model;->onQueryWithParingCodeResult(ILjava/lang/String;Ljava/lang/String;)V

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

    if-nez p1, :cond_0

    .line 824
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lus/zoom/zrc/model/AppModel;->setCalendarServiceList(Ljava/util/List;)V

    .line 826
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->createRoomListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 827
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 828
    check-cast v3, Lus/zoom/zrc/model/AppEngine$ICreateRoomListener;

    invoke-interface {v3, p1, p2}, Lus/zoom/zrc/model/AppEngine$ICreateRoomListener;->onReceivedListCalendarResult(ILjava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 830
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/model/Model;->onReceivedListCalendarResult(ILjava/util/List;)V

    return-void
.end method

.method public onReceivedListLocationResult(ILus/zoom/zrcsdk/model/ZRCLocationTree;)V
    .locals 4

    if-nez p1, :cond_0

    .line 836
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lus/zoom/zrc/model/AppModel;->setRoomLocation(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V

    .line 838
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->createRoomListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 839
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 840
    check-cast v3, Lus/zoom/zrc/model/AppEngine$ICreateRoomListener;

    invoke-interface {v3, p1, p2}, Lus/zoom/zrc/model/AppEngine$ICreateRoomListener;->onReceivedListLocationResult(ILus/zoom/zrcsdk/model/ZRCLocationTree;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 842
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/model/Model;->onReceivedListLocationResult(ILus/zoom/zrcsdk/model/ZRCLocationTree;)V

    return-void
.end method

.method public onReceivedRoomList(Ljava/util/List;Ljava/lang/String;I)V
    .locals 4
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

    .line 741
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lus/zoom/zrc/model/AppModel;->setRefreshToken(Ljava/lang/String;)V

    .line 742
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/AppModel;->setZrList(Ljava/util/List;)V

    .line 743
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    invoke-virtual {v0, p2}, Lus/zoom/zrcsdk/ZRCSdkContext;->setZoomToken(Ljava/lang/String;)V

    .line 744
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->saveLoginUserAndRoomInfo()V

    .line 745
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iLoginEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 746
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 747
    check-cast v3, Lus/zoom/zrc/model/AppEngine$ILoginEvent;

    invoke-interface {v3, p1, p2, p3}, Lus/zoom/zrc/model/AppEngine$ILoginEvent;->onReceivedRoomList(Ljava/util/List;Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 750
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lus/zoom/zrc/model/Model;->onReceivedRoomList(Ljava/util/List;Ljava/lang/String;I)V

    return-void
.end method

.method public onRecordingConsentNotification(Z)V
    .locals 1

    .line 2618
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onRecordingConsentNotification(Z)V

    return-void
.end method

.method public onRoomSystemCallingStatus(I)V
    .locals 4

    .line 1757
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1758
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1759
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onRoomSystemCallingStatus(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1761
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onRoomSystemCallingStatus(I)V

    return-void
.end method

.method public onRoomSystemCallingUserInfo(ILjava/lang/String;)V
    .locals 1

    .line 1766
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/model/Model;->onRoomSystemCallingUserInfo(ILjava/lang/String;)V

    return-void
.end method

.method public onSIPCallForegroundCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 1

    .line 2181
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onSIPCallForegroundCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    return-void
.end method

.method public onSIPCallInviteToJoinMeetingNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 1

    .line 2176
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onSIPCallInviteToJoinMeetingNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    return-void
.end method

.method public onSIPCallMergeCallResultNotification(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2171
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lus/zoom/zrc/model/Model;->onSIPCallMergeCallResultNotification(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSIPCallStatusNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;I)V
    .locals 1

    .line 2118
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/model/Model;->onSIPCallStatusNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;I)V

    return-void
.end method

.method public onSIPCallTerminatedNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;I)V
    .locals 1

    .line 2113
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/model/Model;->onSIPCallTerminatedNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;I)V

    return-void
.end method

.method public onSIPCallTransferResultNotification(ILus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 1

    .line 2161
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/model/Model;->onSIPCallTransferResultNotification(ILus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    return-void
.end method

.method public onSIPCallUpgradeMeetingResultNotification(ILus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 1

    .line 2166
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/model/Model;->onSIPCallUpgradeMeetingResultNotification(ILus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    return-void
.end method

.method public onScreenInformationNotification(II)V
    .locals 4

    .line 1929
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/AppModel;->setQuantityOfScreens(I)V

    .line 1930
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lus/zoom/zrc/model/AppModel;->setQuantifyOfCecAdapterAttachedScreens(I)V

    .line 1931
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getRoomScreenInfo()Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;

    move-result-object v0

    .line 1932
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;

    .line 1933
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;->setQuantityOfScreens(I)V

    .line 1934
    invoke-virtual {v0, p2}, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;->setQuantityOfCecAdapterAttachedScreens(I)V

    .line 1935
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1, v0}, Lus/zoom/zrc/model/Model;->onUpdateRoomScreenInfo(Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;)V

    .line 1936
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRPtEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1937
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1938
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRPtEvent;

    invoke-interface {v3, p1, p2}, Lus/zoom/zrc/model/AppEngine$IZRPtEvent;->onScreenInformationNotification(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onScreenResolutionStatusChangedTo(I)V
    .locals 4

    .line 2485
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/AppModel;->setScreenResolutionStatus(I)V

    .line 2486
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onUpdateScreenResolutionStatus(I)V

    .line 2487
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRPtEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 2488
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2489
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRPtEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRPtEvent;->onScreenResolutionStatusChangedTo(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSearchBuddyOnWebDidFinishWithResult(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;)V"
        }
    .end annotation

    .line 2344
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRIMEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 2345
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2346
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRIMEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRIMEvent;->onSearchBuddyOnWebDidFinishWithResult(Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSelectedVirtualBackgroundNotification(Ljava/lang/String;)V
    .locals 1

    .line 2886
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onSelectedVirtualBackgroundNotification(Ljava/lang/String;)V

    return-void
.end method

.method public onSendClientLogsResult(I)V
    .locals 4

    .line 2653
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->sendClientLogListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 2654
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2655
    check-cast v3, Lus/zoom/zrc/model/AppEngine$ISendClientLogListener;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$ISendClientLogListener;->onSendClientLogsResult(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSendEmailResult(I)V
    .locals 4

    .line 1723
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iWebEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1724
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1725
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IWebEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IWebEvent;->onSendEmailResult(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSendFailed(I)V
    .locals 4

    .line 731
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRConnectionEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 732
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 733
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRConnectionEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRConnectionEvent;->onSendFailed(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSendFeedbackFinisheResult(I)V
    .locals 4

    .line 1731
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onSendFeedbackFinishedResult(I)V

    .line 1732
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iWebEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1733
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1734
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IWebEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IWebEvent;->onSendFeedbackFinisheResult(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSendProblemReportNotification(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 2365
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lus/zoom/zrc/model/Model;->onSendProblemReportNotification(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSendReportResult(I)V
    .locals 4

    .line 1748
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iWebEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1749
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1750
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IWebEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IWebEvent;->onSendReportResult(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1752
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onSendReportResult(I)V

    return-void
.end method

.method public onSendZoomRoomsProblemReportResult(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 2896
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lus/zoom/zrc/model/Model;->onSendZoomRoomsProblemReportResult(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSetCloudRecordingNotificationEmailResult(I)V
    .locals 4

    .line 1740
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iWebEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1741
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1742
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IWebEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IWebEvent;->onSetCloudRecordingNotificationEmailResult(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSetMeetingPasswordResult(Z)V
    .locals 1

    .line 2736
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onSetMeetingPasswordResult(Z)V

    return-void
.end method

.method public onSetMeetingRecordingResult(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1598
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lus/zoom/zrc/model/Model;->onSetMeetingRecordingResult(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSetMicrophoneVolumeResult(ILjava/lang/String;I)V
    .locals 1

    .line 2761
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lus/zoom/zrc/model/Model;->onSetMicrophoneVolumeResult(ILjava/lang/String;I)V

    return-void
.end method

.method public onSetSpeakerVolumeResult(ILjava/lang/String;I)V
    .locals 1

    .line 2766
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lus/zoom/zrc/model/Model;->onSetSpeakerVolumeResult(ILjava/lang/String;I)V

    return-void
.end method

.method public onShareBlackMagicResult(Z)V
    .locals 0

    return-void
.end method

.method public onShareCameraResult(Z)V
    .locals 4

    .line 2319
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onShareCameraResult(Z)V

    .line 2320
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 2321
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2322
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onShareCameraResult(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onShowSharingInstructionResult(IZZZI)V
    .locals 6

    .line 2771
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lus/zoom/zrc/model/Model;->onShowSharingInstructionResult(IZZZI)V

    return-void
.end method

.method public onShowUpcomingMeetingAlertResult(ILjava/lang/String;ZLjava/lang/String;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 0

    .line 2841
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2, p1, p3, p4, p5}, Lus/zoom/zrc/model/Model;->onShowUpcomingMeetingAlertResult(IZLjava/lang/String;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    return-void
.end method

.method public declared-synchronized onSinkDownloadFile(Ljava/lang/String;I)V
    .locals 3

    monitor-enter p0

    .line 2495
    :try_start_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/model/Model;->onSinkDownloadFile(Ljava/lang/String;I)V

    .line 2496
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iFileDownloadEvents:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    const/4 v1, 0x0

    .line 2497
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 2498
    aget-object v2, v0, v1

    check-cast v2, Lus/zoom/zrc/model/AppEngine$IFileDownloadEvent;

    invoke-interface {v2, p1, p2}, Lus/zoom/zrc/model/AppEngine$IFileDownloadEvent;->onSinkDownloadFile(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2500
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public onSipDialOutResult(ILjava/lang/String;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 1

    .line 2156
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lus/zoom/zrc/model/Model;->onSipDialOutResult(ILjava/lang/String;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    return-void
.end method

.method public onSpeakerTestingNotification(IZ)V
    .locals 5

    .line 1032
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p2}, Lus/zoom/zrc/model/Model;->onSpeakerTestingNotification(Z)V

    .line 1033
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRPtEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1034
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 1035
    check-cast v4, Lus/zoom/zrc/model/AppEngine$IZRPtEvent;

    invoke-interface {v4, p1, p2}, Lus/zoom/zrc/model/AppEngine$IZRPtEvent;->onSpeakerTestingNotification(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1037
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1038
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1039
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v3, p1, p2}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onSpeakerTestingNotification(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onSpeakerTestingResult(IFZ)V
    .locals 5

    .line 2352
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lus/zoom/zrc/model/Model;->onSpeakerTestingResultNotification(IZ)V

    .line 2353
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRPtEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 2354
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 2355
    check-cast v4, Lus/zoom/zrc/model/AppEngine$IZRPtEvent;

    invoke-interface {v4, p1, p2, p3}, Lus/zoom/zrc/model/AppEngine$IZRPtEvent;->onSpeakerTestingResult(IFZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2357
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 2358
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2359
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v3, p1, p2, p3}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onSpeakerTestingResult(IFZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onSpotlightStatusNotification(Lus/zoom/zrcsdk/model/ZRCSpotlightStatus;)V
    .locals 4

    .line 2208
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->setSpotlightStatus(Lus/zoom/zrcsdk/model/ZRCSpotlightStatus;)V

    .line 2209
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 2210
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2211
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onSpotlightStatusNotification(Lus/zoom/zrcsdk/model/ZRCSpotlightStatus;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStartInstantMeetingNotification(ZI)V
    .locals 4

    .line 993
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRPtEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 994
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 995
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRPtEvent;

    invoke-interface {v3, p1, p2}, Lus/zoom/zrc/model/AppEngine$IZRPtEvent;->onStartInstantMeetingNotification(ZI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStartMeetingResult(ZLjava/lang/String;)V
    .locals 1

    .line 2698
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/model/Model;->onStartMeetingResult(ZLjava/lang/String;)V

    return-void
.end method

.method public onStartPmiResult(ZLjava/lang/String;ILus/zoom/zrcsdk/model/ZRCMeetingListItem;Ljava/lang/String;)V
    .locals 6

    .line 2693
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lus/zoom/zrc/model/Model;->onStartPmiResult(ZLjava/lang/String;ILus/zoom/zrcsdk/model/ZRCMeetingListItem;Ljava/lang/String;)V

    return-void
.end method

.method public onStartReceivingLegacyRoomList(Z)V
    .locals 5

    const-string v0, ""

    .line 1781
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartReceivingLegacyRoomList,isMyRooms = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1782
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getZrcLegacyRoomSystems()Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    move-result-object v0

    .line 1783
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->getRoomsOfCurrentMeeting()Ljava/util/List;

    move-result-object v0

    .line 1784
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getZrcLegacyRoomSystems()Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->getRoomsOfMine()Ljava/util/List;

    move-result-object v1

    .line 1785
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/AppModel;->getZoomRoomAvailableContactList()Ljava/util/List;

    move-result-object v3

    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 1787
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1788
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lus/zoom/zrcsdk/model/ZRCContact;

    invoke-virtual {p0, v3, v4}, Lus/zoom/zrc/model/AppEngine;->removeRooms(Ljava/util/List;Lus/zoom/zrcsdk/model/ZRCContact;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1791
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1792
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lus/zoom/zrcsdk/model/ZRCContact;

    invoke-virtual {p0, v3, v4}, Lus/zoom/zrc/model/AppEngine;->removeRooms(Ljava/util/List;Lus/zoom/zrcsdk/model/ZRCContact;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1796
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getZrcLegacyRoomSystems()Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    .line 1802
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getZrcLegacyRoomSystems()Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/ZRCLegacyRoomSystems;->resetRooms(Z)V

    .line 1803
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRIMEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1804
    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 1805
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRIMEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRIMEvent;->onStartReceivingLegacyRoomList(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public onStartSharingMeetingNotification(Z)V
    .locals 4

    .line 1058
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onStartSharingMeetingNotification(Z)V

    .line 1059
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iPresentationEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1060
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1061
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IPresentationEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IPresentationEvent;->onStartSharingMeetingNotification(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSwitchCameraForVideoResult(Z)V
    .locals 5

    .line 1617
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1618
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 1619
    check-cast v4, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v4, p1}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onSwitchCameraForVideoResult(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1622
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRPtEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1623
    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 1624
    check-cast v4, Lus/zoom/zrc/model/AppEngine$IZRPtEvent;

    invoke-interface {v4, p1}, Lus/zoom/zrc/model/AppEngine$IZRPtEvent;->onSwitchCameraForVideoResult(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1627
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->cameraControlListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1628
    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 1629
    check-cast v3, Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;

    invoke-interface {v3, p1}, Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;->onSwitchCameraForVideoResult(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public onTransferSipCallResult(ILjava/lang/String;ILus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Ljava/lang/String;)V
    .locals 6

    .line 2141
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lus/zoom/zrc/model/Model;->onTransferSipCallResult(ILjava/lang/String;ILus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Ljava/lang/String;)V

    return-void
.end method

.method public onTreatedCameraControlRequestNotification(ZI)V
    .locals 1

    .line 2608
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/model/Model;->onTreatedCameraControlRequestNotification(ZI)V

    return-void
.end method

.method public onTreatedIncomingCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;Z)V
    .locals 3

    const-string v0, ""

    .line 2328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",accepted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2329
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/model/Model;->onTreatedIncomingCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingCall;Z)V

    return-void
.end method

.method public onTreatedIncomingCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;Z)V
    .locals 4

    const-string v0, ""

    .line 2334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",accepted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2335
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/model/Model;->onTreatedIncomingCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingCall;Z)V

    .line 2336
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iTreatedIncomingCallEvents:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 2337
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2338
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRTreatedIncomingCallEvent;

    invoke-interface {v3, p1, p2}, Lus/zoom/zrc/model/AppEngine$IZRTreatedIncomingCallEvent;->onTreatedIncomingCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUltrasoundPlayerCandidateNotification(Ljava/lang/String;)V
    .locals 1

    .line 2713
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onUltrasoundPlayerCandidateNotification(Ljava/lang/String;)V

    return-void
.end method

.method public onUltrasoundWhiteListUpdated([Ljava/lang/String;)V
    .locals 3

    .line 2504
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iUltrasoundWhiteListListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    const/4 v1, 0x0

    .line 2505
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 2506
    aget-object v2, v0, v1

    check-cast v2, Lus/zoom/zrc/model/AppEngine$IUltrasoundWhiteListListener;

    invoke-interface {v2, p1}, Lus/zoom/zrc/model/AppEngine$IUltrasoundWhiteListListener;->onUltrasoundWhiteListUpdated([Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpdateAirPlayBlackMagicStatus(Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;)V
    .locals 5

    .line 959
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onUpdateAirPlayBlackMagicStatus(Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;)V

    .line 960
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iPresentationEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 961
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 962
    check-cast v4, Lus/zoom/zrc/model/AppEngine$IPresentationEvent;

    invoke-interface {v4, p1}, Lus/zoom/zrc/model/AppEngine$IPresentationEvent;->onUpdateAirPlayBlackMagicStatus(Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 964
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRPtEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 965
    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 966
    check-cast v4, Lus/zoom/zrc/model/AppEngine$IZRPtEvent;

    invoke-interface {v4, p1}, Lus/zoom/zrc/model/AppEngine$IZRPtEvent;->onUpdateAirPlayBlackMagicStatus(Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 968
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 969
    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 970
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onUpdateAirPlayBlackMagicStatus(Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public onUpdateCallOutNumbersInCalling(Ljava/lang/String;)V
    .locals 4

    const-string v0, "onUpdateCallOutNumbersInCalling"

    const-string v1, "the meeting number is %s"

    const/4 v2, 0x1

    .line 1382
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1383
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onUpdateCallOutNumbersInCalling(Ljava/lang/String;)V

    .line 1384
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1385
    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 1386
    check-cast v2, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v2, p1}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onUpdateCallOutNumbersInCalling(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpdateCanRaiseHandForAttendee(Z)V
    .locals 2

    .line 2574
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2576
    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->setSupportsRaiseHand(Z)V

    .line 2578
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onUpdateCanRaiseHandForAttendee(Z)V

    return-void
.end method

.method public onUpdateFeatureList(Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;)V
    .locals 1

    .line 948
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/AppModel;->setZrcFeatureListInfo(Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;)V

    .line 949
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onUpdateFeatureList(Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;)V

    return-void
.end method

.method public onUpdateFeatureListHideSelfVideo(Z)V
    .locals 1

    .line 954
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onUpdateFeatureListHideSelfVideo(Z)V

    return-void
.end method

.method public onUpdateGenericSettings(Lus/zoom/zrcsdk/model/ZRCGenericSettings;)V
    .locals 4

    .line 938
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/AppModel;->setZrcGenericSettings(Lus/zoom/zrcsdk/model/ZRCGenericSettings;)V

    .line 939
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onUpdateGenericSettings(Lus/zoom/zrcsdk/model/ZRCGenericSettings;)V

    .line 940
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 941
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 942
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onUpdateGenericSettings(Lus/zoom/zrcsdk/model/ZRCGenericSettings;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpdateInitMeetingParticipants(Ljava/util/ArrayList;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCParticipant;",
            ">;II)V"
        }
    .end annotation

    .line 2541
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lus/zoom/zrc/model/Model;->onUpdateInitMeetingParticipants(Ljava/util/ArrayList;II)V

    .line 2543
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 2544
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2545
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v3, p1, p2, p3}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onUpdateInitMeetingParticipants(Ljava/util/ArrayList;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2547
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getPinUserManager()Lus/zoom/zrc/model/ZRCPinUserManager;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/Model;->getParticipantList()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lus/zoom/zrc/model/ZRCPinUserManager;->onUpdateParticipants(Ljava/util/List;)V

    return-void
.end method

.method public onUpdateIsOnEntryMuted(Z)V
    .locals 4

    const-string v0, ""

    .line 1468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOnEntryMuted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1469
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/AppModel;->setOnEntryMuted(Z)V

    .line 1470
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1471
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1472
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onUpdateIsOnEntryMuted(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpdateLocalViewStatus(Z)V
    .locals 1

    .line 2906
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onUpdateLocalViewStatus(Z)V

    return-void
.end method

.method public onUpdateMeetingAudioStatus(Lus/zoom/zrcsdk/model/ZRCAudioStatus;)V
    .locals 4

    .line 1392
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/AppModel;->setAudioStatus(Lus/zoom/zrcsdk/model/ZRCAudioStatus;)V

    .line 1393
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onUpdateMeetingAudioStatus(Lus/zoom/zrcsdk/model/ZRCAudioStatus;)V

    .line 1394
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1395
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1396
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onUpdateMeetingAudioStatus(Lus/zoom/zrcsdk/model/ZRCAudioStatus;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpdateMeetingAudioTroubleShootingStatus(Lus/zoom/zrcsdk/model/ZRCMeetingAudioTroubleShootingStatus;)V
    .locals 4

    .line 2565
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onUpdateMeetingAudioTroubleShootingStatus(Lus/zoom/zrcsdk/model/ZRCMeetingAudioTroubleShootingStatus;)V

    .line 2566
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 2567
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2568
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onUpdateMeetingAudioTroubleShootingStatus(Lus/zoom/zrcsdk/model/ZRCMeetingAudioTroubleShootingStatus;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpdateMeetingChatMessageCount(I)V
    .locals 1

    .line 2638
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onUpdateMeetingChatMessageCount(I)V

    return-void
.end method

.method public onUpdateMeetingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V
    .locals 5

    .line 1423
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/AppModel;->setMeetingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V

    .line 1424
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getTollFreeNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1425
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getTollFreeNumber()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/model/AppEngine;->splitMeetingInfoNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1426
    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->setTollFreeNumber(Ljava/lang/String;)V

    .line 1429
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getMeetingType()I

    move-result v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->setMeetingType(I)V

    .line 1431
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onUpdateMeetingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V

    .line 1433
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1434
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 1435
    check-cast v4, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v4, p1}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onUpdateMeetingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1437
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iPresentationEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1438
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 1439
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IPresentationEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IPresentationEvent;->onUpdateMeetingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onUpdateMeetingList(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingListItem;",
            ">;)V"
        }
    .end annotation

    .line 976
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/AppModel;->setZrcMeetingList(Ljava/util/List;)V

    .line 978
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onUpdateMeetingList(Ljava/util/ArrayList;)V

    .line 980
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRPtEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 981
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 982
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRPtEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRPtEvent;->onUpdateMeetingList(Ljava/util/ArrayList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 987
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getMeetingAlertManager()Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;

    move-result-object v0

    .line 988
    invoke-virtual {v0, p1}, Lus/zoom/zrc/meeting/meetingalert/ZRCMeetingAlertManager;->onMeetingListChanged(Ljava/util/List;)V

    return-void
.end method

.method public onUpdateMeetingLockStatus(Z)V
    .locals 4

    .line 1459
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/AppModel;->setMeetingLocked(Z)V

    .line 1460
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1461
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1462
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onUpdateMeetingLockStatus(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpdateMeetingParticipants(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCParticipant;",
            ">;)V"
        }
    .end annotation

    .line 1479
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onUpdateMeetingParticipants(Ljava/util/ArrayList;)V

    .line 1481
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1482
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1483
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onUpdateMeetingParticipants(Ljava/util/ArrayList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1485
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getPinUserManager()Lus/zoom/zrc/model/ZRCPinUserManager;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getParticipantList()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/ZRCPinUserManager;->onUpdateParticipants(Ljava/util/List;)V

    return-void
.end method

.method public onUpdateMeetingRecordingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;)V
    .locals 4

    .line 1522
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/AppModel;->setMeetingRecordingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;)V

    .line 1523
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1524
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1525
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onUpdateMeetingRecordingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingRecordingInfo;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpdateMeetingSharingStatus(Lus/zoom/zrcsdk/model/ZRCSharingStatus;)V
    .locals 4

    .line 1532
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/AppModel;->setMeetingSharingStatus(Lus/zoom/zrcsdk/model/ZRCSharingStatus;)V

    .line 1533
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onUpdateSharingStatus(Lus/zoom/zrcsdk/model/ZRCSharingStatus;)V

    .line 1534
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1535
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1536
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onUpdateMeetingSharingStatus(Lus/zoom/zrcsdk/model/ZRCSharingStatus;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpdateMeetingUser(ILus/zoom/zrcsdk/model/ZRCAudioStatus;)V
    .locals 2

    .line 1490
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/model/Model;->updateMeetingUserAudioStatus(ILus/zoom/zrcsdk/model/ZRCAudioStatus;)V

    .line 1492
    iget-object p1, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {p1}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object p1

    .line 1493
    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    .line 1494
    check-cast v1, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v1}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onUpdateMeetingParticipantsStatus()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpdateMeetingUser(ILus/zoom/zrcsdk/model/ZRCCameraControlStatus;)V
    .locals 3

    .line 1511
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/model/Model;->updateMeetingUserCameraStatus(ILus/zoom/zrcsdk/model/ZRCCameraControlStatus;)V

    const-string v0, "onUpdateMeetingUser"

    .line 1513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",cameraControlStatus.isCanZoomCamera()="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->isCanZoomCamera()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array v1, p2, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1514
    iget-object p1, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {p1}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object p1

    .line 1515
    array-length v0, p1

    :goto_0
    if-ge p2, v0, :cond_0

    aget-object v1, p1, p2

    .line 1516
    check-cast v1, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v1}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onUpdateMeetingParticipantsStatus()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpdateMeetingUser(ILus/zoom/zrcsdk/model/ZRCVideoStatus;)V
    .locals 2

    .line 1500
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/model/Model;->updateMeetingUserVideoStatus(ILus/zoom/zrcsdk/model/ZRCVideoStatus;)V

    .line 1501
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getParticipantList()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/ZRCParticipantList;->sortParticipants()V

    .line 1503
    iget-object p1, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {p1}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object p1

    .line 1504
    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    .line 1505
    check-cast v1, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v1}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onUpdateMeetingParticipantsStatus()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpdateMeetingVideoLayoutStatus(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V
    .locals 4

    .line 1542
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/AppModel;->setVideoLayoutStatus(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V

    .line 1543
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onUpdateMeetingVideoLayoutStatus(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V

    .line 1544
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1545
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1546
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onUpdateMeetingVideoLayoutStatus(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpdateMeetingVideoStatus(Lus/zoom/zrcsdk/model/ZRCVideoStatus;)V
    .locals 5

    .line 1402
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/AppModel;->setVideoStatus(Lus/zoom/zrcsdk/model/ZRCVideoStatus;)V

    .line 1403
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onUpdateMeetingVideoStatus(Lus/zoom/zrcsdk/model/ZRCVideoStatus;)V

    .line 1404
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1405
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 1406
    check-cast v4, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v4, p1}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onUpdateMeetingVideoStatus(Lus/zoom/zrcsdk/model/ZRCVideoStatus;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1413
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->cameraControlListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1414
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    .line 1416
    check-cast v3, Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;

    invoke-interface {v3, p1}, Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;->onVideoStatusChanged(Lus/zoom/zrcsdk/model/ZRCVideoStatus;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onUpdateMeetingZRWSharingStatus(Lus/zoom/zrcsdk/model/ZRWSharingStatus;)V
    .locals 1

    .line 2866
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onUpdateMeetingZRWSharingStatus(Lus/zoom/zrcsdk/model/ZRWSharingStatus;)V

    return-void
.end method

.method public onUpdateMyAudioResult(Z)V
    .locals 4

    .line 1579
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onUpdateMyAudioResult(Z)V

    .line 1580
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1581
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1582
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onUpdateMyAudioResult(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpdateMySipPhoneAudioResult(I)V
    .locals 4

    .line 2132
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onUpdateMySipPhoneAudioResult(I)V

    .line 2133
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iSipServiceListener:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 2134
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2135
    check-cast v3, Lus/zoom/zrc/model/AppEngine$ISipServiceEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$ISipServiceEvent;->onUpdateMySipPhoneAudioResult(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpdateMySipPhoneAudioStatus(Z)V
    .locals 4

    .line 2123
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onUpdateMySipPhoneAudioStatus(Z)V

    .line 2124
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iSipServiceListener:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 2125
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2126
    check-cast v3, Lus/zoom/zrc/model/AppEngine$ISipServiceEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$ISipServiceEvent;->onUpdateMySipPhoneAudioStatus(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpdateMyVideoLayoutResult(Z)V
    .locals 0

    return-void
.end method

.method public onUpdateMyVideoResult(Z)V
    .locals 0

    return-void
.end method

.method public onUpdateRoomInfo(Lus/zoom/zrcsdk/model/ZRCRoomInfo;)V
    .locals 3

    .line 883
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppModel;->setOtherDeviceLogin(Z)V

    .line 884
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lus/zoom/zrc/model/Model;->setAppState(I)V

    .line 885
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onUpdateRoomInfo(Lus/zoom/zrcsdk/model/ZRCRoomInfo;)V

    const-string p1, ""

    const-string v0, "onZRInitConnectionFinished"

    .line 886
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 887
    iget-object p1, p0, Lus/zoom/zrc/model/AppEngine;->iZRInitConnectionEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {p1}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object p1

    .line 888
    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 889
    check-cast v2, Lus/zoom/zrc/model/AppEngine$IZRInitConnectionEvent;

    invoke-interface {v2}, Lus/zoom/zrc/model/AppEngine$IZRInitConnectionEvent;->onZRInitConnectionFinished()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpdateRoomProfiles(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/settings/ZRCRoomProfileInfo;",
            ">;)V"
        }
    .end annotation

    .line 2648
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onUpdateRoomProfiles(Ljava/util/List;)V

    return-void
.end method

.method public onUpdateRoomResult(I)V
    .locals 4

    .line 856
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->createRoomListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 857
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 858
    check-cast v3, Lus/zoom/zrc/model/AppEngine$ICreateRoomListener;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$ICreateRoomListener;->onUpdateRoomResult(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 860
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onUpdateRoomResult(I)V

    return-void
.end method

.method public onUpdateSettingsDeviceInfo(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)V
    .locals 5

    .line 900
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getFeatureList()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isAecSettingStoredInZR()Z

    move-result v0

    if-nez v0, :cond_0

    .line 901
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 903
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->isIs_aec_disabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->setIs_aec_disabled(Z)V

    .line 906
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/AppModel;->setSettingsDeviceInfo(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)V

    .line 907
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onUpdateSettingsDeviceInfo(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)V

    .line 908
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRPtEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 909
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 910
    check-cast v4, Lus/zoom/zrc/model/AppEngine$IZRPtEvent;

    invoke-interface {v4, p1}, Lus/zoom/zrc/model/AppEngine$IZRPtEvent;->onUpdateSettingsDeviceInfo(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 912
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 913
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 914
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onUpdateSettingsDeviceInfo(Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onUpdateShowAudioParticipants(Z)V
    .locals 1

    .line 2598
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onUpdateShowAudioParticipants(Z)V

    return-void
.end method

.method public onUpdateSipService(Lus/zoom/zrcsdk/model/ZRCSipService;)V
    .locals 4

    .line 2095
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onUpdateSipService(Lus/zoom/zrcsdk/model/ZRCSipService;)V

    .line 2096
    iget-object p1, p0, Lus/zoom/zrc/model/AppEngine;->iSipServiceListener:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {p1}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object p1

    .line 2097
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 2098
    check-cast v2, Lus/zoom/zrc/model/AppEngine$ISipServiceEvent;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->getSipService()Lus/zoom/zrcsdk/model/ZRCSipService;

    move-result-object v3

    invoke-interface {v2, v3}, Lus/zoom/zrc/model/AppEngine$ISipServiceEvent;->onUpdateSipService(Lus/zoom/zrcsdk/model/ZRCSipService;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpdateSpeakerVolume(F)V
    .locals 1

    .line 2801
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onUpdateSpeakerVolume(F)V

    return-void
.end method

.method public onUpdateVideoPageStatus(Lus/zoom/zrcsdk/model/VideoPageStatus;)V
    .locals 4

    const-string v0, ""

    .line 1557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateVideoPageStatus videoThumbInfo0="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1558
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/AppModel;->setVideoPageStatus(Lus/zoom/zrcsdk/model/VideoPageStatus;)V

    .line 1559
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1560
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/VideoPageStatus;->getPageVideoType()I

    move-result v1

    if-nez v1, :cond_0

    .line 1561
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1562
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onUpdateGalleryVideoPageStatus(Lus/zoom/zrcsdk/model/VideoPageStatus;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1564
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/VideoPageStatus;->getPageVideoType()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 1565
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1567
    invoke-virtual {v1, p1}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->setPageStatus(Lus/zoom/zrcsdk/model/VideoPageStatus;)V

    .line 1568
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1, v1}, Lus/zoom/zrc/model/AppModel;->setVideoThumbInfo(Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)V

    .line 1569
    array-length p1, v0

    :goto_1
    if-ge v2, p1, :cond_1

    aget-object v3, v0, v2

    .line 1570
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v3, v1}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onUpdateVideoThumbInfo(Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onUpdateVideoThumbInfo(Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)V
    .locals 5

    .line 2217
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/AppModel;->setVideoThumbInfo(Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)V

    .line 2218
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppModel;->setVideoThumbInfoUpdate(Z)V

    .line 2219
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 2220
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 2221
    check-cast v4, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v4, p1}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onUpdateVideoThumbInfo(Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpdateVideoThumbInfo videoThumbInfo="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onUpdateVirtualAudioDeviceList(Ljava/lang/String;Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;",
            ">;I)V"
        }
    .end annotation

    .line 2643
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lus/zoom/zrc/model/Model;->onUpdateVirtualAudioDeviceList(Ljava/lang/String;Ljava/util/ArrayList;I)V

    return-void
.end method

.method public onUpdateVirtualBackgroundList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCVirtualBackground;",
            ">;)V"
        }
    .end annotation

    .line 2881
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onUpdateVirtualBackgroundList(Ljava/util/List;)V

    return-void
.end method

.method public onUpdateWBCameraInfo(Lus/zoom/zrcsdk/model/ZMDeviceInfo;)V
    .locals 1

    .line 2910
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onUpdateWBCameraInfo(Lus/zoom/zrcsdk/model/ZMDeviceInfo;)V

    return-void
.end method

.method public onUpdateWBCameraList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZMDeviceItem;",
            ">;)V"
        }
    .end annotation

    .line 2915
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onUpdateWBCameraList(Ljava/util/List;)V

    return-void
.end method

.method public onUpdateZRCSDeviceList(IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 2851
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lus/zoom/zrc/model/Model;->onUpdateControlSystemDevices(IILjava/util/List;)V

    return-void
.end method

.method public onUpdateZoomRoomCapability(Lus/zoom/zrcsdk/model/ZoomRoomCapability;)V
    .locals 1

    .line 2891
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onUpdateZoomRoomCapability(Lus/zoom/zrcsdk/model/ZoomRoomCapability;)V

    return-void
.end method

.method public onUpdateZoomRoomsVersion(Ljava/lang/String;)V
    .locals 1

    .line 895
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onUpdateZoomRoomsVersion(Ljava/lang/String;)V

    return-void
.end method

.method public onUpdatedOperationTimeStatusNotification(Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;)V
    .locals 4

    .line 2512
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRPtEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 2513
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2514
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRPtEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRPtEvent;->onUpdatedOperationTimeStatusNotification(Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2516
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onUpdatedOperationTimeStatusNotification(Lus/zoom/zrcsdk/model/ZRCOperationTimeStatus;)V

    return-void
.end method

.method public onUpdatedWebSettingsNotification(Lus/zoom/zrcsdk/model/ZRCWEBSettingsInfo;Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;)V
    .locals 4

    .line 1951
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getLoginInfo()Lus/zoom/zrcsdk/model/LoginInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "onUpdatedWebSettingsNotification loginInfo is null!"

    .line 1953
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1957
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCWEBSettingsInfo;->isDisableNextMeetingAlertUpdate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1958
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCWEBSettingsInfo;->isDisableNextMeetingAlert()Z

    move-result v2

    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setDisableNextMeetingAlert(Z)V

    .line 1959
    :cond_1
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCWEBSettingsInfo;->isDisableNextMeetingAlertInMeetingUpdate()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1960
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCWEBSettingsInfo;->isDisableNextMeetingAlertInMeeting()Z

    move-result v2

    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setDisableNextMeetingAlertInMeeting(Z)V

    .line 1961
    :cond_2
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCWEBSettingsInfo;->isDisableNextMeetingAlertOnControllerUpdate()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1962
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCWEBSettingsInfo;->isDisableNextMeetingAlertOnController()Z

    move-result v2

    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setDisableNextMeetingAlertOnController(Z)V

    .line 1963
    :cond_3
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCWEBSettingsInfo;->isDisableNextMeetingAlertOnTVUpdate()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1964
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCWEBSettingsInfo;->isDisableNextMeetingAlertOnTV()Z

    move-result v2

    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setDisableNextMeetingAlertOnTV(Z)V

    .line 1966
    :cond_4
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCWEBSettingsInfo;->isSpeakerVolumeControlLockedUpdate()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1967
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCWEBSettingsInfo;->isSpeakerVolumeControlLocked()Z

    move-result v2

    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setSpeakerVolumeControlLocked(Z)V

    .line 1968
    :cond_5
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCWEBSettingsInfo;->isPostMeetingFeedbackEnabledUpdate()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1969
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCWEBSettingsInfo;->isPostMeetingFeedbackEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setPostMeetingFeedbackEnabled(Z)V

    .line 1970
    :cond_6
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCWEBSettingsInfo;->isUltrasonicDisabledUpdate()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1971
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCWEBSettingsInfo;->isUltrasonicDisabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setUltrasonicDisabled(Z)V

    .line 1972
    :cond_7
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCWEBSettingsInfo;->isVoiceCmdEnabledUpdate()Z

    .line 1974
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCWEBSettingsInfo;->isForcePrivateMeetingUpdate()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1975
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCWEBSettingsInfo;->isForcePrivateMeeting()Z

    move-result v2

    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setForcePrivateMeeting(Z)V

    .line 1977
    :cond_8
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCWEBSettingsInfo;->isHideHostInfoForPrivateMeetingUpdate()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1978
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCWEBSettingsInfo;->isHideHostInfoForPrivateMeeting()Z

    move-result v2

    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setHideHostInfoForPrivateMeeting(Z)V

    .line 1980
    :cond_9
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCWEBSettingsInfo;->isAutoStartScheduleMeetingUpdate()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1981
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCWEBSettingsInfo;->isAutoStartScheduleMeeting()Z

    move-result v2

    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setAutoStartScheduleMeeting(Z)V

    .line 1983
    :cond_a
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCWEBSettingsInfo;->isAutoEndScheduleMeetingUpdate()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1984
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCWEBSettingsInfo;->isAutoEndScheduleMeeting()Z

    move-result v2

    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setAutoEndScheduleMeeting(Z)V

    .line 1987
    :cond_b
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCWEBSettingsInfo;->isSupportDialToThirdPartyMeetingUpdate()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1988
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCWEBSettingsInfo;->isSupportDialToThirdPartyMeeting()Z

    move-result v2

    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setSupportDialToThirdPartyMeeting(Z)V

    .line 1991
    :cond_c
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCWEBSettingsInfo;->isCallHistoryDisabledUpdate()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1992
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCWEBSettingsInfo;->isCallHistoryDisabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setCallHistoryDisabled(Z)V

    .line 1995
    :cond_d
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCWEBSettingsInfo;->isZrpReserveDisabledUpdate()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1996
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCWEBSettingsInfo;->isZrpReserveDisabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/LoginInfo;->setZrpReserveDisabled(Z)V

    .line 1999
    :cond_e
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCWEBSettingsInfo;->isHideContactListUpdate()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2000
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCWEBSettingsInfo;->isHideContactList()Z

    move-result p1

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/LoginInfo;->setHideContactList(Z)V

    .line 2003
    :cond_f
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isRoomNameUpdate()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->getRoomName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/LoginInfo;->setRoomName(Ljava/lang/String;)V

    .line 2004
    :cond_10
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isFirstNameUpdate()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->getFirstName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/LoginInfo;->setFirstName(Ljava/lang/String;)V

    .line 2005
    :cond_11
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isZoomPresenceTokenUpdate()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 2006
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->getZoomPresenceToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/LoginInfo;->setZoomPresenceToken(Ljava/lang/String;)V

    .line 2007
    :cond_12
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isRoomSupportPhoneUpdate()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 2008
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->getRoomSupportPhone()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/LoginInfo;->setRoomSupportPhone(Ljava/lang/String;)V

    .line 2009
    :cond_13
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isRoomSupportEmailUpdate()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 2010
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->getRoomSupportEmail()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/LoginInfo;->setRoomSupportEmail(Ljava/lang/String;)V

    .line 2011
    :cond_14
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isDefaultCallinCountryUpdate()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 2012
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->getDefaultCallinCountry()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/LoginInfo;->setDefaultCallinCountry(Ljava/lang/String;)V

    .line 2013
    :cond_15
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isStrPMIUpdate()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 2014
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getRoomInfo()Lus/zoom/zrcsdk/model/ZRCRoomInfo;

    move-result-object p1

    .line 2015
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->isNull()Z

    move-result v2

    if-nez v2, :cond_16

    .line 2016
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCRoomInfo;

    .line 2017
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->getStrPMI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lus/zoom/zrcsdk/model/ZRCRoomInfo;->setMeetingNumber(Ljava/lang/String;)V

    .line 2018
    invoke-virtual {p0, p1}, Lus/zoom/zrc/model/AppEngine;->onUpdateRoomInfo(Lus/zoom/zrcsdk/model/ZRCRoomInfo;)V

    .line 2021
    :cond_16
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isPasscodeUpdate()Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->getPasscode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/LoginInfo;->setPasscode(Ljava/lang/String;)V

    .line 2022
    :cond_17
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isCountryCodesUpdate()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 2023
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->getCountryCodes()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/LoginInfo;->setCalloutCountryCodes(Ljava/util/ArrayList;)V

    .line 2025
    :cond_18
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isCheckInStatusUpdate()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 2026
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isCheckInStatus()Z

    move-result p1

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/LoginInfo;->setCheckInStatus(Z)V

    .line 2027
    :cond_19
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isTimeForPriorCheckInUpdate()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 2028
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->getTimeForPriorCheckIn()I

    move-result p1

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/LoginInfo;->setTimeForPriorCheckIn(I)V

    .line 2029
    :cond_1a
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isTimeForNoCheckInReleaseUpdate()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 2030
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->getTimeForNoCheckInRelease()I

    move-result p1

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/LoginInfo;->setTimeForNoCheckInRelease(I)V

    .line 2031
    :cond_1b
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isCountForReleaseRecurringMeetingsUpdate()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 2032
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->getCountForReleaseRecurringMeetings()I

    move-result p1

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/LoginInfo;->setCountForReleaseRecurringMeetings(I)V

    .line 2034
    :cond_1c
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isCheckInEnableNotificationUpdate()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 2035
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isCheckInEnableNotification()Z

    move-result p1

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/LoginInfo;->setCheckInEnableNotification(Z)V

    .line 2037
    :cond_1d
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isCalendarTypeUpdate()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 2038
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->getCalendarType()I

    move-result p1

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/LoginInfo;->setCalendarType(I)V

    .line 2041
    :cond_1e
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isCalendarRefreshIntervalUpdate()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 2042
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->getCalendarRefreshInterval()I

    move-result p1

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/LoginInfo;->setCalendarRefreshInterval(I)V

    .line 2045
    :cond_1f
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isRoomLogicEmailUpdate()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 2046
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->getRoomLogicEmail()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/LoginInfo;->setRoomLogicEmail(Ljava/lang/String;)V

    .line 2049
    :cond_20
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isZrpBackgroundImgUrlUpdate()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 2050
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->getZrpBackgroundImgUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/LoginInfo;->setZrpBackgroundImgUrl(Ljava/lang/String;)V

    .line 2053
    :cond_21
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isZrSharedCustomHdmiTextUpdate()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 2054
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->getZrSharedCustomHdmiText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/LoginInfo;->setZrSharedCustomHdmiText(Ljava/lang/String;)V

    .line 2057
    :cond_22
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isOperationTimeStartUpdate()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 2058
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->getOperationTimeStart()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lus/zoom/zrcsdk/model/LoginInfo;->setOperationTimeStart(J)V

    .line 2061
    :cond_23
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isOperationTimeEndUpdate()Z

    move-result p1

    if-eqz p1, :cond_24

    .line 2062
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->getOperationTimeEnd()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lus/zoom/zrcsdk/model/LoginInfo;->setOperationTimeEnd(J)V

    .line 2065
    :cond_24
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isOperationTimeOptionsUpdate()Z

    move-result p1

    if-eqz p1, :cond_25

    .line 2066
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->getOperationTimeOptions()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lus/zoom/zrcsdk/model/LoginInfo;->setOperationTimeOptions(J)V

    .line 2069
    :cond_25
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isOperationTimeDaysUpdate()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 2070
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->getOperationTimeDays()I

    move-result p1

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/LoginInfo;->setOperationTimeDays(I)V

    .line 2073
    :cond_26
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isReleaseNotesRefreshIntervalUpdate()Z

    move-result p1

    if-eqz p1, :cond_27

    .line 2074
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->getReleaseNotesRefreshInterval()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lus/zoom/zrcsdk/model/LoginInfo;->setReleaseNotesRefreshInterval(J)V

    .line 2077
    :cond_27
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isReserveOtherRoomInLocationUpdate()Z

    move-result p1

    if-eqz p1, :cond_28

    .line 2078
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->getReserveOtherRoomInLocation()I

    move-result p1

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/LoginInfo;->setReserveOtherRoomInLocation(I)V

    .line 2081
    :cond_28
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isCalendarRefreshTokenExpiredUpdate()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 2082
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;->isCalendarRefreshTokenExpired()Z

    move-result p1

    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/LoginInfo;->setCalendarRefreshTokenExpired(Z)V

    .line 2085
    :cond_29
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/Model;->onUpdatedWebSettingsNotification(Lus/zoom/zrcsdk/model/LoginInfo;)V

    .line 2086
    iget-object p1, p0, Lus/zoom/zrc/model/AppEngine;->iWebPullCallBackListener:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {p1}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object p1

    .line 2087
    array-length p2, p1

    :goto_0
    if-ge v1, p2, :cond_2a

    aget-object v2, p1, v1

    .line 2088
    check-cast v2, Lus/zoom/zrc/model/AppEngine$IWebPullCallBackEvent;

    invoke-interface {v2, v0}, Lus/zoom/zrc/model/AppEngine$IWebPullCallBackEvent;->onUpdatedWebSettingsNotification(Lus/zoom/zrcsdk/model/LoginInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2a
    return-void
.end method

.method public onUpgradeDeviceROMNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2856
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/model/Model;->onUpgradeDeviceROMNotification(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUpgradeSipCallToMeetingResult(ILjava/lang/String;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V
    .locals 1

    .line 2151
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lus/zoom/zrc/model/Model;->onUpgradeSipCallToMeetingResult(ILjava/lang/String;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    return-void
.end method

.method public onUserChangedNotification(ILus/zoom/zrcsdk/model/ZRCParticipant;)V
    .locals 4

    .line 2228
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/model/Model;->onUserChangedNotification(ILus/zoom/zrcsdk/model/ZRCParticipant;)V

    .line 2230
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 2231
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2232
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;

    invoke-interface {v3, p1, p2}, Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;->onUserChangedNotification(ILus/zoom/zrcsdk/model/ZRCParticipant;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2235
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getPinUserManager()Lus/zoom/zrc/model/ZRCPinUserManager;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/Model;->getParticipantList()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lus/zoom/zrc/model/ZRCPinUserManager;->onUpdateParticipants(Ljava/util/List;)V

    return-void
.end method

.method public onUserRefreshZAKReturn(ILjava/lang/String;)V
    .locals 4

    .line 814
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iLoginEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 815
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 816
    check-cast v3, Lus/zoom/zrc/model/AppEngine$ILoginEvent;

    invoke-interface {v3, p1, p2}, Lus/zoom/zrc/model/AppEngine$ILoginEvent;->onUserRefreshZAKReturn(ILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 818
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/model/Model;->onUserRefreshZAKReturn(ILjava/lang/String;)V

    return-void
.end method

.method public onVerifyConnectionFinished(I)V
    .locals 4

    if-nez p1, :cond_0

    .line 2682
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppModel;->setConnectionVerified(Z)V

    .line 2684
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRPtEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 2685
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2686
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRPtEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IZRPtEvent;->onVerifyConnectionFinished(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2688
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onVerifyConnectionFinished(I)V

    return-void
.end method

.method public onVideoRequestUnmuteByhostNotification(I)V
    .locals 1

    .line 2251
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onHostRequestUnmuteVideoNotification(I)V

    return-void
.end method

.method public onWebLoginFinish(ILus/zoom/zrcsdk/model/LoginInfo;)V
    .locals 4

    if-nez p1, :cond_0

    .line 757
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lus/zoom/zrc/model/AppModel;->setLoginInfo(Lus/zoom/zrcsdk/model/LoginInfo;)V

    .line 758
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppModel;->setSettingsLocked(Z)V

    .line 760
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iLoginEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 761
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 762
    check-cast v3, Lus/zoom/zrc/model/AppEngine$ILoginEvent;

    invoke-interface {v3, p1, p2}, Lus/zoom/zrc/model/AppEngine$ILoginEvent;->onWebLoginFinish(ILus/zoom/zrcsdk/model/LoginInfo;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 765
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/model/Model;->onWebLoginFinish(ILus/zoom/zrcsdk/model/LoginInfo;)V

    return-void
.end method

.method public onWindowsPasswordChanged(I)V
    .locals 1

    .line 2796
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onWindowsPasswordChanged(I)V

    return-void
.end method

.method public onZMDeviceOperationResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 2920
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lus/zoom/zrc/model/Model;->onZMDeviceOperationResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onZRWPinStatusOfScreenNotification(Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;I)V
    .locals 1

    .line 2871
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/model/Model;->onZRWPinStatusOfScreenNotification(Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;I)V

    return-void
.end method

.method public onZRWUserChangeNotification(II)V
    .locals 1

    .line 2876
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/model/Model;->onZRWUserChangeNotification(II)V

    return-void
.end method

.method public onZoomCalendarServiceBatchListEventsResult(ILjava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;",
            ">;)V"
        }
    .end annotation

    .line 2826
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lus/zoom/zrc/model/Model;->onZoomCalendarServiceBatchListEventsResult(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onZoomCalendarServiceDeleteEventResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2836
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lus/zoom/zrc/model/Model;->onZoomCalendarServiceDeleteEventResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onZoomCalendarServiceListEventsResult(ILjava/lang/String;Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;)V
    .locals 1

    .line 2821
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lus/zoom/zrc/model/Model;->onZoomCalendarServiceListEventsResult(ILjava/lang/String;Lus/zoom/zrcsdk/model/ZRCRoomMeetingList;)V

    return-void
.end method

.method public onZoomCalendarServiceScheduleEventResult(ILjava/lang/String;Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 1

    .line 2831
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lus/zoom/zrc/model/Model;->onZoomCalendarServiceScheduleEventResult(ILjava/lang/String;Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    return-void
.end method

.method public onZoomPresenceLoginFailed(I)V
    .locals 4

    .line 805
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iLoginEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 806
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 807
    check-cast v3, Lus/zoom/zrc/model/AppEngine$ILoginEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$ILoginEvent;->onZoomPresenceLoginFailed(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 809
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onZoomPresenceLoginFailed(I)V

    return-void
.end method

.method public onZoomPresenceLoginWithGoogle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 796
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iLoginEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 797
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 798
    move-object v4, v3

    check-cast v4, Lus/zoom/zrc/model/AppEngine$ILoginEvent;

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Lus/zoom/zrc/model/AppEngine$ILoginEvent;->onZoomPresenceLoginWithGoogle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 800
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Lus/zoom/zrc/model/Model;->onZoomPresenceLoginWithGoogle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onZoomPresenceLoginWithZoom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 787
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iLoginEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 788
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 789
    check-cast v3, Lus/zoom/zrc/model/AppEngine$ILoginEvent;

    invoke-interface {v3, p1, p2, p3}, Lus/zoom/zrc/model/AppEngine$ILoginEvent;->onZoomPresenceLoginWithZoom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 791
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lus/zoom/zrc/model/Model;->onZoomPresenceLoginWithZoom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onZoomPresenceSignedOutNotification()V
    .locals 4

    .line 2661
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->onZoomPresenceSignedOutNotification()V

    .line 2663
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRPtEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 2664
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2665
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRPtEvent;

    invoke-interface {v3}, Lus/zoom/zrc/model/AppEngine$IZRPtEvent;->onZoomPresenceSignedOutNotification()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized rebuildContactImData()V
    .locals 9

    monitor-enter p0

    .line 1106
    :try_start_0
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->executors:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 1107
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/model/AppEngine;->executors:Ljava/util/concurrent/ExecutorService;

    .line 1109
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getZoomRoomAvailableContactList()Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1110
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getZrcContactIm()Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1111
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getContactAvailableList()Ljava/util/List;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1113
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1114
    new-instance v6, Ljava/util/HashMap;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getSeletedContactsHashMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1115
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->executors:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lus/zoom/zrc/model/AppEngine$1;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lus/zoom/zrc/model/AppEngine$1;-><init>(Lus/zoom/zrc/model/AppEngine;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/List;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1162
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeCameraControlListener(Lus/zoom/zrc/camera_control/view/ICameraControl$Callbacks;)V
    .locals 1

    .line 672
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->cameraControlListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->remove(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public removeCertItemVerifyFailedListener(Lus/zoom/zrc/model/AppEngine$ICertItemVerifyFailedListener;)V
    .locals 1

    .line 696
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->certItemVerifyFailedListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->remove(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public removeCreateRoomListener(Lus/zoom/zrc/model/AppEngine$ICreateRoomListener;)V
    .locals 1

    .line 680
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->createRoomListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->remove(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public removeFileDownloadListener(Lus/zoom/zrc/model/AppEngine$IFileDownloadEvent;)V
    .locals 1

    .line 656
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iFileDownloadEvents:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->remove(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public removeIPSTNCallOutEventListener(Lus/zoom/zrc/model/AppEngine$IPSTNCallOutEvent;)V
    .locals 1

    .line 624
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iPSTNCallOutEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->remove(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public removeLoginListener(Lus/zoom/zrc/model/AppEngine$ILoginEvent;)V
    .locals 1

    .line 562
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iLoginEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->remove(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public removeMicrophoneTestRecordingListener(Lus/zoom/zrc/model/AppEngine$IMicrophoneTestRecordingListener;)V
    .locals 1

    .line 704
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->microphoneTestRecordingListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->remove(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public removePresentationListener(Lus/zoom/zrc/model/AppEngine$IPresentationEvent;)V
    .locals 1

    .line 640
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iPresentationEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->remove(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public removeRooms(Ljava/util/List;Lus/zoom/zrcsdk/model/ZRCContact;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1771
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1772
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCContact;

    .line 1773
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCContact;->getScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCContact;->getScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1774
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeSendClientLogListener(Lus/zoom/zrc/model/AppEngine$ISendClientLogListener;)V
    .locals 1

    .line 688
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->sendClientLogListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->remove(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public removeSipServiceListener(Lus/zoom/zrc/model/AppEngine$ISipServiceEvent;)V
    .locals 1

    .line 537
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iSipServiceListener:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->remove(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public removeTreatedIncomingCallListener(Lus/zoom/zrc/model/AppEngine$IZRTreatedIncomingCallEvent;)V
    .locals 1

    .line 648
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iTreatedIncomingCallEvents:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->remove(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public removeUltrasoundWhiteListListener(Lus/zoom/zrc/model/AppEngine$IUltrasoundWhiteListListener;)V
    .locals 1

    .line 664
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iUltrasoundWhiteListListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->remove(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public removeWebEventListener(Lus/zoom/zrc/model/AppEngine$IWebEvent;)V
    .locals 1

    .line 632
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iWebEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->remove(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public removeWebPullCallBackListener(Lus/zoom/zrc/model/AppEngine$IWebPullCallBackEvent;)V
    .locals 1

    .line 553
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iWebPullCallBackListener:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->remove(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public removeWebinarListener(Lus/zoom/zrc/model/AppEngine$IWebinarRoleChangedEvent;)V
    .locals 1

    .line 545
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iWebinarEventListener:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->remove(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public removeZRConnectionEventListener(Lus/zoom/zrc/model/AppEngine$IZRConnectionEvent;)V
    .locals 1

    .line 571
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRConnectionEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->remove(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public removeZRIMEventListener(Lus/zoom/zrc/model/AppEngine$IZRIMEvent;)V
    .locals 1

    .line 614
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRIMEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->remove(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public removeZRInitConnectionEventListener(Lus/zoom/zrc/model/AppEngine$IZRInitConnectionEvent;)V
    .locals 1

    .line 581
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRInitConnectionEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->remove(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public removeZRMeetingEventListener(Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;)V
    .locals 1

    .line 598
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->remove(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public removeZRMeetingStatusChangeEventListener(Lus/zoom/zrc/model/AppEngine$IZRMeetingStatusEvent;)V
    .locals 1

    .line 590
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRMeetingStatusChangeEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->remove(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public removeZRPtEventListener(Lus/zoom/zrc/model/AppEngine$IZRPtEvent;)V
    .locals 1

    .line 606
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iZRPtEventListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->remove(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public webinarRoleChanged(I)V
    .locals 4

    .line 1850
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->onWebinarRoleChanged(I)V

    .line 1851
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine;->iWebinarEventListener:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1852
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1853
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IWebinarRoleChangedEvent;

    invoke-interface {v3, p1}, Lus/zoom/zrc/model/AppEngine$IWebinarRoleChangedEvent;->webinarRoleChanged(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
