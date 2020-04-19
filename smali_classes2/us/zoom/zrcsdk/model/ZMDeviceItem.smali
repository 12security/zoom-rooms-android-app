.class public Lus/zoom/zrcsdk/model/ZMDeviceItem;
.super Ljava/lang/Object;
.source "ZMDeviceItem.java"


# static fields
.field public static final ZMDStatusType_NONE:I = 0x0

.field public static final ZMDStatusType_PARIED:I = 0x1

.field public static final ZMDStatusType_SHARING:I = 0x2

.field public static final ZMDeviceActionType_PAIR:I = 0x2

.field public static final ZMDeviceActionType_PAIR_SEIZE:I = 0x3

.field public static final ZMDeviceActionType_PAIR_SEIZE_CANCEL:I = 0x4

.field public static final ZMDeviceActionType_START_SEARCH:I = 0x0

.field public static final ZMDeviceActionType_START_SHARE:I = 0x6

.field public static final ZMDeviceActionType_STOP_SEARCH:I = 0x1

.field public static final ZMDeviceActionType_STOP_SHARE:I = 0x7

.field public static final ZMDeviceActionType_UNPAIR:I = 0x5


# instance fields
.field private zmd_has_control:Z

.field private zmd_host:Ljava/lang/String;

.field private zmd_id:Ljava/lang/String;

.field private zmd_name:Ljava/lang/String;

.field private zmd_status:I

.field private zmd_vender:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_host:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_name:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_id:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_vender:Ljava/lang/String;

    .line 47
    iput p5, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_status:I

    .line 48
    iput-boolean p6, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_has_control:Z

    return-void
.end method

.method public constructor <init>(Lus/zoom/zrcsdk/model/ZMDeviceItem;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iget-object v0, p1, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_host:Ljava/lang/String;

    iput-object v0, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_host:Ljava/lang/String;

    .line 35
    iget-object v0, p1, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_name:Ljava/lang/String;

    iput-object v0, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_name:Ljava/lang/String;

    .line 36
    iget-object v0, p1, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_id:Ljava/lang/String;

    iput-object v0, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_id:Ljava/lang/String;

    .line 37
    iget-object v0, p1, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_vender:Ljava/lang/String;

    iput-object v0, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_vender:Ljava/lang/String;

    .line 38
    iget v0, p1, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_status:I

    iput v0, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_status:I

    .line 39
    iget-boolean p1, p1, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_has_control:Z

    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_has_control:Z

    return-void
.end method

.method public static actionType2String(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "Unknown ZMDeviceActionType!!"

    return-object p0

    :pswitch_0
    const-string p0, "ZMDeviceActionType_STOP_SHARE"

    return-object p0

    :pswitch_1
    const-string p0, "ZMDeviceActionType_START_SHARE"

    return-object p0

    :pswitch_2
    const-string p0, "ZMDeviceActionType_UNPAIR"

    return-object p0

    :pswitch_3
    const-string p0, "ZMDeviceActionType_PAIR_SEIZE_CANCEL"

    return-object p0

    :pswitch_4
    const-string p0, "ZMDeviceActionType_PAIR_SEIZE"

    return-object p0

    :pswitch_5
    const-string p0, "ZMDeviceActionType_PAIR"

    return-object p0

    :pswitch_6
    const-string p0, "ZMDeviceActionType_STOP_SEARCH"

    return-object p0

    :pswitch_7
    const-string p0, "ZMDeviceActionType_START_SEARCH"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static statusType2String(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "Unknown ZMDStatusType!!"

    return-object p0

    :pswitch_0
    const-string p0, "ZMDStatusType_SHARING"

    return-object p0

    :pswitch_1
    const-string p0, "ZMDStatusType_PARIED"

    return-object p0

    :pswitch_2
    const-string p0, "ZMDStatusType_NONE"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 103
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/ZMDeviceItem;

    .line 104
    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_has_control:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_has_control:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_status:I

    iget v3, p1, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_status:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_host:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_host:Ljava/lang/String;

    .line 106
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_name:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_name:Ljava/lang/String;

    .line 107
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_id:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_id:Ljava/lang/String;

    .line 108
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_vender:Ljava/lang/String;

    iget-object p1, p1, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_vender:Ljava/lang/String;

    .line 109
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

.method public getZmd_host()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_host:Ljava/lang/String;

    return-object v0
.end method

.method public getZmd_id()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_id:Ljava/lang/String;

    return-object v0
.end method

.method public getZmd_name()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_name:Ljava/lang/String;

    return-object v0
.end method

.method public getZmd_status()I
    .locals 1

    .line 84
    iget v0, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_status:I

    return v0
.end method

.method public getZmd_vender()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_vender:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    .line 121
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_host:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_name:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_id:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_vender:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_has_control:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_status:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isSameAs(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 115
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/ZMDeviceItem;

    .line 116
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_host:Ljava/lang/String;

    iget-object p1, p1, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_host:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public isZmd_has_control()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_has_control:Z

    return v0
.end method

.method public setZmd_has_control(Z)V
    .locals 0

    .line 96
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_has_control:Z

    return-void
.end method

.method public setZmd_host(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_host:Ljava/lang/String;

    return-void
.end method

.method public setZmd_id(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_id:Ljava/lang/String;

    return-void
.end method

.method public setZmd_name(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_name:Ljava/lang/String;

    return-void
.end method

.method public setZmd_status(I)V
    .locals 0

    .line 88
    iput p1, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_status:I

    return-void
.end method

.method public setZmd_vender(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_vender:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZMDeviceItem{zmd_host=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", zmd_name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", zmd_id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", zmd_vender=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_vender:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", zmd_status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_status:I

    .line 167
    invoke-static {v1}, Lus/zoom/zrcsdk/model/ZMDeviceItem;->statusType2String(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", zmd_has_control="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZMDeviceItem;->zmd_has_control:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
