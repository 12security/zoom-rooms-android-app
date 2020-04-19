.class public Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;
.super Ljava/lang/Object;
.source "ZRCNetworkAudioDeviceInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable<",
        "Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final STATE_AVAILABLE:I = 0x1

.field public static final STATE_CONNECTED:I = 0x3

.field public static final STATE_CONNECTING:I = 0x2

.field public static final STATE_DISCONNECTED:I = 0x4

.field public static final STATE_ERROR:I = 0x5

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_OCCUPIED:I = 0x6


# instance fields
.field private deviceId:Ljava/lang/String;

.field private deviceName:Ljava/lang/String;

.field private identifiable:Z

.field private isManuallyChecked:Ljava/lang/Boolean;

.field private state:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->state:I

    .line 24
    iput-object p1, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->deviceId:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->deviceName:Ljava/lang/String;

    .line 26
    iput p3, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->state:I

    .line 27
    iput-boolean p4, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->identifiable:Z

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 101
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    check-cast p1, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;

    invoke-virtual {p0, p1}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->compareTo(Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;)I
    .locals 3
    .param p1    # Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 128
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->isSelected()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 130
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 132
    :cond_2
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 90
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;

    .line 91
    iget v2, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->state:I

    iget v3, p1, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->state:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->identifiable:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->identifiable:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->deviceId:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->deviceId:Ljava/lang/String;

    .line 93
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->deviceName:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->deviceName:Ljava/lang/String;

    .line 94
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->isManuallyChecked:Ljava/lang/Boolean;

    iget-object p1, p1, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->isManuallyChecked:Ljava/lang/Boolean;

    .line 95
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

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 47
    iget v0, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->state:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    .line 110
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->deviceId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isIdentifiable()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->identifiable:Z

    return v0
.end method

.method public isManuallyChecked()Ljava/lang/Boolean;
    .locals 1

    .line 67
    iget-object v0, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->isManuallyChecked:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isSelected()Z
    .locals 2

    .line 71
    iget v0, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSelectedAvailable()Z
    .locals 2

    .line 75
    iget v0, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSelectedUnavailable()Z
    .locals 2

    .line 79
    iget v0, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->state:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isUnknownState()Z
    .locals 2

    .line 83
    iget v0, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->state:I

    if-lez v0, :cond_1

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->deviceName:Ljava/lang/String;

    return-void
.end method

.method public setIdentifiable(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->identifiable:Z

    return-void
.end method

.method public setManuallyChecked(Z)V
    .locals 0

    .line 63
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->isManuallyChecked:Ljava/lang/Boolean;

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 51
    iput p1, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->state:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZRCNetworkAudioDeviceInfo{deviceId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", deviceName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", identifiable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->identifiable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
