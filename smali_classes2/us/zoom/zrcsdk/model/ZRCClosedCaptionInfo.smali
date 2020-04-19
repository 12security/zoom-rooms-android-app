.class public Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;
.super Ljava/lang/Object;
.source "ZRCClosedCaptionInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final ZRCClosedCaptionFontSizeLarge:I = 0x2

.field public static final ZRCClosedCaptionFontSizeMedium:I = 0x1

.field public static final ZRCClosedCaptionFontSizeSmall:I


# instance fields
.field private available:Z

.field private fontSize:I

.field private visible:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZZI)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->available:Z

    .line 26
    iput-boolean p2, p0, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->visible:Z

    .line 27
    iput p3, p0, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->fontSize:I

    return-void
.end method

.method public static convertToFontSize(II)I
    .locals 2

    const/4 v0, 0x2

    if-gtz p1, :cond_0

    return v0

    .line 59
    :cond_0
    div-int/lit8 v1, p1, 0x4

    if-ge p0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-lt p0, v1, :cond_2

    mul-int/lit8 p1, p1, 0x3

    .line 61
    div-int/lit8 p1, p1, 0x4

    if-ge p0, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public static convertToFontSize(III)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ge p0, p1, :cond_0

    if-ne p2, v1, :cond_0

    return v0

    :cond_0
    if-lez p0, :cond_1

    if-nez p2, :cond_1

    return v0

    :cond_1
    if-ne p2, v0, :cond_3

    .line 102
    div-int/2addr p1, v1

    if-le p0, p1, :cond_2

    return v1

    :cond_2
    if-ge p0, p1, :cond_3

    const/4 p0, 0x0

    return p0

    :cond_3
    return p2
.end method

.method public static convertToValue(II)I
    .locals 1

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    return v0

    :cond_0
    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    .line 74
    div-int/lit8 p1, p1, 0x2

    return p1

    :cond_2
    return p1
.end method

.method public static correctValue(II)I
    .locals 2

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    return v0

    .line 84
    :cond_0
    div-int/lit8 v1, p1, 0x4

    if-ge p0, v1, :cond_1

    return v0

    :cond_1
    if-lt p0, v1, :cond_2

    mul-int/lit8 v0, p1, 0x3

    .line 86
    div-int/lit8 v0, v0, 0x4

    if-ge p0, v0, :cond_2

    .line 87
    div-int/lit8 p1, p1, 0x2

    return p1

    :cond_2
    return p1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .line 115
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 119
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->available:Z

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->visible:Z

    iget v3, p0, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->fontSize:I

    invoke-direct {v0, v1, v2, v3}, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;-><init>(ZZI)V

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

    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 126
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;

    .line 127
    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->available:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->available:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->visible:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->visible:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->fontSize:I

    iget p1, p1, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->fontSize:I

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

.method public getFontSize()I
    .locals 1

    .line 47
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->fontSize:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 134
    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->available:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->visible:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->fontSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->available:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->visible:Z

    return v0
.end method

.method public setAvailable(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->available:Z

    return-void
.end method

.method public setFontSize(I)V
    .locals 0

    .line 51
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->fontSize:I

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->visible:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 139
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "available"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->available:Z

    .line 140
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "visible"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->visible:Z

    .line 141
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "fontSize"

    iget v2, p0, Lus/zoom/zrcsdk/model/ZRCClosedCaptionInfo;->fontSize:I

    .line 142
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
