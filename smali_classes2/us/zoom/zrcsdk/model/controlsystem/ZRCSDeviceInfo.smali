.class public Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;
.super Ljava/lang/Object;
.source "ZRCSDeviceInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final ZRCSDeviceInfoStatus_Connected:I = 0x2

.field public static final ZRCSDeviceInfoStatus_Connecting:I = 0x1

.field public static final ZRCSDeviceInfoStatus_Disconnected:I


# instance fields
.field private icon:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private methods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->id:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->name:Ljava/lang/String;

    .line 27
    iput p3, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->status:I

    .line 28
    iput-object p4, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->methods:Ljava/util/List;

    .line 29
    iput-object p5, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->icon:Ljava/lang/String;

    return-void
.end method

.method public static status2String(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "ZRCSDeviceInfoStatus_Unknown !!"

    return-object p0

    :pswitch_0
    const-string p0, "ZRCSDeviceInfoStatus_Connected"

    return-object p0

    :pswitch_1
    const-string p0, "ZRCSDeviceInfoStatus_Connecting"

    return-object p0

    :pswitch_2
    const-string p0, "ZRCSDeviceInfoStatus_Disconnected"

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
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->clone()Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;
    .locals 4

    .line 77
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    const/4 v0, 0x0

    .line 82
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    iget-object v2, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->methods:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 84
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;

    .line 85
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->clone()Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    .line 89
    new-instance v0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;-><init>()V

    .line 91
    :cond_1
    iget-object v2, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->id:Ljava/lang/String;

    iput-object v2, v0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->id:Ljava/lang/String;

    .line 92
    iget-object v2, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->name:Ljava/lang/String;

    iput-object v2, v0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->name:Ljava/lang/String;

    .line 93
    iget v2, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->status:I

    iput v2, v0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->status:I

    .line 94
    iput-object v1, v0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->methods:Ljava/util/List;

    .line 95
    iget-object v1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->icon:Ljava/lang/String;

    iput-object v1, v0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 105
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;

    .line 106
    iget v2, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->status:I

    iget v3, p1, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->status:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->id:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->id:Ljava/lang/String;

    .line 107
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->name:Ljava/lang/String;

    .line 108
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->methods:Ljava/util/List;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->methods:Ljava/util/List;

    .line 109
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->icon:Ljava/lang/String;

    iget-object p1, p1, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->icon:Ljava/lang/String;

    .line 110
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

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMethods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->methods:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 49
    iget v0, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->status:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    .line 115
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->id:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->name:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->status:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->methods:Ljava/util/List;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->icon:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->icon:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->id:Ljava/lang/String;

    return-void
.end method

.method public setMethods(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;",
            ">;)V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->methods:Ljava/util/List;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 53
    iput p1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->status:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZRCSDeviceInfo: id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->status:I

    .line 136
    invoke-static {v1}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->status2String(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
