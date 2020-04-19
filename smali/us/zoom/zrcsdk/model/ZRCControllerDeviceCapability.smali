.class public Lus/zoom/zrcsdk/model/ZRCControllerDeviceCapability;
.super Ljava/lang/Object;
.source "ZRCControllerDeviceCapability.java"


# instance fields
.field private ultrasound_capability:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get_ultrasound_capability()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCControllerDeviceCapability;->ultrasound_capability:Z

    return v0
.end method

.method public set_ultrasound_capability(Z)V
    .locals 0

    .line 10
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCControllerDeviceCapability;->ultrasound_capability:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ultrasound_capability:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCControllerDeviceCapability;->ultrasound_capability:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
