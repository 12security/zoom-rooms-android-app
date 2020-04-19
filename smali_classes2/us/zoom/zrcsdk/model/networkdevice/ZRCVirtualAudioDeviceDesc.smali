.class public Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;
.super Ljava/lang/Object;
.source "ZRCVirtualAudioDeviceDesc.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEVICE_TYPE_MICROPHONE:I = 0x0

.field public static final DEVICE_TYPE_SPEAKER:I = 0x1

.field public static final DEVICE_VENDOR_DANTE:I


# instance fields
.field private deviceType:I

.field private deviceVendors:I

.field private maxSelectedCounts:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;->deviceType:I

    .line 18
    iput p2, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;->deviceVendors:I

    .line 19
    iput p3, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;->maxSelectedCounts:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .line 48
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 52
    new-instance v0, Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;

    iget v1, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;->deviceType:I

    iget v2, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;->deviceVendors:I

    iget v3, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;->maxSelectedCounts:I

    invoke-direct {v0, v1, v2, v3}, Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;-><init>(III)V

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

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 34
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;

    .line 35
    iget v2, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;->deviceType:I

    iget v3, p1, Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;->deviceType:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;->deviceVendors:I

    iget v3, p1, Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;->deviceVendors:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;->maxSelectedCounts:I

    iget p1, p1, Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;->maxSelectedCounts:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getDeviceType()I
    .locals 1

    .line 23
    iget v0, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;->deviceType:I

    return v0
.end method

.method public getMaxSelectedCounts()I
    .locals 1

    .line 27
    iget v0, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;->maxSelectedCounts:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 42
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;->deviceType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;->deviceVendors:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;->maxSelectedCounts:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZRCVirtualAudioDeviceDesc{deviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;->deviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deviceVendors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;->deviceVendors:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxSelectedCounts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;->maxSelectedCounts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
