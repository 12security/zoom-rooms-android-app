.class final Lus/zoom/androidlib/app/ZMSendMessageFragment$ExtAppItem$1;
.super Ljava/lang/Object;
.source "ZMSendMessageFragment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/app/ZMSendMessageFragment$ExtAppItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lus/zoom/androidlib/app/ZMSendMessageFragment$ExtAppItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 235
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/app/ZMSendMessageFragment$ExtAppItem$1;->createFromParcel(Landroid/os/Parcel;)Lus/zoom/androidlib/app/ZMSendMessageFragment$ExtAppItem;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lus/zoom/androidlib/app/ZMSendMessageFragment$ExtAppItem;
    .locals 2

    .line 239
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 241
    new-instance v1, Lus/zoom/androidlib/app/ZMSendMessageFragment$ExtAppItem;

    invoke-direct {v1, v0, p1}, Lus/zoom/androidlib/app/ZMSendMessageFragment$ExtAppItem;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 235
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/app/ZMSendMessageFragment$ExtAppItem$1;->newArray(I)[Lus/zoom/androidlib/app/ZMSendMessageFragment$ExtAppItem;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lus/zoom/androidlib/app/ZMSendMessageFragment$ExtAppItem;
    .locals 0

    .line 246
    new-array p1, p1, [Lus/zoom/androidlib/app/ZMSendMessageFragment$ExtAppItem;

    return-object p1
.end method
