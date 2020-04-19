.class public Lus/zoom/zrcsdk/model/ZoomRoomCapability;
.super Ljava/lang/Object;
.source "ZoomRoomCapability.java"


# instance fields
.field private os_auto_login:Z

.field private restart_os:Z

.field private shutdown_os:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lus/zoom/zrcsdk/model/ZoomRoomCapability;->os_auto_login:Z

    .line 16
    iput-boolean v0, p0, Lus/zoom/zrcsdk/model/ZoomRoomCapability;->shutdown_os:Z

    .line 17
    iput-boolean v0, p0, Lus/zoom/zrcsdk/model/ZoomRoomCapability;->restart_os:Z

    return-void
.end method


# virtual methods
.method public canAutoLogin()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZoomRoomCapability;->os_auto_login:Z

    return v0
.end method

.method public canRestartOS()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZoomRoomCapability;->restart_os:Z

    return v0
.end method

.method public canShutdownOS()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZoomRoomCapability;->shutdown_os:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 36
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/ZoomRoomCapability;

    .line 37
    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZoomRoomCapability;->os_auto_login:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZoomRoomCapability;->os_auto_login:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZoomRoomCapability;->shutdown_os:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZoomRoomCapability;->shutdown_os:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZoomRoomCapability;->restart_os:Z

    iget-boolean p1, p1, Lus/zoom/zrcsdk/model/ZoomRoomCapability;->restart_os:Z

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

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 44
    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZoomRoomCapability;->os_auto_login:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZoomRoomCapability;->shutdown_os:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZoomRoomCapability;->restart_os:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 50
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "os_auto_login"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZoomRoomCapability;->os_auto_login:Z

    .line 51
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "shutdown_os"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZoomRoomCapability;->shutdown_os:Z

    .line 52
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "restart_os"

    iget-boolean v2, p0, Lus/zoom/zrcsdk/model/ZoomRoomCapability;->restart_os:Z

    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
