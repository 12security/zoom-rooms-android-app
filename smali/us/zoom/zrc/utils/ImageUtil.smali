.class public Lus/zoom/zrc/utils/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressImageFile(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 582
    invoke-static {p0, v1, v0, v0}, Lus/zoom/zrc/utils/ZMBitmapFactory;->decodeFile(Ljava/lang/String;IZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 586
    :cond_1
    invoke-static {p0, p1, p2}, Lus/zoom/zrc/utils/ImageUtil;->saveBitmapAsJPEG(Landroid/graphics/Bitmap;Ljava/lang/String;I)Z

    move-result p1

    .line 588
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method private static getJpegRotation(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 424
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p0, "Orientation"

    const/4 v1, 0x1

    .line 425
    invoke-virtual {v0, p0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/16 p0, 0x5a

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    const/16 p0, 0xb4

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    if-ne p0, v0, :cond_2

    const/16 p0, 0x10e

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getJpegThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    .line 441
    invoke-static {p0}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 444
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 447
    :try_start_0
    new-instance p0, Landroid/media/ExifInterface;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p0}, Landroid/media/ExifInterface;->hasThumbnail()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 451
    :cond_1
    invoke-virtual {p0}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object p0

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    const/4 v0, 0x0

    .line 455
    array-length v2, p0

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {p0, v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1
.end method

.method public static getNewFilePathForTakingPhoto()Ljava/lang/String;
    .locals 6

    .line 54
    invoke-static {}, Lus/zoom/zrc/utils/ImageUtil;->getZoomGalleryPath()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 57
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 60
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 62
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd-HH-mm-ss"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 63
    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 67
    :goto_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ").jpg"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    return-object v2

    .line 75
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zipow/cmmlib/AppUtil;->getTempPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/capture.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 420
    :cond_0
    invoke-static {p0, p1}, Lus/zoom/androidlib/util/FileUtils;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 483
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 484
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 483
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 486
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 489
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 491
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 492
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 494
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float p1, p1, v5

    .line 495
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float p2, p2, v5

    const/4 v5, 0x1

    .line 497
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 498
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const/high16 v5, -0x10000

    .line 499
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 501
    invoke-virtual {v1, v4, p1, p2, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 503
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 504
    invoke-virtual {v1, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public static getZoomGalleryPath()Ljava/io/File;
    .locals 3

    .line 105
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 108
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/zoom.us"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method private static isJpegFile(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, ".jpg"

    .line 410
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".JPG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".JPEG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidImageFile(Ljava/lang/String;)Z
    .locals 3

    .line 561
    invoke-static {p0}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 564
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 565
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 568
    :try_start_0
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez p0, :cond_1

    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catch_0
    return v1
.end method

.method public static makeGroupAvatarFromMembers(Landroid/content/Context;Ljava/util/List;I)Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lus/zoom/zrc/utils/GroupAvatarDrawable$GroupAvatarItem;",
            ">;I)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    if-gtz p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 546
    :cond_0
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 548
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 550
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 552
    new-instance v0, Lus/zoom/zrc/utils/GroupAvatarDrawable;

    invoke-direct {v0, p1}, Lus/zoom/zrc/utils/GroupAvatarDrawable;-><init>(Ljava/util/List;)V

    .line 554
    invoke-virtual {v0, p2}, Lus/zoom/zrc/utils/GroupAvatarDrawable;->draw(Landroid/graphics/Canvas;)V

    return-object p0
.end method

.method public static makeGroupAvatarFromMembers(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lus/zoom/zrc/utils/GroupAvatarDrawable$GroupAvatarItem;",
            ">;I",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 510
    invoke-static {p3}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 514
    :cond_0
    invoke-static {p0, p1, p2}, Lus/zoom/zrc/utils/ImageUtil;->makeGroupAvatarFromMembers(Landroid/content/Context;Ljava/util/List;I)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    .line 523
    :try_start_0
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 524
    :try_start_1
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p3, 0x64

    invoke-virtual {p0, p1, p3, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 531
    :try_start_2
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object p1, p2

    goto :goto_0

    :catch_0
    move-object p1, p2

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz p1, :cond_2

    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 535
    :catch_1
    :cond_2
    throw p0

    :catch_2
    nop

    :goto_1
    if-eqz p1, :cond_3

    .line 531
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 537
    :catch_3
    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return v1
.end method

.method private static rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    .line 467
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    .line 468
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 471
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 472
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    .line 471
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static saveBitmapAsJPEG(Landroid/graphics/Bitmap;Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    if-nez p2, :cond_1

    const/16 p2, 0x64

    :cond_1
    const/4 v1, 0x0

    .line 603
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 604
    :try_start_1
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, p1, p2, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 611
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 615
    :catch_1
    :cond_2
    throw p0

    :catch_2
    nop

    :goto_1
    if-eqz v1, :cond_3

    .line 611
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_3
    :goto_2
    return v0

    :cond_4
    :goto_3
    return v0
.end method

.method private static translateImageAsSmallBitmap(Landroid/content/Context;Landroid/net/Uri;IIIZZ)Landroid/graphics/Bitmap;
    .locals 14

    move-object v0, p1

    move/from16 v1, p4

    const/4 v2, 0x0

    if-eqz p0, :cond_10

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    if-gtz v1, :cond_1

    return-object v2

    .line 255
    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Lus/zoom/zrc/utils/ImageUtil;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz p6, :cond_4

    move/from16 v7, p2

    move/from16 v8, p3

    const/4 v6, 0x1

    :goto_0
    if-ge v6, v4, :cond_2

    add-int/lit8 v9, v6, 0x1

    .line 284
    div-int v10, p2, v9

    mul-int/lit8 v11, v1, 0x3

    div-int/lit8 v12, v11, 0x4

    if-lt v10, v12, :cond_6

    div-int v9, p3, v9

    div-int/lit8 v11, v11, 0x4

    if-lt v9, v11, :cond_6

    :cond_2
    mul-int/lit8 v9, v1, 0x3

    div-int/lit8 v10, v9, 0x2

    if-lt v7, v10, :cond_6

    div-int/lit8 v9, v9, 0x2

    if-ge v8, v9, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 289
    div-int v7, p2, v6

    .line 290
    div-int v8, p3, v6

    goto :goto_0

    :cond_4
    move/from16 v7, p2

    move/from16 v8, p3

    const/4 v6, 0x1

    :goto_1
    if-ge v6, v4, :cond_5

    add-int/lit8 v9, v6, 0x1

    .line 305
    div-int v10, p2, v9

    mul-int/lit8 v11, v1, 0x3

    div-int/lit8 v12, v11, 0x4

    if-ge v10, v12, :cond_5

    div-int v9, p3, v9

    div-int/lit8 v11, v11, 0x4

    if-lt v9, v11, :cond_6

    :cond_5
    mul-int/lit8 v9, v1, 0x3

    div-int/lit8 v10, v9, 0x2

    if-ge v7, v10, :cond_f

    div-int/lit8 v9, v9, 0x2

    if-ge v8, v9, :cond_f

    .line 315
    :cond_6
    :goto_2
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 316
    iput v6, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 320
    :cond_7
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v9, v2, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 338
    :try_start_2
    invoke-static {v3}, Lus/zoom/zrc/utils/ImageUtil;->isJpegFile(Ljava/lang/String;)Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v4, :cond_8

    .line 340
    :try_start_3
    invoke-static {v3}, Lus/zoom/zrc/utils/ImageUtil;->getJpegRotation(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_8

    .line 342
    invoke-static {v0, v3}, Lus/zoom/zrc/utils/ImageUtil;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_8

    if-eq v3, v0, :cond_8

    .line 344
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v0, v3

    :catch_0
    :cond_8
    if-eqz p5, :cond_9

    if-gt v7, v1, :cond_a

    if-gt v8, v1, :cond_a

    :cond_9
    if-eqz p6, :cond_e

    if-ne v7, v8, :cond_a

    goto :goto_6

    .line 360
    :cond_a
    :try_start_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 361
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-lt v3, v4, :cond_b

    mul-int v4, v4, v1

    .line 366
    div-int v3, v4, v3

    goto :goto_3

    :cond_b
    mul-int v3, v3, v1

    .line 369
    div-int/2addr v3, v4

    move v13, v3

    move v3, v1

    move v1, v13

    :goto_3
    const/4 v4, 0x0

    if-eqz p6, :cond_d

    if-le v1, v3, :cond_c

    sub-int v5, v1, v3

    .line 378
    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    goto :goto_4

    :cond_c
    sub-int v5, v3, v1

    .line 381
    div-int/lit8 v5, v5, 0x2

    move v6, v5

    const/4 v5, 0x0

    .line 383
    :goto_4
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move v3, v1

    goto :goto_5

    :cond_d
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 388
    :goto_5
    :try_start_5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    invoke-static {v1, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 394
    :try_start_6
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 395
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 397
    new-instance v10, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-direct {v10, v4, v4, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    neg-int v11, v5

    neg-int v12, v6

    add-int/2addr v1, v5

    add-int/2addr v3, v6

    invoke-direct {v4, v11, v12, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v8, v0, v10, v4, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 399
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v7

    :catch_1
    return-object v0

    :cond_e
    :goto_6
    return-object v0

    :catch_2
    add-int/2addr v6, v5

    .line 326
    div-int v7, p2, v6

    .line 327
    div-int v8, p3, v6

    .line 328
    iput v6, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 330
    div-int/lit8 v9, v1, 0x4

    if-ge v7, v9, :cond_7

    div-int/lit8 v9, v1, 0x4

    if-ge v8, v9, :cond_7

    return-object v2

    :cond_f
    add-int/lit8 v6, v6, 0x1

    .line 310
    div-int v7, p2, v6

    .line 311
    div-int v8, p3, v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_1

    :catch_3
    return-object v2

    :cond_10
    :goto_7
    return-object v2
.end method

.method public static translateImageAsSmallBitmap(Landroid/content/Context;Landroid/net/Uri;IZ)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 193
    invoke-static {p0, p1, p2, p3, v0}, Lus/zoom/zrc/utils/ImageUtil;->translateImageAsSmallBitmap(Landroid/content/Context;Landroid/net/Uri;IZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static translateImageAsSmallBitmap(Landroid/content/Context;Landroid/net/Uri;IZZ)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-gtz p2, :cond_1

    return-object v0

    .line 209
    :cond_1
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 210
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 211
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 213
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object v3, p0

    move-object v4, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-static/range {v3 .. v9}, Lus/zoom/zrc/utils/ImageUtil;->translateImageAsSmallBitmap(Landroid/content/Context;Landroid/net/Uri;IIIZZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static translateImageAsSmallBitmapInArea(Landroid/content/Context;Landroid/net/Uri;IZ)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 197
    invoke-static {p0, p1, p2, p3, v0}, Lus/zoom/zrc/utils/ImageUtil;->translateImageAsSmallBitmapInArea(Landroid/content/Context;Landroid/net/Uri;IZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static translateImageAsSmallBitmapInArea(Landroid/content/Context;Landroid/net/Uri;IZZ)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    if-gtz p2, :cond_1

    return-object v0

    .line 230
    :cond_1
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 231
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 232
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    int-to-float p2, p2

    .line 234
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float p2, p2, v2

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int p2, v2

    .line 235
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int v2, v2, p2

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v2, v3

    if-le p2, v2, :cond_2

    move v7, p2

    goto :goto_0

    :cond_2
    move v7, v2

    .line 238
    :goto_0
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object v3, p0

    move-object v4, p1

    move v8, p3

    move v9, p4

    invoke-static/range {v3 .. v9}, Lus/zoom/zrc/utils/ImageUtil;->translateImageAsSmallBitmap(Landroid/content/Context;Landroid/net/Uri;IIIZZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static translateImageAsSmallJpeg(Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 117
    invoke-static {p0, p1, p2, v0, p3}, Lus/zoom/zrc/utils/ImageUtil;->translateImageAsSmallJpeg(Landroid/content/Context;Landroid/net/Uri;IZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static translateImageAsSmallJpeg(Landroid/content/Context;Landroid/net/Uri;IZLjava/io/OutputStream;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    if-gtz p2, :cond_1

    return v0

    .line 146
    :cond_1
    :try_start_0
    invoke-static {p0, p1, p2, v0, p3}, Lus/zoom/zrc/utils/ImageUtil;->translateImageAsSmallBitmap(Landroid/content/Context;Landroid/net/Uri;IZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_2

    return v0

    .line 150
    :cond_2
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p2, 0x3c

    invoke-virtual {p0, p1, p2, p4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1

    .line 152
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0

    :cond_4
    :goto_0
    return v0
.end method

.method public static translateImageAsSmallJpeg(Landroid/content/Context;Landroid/net/Uri;IZLjava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-nez p4, :cond_0

    const/4 p0, 0x0

    return p0

    .line 128
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p3, v0}, Lus/zoom/zrc/utils/ImageUtil;->translateImageAsSmallJpeg(Landroid/content/Context;Landroid/net/Uri;IZLjava/io/OutputStream;)Z

    move-result p0

    return p0
.end method

.method public static translateImageAsSmallJpegInArea(Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 121
    invoke-static {p0, p1, p2, v0, p3}, Lus/zoom/zrc/utils/ImageUtil;->translateImageAsSmallJpegInArea(Landroid/content/Context;Landroid/net/Uri;IZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static translateImageAsSmallJpegInArea(Landroid/content/Context;Landroid/net/Uri;IZLjava/io/OutputStream;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    if-gtz p2, :cond_1

    return v0

    .line 173
    :cond_1
    :try_start_0
    invoke-static {p0, p1, p2, v0, p3}, Lus/zoom/zrc/utils/ImageUtil;->translateImageAsSmallBitmapInArea(Landroid/content/Context;Landroid/net/Uri;IZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_2

    return v0

    .line 177
    :cond_2
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p2, 0x3c

    invoke-virtual {p0, p1, p2, p4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1

    .line 179
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0

    :cond_4
    :goto_0
    return v0
.end method

.method public static translateImageAsSmallJpegInArea(Landroid/content/Context;Landroid/net/Uri;IZLjava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-nez p4, :cond_0

    const/4 p0, 0x0

    return p0

    .line 135
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p3, v0}, Lus/zoom/zrc/utils/ImageUtil;->translateImageAsSmallJpegInArea(Landroid/content/Context;Landroid/net/Uri;IZLjava/io/OutputStream;)Z

    move-result p0

    return p0
.end method
