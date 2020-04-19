.class Lus/zoom/zrc/utils/ZRCImageLoaderImpl$DecodeImageTask;
.super Landroid/os/AsyncTask;
.source "ZRCImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/utils/ZRCImageLoaderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecodeImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private displayHeight:I

.field private displayWidth:I

.field private loaderRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lus/zoom/zrc/utils/ZRCImageLoaderImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lus/zoom/zrc/utils/ZRCImageLoaderImpl;)V
    .locals 1

    .line 675
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 676
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl$DecodeImageTask;->loaderRef:Ljava/lang/ref/WeakReference;

    .line 677
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object p1

    .line 678
    invoke-static {p1}, Lus/zoom/androidlib/util/UIUtil;->getDisplayWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl$DecodeImageTask;->displayWidth:I

    .line 679
    invoke-static {p1}, Lus/zoom/androidlib/util/UIUtil;->getDisplayHeight(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl$DecodeImageTask;->displayHeight:I

    return-void
.end method

.method synthetic constructor <init>(Lus/zoom/zrc/utils/ZRCImageLoaderImpl;Lus/zoom/zrc/utils/ZRCImageLoaderImpl$1;)V
    .locals 0

    .line 669
    invoke-direct {p0, p1}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl$DecodeImageTask;-><init>(Lus/zoom/zrc/utils/ZRCImageLoaderImpl;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 14

    const/4 v0, 0x0

    .line 689
    aget-object p1, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v3, v2

    const/4 v2, 0x1

    const/4 v4, 0x0

    :cond_0
    const/4 v5, 0x3

    .line 696
    :try_start_0
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 697
    iput-boolean v1, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 698
    invoke-static {p1, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 699
    iget v7, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 700
    iget v8, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const-string v9, "ZRCImageLoader"

    .line 702
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "decodeFile step 1: path="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", outWidth="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", outHeight="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v0, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 705
    iget v9, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl$DecodeImageTask;->displayWidth:I

    if-lez v9, :cond_1

    iget v9, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl$DecodeImageTask;->displayWidth:I

    if-gt v7, v9, :cond_2

    :cond_1
    iget v9, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl$DecodeImageTask;->displayHeight:I

    if-lez v9, :cond_3

    iget v9, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl$DecodeImageTask;->displayHeight:I

    if-le v8, v9, :cond_3

    .line 707
    :cond_2
    :goto_0
    iget v9, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl$DecodeImageTask;->displayWidth:I

    if-lez v9, :cond_3

    div-int v9, v7, v2

    iget v10, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl$DecodeImageTask;->displayWidth:I

    if-lt v9, v10, :cond_3

    iget v9, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl$DecodeImageTask;->displayHeight:I

    if-lez v9, :cond_3

    div-int v9, v8, v2

    iget v10, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl$DecodeImageTask;->displayHeight:I

    if-lt v9, v10, :cond_3

    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 713
    :cond_3
    iput-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 714
    iput v2, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 715
    invoke-static {p1, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    const-string v6, "ZRCImageLoader"

    .line 716
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "decodeFile step 2: inSampleSize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", bitmap.width="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",bitmap.height="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v0, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v3

    goto :goto_1

    :catch_0
    move-exception v6

    const-string v7, "ZRCImageLoader"

    const-string v8, "decodeFile error: "

    .line 719
    new-array v9, v0, [Ljava/lang/Object;

    invoke-static {v7, v6, v8, v9}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v4, v1

    if-le v4, v5, :cond_0

    const-string v2, "ZRCImageLoader"

    .line 725
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decode too much times! "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v2, v4, v6}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v7, v3

    .line 733
    :goto_1
    :try_start_1
    new-instance v2, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v2, p1}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v3, "Orientation"

    .line 734
    invoke-virtual {v2, v3, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-eq p1, v5, :cond_6

    const/4 v1, 0x6

    if-eq p1, v1, :cond_5

    const/16 v1, 0x8

    if-eq p1, v1, :cond_4

    goto :goto_2

    :cond_4
    const/16 p1, 0x10e

    const/16 v0, 0x10e

    goto :goto_2

    :cond_5
    const/16 p1, 0x5a

    const/16 v0, 0x5a

    goto :goto_2

    :cond_6
    const/16 p1, 0xb4

    const/16 v0, 0xb4

    goto :goto_2

    :catch_1
    const-string v2, "decode rotation error: %s"

    .line 747
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    if-eqz v7, :cond_7

    if-lez v0, :cond_7

    .line 751
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, v0

    .line 752
    invoke-virtual {v12, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 753
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    const/4 v13, 0x1

    invoke-static/range {v7 .. v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    :cond_7
    return-object v7
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 669
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl$DecodeImageTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 761
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 762
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl$DecodeImageTask;->loaderRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;

    if-eqz v0, :cond_0

    .line 764
    invoke-static {v0, p1}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->access$200(Lus/zoom/zrc/utils/ZRCImageLoaderImpl;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 669
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl$DecodeImageTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method setSize(II)V
    .locals 0

    .line 683
    iput p1, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl$DecodeImageTask;->displayWidth:I

    .line 684
    iput p2, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl$DecodeImageTask;->displayHeight:I

    return-void
.end method
