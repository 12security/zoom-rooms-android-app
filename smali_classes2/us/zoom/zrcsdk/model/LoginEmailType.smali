.class public Lus/zoom/zrcsdk/model/LoginEmailType;
.super Ljava/lang/Object;
.source "LoginEmailType.java"


# static fields
.field public static final LOGIN_NONE:I = -0x1

.field public static final LOGIN_WITH_WORK_GOOGLE:I = 0x0

.field public static final LOGIN_WITH_WORK_MAIL:I = 0x1


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

    const-string p0, ""

    return-object p0

    :pswitch_0
    const-string p0, "WorkMail"

    return-object p0

    :pswitch_1
    const-string p0, "Google"

    return-object p0

    :pswitch_2
    const-string p0, "None"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
