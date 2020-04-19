.class Lus/zoom/zrcsdk/CallBackUI$83;
.super Ljava/lang/Object;
.source "CallBackUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrcsdk/CallBackUI;->pullLoginInfoFromWeb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;ZZZZZZZZZLjava/util/ArrayList;IIIZIIIZIIZLjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;JJJIJZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrcsdk/CallBackUI;

.field final synthetic val$autoEndScheduleMeeting:Z

.field final synthetic val$autoStartScheduleMeeting:Z

.field final synthetic val$billingType:I

.field final synthetic val$calendarRefreshInterval:I

.field final synthetic val$calendarRefreshTokenExpired:Z

.field final synthetic val$calendarType:I

.field final synthetic val$callHistoryDisabled:Z

.field final synthetic val$calloutCountryCodes:Ljava/util/ArrayList;

.field final synthetic val$checkInStatus:Z

.field final synthetic val$countForReleaseRecurringMeetings:I

.field final synthetic val$crcCalloutOnlyEnabled:Z

.field final synthetic val$defaultCallinCountry:Ljava/lang/String;

.field final synthetic val$disableNextMeetingAlert:Z

.field final synthetic val$disableNextMeetingAlertInMeeting:Z

.field final synthetic val$disableNextMeetingAlertOnController:Z

.field final synthetic val$disableNextMeetingAlertOnTV:Z

.field final synthetic val$firstName:Ljava/lang/String;

.field final synthetic val$forcePrivateMeeting:Z

.field final synthetic val$freeTrialDays:I

.field final synthetic val$h323Enabled:Z

.field final synthetic val$hideContactList:Z

.field final synthetic val$hideHostInfoForPrivateMeeting:Z

.field final synthetic val$iOSSharingDisabled:Z

.field final synthetic val$isCheckInEnableNotification:Z

.field final synthetic val$isStandaloneDigitalSignage:Z

.field final synthetic val$operationTimeDays:I

.field final synthetic val$operationTimeEnd:J

.field final synthetic val$operationTimeOptions:J

.field final synthetic val$operationTimeStart:J

.field final synthetic val$passcode:Ljava/lang/String;

.field final synthetic val$postMeetingFeedbackEnabled:Z

.field final synthetic val$publicRoomEnabled:Z

.field final synthetic val$releaseNotesRefreshInterval:J

.field final synthetic val$reserveOtherRoomInLocation:I

.field final synthetic val$roomLogicEmail:Ljava/lang/String;

.field final synthetic val$roomSupportEmail:Ljava/lang/String;

.field final synthetic val$roomSupportPhone:Ljava/lang/String;

.field final synthetic val$speakerVolumeControlLocked:Z

.field final synthetic val$supportDialToThirdPartyMeeting:Z

.field final synthetic val$timeForNoCheckInRelease:I

.field final synthetic val$timeForPriorCheckIn:I

.field final synthetic val$ultrasonicDisabled:Z

.field final synthetic val$workEmailSubType:I

.field final synthetic val$zrSharedCustomHdmiTextImp:Ljava/lang/String;

.field final synthetic val$zrpBackgroundImgUrl:Ljava/lang/String;

.field final synthetic val$zrpReserveDisabled:Z


