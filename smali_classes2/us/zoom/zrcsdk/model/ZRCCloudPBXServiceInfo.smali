.class public Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;
.super Ljava/lang/Object;
.source "ZRCCloudPBXServiceInfo.java"


# instance fields
.field private areaCode:Ljava/lang/String;

.field private callerID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCCallerID;",
            ">;"
        }
    .end annotation
.end field

.field private companyNumber:Ljava/lang/String;

.field private companyNumberFormat:Ljava/lang/String;

.field private countryCode:Ljava/lang/String;

.field private countryName:Ljava/lang/String;

.field private directNumber:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private directNumberFormat:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private extension:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
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

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 67
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;

    .line 68
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->extension:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->extension:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->companyNumber:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->companyNumber:Ljava/lang/String;

    .line 69
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->companyNumberFormat:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->companyNumberFormat:Ljava/lang/String;

    .line 70
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->directNumber:Ljava/util/List;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->directNumber:Ljava/util/List;

    .line 71
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->directNumberFormat:Ljava/util/List;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->directNumberFormat:Ljava/util/List;

    .line 72
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->countryCode:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->countryCode:Ljava/lang/String;

    .line 73
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->countryName:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->countryName:Ljava/lang/String;

    .line 74
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->areaCode:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->areaCode:Ljava/lang/String;

    .line 75
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->callerID:Ljava/util/List;

    iget-object p1, p1, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->callerID:Ljava/util/List;

    .line 76
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

.method public getAreaCode()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->areaCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerID()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCCallerID;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->callerID:Ljava/util/List;

    return-object v0
.end method

.method public getCompanyNumber()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->companyNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyNumberFormat()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->companyNumberFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->countryName:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultCallerID()Lus/zoom/zrcsdk/model/ZRCCallerID;
    .locals 2

    .line 57
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->callerID:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 58
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->callerID:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCCallerID;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDirectNumber()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->directNumber:Ljava/util/List;

    return-object v0
.end method

.method public getDirectNumberFormat()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->directNumberFormat:Ljava/util/List;

    return-object v0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x9

    .line 81
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->extension:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->companyNumber:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->companyNumberFormat:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->directNumber:Ljava/util/List;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->directNumberFormat:Ljava/util/List;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->countryCode:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->countryName:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->areaCode:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->callerID:Ljava/util/List;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 86
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "extension"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->extension:Ljava/lang/String;

    .line 87
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "companyNumber"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->companyNumber:Ljava/lang/String;

    .line 88
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "companyNumberFormat"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->companyNumberFormat:Ljava/lang/String;

    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "directNumber"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->directNumber:Ljava/util/List;

    .line 90
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "directNumberFormat"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->directNumberFormat:Ljava/util/List;

    .line 91
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "countryCode"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->countryCode:Ljava/lang/String;

    .line 92
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "countryName"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->countryName:Ljava/lang/String;

    .line 93
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "areaCode"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->areaCode:Ljava/lang/String;

    .line 94
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "callerID"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->callerID:Ljava/util/List;

    .line 95
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
