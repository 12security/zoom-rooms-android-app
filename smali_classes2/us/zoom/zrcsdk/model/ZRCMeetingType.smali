.class public Lus/zoom/zrcsdk/model/ZRCMeetingType;
.super Ljava/lang/Object;
.source "ZRCMeetingType.java"


# static fields
.field public static final ZRCMeetingTypeMeeting:I = 0x0

.field public static final ZRCMeetingTypePstnCallout:I = 0x2

.field public static final ZRCMeetingTypeSharing:I = 0x1

.field public static final ZRCMeetingTypeUnknown:I = -0x1


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
    const-string p0, "MeetingTypePstnCallout"

    return-object p0

    :pswitch_1
    const-string p0, "MeetingTypeSharing"

    return-object p0

    :pswitch_2
    const-string p0, "MeetingTypeMeeting"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
