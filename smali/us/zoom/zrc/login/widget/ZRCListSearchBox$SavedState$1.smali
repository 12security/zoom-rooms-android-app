.class final Lus/zoom/zrc/login/widget/ZRCListSearchBox$SavedState$1;
.super Ljava/lang/Object;
.source "ZRCListSearchBox.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/login/widget/ZRCListSearchBox$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lus/zoom/zrc/login/widget/ZRCListSearchBox$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 300
    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/widget/ZRCListSearchBox$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lus/zoom/zrc/login/widget/ZRCListSearchBox$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lus/zoom/zrc/login/widget/ZRCListSearchBox$SavedState;
    .locals 2

    .line 302
    new-instance v0, Lus/zoom/zrc/login/widget/ZRCListSearchBox$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lus/zoom/zrc/login/widget/ZRCListSearchBox$SavedState;-><init>(Landroid/os/Parcel;Lus/zoom/zrc/login/widget/ZRCListSearchBox$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 300
    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/widget/ZRCListSearchBox$SavedState$1;->newArray(I)[Lus/zoom/zrc/login/widget/ZRCListSearchBox$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lus/zoom/zrc/login/widget/ZRCListSearchBox$SavedState;
    .locals 0

    .line 306
    new-array p1, p1, [Lus/zoom/zrc/login/widget/ZRCListSearchBox$SavedState;

    return-object p1
.end method
