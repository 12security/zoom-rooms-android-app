.class public Lus/zoom/zrcsdk/model/ZRCPSTNCallOutStatus;
.super Ljava/lang/Object;
.source "ZRCPSTNCallOutStatus.java"


# static fields
.field public static final ZRCCallOutStatusAccepted:I = 0x3

.field public static final ZRCCallOutStatusBlockHighRate:I = 0xf

.field public static final ZRCCallOutStatusBlockNoHost:I = 0xe

.field public static final ZRCCallOutStatusBlockTooFrequent:I = 0x10

.field public static final ZRCCallOutStatusBusy:I = 0x4

.field public static final ZRCCallOutStatusCalling:I = 0x1

.field public static final ZRCCallOutStatusInit:I = -0x1

.field public static final ZRCCallOutStatusJoinSuc:I = 0x8

.field public static final ZRCCallOutStatusNoAnswer:I = 0xd

.field public static final ZRCCallOutStatusNotAvailable:I = 0x5

.field public static final ZRCCallOutStatusOtherFail:I = 0x7

.field public static final ZRCCallOutStatusRinging:I = 0x2

.field public static final ZRCCallOutStatusTimeOut:I = 0x9

.field public static final ZRCCallOutStatusUnknown:I = 0x0

.field public static final ZRCCallOutStatusUserHangUp:I = 0x6

.field public static final ZRCCallOutStatusZoomCallCanceled:I = 0xb

.field public static final ZRCCallOutStatusZoomCancelCallFail:I = 0xc

.field public static final ZRCCallOutStatusZoomStartCancelCall:I = 0xa


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

    :pswitch_0
    const-string p0, "CallOutStatusUnknown"

    return-object p0

    :pswitch_1
    const-string p0, "CallOutStatusBlockTooFrequent"

    return-object p0

    :pswitch_2
    const-string p0, "CallOutStatusBlockHighRate"

    return-object p0

    :pswitch_3
    const-string p0, "CallOutStatusBlockNoHost"

    return-object p0

    :pswitch_4
    const-string p0, "CallOutStatusNoAnswer"

    return-object p0

    :pswitch_5
    const-string p0, "CallOutStatusZoomCallCanceled"

    return-object p0

    :pswitch_6
    const-string p0, "CallOutStatusStartCancelCall"

    return-object p0

    :pswitch_7
    const-string p0, "CallOutStatusTimeOut"

    return-object p0

    :pswitch_8
    const-string p0, "CallOutStatusJoinSuc"

    return-object p0

    :pswitch_9
    const-string p0, "CallOutStatusOtherFail"

    return-object p0

    :pswitch_a
    const-string p0, "CallOutStatusUserHangUp"

    return-object p0

    :pswitch_b
    const-string p0, "CallOutStatusNotAvailable"

    return-object p0

    :pswitch_c
    const-string p0, "CallOutStatusBusy"

    return-object p0

    :pswitch_d
    const-string p0, "CallOutStatusAccepted"

    return-object p0

    :pswitch_e
    const-string p0, "CallOutStatusRinging"

    return-object p0

    :pswitch_f
    const-string p0, "CallOutStatusCalling"

    return-object p0

    :pswitch_10
    const-string p0, "CallOutStatusInit"

    return-object p0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
