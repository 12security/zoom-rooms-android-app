.class public Lus/zoom/zrcsdk/model/ZRCSipService;
.super Ljava/lang/Object;
.source "ZRCSipService.java"


# static fields
.field public static final ZRCSIPCallFail401BadRequest:I = 0x191

.field public static final ZRCSIPCallFail403Forbidden:I = 0x193

.field public static final ZRCSIPCallFail407ProxAuthenticationRequired:I = 0x197

.field public static final ZRCSIPServiceStatusCallingOut:I = 0x14

.field public static final ZRCSIPServiceStatusIdle:I = 0x0

.field public static final ZRCSIPServiceStatusInCall:I = 0x32

.field public static final ZRCSIPServiceStatusRegFailed:I = 0x5

.field public static final ZRCSIPServiceStatusRegistered:I = 0x6

.field public static final ZRCSIPServiceStatusRegistering:I = 0x4

.field public static final ZRCSIPServiceStatusRinging:I = 0xa


# instance fields
.field private cloudPBXServiceInfo:Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;

.field private displayName:Ljava/lang/String;

.field private responseCode:I

.field private responseDescription:Ljava/lang/String;

.field private sipServiceStatus:I

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 95
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCSipService;

    .line 96
    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCSipService;->sipServiceStatus:I

    iget v3, p1, Lus/zoom/zrcsdk/model/ZRCSipService;->sipServiceStatus:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCSipService;->responseCode:I

    iget v3, p1, Lus/zoom/zrcsdk/model/ZRCSipService;->responseCode:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCSipService;->displayName:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCSipService;->displayName:Ljava/lang/String;

    .line 98
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCSipService;->userName:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCSipService;->userName:Ljava/lang/String;

    .line 99
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCSipService;->responseDescription:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCSipService;->responseDescription:Ljava/lang/String;

    .line 100
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCSipService;->cloudPBXServiceInfo:Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;

    iget-object p1, p1, Lus/zoom/zrcsdk/model/ZRCSipService;->cloudPBXServiceInfo:Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;

    .line 101
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

.method public getCloudPBXServiceInfo()Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;
    .locals 1

    .line 84
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCSipService;->cloudPBXServiceInfo:Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->getExtension()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 88
    :cond_0
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCSipService;->cloudPBXServiceInfo:Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCSipService;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .line 68
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCSipService;->responseCode:I

    return v0
.end method

.method public getResponseDescription()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCSipService;->responseDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getSipServiceStatus()I
    .locals 1

    .line 44
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCSipService;->sipServiceStatus:I

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCSipService;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    .line 106
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCSipService;->sipServiceStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCSipService;->displayName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCSipService;->userName:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCSipService;->responseCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCSipService;->responseDescription:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCSipService;->cloudPBXServiceInfo:Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isRegistered()Z
    .locals 2

    .line 37
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCSipService;->sipServiceStatus:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    const/16 v1, 0x32

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

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCSipService;->displayName:Ljava/lang/String;

    return-void
.end method

.method public setResponseCode(I)V
    .locals 0

    .line 72
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCSipService;->responseCode:I

    return-void
.end method

.method public setResponseDescription(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCSipService;->responseDescription:Ljava/lang/String;

    return-void
.end method

.method public setSipServiceStatus(I)V
    .locals 0

    .line 48
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCSipService;->sipServiceStatus:I

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCSipService;->userName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 112
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "sipServiceStatus"

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCSipService;->sipServiceStatus:I

    .line 113
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "displayName"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCSipService;->displayName:Ljava/lang/String;

    .line 114
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "userName"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCSipService;->userName:Ljava/lang/String;

    .line 115
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "responseCode"

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCSipService;->responseCode:I

    .line 116
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "responseDescription"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCSipService;->responseDescription:Ljava/lang/String;

    .line 117
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "cloudPBXServiceInfo"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCSipService;->cloudPBXServiceInfo:Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;

    .line 118
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
