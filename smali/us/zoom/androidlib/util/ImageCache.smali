.class public Lus/zoom/androidlib/util/ImageCache;
.super Ljava/lang/Object;
.source "ImageCache.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/util/ImageCache$Key;
    }
.end annotation


# static fields
.field private static cache:Lus/zoom/androidlib/util/ImageCache;


# instance fields
.field private mCaches:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Lus/zoom/androidlib/util/ImageCache$Key;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v1, v0

    .line 69
    new-instance v0, Lus/zoom/androidlib/util/ImageCache$1;

    div-int/lit8 v1, v1, 0x8

    invoke-direct {v0, p0, v1}, Lus/zoom/androidlib/util/ImageCache$1;-><init>(Lus/zoom/androidlib/util/ImageCache;I)V

    iput-object v0, p0, Lus/zoom/androidlib/util/ImageCache;->mCaches:Landroidx/collection/LruCache;

    return-void
.end method

.method public static declared-synchronized getInstance()Lus/zoom/androidlib/util/ImageCache;
    .locals 2

    const-class v0, Lus/zoom/androidlib/util/ImageCache;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lus/zoom/androidlib/util/ImageCache;->cache:Lus/zoom/androidlib/util/ImageCache;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lus/zoom/androidlib/util/ImageCache;

    invoke-direct {v1}, Lus/zoom/androidlib/util/ImageCache;-><init>()V

    sput-object v1, Lus/zoom/androidlib/util/ImageCache;->cache:Lus/zoom/androidlib/util/ImageCache;

    .line 24
    :cond_0
    sget-object v1, Lus/zoom/androidlib/util/ImageCache;->cache:Lus/zoom/androidlib/util/ImageCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getBitmap(Lus/zoom/androidlib/util/ImageCache$Key;)Landroid/graphics/Bitmap;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 94
    :cond_0
    iget-object v1, p0, Lus/zoom/androidlib/util/ImageCache;->mCaches:Landroidx/collection/LruCache;

    invoke-virtual {v1, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 95
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    iget-object v1, p0, Lus/zoom/androidlib/util/ImageCache;->mCaches:Landroidx/collection/LruCache;

    invoke-virtual {v1, p1}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    .line 114
    iget-object p1, p0, Lus/zoom/androidlib/util/ImageCache;->mCaches:Landroidx/collection/LruCache;

    invoke-virtual {p1}, Landroidx/collection/LruCache;->evictAll()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x28

    if-lt p1, v0, :cond_1

    .line 117
    iget-object p1, p0, Lus/zoom/androidlib/util/ImageCache;->mCaches:Landroidx/collection/LruCache;

    invoke-virtual {p1}, Landroidx/collection/LruCache;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Landroidx/collection/LruCache;->trimToSize(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public putBitmap(Lus/zoom/androidlib/util/ImageCache$Key;Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/util/ImageCache;->mCaches:Landroidx/collection/LruCache;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    :goto_0
    return-void
.end method
