.class public Lus/zoom/zrcsdk/model/ZRCWorkMode;
.super Ljava/lang/Object;
.source "ZRCWorkMode.java"


# static fields
.field public static final ZRCWorkMode_Controller:I = 0x1

.field public static final ZRCWorkMode_Panel:I = 0x2

.field public static final ZRCWorkMode_Unchoose:I


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
    const-string p0, "Panel"

    return-object p0

    :pswitch_1
    const-string p0, "Controller"

    return-object p0

    :pswitch_2
    const-string p0, "Unchoose"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
