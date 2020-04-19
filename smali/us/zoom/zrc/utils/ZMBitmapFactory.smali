.class public Lus/zoom/zrc/utils/ZMBitmapFactory;
.super Ljava/lang/Object;
.source "ZMBitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/utils/ZMBitmapFactory$Key;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ZMBitmapFactory"

.field private static cachedMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lus/zoom/zrc/utils/ZMBitmapFactory$Key;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lus/zoom/zrc/utils/ZMBitmapFactory;->cachedMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cacheBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;J)V
    .locals 2

    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    .line 128
    sget-object v0, Lus/zoom/zrc/utils/ZMBitmapFactory;->cachedMap:Ljava/util/WeakHashMap;

    new-instance v1, Lus/zoom/zrc/utils/ZMBitmapFactory$Key;

    invoke-direct {v1, p0, p1, p3, p4}, Lus/zoom/zrc/utils/ZMBitmapFactory$Key;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-static {p0, v0}, Lus/zoom/zrc/utils/ZMBitmapFactory;->decodeFile(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static decodeFile(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-static {p0, p1, v0}, Lus/zoom/zrc/utils/ZMBitmapFactory;->decodeFile(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static decodeFile(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    .line 73
    invoke-static {p0, p1, v0, p2}, Lus/zoom/zrc/utils/ZMBitmapFactory;->decodeFile(Ljava/lang/String;IZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static decodeFile(Ljava/lang/String;IZZ)Landroid/graphics/Bitmap;
    .locals 5

    .line 77
    invoke-static {p0}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 80
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 84
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    if-eqz p2, :cond_2

    .line 89
    invoke-static {p0, v1, v2, v3}, Lus/zoom/zrc/utils/ZMBitmapFactory;->getCachedBitmap(Ljava/lang/String;Ljava/lang/String;J)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object v4, v1

    :goto_0
    if-nez v4, :cond_6

    if-eqz p2, :cond_3

    if-nez p3, :cond_6

    :cond_3
    if-gtz p1, :cond_5

    .line 96
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 p3, 0x1

    .line 97
    iput p3, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 102
    :cond_4
    :try_start_0
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v4, p1

    goto :goto_1

    .line 105
    :catch_0
    :try_start_1
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    add-int/2addr v0, p3

    iput v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 106
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v4, 0x20

    if-le v0, v4, :cond_4

    return-object v1

    :catch_1
    return-object v1

    .line 115
    :cond_5
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object p3

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {p3, v0, p1, v4}, Lus/zoom/zrc/utils/ImageUtil;->translateImageAsSmallBitmapInArea(Landroid/content/Context;Landroid/net/Uri;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    move-object v4, p1

    :goto_1
    if-eqz v4, :cond_6

    if-eqz p2, :cond_6

    .line 119
    invoke-static {p0, v1, v4, v2, v3}, Lus/zoom/zrc/utils/ZMBitmapFactory;->cacheBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;J)V

    :cond_6
    return-object v4
.end method

.method public static decodeFile(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, -0x1

    .line 69
    invoke-static {p0, v0, p1}, Lus/zoom/zrc/utils/ZMBitmapFactory;->decodeFile(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getCachedBitmap(Ljava/lang/String;Ljava/lang/String;J)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return-object v0

    .line 136
    :cond_0
    sget-object v1, Lus/zoom/zrc/utils/ZMBitmapFactory;->cachedMap:Ljava/util/WeakHashMap;

    invoke-static {p0, p1, p2, p3}, Lus/zoom/zrc/utils/ZMBitmapFactory$Key;->getFlyweightInstance(Ljava/lang/String;Ljava/lang/String;J)Lus/zoom/zrc/utils/ZMBitmapFactory$Key;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 137
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    sget-object v1, Lus/zoom/zrc/utils/ZMBitmapFactory;->cachedMap:Ljava/util/WeakHashMap;

    invoke-static {p0, p1, p2, p3}, Lus/zoom/zrc/utils/ZMBitmapFactory$Key;->getFlyweightInstance(Ljava/lang/String;Ljava/lang/String;J)Lus/zoom/zrc/utils/ZMBitmapFactory$Key;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    return-object v0
.end method
