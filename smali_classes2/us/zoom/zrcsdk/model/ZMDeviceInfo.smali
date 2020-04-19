.class public Lus/zoom/zrcsdk/model/ZMDeviceInfo;
.super Ljava/lang/Object;
.source "ZMDeviceInfo.java"


# static fields
.field public static final ZMDReasonCode_ALREADY_PAIRED_BY_OTHER:I = 0x7

.field public static final ZMDReasonCode_CLIENT_VERSION_TOO_HIGH:I = 0x5

.field public static final ZMDReasonCode_CLIENT_VERSION_TOO_LOW:I = 0x6

.field public static final ZMDReasonCode_DISCONNECTED:I = 0x3

.field public static final ZMDReasonCode_INVALID_RECORD:I = 0x9

.field public static final ZMDReasonCode_NONE:I = 0x0

.field public static final ZMDReasonCode_PAIR_FAILED_UNKNOWN:I = 0x4

.field public static final ZMDReasonCode_SEIZED_BY_OTHER:I = 0xa

.field public static final ZMDReasonCode_SHARE_FAILED_UNKNOWN:I = 0xb

.field public static final ZMDReasonCode_SHARE_FAILED_UNPAIRED:I = 0xc

.field public static final ZMDReasonCode_STOP_SHARE_SUCCESS:I = 0x2

.field public static final ZMDReasonCode_SUCCESS:I = 0x1

.field public static final ZMDReasonCode_WRONG_PWD:I = 0x8


# instance fields
.field private zmd_item:Lus/zoom/zrcsdk/model/ZMDeviceItem;

.field private zmd_reason_code:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lus/zoom/zrcsdk/model/ZMDeviceItem;I)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZMDeviceInfo;->zmd_item:Lus/zoom/zrcsdk/model/ZMDeviceItem;

    .line 29
    iput p2, p0, Lus/zoom/zrcsdk/model/ZMDeviceInfo;->zmd_reason_code:I

    return-void
.end method

.method public static reasonCode2String(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "Unknown ZMDReasonCode!!"

    return-object p0

    :pswitch_0
    const-string p0, "ZMDReasonCode_SHARE_FAILED_UNPAIRED"

    return-object p0

    :pswitch_1
    const-string p0, "ZMDReasonCode_SHARE_FAILED_UNKNOWN"

    return-object p0

    :pswitch_2
    const-string p0, "ZMDReasonCode_SEIZED_BY_OTHER"

    return-object p0

    :pswitch_3
    const-string p0, "ZMDReasonCode_INVALID_RECORD"

    return-object p0

    :pswitch_4
    const-string p0, "ZMDReasonCode_WRONG_PWD"

    return-object p0

    :pswitch_5
    const-string p0, "ZMDReasonCode_ALREADY_PAIRED_BY_OTHER"

    return-object p0

    :pswitch_6
    const-string p0, "ZMDReasonCode_CLIENT_VERSION_TOO_LOW"

    return-object p0

    :pswitch_7
    const-string p0, "ZMDReasonCode_CLIENT_VERSION_TOO_HIGH"

    return-object p0

    :pswitch_8
    const-string p0, "ZMDReasonCode_PAIR_FAILED_UNKNOWN"

    return-object p0

    :pswitch_9
    const-string p0, "ZMDReasonCode_DISCONNECTED"

    return-object p0

    :pswitch_a
    const-string p0, "ZMDReasonCode_STOP_SHARE_SUCCESS"

    return-object p0

    :pswitch_b
    const-string p0, "ZMDReasonCode_SUCCESS"

    return-object p0

    :pswitch_c
    const-string p0, "ZMDReasonCode_NONE"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 52
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/ZMDeviceInfo;

    .line 53
    iget v2, p0, Lus/zoom/zrcsdk/model/ZMDeviceInfo;->zmd_reason_code:I

    iget v3, p1, Lus/zoom/zrcsdk/model/ZMDeviceInfo;->zmd_reason_code:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZMDeviceInfo;->zmd_item:Lus/zoom/zrcsdk/model/ZMDeviceItem;

    iget-object p1, p1, Lus/zoom/zrcsdk/model/ZMDeviceInfo;->zmd_item:Lus/zoom/zrcsdk/model/ZMDeviceItem;

    .line 54
    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getZmd_item()Lus/zoom/zrcsdk/model/ZMDeviceItem;
    .locals 1

    .line 33
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZMDeviceInfo;->zmd_item:Lus/zoom/zrcsdk/model/ZMDeviceItem;

    return-object v0
.end method

.method public getZmd_reason_code()I
    .locals 1

    .line 41
    iget v0, p0, Lus/zoom/zrcsdk/model/ZMDeviceInfo;->zmd_reason_code:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 59
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZMDeviceInfo;->zmd_item:Lus/zoom/zrcsdk/model/ZMDeviceItem;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrcsdk/model/ZMDeviceInfo;->zmd_reason_code:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setZmd_item(Lus/zoom/zrcsdk/model/ZMDeviceItem;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZMDeviceInfo;->zmd_item:Lus/zoom/zrcsdk/model/ZMDeviceItem;

    return-void
.end method

.method public setZmd_reason_code(I)V
    .locals 0

    .line 45
    iput p1, p0, Lus/zoom/zrcsdk/model/ZMDeviceInfo;->zmd_reason_code:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZMDeviceInfo{zmd_item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZMDeviceInfo;->zmd_item:Lus/zoom/zrcsdk/model/ZMDeviceItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", zmd_reason_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZMDeviceInfo;->zmd_reason_code:I

    .line 99
    invoke-static {v1}, Lus/zoom/zrcsdk/model/ZMDeviceInfo;->reasonCode2String(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
