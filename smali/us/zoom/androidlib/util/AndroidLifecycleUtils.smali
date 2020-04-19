.class public Lus/zoom/androidlib/util/AndroidLifecycleUtils;
.super Ljava/lang/Object;
.source "AndroidLifecycleUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canLoadImage(Landroid/app/Activity;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 40
    :cond_0
    instance-of v1, p0, Lus/zoom/androidlib/app/ZMActivity;

    if-eqz v1, :cond_1

    .line 42
    check-cast p0, Lus/zoom/androidlib/app/ZMActivity;

    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMActivity;->isDestroyed()Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    .line 45
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    const/4 v3, 0x0

    if-lt v1, v2, :cond_2

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_4

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v3
.end method

.method public static canLoadImage(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 27
    :cond_0
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_1

    return v0

    .line 31
    :cond_1
    check-cast p0, Landroid/app/Activity;

    .line 32
    invoke-static {p0}, Lus/zoom/androidlib/util/AndroidLifecycleUtils;->canLoadImage(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static canLoadImage(Landroidx/fragment/app/Fragment;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 19
    invoke-static {p0}, Lus/zoom/androidlib/util/AndroidLifecycleUtils;->canLoadImage(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method
