.class final Lus/zoom/zrcsdk/util/ZRCLog$1;
.super Ljava/lang/Object;
.source "ZRCLog.java"

# interfaces
.implements Lus/zoom/zrcsdk/util/ILogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrcsdk/util/ZRCLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public forceFlush()V
    .locals 0

    return-void
.end method

.method public getLevel()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLogFolder()Ljava/lang/String;
    .locals 1

    const-string v0, "/logs"

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public needLogThreadId()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
