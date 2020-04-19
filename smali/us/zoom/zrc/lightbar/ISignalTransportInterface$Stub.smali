.class public abstract Lus/zoom/zrc/lightbar/ISignalTransportInterface$Stub;
.super Landroid/os/Binder;
.source "ISignalTransportInterface.java"

# interfaces
.implements Lus/zoom/zrc/lightbar/ISignalTransportInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/lightbar/ISignalTransportInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/lightbar/ISignalTransportInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "us.zoom.zrc.lightbar.ISignalTransportInterface"

.field static final TRANSACTION_getBooleanSignal:I = 0x1

.field static final TRANSACTION_sendAnalogSignal:I = 0x3

.field static final TRANSACTION_sendDigitalSignal:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "us.zoom.zrc.lightbar.ISignalTransportInterface"

    .line 32
    invoke-virtual {p0, p0, v0}, Lus/zoom/zrc/lightbar/ISignalTransportInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lus/zoom/zrc/lightbar/ISignalTransportInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "us.zoom.zrc.lightbar.ISignalTransportInterface"

    .line 43
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 44
    instance-of v1, v0, Lus/zoom/zrc/lightbar/ISignalTransportInterface;

    if-eqz v1, :cond_1

    .line 45
    check-cast v0, Lus/zoom/zrc/lightbar/ISignalTransportInterface;

    return-object v0

    .line 47
    :cond_1
    new-instance v0, Lus/zoom/zrc/lightbar/ISignalTransportInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lus/zoom/zrc/lightbar/ISignalTransportInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lus/zoom/zrc/lightbar/ISignalTransportInterface;
    .locals 1

    .line 190
    sget-object v0, Lus/zoom/zrc/lightbar/ISignalTransportInterface$Stub$Proxy;->sDefaultImpl:Lus/zoom/zrc/lightbar/ISignalTransportInterface;

    return-object v0
.end method

.method public static setDefaultImpl(Lus/zoom/zrc/lightbar/ISignalTransportInterface;)Z
    .locals 1

    .line 183
    sget-object v0, Lus/zoom/zrc/lightbar/ISignalTransportInterface$Stub$Proxy;->sDefaultImpl:Lus/zoom/zrc/lightbar/ISignalTransportInterface;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 184
    sput-object p0, Lus/zoom/zrc/lightbar/ISignalTransportInterface$Stub$Proxy;->sDefaultImpl:Lus/zoom/zrc/lightbar/ISignalTransportInterface;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "us.zoom.zrc.lightbar.ISignalTransportInterface"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 86
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 91
    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/lightbar/ISignalTransportInterface$Stub;->sendAnalogSignal(Ljava/lang/String;I)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 75
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 80
    :goto_0
    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/lightbar/ISignalTransportInterface$Stub;->sendDigitalSignal(Ljava/lang/String;Z)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 65
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-virtual {p0, p1}, Lus/zoom/zrc/lightbar/ISignalTransportInterface$Stub;->getBooleanSignal(Ljava/lang/String;)Z

    move-result p1

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 60
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
