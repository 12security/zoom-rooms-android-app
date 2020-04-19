.class public interface abstract Lus/zoom/zrc/lightbar/ISignalTransportInterface;
.super Ljava/lang/Object;
.source "ISignalTransportInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/lightbar/ISignalTransportInterface$Stub;,
        Lus/zoom/zrc/lightbar/ISignalTransportInterface$Default;
    }
.end annotation


# virtual methods
.method public abstract getBooleanSignal(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendAnalogSignal(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendDigitalSignal(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
