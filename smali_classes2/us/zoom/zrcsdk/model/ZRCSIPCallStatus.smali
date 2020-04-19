.class public Lus/zoom/zrcsdk/model/ZRCSIPCallStatus;
.super Ljava/lang/Object;
.source "ZRCSIPCallStatus.java"


# static fields
.field public static final ZRCSIPCallStatusAccepted:I = 0x1a

.field public static final ZRCSIPCallStatusBothHold:I = 0x1f

.field public static final ZRCSIPCallStatusBusy:I = 0x16

.field public static final ZRCSIPCallStatusCallOutFailed:I = 0x5

.field public static final ZRCSIPCallStatusDeclined:I = 0x17

.field public static final ZRCSIPCallStatusHold:I = 0x1b

.field public static final ZRCSIPCallStatusInCall:I = 0x1c

.field public static final ZRCSIPCallStatusIncoming:I = 0xf

.field public static final ZRCSIPCallStatusInit:I = 0x0

.field public static final ZRCSIPCallStatusNotAvailable:I = 0x18

.field public static final ZRCSIPCallStatusNotFound:I = 0x15

.field public static final ZRCSIPCallStatusRemoteHold:I = 0x1e

.field public static final ZRCSIPCallStatusRinging:I = 0x14

.field public static final ZRCSIPCallStatusSessionInProgress:I = 0x21

.field public static final ZRCSIPCallStatusStayOnPhone:I = 0x22

.field public static final ZRCSIPCallStatusTerminated:I = 0x1d

.field public static final ZRCSIPCallStatusTimeout:I = 0x19


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canDTMF(I)Z
    .locals 1

    const/16 v0, 0x1c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x21

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static canMute(I)Z
    .locals 1

    const/16 v0, 0x1c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isActive(I)Z
    .locals 1

    if-eqz p0, :cond_1

    const/16 v0, 0x14

    if-eq p0, v0, :cond_1

    const/16 v0, 0x21

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isFailed(I)Z
    .locals 1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/16 v0, 0x15

    if-eq p0, v0, :cond_1

    const/16 v0, 0x16

    if-eq p0, v0, :cond_1

    const/16 v0, 0x17

    if-eq p0, v0, :cond_1

    const/16 v0, 0x18

    if-eq p0, v0, :cond_1

    const/16 v0, 0x19

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isInCall(I)Z
    .locals 1

    if-eqz p0, :cond_0

    const/16 v0, 0x14

    if-eq p0, v0, :cond_0

    const/16 v0, 0x21

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isOnHold(I)Z
    .locals 1

    const/16 v0, 0x1b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1f

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static shouldAccept(I)Z
    .locals 1

    if-eqz p0, :cond_1

    const/16 v0, 0x14

    if-eq p0, v0, :cond_1

    const/16 v0, 0x21

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const-string p0, "Unknown"

    return-object p0

    :pswitch_0
    const-string p0, "StayOnPhone"

    return-object p0

    :pswitch_1
    const-string p0, "SessionInProgress"

    return-object p0

    :pswitch_2
    const-string p0, "BothHold"

    return-object p0

    :pswitch_3
    const-string p0, "RemoteHold"

    return-object p0

    :pswitch_4
    const-string p0, "Terminated"

    return-object p0

    :pswitch_5
    const-string p0, "InCall"

    return-object p0

    :pswitch_6
    const-string p0, "Hold"

    return-object p0

    :pswitch_7
    const-string p0, "Accepted"

    return-object p0

    :pswitch_8
    const-string p0, "Timeout"

    return-object p0

    :pswitch_9
    const-string p0, "NotAvailable"

    return-object p0

    :pswitch_a
    const-string p0, "Declined"

    return-object p0

    :pswitch_b
    const-string p0, "Busy"

    return-object p0

    :pswitch_c
    const-string p0, "NotFound"

    return-object p0

    :pswitch_d
    const-string p0, "Ringing"

    return-object p0

    :cond_0
    const-string p0, "Incoming"

    return-object p0

    :cond_1
    const-string p0, "CallOutFailed"

    return-object p0

    :cond_2
    const-string p0, "Init"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_d
        :pswitch_c
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
