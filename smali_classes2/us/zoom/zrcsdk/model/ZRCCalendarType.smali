.class public Lus/zoom/zrcsdk/model/ZRCCalendarType;
.super Ljava/lang/Object;
.source "ZRCCalendarType.java"


# static fields
.field public static final ZRCCalendarTypeExchangeOnPremise:I = 0x3

.field public static final ZRCCalendarTypeExchangeOnline:I = 0x2

.field public static final ZRCCalendarTypeGoogle:I = 0x1

.field public static final ZRCCalendarTypeNone:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "Unknown"

    return-object p0

    :pswitch_0
    const-string p0, "ExchangeOnPremise"

    return-object p0

    :pswitch_1
    const-string p0, "ExchangeOnline"

    return-object p0

    :pswitch_2
    const-string p0, "Google"

    return-object p0

    :pswitch_3
    const-string p0, "Noe"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
