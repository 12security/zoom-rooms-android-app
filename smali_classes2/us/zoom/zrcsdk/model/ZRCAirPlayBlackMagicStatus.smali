.class public Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;
.super Ljava/lang/Object;
.source "ZRCAirPlayBlackMagicStatus.java"


# static fields
.field public static final Sharing_Instruction_Display_IOS:I = 0x2

.field public static final Sharing_Instruction_Display_Laptop:I = 0x1

.field public static final Sharing_Instruction_Display_None:I = 0x0

.field public static final Sharing_Instruction_Display_WhiteboardCamera:I = 0x3


# instance fields
.field private directPresentationPairingCode:Ljava/lang/String;

.field private directPresentationSharingKey:Ljava/lang/String;

.field private instructionDisplayState:I

.field private isAirHostClientConnected:Z

.field private isBlackMagicConnected:Z

.field private isBlackMagicDataAvailable:Z

.field private isDirectPresentationConnected:Z

.field private isSharingBlackMagic:Z

.field private password:Ljava/lang/String;

.field private serverName:Ljava/lang/String;

.field private wifiName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 33
    iput-object v0, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->wifiName:Ljava/lang/String;

    const-string v0, ""

    .line 34
    iput-object v0, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->serverName:Ljava/lang/String;

    const-string v0, ""

    .line 35
    iput-object v0, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->password:Ljava/lang/String;

    const-string v0, ""

    .line 36
    iput-object v0, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->directPresentationPairingCode:Ljava/lang/String;

    const-string v0, ""

    .line 37
    iput-object v0, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->directPresentationSharingKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->wifiName:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->serverName:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->password:Ljava/lang/String;

    .line 49
    iput-boolean p4, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isAirHostClientConnected:Z

    .line 50
    iput-boolean p5, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isBlackMagicConnected:Z

    .line 51
    iput-boolean p6, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isBlackMagicDataAvailable:Z

    .line 52
    iput-boolean p7, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isSharingBlackMagic:Z

    .line 53
    iput-object p8, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->directPresentationPairingCode:Ljava/lang/String;

    .line 54
    iput-object p9, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->directPresentationSharingKey:Ljava/lang/String;

    .line 55
    iput-boolean p10, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isDirectPresentationConnected:Z

    .line 56
    iput p11, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->instructionDisplayState:I

    return-void
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

    .line 151
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 152
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;

    .line 153
    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isAirHostClientConnected:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isAirHostClientConnected:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isBlackMagicConnected:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isBlackMagicConnected:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isBlackMagicDataAvailable:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isBlackMagicDataAvailable:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isSharingBlackMagic:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isSharingBlackMagic:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isDirectPresentationConnected:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isDirectPresentationConnected:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->instructionDisplayState:I

    iget v3, p1, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->instructionDisplayState:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->wifiName:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->wifiName:Ljava/lang/String;

    .line 159
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->serverName:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->serverName:Ljava/lang/String;

    .line 160
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->password:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->password:Ljava/lang/String;

    .line 161
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->directPresentationPairingCode:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->directPresentationPairingCode:Ljava/lang/String;

    .line 162
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->directPresentationSharingKey:Ljava/lang/String;

    iget-object p1, p1, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->directPresentationSharingKey:Ljava/lang/String;

    .line 163
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

.method public getDirectPresentationPairingCode()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->directPresentationPairingCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectPresentationSharingKey()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->directPresentationSharingKey:Ljava/lang/String;

    return-object v0
.end method

.method public getInstructionDisplayState()I
    .locals 1

    .line 132
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->instructionDisplayState:I

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->wifiName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xb

    .line 168
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->wifiName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->serverName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->password:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isAirHostClientConnected:Z

    .line 172
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isBlackMagicConnected:Z

    .line 173
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isBlackMagicDataAvailable:Z

    .line 174
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isSharingBlackMagic:Z

    .line 175
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->directPresentationPairingCode:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->directPresentationSharingKey:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isDirectPresentationConnected:Z

    .line 178
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->instructionDisplayState:I

    .line 179
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 168
    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAirHostClientConnected()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isAirHostClientConnected:Z

    return v0
.end method

.method public isBlackMagicConnected()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isBlackMagicConnected:Z

    return v0
.end method

.method public isBlackMagicDataAvailable()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isBlackMagicDataAvailable:Z

    return v0
.end method

.method public isDirectPresentationConnected()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isDirectPresentationConnected:Z

    return v0
.end method

.method public isSharingBlackMagic()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isSharingBlackMagic:Z

    return v0
.end method

.method public setAirHostClientConnected(Z)V
    .locals 0

    .line 88
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isAirHostClientConnected:Z

    return-void
.end method

.method public setBlackMagicConnected(Z)V
    .locals 0

    .line 96
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isBlackMagicConnected:Z

    return-void
.end method

.method public setBlackMagicDataAvailable(Z)V
    .locals 0

    .line 104
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isBlackMagicDataAvailable:Z

    return-void
.end method

.method public setDirectPresentationConnected(Z)V
    .locals 0

    .line 128
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isDirectPresentationConnected:Z

    return-void
.end method

.method public setDirectPresentationPairingCode(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->directPresentationPairingCode:Ljava/lang/String;

    return-void
.end method

.method public setDirectPresentationSharingKey(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->directPresentationSharingKey:Ljava/lang/String;

    return-void
.end method

.method public setInstructionDisplayState(I)V
    .locals 0

    .line 136
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->instructionDisplayState:I

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->password:Ljava/lang/String;

    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->serverName:Ljava/lang/String;

    return-void
.end method

.method public setSharingBlackMagic(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isSharingBlackMagic:Z

    return-void
.end method

.method public setWifiName(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->wifiName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 185
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "wifiName"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->wifiName:Ljava/lang/String;

    .line 186
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "serverName"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->serverName:Ljava/lang/String;

    .line 187
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "password"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->password:Ljava/lang/String;

    .line 188
    invoke-static {v2}, Lus/zoom/zrcsdk/util/StringUtil;->logPassword(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "isAirHostClientConnected"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isAirHostClientConnected:Z

    .line 189
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "isBlackMagicConnected"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isBlackMagicConnected:Z

    .line 190
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "isBlackMagicDataAvailable"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isBlackMagicDataAvailable:Z

    .line 191
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "isSharingBlackMagic"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isSharingBlackMagic:Z

    .line 192
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "directPresentationPairingCode"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->directPresentationPairingCode:Ljava/lang/String;

    .line 193
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "directPresentationSharingKey"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->directPresentationSharingKey:Ljava/lang/String;

    .line 194
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "isDirectPresentationConnected"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->isDirectPresentationConnected:Z

    .line 195
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "instructionDisplayState"

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCAirPlayBlackMagicStatus;->instructionDisplayState:I

    .line 196
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
