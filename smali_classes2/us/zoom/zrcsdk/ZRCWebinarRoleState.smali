.class public Lus/zoom/zrcsdk/ZRCWebinarRoleState;
.super Ljava/lang/Object;
.source "ZRCWebinarRoleState.java"


# static fields
.field public static final ZRCWebinarRoleChangedDepromote:I = 0x2

.field public static final ZRCWebinarRoleChangedNone:I = 0x0

.field public static final ZRCWebinarRoleChangedPromote:I = 0x1


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

    const-string p0, "None"

    return-object p0

    :pswitch_0
    const-string p0, "Depromote"

    return-object p0

    :pswitch_1
    const-string p0, "Promote"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
