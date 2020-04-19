.class public Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;
.super Ljava/lang/Object;
.source "ZRCSMethod.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final TYPE_ACTION:I = 0x2

.field public static final TYPE_ACTIONS:I = 0x3

.field public static final TYPE_INIT:I = 0x1

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_RANGE:I = 0x4


# instance fields
.field private command:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isHidden:Z

.field private isMain:Z

.field private name:Ljava/lang/String;

.field private params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;",
            ">;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;ZZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;",
            ">;ZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->id:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->name:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->command:Ljava/lang/String;

    .line 33
    iput p4, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->type:I

    .line 34
    iput-object p5, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->params:Ljava/util/List;

    .line 35
    iput-boolean p6, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->isMain:Z

    .line 36
    iput-boolean p7, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->isHidden:Z

    .line 37
    iput-object p8, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->icon:Ljava/lang/String;

    return-void
.end method

.method public static methodType2String(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "ZRCSMethod_TYPE_UNKNWON !!"

    return-object p0

    :pswitch_0
    const-string p0, "ZRCSMethod_TYPE_RANGE"

    return-object p0

    :pswitch_1
    const-string p0, "ZRCSMethod_TYPE_ACTIONS"

    return-object p0

    :pswitch_2
    const-string p0, "ZRCSMethod_TYPE_ACTION"

    return-object p0

    :pswitch_3
    const-string p0, "ZRCSMethod_TYPE_INIT"

    return-object p0

    :pswitch_4
    const-string p0, "ZRCSMethod_TYPE_NONE"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->clone()Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;
    .locals 4

    .line 109
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    const/4 v0, 0x0

    .line 114
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 115
    iget-object v2, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->params:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 116
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;

    .line 117
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->clone()Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    .line 121
    new-instance v0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;-><init>()V

    .line 123
    :cond_1
    iget-object v2, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->id:Ljava/lang/String;

    iput-object v2, v0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->id:Ljava/lang/String;

    .line 124
    iget-object v2, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->name:Ljava/lang/String;

    iput-object v2, v0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->name:Ljava/lang/String;

    .line 125
    iget-object v2, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->command:Ljava/lang/String;

    iput-object v2, v0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->command:Ljava/lang/String;

    .line 126
    iget v2, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->type:I

    iput v2, v0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->type:I

    .line 127
    iput-object v1, v0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->params:Ljava/util/List;

    .line 128
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->isMain:Z

    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->isMain:Z

    .line 129
    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->isHidden:Z

    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->isHidden:Z

    .line 130
    iget-object v1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->icon:Ljava/lang/String;

    iput-object v1, v0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->icon:Ljava/lang/String;

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

    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 139
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;

    .line 140
    iget v2, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->type:I

    iget v3, p1, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->type:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->isMain:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->isMain:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->isHidden:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->isHidden:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->id:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->id:Ljava/lang/String;

    .line 143
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->name:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->name:Ljava/lang/String;

    .line 144
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->command:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->command:Ljava/lang/String;

    .line 145
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->params:Ljava/util/List;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->params:Ljava/util/List;

    .line 146
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->icon:Ljava/lang/String;

    iget-object p1, p1, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->icon:Ljava/lang/String;

    .line 147
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

.method public getCommand()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->command:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->params:Ljava/util/List;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 65
    iget v0, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x8

    .line 152
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->id:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->name:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->command:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->params:Ljava/util/List;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->isMain:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->isHidden:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->icon:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->isHidden:Z

    return v0
.end method

.method public isMain()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->isMain:Z

    return v0
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->command:Ljava/lang/String;

    return-void
.end method

.method public setHidden(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->isHidden:Z

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->icon:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->id:Ljava/lang/String;

    return-void
.end method

.method public setMain(Z)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->isMain:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->name:Ljava/lang/String;

    return-void
.end method

.method public setParams(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;",
            ">;)V"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->params:Ljava/util/List;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 69
    iput p1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZRCSMethod: id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", command="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->type:I

    .line 178
    invoke-static {v1}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->methodType2String(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isMain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->isMain:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isHidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->isHidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
