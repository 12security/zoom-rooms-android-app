.class public Lus/zoom/zrcsdk/model/ZRCVirtualBackground;
.super Ljava/lang/Object;
.source "ZRCVirtualBackground.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private big_img_url:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private is_downloaded_on_zr:Z

.field private name:Ljava/lang/String;

.field private small_img_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->id:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->big_img_url:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->small_img_url:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->name:Ljava/lang/String;

    .line 21
    iput-boolean p5, p0, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->is_downloaded_on_zr:Z

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 7

    .line 73
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->id:Ljava/lang/String;

    iget-object v3, p0, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->big_img_url:Ljava/lang/String;

    iget-object v4, p0, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->small_img_url:Ljava/lang/String;

    iget-object v5, p0, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->name:Ljava/lang/String;

    iget-boolean v6, p0, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->is_downloaded_on_zr:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
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

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 87
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;

    .line 88
    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->is_downloaded_on_zr:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->is_downloaded_on_zr:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->id:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->id:Ljava/lang/String;

    .line 89
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->big_img_url:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->big_img_url:Ljava/lang/String;

    .line 90
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->small_img_url:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->small_img_url:Ljava/lang/String;

    .line 91
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->name:Ljava/lang/String;

    iget-object p1, p1, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->name:Ljava/lang/String;

    .line 92
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

.method public getBig_img_url()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->big_img_url:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSmall_img_url()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->small_img_url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    .line 97
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->id:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->big_img_url:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->small_img_url:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->name:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->is_downloaded_on_zr:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isSameIdAs(Lus/zoom/zrcsdk/model/ZRCVirtualBackground;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 65
    iget-object p1, p1, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->id:Ljava/lang/String;

    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->id:Ljava/lang/String;

    .line 66
    invoke-static {p1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public is_downloaded_on_zr()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->is_downloaded_on_zr:Z

    return v0
.end method

.method public setBig_img_url(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->big_img_url:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->id:Ljava/lang/String;

    return-void
.end method

.method public setIs_downloaded_on_zr(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->is_downloaded_on_zr:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->name:Ljava/lang/String;

    return-void
.end method

.method public setSmall_img_url(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->small_img_url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZRCVirtualBackground{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", big_img_url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->big_img_url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", small_img_url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->small_img_url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", is_downloaded_on_zr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->is_downloaded_on_zr:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
