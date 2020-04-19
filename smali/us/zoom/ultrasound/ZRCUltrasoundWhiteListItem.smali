.class public Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;
.super Ljava/lang/Object;
.source "ZRCUltrasoundWhiteListItem.java"


# instance fields
.field private brand:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private osVersion:I

.field private zrcVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p0, p1}, Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;->setModel(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, p2}, Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;->setBrand(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 79
    instance-of v0, p1, Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 82
    :cond_0
    check-cast p1, Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;

    .line 83
    iget-object v0, p0, Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;->model:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v2, p1, Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;->model:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;->brand:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;->brand:Ljava/lang/String;

    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()I
    .locals 1

    .line 62
    iget v0, p0, Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;->osVersion:I

    return v0
.end method

.method public getZrcVersion()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;->zrcVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 89
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;->model:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;->brand:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setBrand(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;->brand:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;->model:Ljava/lang/String;

    return-void
.end method

.method public setOsVersion(I)V
    .locals 0

    .line 66
    iput p1, p0, Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;->osVersion:I

    return-void
.end method

.method public setZrcVersion(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;->zrcVersion:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "model:"

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "brand:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;->brand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget v1, p0, Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;->osVersion:I

    if-lez v1, :cond_0

    const-string v1, ","

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "osVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;->osVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    :cond_0
    iget-object v1, p0, Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;->zrcVersion:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, ","

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "zrcVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/ultrasound/ZRCUltrasoundWhiteListItem;->zrcVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "}"

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
