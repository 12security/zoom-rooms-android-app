.class Lus/zoom/androidlib/app/ZMActivityCompat;
.super Ljava/lang/Object;
.source "ZMActivityCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestPermissionsCompat(Lus/zoom/androidlib/app/ZMActivity;[Ljava/lang/String;I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 34
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 35
    invoke-virtual {p0, p1, p2}, Lus/zoom/androidlib/app/ZMActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 38
    new-instance v1, Lus/zoom/androidlib/app/ZMActivityCompat$1;

    invoke-direct {v1, p1, p0, p2}, Lus/zoom/androidlib/app/ZMActivityCompat$1;-><init>([Ljava/lang/String;Lus/zoom/androidlib/app/ZMActivity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public static requestPermissionsFromFragment(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V
    .locals 2

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 13
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lus/zoom/androidlib/app/ZMActivity;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/high16 v1, -0x10000

    and-int/2addr v1, p2

    if-nez v1, :cond_2

    .line 24
    invoke-virtual {v0, p0}, Lus/zoom/androidlib/app/ZMActivity;->getFragmentIndex(Landroidx/fragment/app/Fragment;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    shl-int/lit8 p0, p0, 0x10

    const v1, 0xffff

    and-int/2addr p2, v1

    add-int/2addr p0, p2

    .line 25
    invoke-static {v0, p1, p0}, Lus/zoom/androidlib/app/ZMActivityCompat;->requestPermissionsCompat(Lus/zoom/androidlib/app/ZMActivity;[Ljava/lang/String;I)V

    return-void

    .line 21
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can only use lower 16 bits for requestCode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-void
.end method
