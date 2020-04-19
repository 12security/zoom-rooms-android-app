.class Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;
.super Ljava/lang/Object;
.source "DataBinderMapperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrcbox/DataBinderMapperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerBrLookup"
.end annotation


# static fields
.field static final sKeys:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x63

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    .line 79
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "_all"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "roomParentLocationInfo"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "appState"

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "disableNextMeetingAlertOnController"

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "hideHostInfoForPrivateMeeting"

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "speakerVolumeControlLocked"

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "meetingStatus"

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "displayTopBanner"

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "allShareParticipants"

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "hideContactList"

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "standaloneDigitalSignage"

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "calendarRefreshInterval"

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "screenResolutionStatus"

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "controlSystemDevices"

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "virtualAudioDeviceList"

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "autoStartScheduleMeeting"

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "meetingList"

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "featureList"

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "canRaiseHandForAttendee"

    const/16 v2, 0x12

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 98
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "amIGuest"

    const/16 v2, 0x13

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "zoomRoomCapability"

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "redPointFlag"

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "amICoHost"

    const/16 v2, 0x16

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 102
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "zRWSharingStatus"

    const/16 v2, 0x17

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 103
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "localViewStatus"

    const/16 v2, 0x18

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "audioStatus"

    const/16 v2, 0x19

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "checkInOption"

    const/16 v2, 0x1a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "showMeetingChatListOnZR"

    const/16 v2, 0x1b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "whiteboardCameraList"

    const/16 v2, 0x1c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "allShareSources"

    const/16 v2, 0x1d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "settingsDeviceInfo"

    const/16 v2, 0x1e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "speakerVolume"

    const/16 v2, 0x1f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "participantList"

    const/16 v2, 0x20

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "publicRoomEnabled"

    const/16 v2, 0x21

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 113
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "whiteboardCameraInfo"

    const/16 v2, 0x22

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 114
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "roomSystemSessionStatus"

    const/16 v2, 0x23

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "h323Enabled"

    const/16 v2, 0x24

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "callOutCountryCode"

    const/16 v2, 0x25

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "calendarType"

    const/16 v2, 0x26

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 118
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "zrpReserveDisabled"

    const/16 v2, 0x27

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "spotlightStatus"

    const/16 v2, 0x28

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "closedCaptionInfo"

    const/16 v2, 0x29

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "callHistoryDisabled"

    const/16 v2, 0x2a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 122
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "videoStatus"

    const/16 v2, 0x2b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 123
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "zrpBackgroundImgUrl"

    const/16 v2, 0x2c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 124
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "sipService"

    const/16 v2, 0x2d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 125
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "microphoneTestRecordingStatus"

    const/16 v2, 0x2e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 126
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "defaultCallInCountry"

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 127
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "allRoomListItemDetails"

    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "amIHost"

    const/16 v2, 0x31

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 129
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "videoLayoutStatus"

    const/16 v2, 0x32

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 130
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "listMeetingResult"

    const/16 v2, 0x33

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 131
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "operationTimeStatus"

    const/16 v2, 0x34

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "roomInfo"

    const/16 v2, 0x35

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "canAttendeesUnmuteThemselves"

    const/16 v2, 0x36

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 134
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "roomScreenInfo"

    const/16 v2, 0x37

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "sipCallInfos"

    const/16 v2, 0x38

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 136
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "currentSelectedMicrophoneMuted"

    const/16 v2, 0x39

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 137
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "sipMuted"

    const/16 v2, 0x3a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 138
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "showMeetingChatNotificationOnZR"

    const/16 v2, 0x3b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 139
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "showAudioParticipant"

    const/16 v2, 0x3c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 140
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "airPlayBlackMagicStatus"

    const/16 v2, 0x3d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 141
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "crcCalloutOnlyEnabled"

    const/16 v2, 0x3e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 142
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "zrwPinStatusOfScreen"

    const/16 v2, 0x3f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 143
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "disableNextMeetingAlert"

    const/16 v2, 0x40

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 144
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "zoomRoomVersion"

    const/16 v2, 0x41

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 145
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "thirdPartyMeetingEnabled"

    const/16 v2, 0x42

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 146
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "reserveOtherRoomInLocation"

    const/16 v2, 0x43

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 147
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "disableNextMeetingAlertInMeeting"

    const/16 v2, 0x44

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 148
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "roomParentLocationID"

    const/16 v2, 0x45

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 149
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "roomProfiles"

    const/16 v2, 0x46

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 150
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "cameraSharingStatus"

    const/16 v2, 0x47

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 151
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "forcePrivateMeeting"

    const/16 v2, 0x48

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 152
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "releaseNotesRefreshInterval"

    const/16 v2, 0x49

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 153
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "disableNextMeetingAlertOnTV"

    const/16 v2, 0x4a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 154
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "calendarRefreshTokenExpired"

    const/16 v2, 0x4b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 155
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "iOSSharingDisabled"

    const/16 v2, 0x4c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 156
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "userProfile"

    const/16 v2, 0x4d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 157
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "totalOfParticipants"

    const/16 v2, 0x4e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 158
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "callOutNumberInCalling"

    const/16 v2, 0x4f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 159
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "customHDMILabel"

    const/16 v2, 0x50

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 160
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "standaloneZRP"

    const/16 v2, 0x51

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 161
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "selectedWhiteboardCamera"

    const/16 v2, 0x52

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 162
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "zrwAllShareParticipants"

    const/16 v2, 0x53

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 163
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "meetingInfo"

    const/16 v2, 0x54

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 164
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "audioCheckupInfo"

    const/16 v2, 0x55

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 165
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "selectedVirtualBackground"

    const/16 v2, 0x56

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 166
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "virtualBackgrounds"

    const/16 v2, 0x57

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 167
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "sharingStatus"

    const/16 v2, 0x58

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 168
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "genericSettings"

    const/16 v2, 0x59

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 169
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "accountLocationTree"

    const/16 v2, 0x5a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 170
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "settingsLocked"

    const/16 v2, 0x5b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 171
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "meetingShareSettings"

    const/16 v2, 0x5c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 172
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "zrPinStatusOfScreens"

    const/16 v2, 0x5d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 173
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "calendarInfo"

    const/16 v2, 0x5e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 174
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "meetingAudioTroubleShootingStatus"

    const/16 v2, 0x5f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 175
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "zoomRoomPassCode"

    const/16 v2, 0x60

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 176
    sget-object v0, Lus/zoom/zrcbox/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "ultrasoundPlayerCandidateDeviceId"

    const/16 v2, 0x61

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
