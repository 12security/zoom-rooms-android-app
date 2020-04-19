.class public Lus/zoom/zrcsdk/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areTwoUserIdsEqual(II)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    shr-int/lit8 p0, p0, 0xa

    shr-int/lit8 p1, p1, 0xa

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method
