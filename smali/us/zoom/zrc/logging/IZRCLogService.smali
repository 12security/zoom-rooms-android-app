.class public interface abstract Lus/zoom/zrc/logging/IZRCLogService;
.super Ljava/lang/Object;
.source "IZRCLogService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/logging/IZRCLogService$Stub;,
        Lus/zoom/zrc/logging/IZRCLogService$Default;
    }
.end annotation


# virtual methods
.method public abstract forceFlushLog()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract printLog(ILjava/lang/String;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
