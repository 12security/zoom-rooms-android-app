.class public abstract Lus/zoom/zrc/logging/IZRCLogService$Stub;
.super Landroid/os/Binder;
.source "IZRCLogService.java"

# interfaces
.implements Lus/zoom/zrc/logging/IZRCLogService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/logging/IZRCLogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/logging/IZRCLogService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "us.zoom.zrc.logging.IZRCLogService"

.field static final TRANSACTION_forceFlushLog:I = 0x2

.field static final TRANSACTION_printLog:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "us.zoom.zrc.logging.IZRCLogService"

    .line 28
    invoke-virtual {p0, p0, v0}, Lus/zoom/zrc/logging/IZRCLogService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lus/zoom/zrc/logging/IZRCLogService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "us.zoom.zrc.logging.IZRCLogService"

    .line 39
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40
    instance-of v1, v0, Lus/zoom/zrc/logging/IZRCLogService;

    if-eqz v1, :cond_1

    .line 41
    check-cast v0, Lus/zoom/zrc/logging/IZRCLogService;

    return-object v0

    .line 43
    :cond_1
    new-instance v0, Lus/zoom/zrc/logging/IZRCLogService$Stub$Proxy;

    invoke-direct {v0, p0}, Lus/zoom/zrc/logging/IZRCLogService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lus/zoom/zrc/logging/IZRCLogService;
    .locals 1

    .line 151
    sget-object v0, Lus/zoom/zrc/logging/IZRCLogService$Stub$Proxy;->sDefaultImpl:Lus/zoom/zrc/logging/IZRCLogService;

    return-object v0
.end method

.method public static setDefaultImpl(Lus/zoom/zrc/logging/IZRCLogService;)Z
    .locals 1

    .line 144
    sget-object v0, Lus/zoom/zrc/logging/IZRCLogService$Stub$Proxy;->sDefaultImpl:Lus/zoom/zrc/logging/IZRCLogService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 145
    sput-object p0, Lus/zoom/zrc/logging/IZRCLogService$Stub$Proxy;->sDefaultImpl:Lus/zoom/zrc/logging/IZRCLogService;

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

    const-string v0, "us.zoom.zrc.logging.IZRCLogService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 74
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lus/zoom/zrc/logging/IZRCLogService$Stub;->forceFlushLog()V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 61
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 68
    invoke-virtual {p0, p1, p4, p2}, Lus/zoom/zrc/logging/IZRCLogService$Stub;->printLog(ILjava/lang/String;[B)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 56
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
