.class Lus/zoom/zrc/utils/ZRCImageLoaderImpl;
.super Lus/zoom/zrc/utils/ZRCImageLoader;
.source "ZRCImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/utils/ZRCImageLoaderImpl$DecodeImageTask;
    }
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field decodedFile:Ljava/io/File;

.field decodingFile:Ljava/io/File;

.field private downloadOnly:Z

.field downloadingFile:Ljava/io/File;

.field private folder:Ljava/io/File;

.field private imageViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private loadHeight:I

.field private loadWidth:I

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 353
    invoke-direct {p0}, Lus/zoom/zrc/utils/ZRCImageLoader;-><init>()V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 336
    invoke-static {p0}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->logFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/utils/ZRCImageLoaderImpl;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 336
    invoke-direct {p0, p1}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->onDecodeImageFinished(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private createFolder()V
    .locals 3

    .line 511
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->folder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 512
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->folder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ZRCImageLoader"

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create folder error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->folder:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private decodeImageFile(Ljava/io/File;)V
    .locals 6

    const-string v0, "ZRCImageLoader"

    const-string v1, "decoding image: %s"

    const/4 v2, 0x1

    .line 589
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->logFileName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 590
    iput-object p1, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->decodingFile:Ljava/io/File;

    .line 592
    new-instance v0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl$DecodeImageTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl$DecodeImageTask;-><init>(Lus/zoom/zrc/utils/ZRCImageLoaderImpl;Lus/zoom/zrc/utils/ZRCImageLoaderImpl$1;)V

    .line 593
    iget v1, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->loadWidth:I

    iget v3, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->loadHeight:I

    invoke-virtual {v0, v1, v3}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl$DecodeImageTask;->setSize(II)V

    .line 594
    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-virtual {v0, v1}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl$DecodeImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private dispatchImageDrawable(ZLjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 574
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->imageViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 577
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 581
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->listenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 582
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrc/utils/ZRCImageLoader$OnImageLoadedListener;

    .line 583
    invoke-interface {v2, p1, p2, p3}, Lus/zoom/zrc/utils/ZRCImageLoader$OnImageLoadedListener;->onImageLoaded(ZLjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private dispatchImageLoadFailed()V
    .locals 4

    const-string v0, "ZRCImageLoader"

    .line 542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchImageLoadFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 544
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->url:Ljava/lang/String;

    .line 546
    iget-object v1, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->downloadingFile:Ljava/io/File;

    invoke-virtual {p0, v1}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->deleteFile(Ljava/io/File;)V

    .line 547
    iget-object v1, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->decodingFile:Ljava/io/File;

    invoke-virtual {p0, v1}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->deleteFile(Ljava/io/File;)V

    .line 548
    iget-object v1, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->decodedFile:Ljava/io/File;

    invoke-virtual {p0, v1}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->deleteFile(Ljava/io/File;)V

    .line 549
    invoke-virtual {p0}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->removeCache()V

    .line 551
    iput-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->url:Ljava/lang/String;

    .line 553
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->drawableFactory:Lus/zoom/zrc/utils/ZRCImageLoader$IDrawableFactory;

    if-nez v0, :cond_0

    const-string v0, "ZRCImageLoader"

    const-string v1, "dispatchImageLoadFailed error: drawableFactory is null!"

    .line 554
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 558
    :cond_0
    invoke-direct {p0, v2}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->updateImageViewTagStatus(Z)V

    .line 560
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->drawableFactory:Lus/zoom/zrc/utils/ZRCImageLoader$IDrawableFactory;

    invoke-interface {v0}, Lus/zoom/zrc/utils/ZRCImageLoader$IDrawableFactory;->createDefaultDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 561
    iget-object v1, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->url:Ljava/lang/String;

    invoke-direct {p0, v2, v1, v0}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->dispatchImageDrawable(ZLjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private dispatchImageLoadSuccess()V
    .locals 4

    const-string v0, "ZRCImageLoader"

    .line 528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchImageLoadSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", bitmap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 530
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->drawableFactory:Lus/zoom/zrc/utils/ZRCImageLoader$IDrawableFactory;

    if-nez v0, :cond_0

    const-string v0, "ZRCImageLoader"

    const-string v1, "dispatchImageLoadSuccess error: drawableFactory is null!"

    .line 531
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 535
    invoke-direct {p0, v0}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->updateImageViewTagStatus(Z)V

    .line 537
    iget-object v1, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->drawableFactory:Lus/zoom/zrc/utils/ZRCImageLoader$IDrawableFactory;

    iget-object v2, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v1, v2}, Lus/zoom/zrc/utils/ZRCImageLoader$IDrawableFactory;->createDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 538
    iget-object v2, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->url:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->dispatchImageDrawable(ZLjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private dispatchImageLoaded()V
    .locals 3

    .line 519
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    invoke-direct {p0}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->dispatchImageLoadSuccess()V

    goto :goto_0

    :cond_0
    const-string v0, "ZRCImageLoader"

    const-string v1, "dispatchImageLoaded, but with an invalid bitmap!"

    const/4 v2, 0x0

    .line 522
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 523
    invoke-direct {p0}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->dispatchImageLoadFailed()V

    :goto_0
    return-void
.end method

.method private downloadImage(Ljava/lang/String;Ljava/io/File;)V
    .locals 3

    const-string v0, "ZRCImageLoader"

    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloading image: url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", file="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->logFileName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    invoke-direct {p0}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->createFolder()V

    .line 506
    iput-object p2, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->downloadingFile:Ljava/io/File;

    .line 507
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, v1}, Lus/zoom/zrc/model/Model;->downloadFile(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private getFilePathFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 598
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->currentDomain()Ljava/lang/String;

    move-result-object v0

    .line 599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    .line 601
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    const-string v2, "."

    .line 603
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-le v2, v1, :cond_1

    if-le v2, v0, :cond_1

    .line 604
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 605
    :goto_0
    invoke-static {p1}, Lus/zoom/zrc/utils/Md5FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->folder:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isImageDecoded(Ljava/io/File;)Z
    .locals 1

    .line 486
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->decodedFile:Ljava/io/File;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isImageDecoding(Ljava/io/File;)Z
    .locals 1

    .line 482
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->decodingFile:Ljava/io/File;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isImageDownloaded(Ljava/io/File;)Z
    .locals 0

    .line 494
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method private isImageDownloading(Ljava/io/File;)Z
    .locals 1

    .line 498
    invoke-direct {p0, p1}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->isImageDecoded(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 499
    invoke-direct {p0, p1}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->isImageDownloaded(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->downloadingFile:Ljava/io/File;

    .line 500
    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isValidBitmap(Landroid/graphics/Bitmap;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 490
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static logFileName(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 647
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->logFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static logFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "us.zoom.zrc"

    .line 651
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, 0xb

    .line 653
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p0
.end method

.method private onDecodeImageFinished(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 659
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->decodingFile:Ljava/io/File;

    iput-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->decodedFile:Ljava/io/File;

    const/4 v0, 0x0

    .line 660
    iput-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->decodingFile:Ljava/io/File;

    const-string v0, "ZRCImageLoader"

    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decode image success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->decodedFile:Ljava/io/File;

    invoke-static {v2}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->logFileName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 664
    iput-object p1, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->bitmap:Landroid/graphics/Bitmap;

    .line 666
    invoke-direct {p0}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->dispatchImageLoaded()V

    return-void
.end method

.method private updateImageViewTagStatus(Z)V
    .locals 1

    .line 565
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->imageViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 566
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 568
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->imageViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lus/zoom/zrc/utils/ZRCImageLoader$LoadImageFailedTag;

    invoke-direct {p1, p0}, Lus/zoom/zrc/utils/ZRCImageLoader$LoadImageFailedTag;-><init>(Lus/zoom/zrc/utils/ZRCImageLoader;)V

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public deleteUselessFiles()V
    .locals 5

    .line 451
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->folder:Ljava/io/File;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 455
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->folder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 460
    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_6

    aget-object v3, v0, v2

    .line 461
    invoke-static {v3}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->isDownloadingFile(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 465
    :cond_2
    iget-object v4, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->downloadingFile:Ljava/io/File;

    invoke-static {v4, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 469
    :cond_3
    iget-object v4, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->decodingFile:Ljava/io/File;

    invoke-static {v4, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    .line 473
    :cond_4
    iget-object v4, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->decodedFile:Ljava/io/File;

    invoke-static {v4, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    .line 477
    :cond_5
    invoke-virtual {p0, v3}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->deleteFile(Ljava/io/File;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-void

    :cond_7
    :goto_2
    return-void
.end method

.method public downloadImage(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    .line 420
    iput-boolean v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->downloadOnly:Z

    .line 421
    invoke-direct {p0, p1}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->getFilePathFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 422
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "ZRCImageLoader"

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadImage, file already exists, file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->logFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 427
    :cond_0
    invoke-direct {p0, p1, v1}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->downloadImage(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method public isLoading()Z
    .locals 1

    .line 432
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->downloadingFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->decodingFile:Ljava/io/File;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadImage(Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .locals 2

    .line 373
    invoke-static {p2}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "load image, but url is: %s"

    const/4 p3, 0x1

    .line 374
    new-array p3, p3, [Ljava/lang/Object;

    aput-object p2, p3, v1

    invoke-static {p1, p3}, Lus/zoom/zrcsdk/util/ZRCLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->folder:Ljava/io/File;

    if-nez v0, :cond_1

    const-string p1, "ZRCImageLoader"

    const-string p2, "load image, but folder is null"

    .line 379
    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 383
    :cond_1
    iput-boolean v1, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->downloadOnly:Z

    .line 384
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->imageViewRef:Ljava/lang/ref/WeakReference;

    .line 385
    iput-object p2, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->url:Ljava/lang/String;

    .line 387
    invoke-direct {p0, p2}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->getFilePathFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 389
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 391
    invoke-direct {p0, v0}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->isImageDecoded(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 392
    invoke-direct {p0}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->dispatchImageLoaded()V

    return-void

    .line 396
    :cond_2
    invoke-direct {p0, v0}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->isImageDecoding(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "ZRCImageLoader"

    .line 397
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is decoding..."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 401
    :cond_3
    invoke-direct {p0, v0}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->isImageDownloaded(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 402
    invoke-direct {p0, v0}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->decodeImageFile(Ljava/io/File;)V

    return-void

    .line 406
    :cond_4
    invoke-direct {p0, v0}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->isImageDownloading(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "ZRCImageLoader"

    .line 407
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is downloading..."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_5
    if-eqz p3, :cond_6

    .line 411
    iget-object p1, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 412
    invoke-direct {p0}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->dispatchImageLoaded()V

    .line 415
    :cond_6
    invoke-direct {p0, p2, v0}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->downloadImage(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method onFileDownloadFailed(Ljava/lang/String;)V
    .locals 1

    .line 633
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 634
    iget-object p1, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->downloadingFile:Ljava/io/File;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 638
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->dispatchImageLoadFailed()V

    const/4 p1, 0x0

    .line 639
    iput-object p1, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->downloadingFile:Ljava/io/File;

    return-void
.end method

.method onFileDownloadSuccess(Ljava/lang/String;)V
    .locals 4

    .line 611
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 612
    iget-object v1, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->downloadingFile:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 616
    :cond_0
    invoke-virtual {p0, p1}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->fileExists(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    const-string p1, "ZRCImageLoader"

    const-string v2, "download success, but can\'t find file: %s"

    const/4 v3, 0x1

    .line 617
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->logFileName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {p1, v2, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string p1, "ZRCImageLoader"

    .line 621
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download image success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->logFileName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 623
    iget-boolean p1, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->downloadOnly:Z

    if-eqz p1, :cond_2

    return-void

    .line 627
    :cond_2
    invoke-direct {p0, v0}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->decodeImageFile(Ljava/io/File;)V

    const/4 p1, 0x0

    .line 628
    iput-object p1, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->downloadingFile:Ljava/io/File;

    return-void
.end method

.method public removeCache()V
    .locals 3

    const-string v0, "ZRCImageLoader"

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeCache for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 438
    iput-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->url:Ljava/lang/String;

    .line 439
    iput-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->downloadingFile:Ljava/io/File;

    .line 440
    iput-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->decodingFile:Ljava/io/File;

    .line 441
    iput-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->decodedFile:Ljava/io/File;

    .line 443
    iget-object v1, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 444
    iget-object v1, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 445
    iput-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->bitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method setFolder(Ljava/lang/String;)V
    .locals 1

    .line 358
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->folder:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lus/zoom/androidlib/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 362
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->folder:Ljava/io/File;

    return-void
.end method

.method public setSize(II)V
    .locals 0

    .line 367
    iput p1, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->loadWidth:I

    .line 368
    iput p2, p0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->loadHeight:I

    return-void
.end method
