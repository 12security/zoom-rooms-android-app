.class final Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$SavedState$1;
.super Ljava/lang/Object;
.source "ZMViewPagerBottomSheetBehavior.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 834
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 834
    invoke-virtual {p0, p1, p2}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$SavedState;
    .locals 2

    .line 842
    new-instance v0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$SavedState;
    .locals 1

    .line 837
    new-instance v0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$SavedState;

    invoke-direct {v0, p1, p2}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 834
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$SavedState$1;->newArray(I)[Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$SavedState;
    .locals 0

    .line 847
    new-array p1, p1, [Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$SavedState;

    return-object p1
.end method
