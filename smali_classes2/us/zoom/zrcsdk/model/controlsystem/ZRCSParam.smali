.class public Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;
.super Ljava/lang/Object;
.source "ZRCSParam.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private icon:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->id:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->name:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->value:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->icon:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->clone()Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;
    .locals 2

    .line 58
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;-><init>()V

    .line 65
    :cond_0
    iget-object v1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->id:Ljava/lang/String;

    iput-object v1, v0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->id:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->name:Ljava/lang/String;

    iput-object v1, v0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->name:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->value:Ljava/lang/String;

    iput-object v1, v0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->value:Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->icon:Ljava/lang/String;

    iput-object v1, v0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->icon:Ljava/lang/String;

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

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 77
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;

    .line 78
    iget-object v2, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->id:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->name:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->name:Ljava/lang/String;

    .line 79
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->value:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->value:Ljava/lang/String;

    .line 80
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->icon:Ljava/lang/String;

    iget-object p1, p1, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->icon:Ljava/lang/String;

    .line 81
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

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    .line 86
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->id:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->name:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->value:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->icon:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->icon:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->name:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->value:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZRCSParam{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
