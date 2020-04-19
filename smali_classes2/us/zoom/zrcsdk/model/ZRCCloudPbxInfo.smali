.class public Lus/zoom/zrcsdk/model/ZRCCloudPbxInfo;
.super Ljava/lang/Object;
.source "ZRCCloudPbxInfo.java"


# instance fields
.field private companyNumber:Ljava/lang/String;

.field private directNumber:Ljava/util/List;
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
.method private constructor <init>()V
    .locals 0

    .line 15
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

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 34
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCCloudPbxInfo;

    .line 35
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCloudPbxInfo;->extension:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCCloudPbxInfo;->extension:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCloudPbxInfo;->companyNumber:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCCloudPbxInfo;->companyNumber:Ljava/lang/String;

    .line 36
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCloudPbxInfo;->directNumber:Ljava/util/List;

    iget-object p1, p1, Lus/zoom/zrcsdk/model/ZRCCloudPbxInfo;->directNumber:Ljava/util/List;

    .line 37
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

.method public getCompanyNumber()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCCloudPbxInfo;->companyNumber:Ljava/lang/String;

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

    .line 27
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCCloudPbxInfo;->directNumber:Ljava/util/List;

    return-object v0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCCloudPbxInfo;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 42
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCCloudPbxInfo;->extension:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCCloudPbxInfo;->companyNumber:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCCloudPbxInfo;->directNumber:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 47
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "extension"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCloudPbxInfo;->extension:Ljava/lang/String;

    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "companyNumber"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCloudPbxInfo;->companyNumber:Ljava/lang/String;

    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "directNumber"

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCloudPbxInfo;->directNumber:Ljava/util/List;

    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
