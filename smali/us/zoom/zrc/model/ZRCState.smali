.class public Lus/zoom/zrc/model/ZRCState;
.super Ljava/lang/Object;
.source "ZRCState.java"


# static fields
.field public static final ZRCStateAuthenticated:I = 0x3

.field public static final ZRCStateConnectedToZoomPresence:I = 0x5

.field public static final ZRCStateConnectingToMeeting:I = 0x6

.field public static final ZRCStateConnectingToZoomPresence:I = 0x4

.field public static final ZRCStateInMeeting:I = 0x7

.field public static final ZRCStateSelectRoomList:I = 0x8

.field public static final ZRCStateSelectingWorkMode:I = 0x9

.field public static final ZRCStateStart:I = 0x0

.field public static final ZRCStateUnauthenticated:I = 0x2

.field public static final ZRCStateWaitingAutoLogin:I = 0x1

.field public static final ZRPStateConnectedToNotificationServer:I = 0xb

.field public static final ZRPStateConnectingToNotificationServer:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "Unknown"

    return-object p0

    :pswitch_0
    const-string p0, "StateConnectedToNotificationServer"

    return-object p0

    :pswitch_1
    const-string p0, "StateConnectingToNotificationServer"

    return-object p0

    :pswitch_2
    const-string p0, "StateSelectingWorkMode"

    return-object p0

    :pswitch_3
    const-string p0, "StateSelectRoomList"

    return-object p0

    :pswitch_4
    const-string p0, "StateInMeeting"

    return-object p0

    :pswitch_5
    const-string p0, "StateConnectingToMeeting"

    return-object p0

    :pswitch_6
    const-string p0, "StateConnectedToZoomPresence"

    return-object p0

    :pswitch_7
    const-string p0, "StateConnectingToZoomPresence"

    return-object p0

    :pswitch_8
    const-string p0, "StateAuthenticated"

    return-object p0

    :pswitch_9
    const-string p0, "StateUnauthenticated"

    return-object p0

    :pswitch_a
    const-string p0, "StateWaitingAutoLogin"

    return-object p0

    :pswitch_b
    const-string p0, "StateStart"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
