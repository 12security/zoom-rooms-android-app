.class public Lus/zoom/androidlib/app/ZMSendMessageFragment$ExtAppItem;
.super Ljava/lang/Object;
.source "ZMSendMessageFragment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/app/ZMSendMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtAppItem"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lus/zoom/androidlib/app/ZMSendMessageFragment$ExtAppItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field intent:Landroid/content/Intent;

.field packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 235
    new-instance v0, Lus/zoom/androidlib/app/ZMSendMessageFragment$ExtAppItem$1;

    invoke-direct {v0}, Lus/zoom/androidlib/app/ZMSendMessageFragment$ExtAppItem$1;-><init>()V

    sput-object v0, Lus/zoom/androidlib/app/ZMSendMessageFragment$ExtAppItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Lus/zoom/androidlib/app/ZMSendMessageFragment$ExtAppItem;->intent:Landroid/content/Intent;

    .line 218
    iput-object p2, p0, Lus/zoom/androidlib/app/ZMSendMessageFragment$ExtAppItem;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 223
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMSendMessageFragment$ExtAppItem;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->describeContents()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMSendMessageFragment$ExtAppItem;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 232
    iget-object p2, p0, Lus/zoom/androidlib/app/ZMSendMessageFragment$ExtAppItem;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
