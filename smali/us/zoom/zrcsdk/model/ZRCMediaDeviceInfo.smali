.class public Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;
.super Ljava/lang/Object;
.source "ZRCMediaDeviceInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final MediaDeviceTypeCamera:I = 0x2

.field public static final MediaDeviceTypeMicrophone:I = 0x0

.field public static final MediaDeviceTypeSpeaker:I = 0x1


# instance fields
.field private combinedDevice:Z

.field private deviceAlias:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private manuallySelected:Z

.field private name:Ljava/lang/String;

.field private numberOfCombinedDevices:I

.field private ptzComId:I

.field private selected:Z

.field private virtualAudioDeviceDesc:Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->ptzComId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZII)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->ptzComId:I

    .line 33
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->id:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->name:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->deviceAlias:Ljava/lang/String;

    .line 36
    iput-boolean p4, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->selected:Z

    .line 37
    iput-boolean p5, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->manuallySelected:Z

    .line 38
    iput-boolean p6, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->combinedDevice:Z

    .line 39
    iput p7, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->numberOfCombinedDevices:I

    .line 40
    iput p8, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->ptzComId:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 10

    .line 169
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 174
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->id:Ljava/lang/String;

    iget-object v3, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->name:Ljava/lang/String;

    iget-object v4, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->deviceAlias:Ljava/lang/String;

    iget-boolean v5, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->selected:Z

    iget-boolean v6, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->manuallySelected:Z

    iget-boolean v7, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->combinedDevice:Z

    iget v8, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->numberOfCombinedDevices:I

    iget v9, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->ptzComId:I

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZII)V

    .line 176
    :cond_0
    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->displayName:Ljava/lang/String;

    iput-object v1, v0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->displayName:Ljava/lang/String;

    .line 177
    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->virtualAudioDeviceDesc:Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;

    if-eqz v1, :cond_1

    .line 178
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;

    iput-object v1, v0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->virtualAudioDeviceDesc:Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;

    :cond_1
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

    .line 137
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 138
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    .line 139
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->id:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->name:Ljava/lang/String;

    .line 140
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->deviceAlias:Ljava/lang/String;

    iget-object p1, p1, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->deviceAlias:Ljava/lang/String;

    .line 141
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

.method public getDeviceAlias()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->deviceAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayDeviceName()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->displayName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 119
    :cond_0
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->displayName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfCombinedDevices()I
    .locals 1

    .line 92
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->numberOfCombinedDevices:I

    return v0
.end method

.method public getPtzComId()I
    .locals 1

    .line 100
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->ptzComId:I

    return v0
.end method

.method public getVirtualAudioDeviceDesc()Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;
    .locals 1

    .line 123
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->virtualAudioDeviceDesc:Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 162
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->id:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->name:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->deviceAlias:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isCombinedDevice()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->combinedDevice:Z

    return v0
.end method

.method public isDeepEquals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 147
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    .line 148
    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->selected:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->selected:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->manuallySelected:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->manuallySelected:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->combinedDevice:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->combinedDevice:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->numberOfCombinedDevices:I

    iget v3, p1, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->numberOfCombinedDevices:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->ptzComId:I

    iget v3, p1, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->ptzComId:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->id:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->id:Ljava/lang/String;

    .line 153
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->name:Ljava/lang/String;

    .line 154
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->deviceAlias:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->deviceAlias:Ljava/lang/String;

    .line 155
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->displayName:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->displayName:Ljava/lang/String;

    .line 156
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->virtualAudioDeviceDesc:Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;

    iget-object p1, p1, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->virtualAudioDeviceDesc:Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;

    .line 157
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

.method public isManuallySelected()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->manuallySelected:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->selected:Z

    return v0
.end method

.method public isSupportRenameCamera()Z
    .locals 1

    .line 112
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVirtualAudioDevice()Z
    .locals 1

    .line 131
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->virtualAudioDeviceDesc:Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCombinedDevice(Z)V
    .locals 0

    .line 88
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->combinedDevice:Z

    return-void
.end method

.method public setDeviceAlias(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->deviceAlias:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->id:Ljava/lang/String;

    return-void
.end method

.method public setManuallySelected(Z)V
    .locals 0

    .line 80
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->manuallySelected:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setNumberOfCombinedDevices(I)V
    .locals 0

    .line 96
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->numberOfCombinedDevices:I

    return-void
.end method

.method public setPtzComId(I)V
    .locals 0

    .line 104
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->ptzComId:I

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->selected:Z

    return-void
.end method

.method public setVirtualAudioDeviceDesc(Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->virtualAudioDeviceDesc:Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZRCMediaDeviceInfo{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", deviceAlias=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->deviceAlias:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", selected="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->selected:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", manuallySelected="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->manuallySelected:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", combinedDevice="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->combinedDevice:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", numberOfCombinedDevices="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->numberOfCombinedDevices:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ptzComId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->ptzComId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", displayName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", virtualAudioDeviceDesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->virtualAudioDeviceDesc:Lus/zoom/zrcsdk/model/networkdevice/ZRCVirtualAudioDeviceDesc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