# direct methods
.method constructor <init>(Lus/zoom/zrcsdk/CallBackUI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;ZZZZZZZZZLjava/util/ArrayList;IIIZIIIZIIZLjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;JJJIJZIZ)V
    .locals 3

    move-object v0, p0

    move-object v1, p1

    .line 1661
    iput-object v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->this$0:Lus/zoom/zrcsdk/CallBackUI;

    move-object v1, p2

    iput-object v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$firstName:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$roomSupportEmail:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$roomSupportPhone:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$passcode:Ljava/lang/String;

    move v1, p6

    iput-boolean v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$iOSSharingDisabled:Z

    move v1, p7

    iput-boolean v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$disableNextMeetingAlert:Z

    move v1, p8

    iput-boolean v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$disableNextMeetingAlertInMeeting:Z

    move v1, p9

    iput-boolean v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$disableNextMeetingAlertOnController:Z

    move v1, p10

    iput-boolean v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$disableNextMeetingAlertOnTV:Z

    move-object v1, p11

    iput-object v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$defaultCallinCountry:Ljava/lang/String;

    move v1, p12

    iput-boolean v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$speakerVolumeControlLocked:Z

    move/from16 v1, p13

    iput-boolean v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$postMeetingFeedbackEnabled:Z

    move/from16 v1, p14

    iput-boolean v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$ultrasonicDisabled:Z

    move/from16 v1, p15

    iput-boolean v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$publicRoomEnabled:Z

    move/from16 v1, p16

    iput-boolean v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$forcePrivateMeeting:Z

    move/from16 v1, p17

    iput-boolean v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$hideHostInfoForPrivateMeeting:Z

    move/from16 v1, p18

    iput-boolean v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$autoStartScheduleMeeting:Z

    move/from16 v1, p19

    iput-boolean v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$autoEndScheduleMeeting:Z

    move/from16 v1, p20

    iput-boolean v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$isStandaloneDigitalSignage:Z

    move-object/from16 v1, p21

    iput-object v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$calloutCountryCodes:Ljava/util/ArrayList;

    move/from16 v1, p22

    iput v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$workEmailSubType:I

    move/from16 v1, p23

    iput v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$billingType:I

    move/from16 v1, p24

    iput v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$freeTrialDays:I

    move/from16 v1, p25

    iput-boolean v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$checkInStatus:Z

    move/from16 v1, p26

    iput v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$timeForPriorCheckIn:I

    move/from16 v1, p27

    iput v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$timeForNoCheckInRelease:I

    move/from16 v1, p28

    iput v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$countForReleaseRecurringMeetings:I

    move/from16 v1, p29

    iput-boolean v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$isCheckInEnableNotification:Z

    move/from16 v1, p30

    iput v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$calendarType:I

    move/from16 v1, p31

    iput v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$calendarRefreshInterval:I

    move/from16 v1, p32

    iput-boolean v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$supportDialToThirdPartyMeeting:Z

    move-object/from16 v1, p33

    iput-object v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$roomLogicEmail:Ljava/lang/String;

    move-object/from16 v1, p34

    iput-object v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$zrpBackgroundImgUrl:Ljava/lang/String;

    move/from16 v1, p35

    iput-boolean v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$callHistoryDisabled:Z

    move/from16 v1, p36

    iput-boolean v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$h323Enabled:Z

    move/from16 v1, p37

    iput-boolean v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$zrpReserveDisabled:Z

    move/from16 v1, p38

    iput-boolean v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$hideContactList:Z

    move-object/from16 v1, p39

    iput-object v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$zrSharedCustomHdmiTextImp:Ljava/lang/String;

    move-wide/from16 v1, p40

    iput-wide v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$operationTimeStart:J

    move-wide/from16 v1, p42

    iput-wide v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$operationTimeEnd:J

    move-wide/from16 v1, p44

    iput-wide v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$operationTimeOptions:J

    move/from16 v1, p46

    iput v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$operationTimeDays:I

    move-wide/from16 v1, p47

    iput-wide v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$releaseNotesRefreshInterval:J

    move/from16 v1, p49

    iput-boolean v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$crcCalloutOnlyEnabled:Z

    move/from16 v1, p50

    iput v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$reserveOtherRoomInLocation:I

    move/from16 v1, p51

    iput-boolean v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$calendarRefreshTokenExpired:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 55

    move-object/from16 v0, p0

    .line 1664
    iget-object v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->this$0:Lus/zoom/zrcsdk/CallBackUI;

    invoke-static {v1}, Lus/zoom/zrcsdk/CallBackUI;->access$800(Lus/zoom/zrcsdk/CallBackUI;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lus/zoom/zrcsdk/IWebPullCallBackListener;

    .line 1665
    iget-object v4, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$firstName:Ljava/lang/String;

    iget-object v5, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$roomSupportEmail:Ljava/lang/String;

    iget-object v6, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$roomSupportPhone:Ljava/lang/String;

    iget-object v7, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$passcode:Ljava/lang/String;

    iget-boolean v8, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$iOSSharingDisabled:Z

    iget-boolean v9, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$disableNextMeetingAlert:Z

    iget-boolean v10, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$disableNextMeetingAlertInMeeting:Z

    iget-boolean v11, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$disableNextMeetingAlertOnController:Z

    iget-boolean v12, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$disableNextMeetingAlertOnTV:Z

    iget-object v13, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$defaultCallinCountry:Ljava/lang/String;

    iget-boolean v14, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$speakerVolumeControlLocked:Z

    iget-boolean v15, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$postMeetingFeedbackEnabled:Z

    iget-boolean v2, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$ultrasonicDisabled:Z

    move/from16 v16, v2

    iget-boolean v2, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$publicRoomEnabled:Z

    move/from16 v17, v2

    iget-boolean v2, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$forcePrivateMeeting:Z

    move/from16 v18, v2

    iget-boolean v2, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$hideHostInfoForPrivateMeeting:Z

    move/from16 v19, v2

    iget-boolean v2, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$autoStartScheduleMeeting:Z

    move/from16 v20, v2

    iget-boolean v2, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$autoEndScheduleMeeting:Z

    move/from16 v21, v2

    iget-boolean v2, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$isStandaloneDigitalSignage:Z

    move/from16 v22, v2

    iget-object v2, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$calloutCountryCodes:Ljava/util/ArrayList;

    move-object/from16 v23, v2

    iget v2, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$workEmailSubType:I

    move/from16 v24, v2

    iget v2, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$billingType:I

    move/from16 v25, v2

    iget v2, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$freeTrialDays:I

    move/from16 v26, v2

    iget-boolean v2, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$checkInStatus:Z

    move/from16 v27, v2

    iget v2, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$timeForPriorCheckIn:I

    move/from16 v28, v2

    iget v2, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$timeForNoCheckInRelease:I

    move/from16 v29, v2

    iget v2, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$countForReleaseRecurringMeetings:I

    move/from16 v30, v2

    iget-boolean v2, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$isCheckInEnableNotification:Z

    move/from16 v31, v2

    iget v2, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$calendarType:I

    move/from16 v32, v2

    iget v2, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$calendarRefreshInterval:I

    move/from16 v33, v2

    iget-boolean v2, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$supportDialToThirdPartyMeeting:Z

    move/from16 v34, v2

    iget-object v2, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$roomLogicEmail:Ljava/lang/String;

    move-object/from16 v35, v2

    iget-object v2, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$zrpBackgroundImgUrl:Ljava/lang/String;

    move-object/from16 v36, v2

    iget-boolean v2, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$callHistoryDisabled:Z

    move/from16 v37, v2

    iget-boolean v2, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$h323Enabled:Z

    move/from16 v38, v2

    iget-boolean v2, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$zrpReserveDisabled:Z

    move/from16 v39, v2

    iget-boolean v2, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$hideContactList:Z

    move/from16 v40, v2

    iget-object v2, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$zrSharedCustomHdmiTextImp:Ljava/lang/String;

    move-object/from16 v41, v2

    move-object/from16 v54, v1

    iget-wide v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$operationTimeStart:J

    move-wide/from16 v42, v1

    iget-wide v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$operationTimeEnd:J

    move-wide/from16 v44, v1

    iget-wide v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$operationTimeOptions:J

    move-wide/from16 v46, v1

    iget v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$operationTimeDays:I

    move/from16 v48, v1

    iget-wide v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$releaseNotesRefreshInterval:J

    move-wide/from16 v49, v1

    iget-boolean v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$crcCalloutOnlyEnabled:Z

    move/from16 v51, v1

    iget v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$reserveOtherRoomInLocation:I

    move/from16 v52, v1

    iget-boolean v1, v0, Lus/zoom/zrcsdk/CallBackUI$83;->val$calendarRefreshTokenExpired:Z

    move/from16 v53, v1

    invoke-interface/range {v3 .. v53}, Lus/zoom/zrcsdk/IWebPullCallBackListener;->LoginInfoPullBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;ZZZZZZZZZLjava/util/ArrayList;IIIZIIIZIIZLjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;JJJIJZIZ)V

    move-object/from16 v1, v54

    goto/16 :goto_0

    :cond_0
    return-void
.end method
