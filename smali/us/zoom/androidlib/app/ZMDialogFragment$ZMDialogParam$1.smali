.class final Lus/zoom/androidlib/app/ZMDialogFragment$ZMDialogParam$1;
.super Ljava/lang/Object;
.source "ZMDialogFragment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/app/ZMDialogFragment$ZMDialogParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lus/zoom/androidlib/app/ZMDialogFragment$ZMDialogParam;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 508
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/app/ZMDialogFragment$ZMDialogParam$1;->createFromParcel(Landroid/os/Parcel;)Lus/zoom/androidlib/app/ZMDialogFragment$ZMDialogParam;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lus/zoom/androidlib/app/ZMDialogFragment$ZMDialogParam;
    .locals 4

    .line 512
    new-instance v0, Lus/zoom/androidlib/app/ZMDialogFragment$ZMDialogParam;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lus/zoom/androidlib/app/ZMDialogFragment$ZMDialogParam;-><init>(IJLjava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 508
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/app/ZMDialogFragment$ZMDialogParam$1;->newArray(I)[Lus/zoom/androidlib/app/ZMDialogFragment$ZMDialogParam;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lus/zoom/androidlib/app/ZMDialogFragment$ZMDialogParam;
    .locals 0

    .line 517
    new-array p1, p1, [Lus/zoom/androidlib/app/ZMDialogFragment$ZMDialogParam;

    return-object p1
.end method
