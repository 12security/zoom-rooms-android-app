.class final Landroidx/core/os/ResultReceiver$1;
.super Ljava/lang/Object;
.source "ResultReceiver.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/os/ResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/core/os/ResultReceiver;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/core/os/ResultReceiver;
    .locals 1

    .line 146
    new-instance v0, Landroidx/core/os/ResultReceiver;

    invoke-direct {v0, p1}, Landroidx/core/os/ResultReceiver;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 143
    invoke-virtual {p0, p1}, Landroidx/core/os/ResultReceiver$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/core/os/ResultReceiver;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroidx/core/os/ResultReceiver;
    .locals 0

    .line 150
    new-array p1, p1, [Landroidx/core/os/ResultReceiver;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 143
    invoke-virtual {p0, p1}, Landroidx/core/os/ResultReceiver$1;->newArray(I)[Landroidx/core/os/ResultReceiver;

    move-result-object p1

    return-object p1
.end method