.class public Lus/zoom/zrc/utils/ContactsAvatarCache;
.super Ljava/lang/Object;
.source "ContactsAvatarCache.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactsAvatarCache"

.field private static instance:Lus/zoom/zrc/utils/ContactsAvatarCache;


# instance fields
.field private mCacheMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/utils/ContactsAvatarCache;->mCacheMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method private declared-synchronized cacheAvatar(ILandroid/graphics/Bitmap;)V
    .locals 1

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 113
    :try_start_0
    iget-object v0, p0, Lus/zoom/zrc/utils/ContactsAvatarCache;->mCacheMap:Ljava/util/WeakHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 115
    :cond_0
    iget-object p2, p0, Lus/zoom/zrc/utils/ContactsAvatarCache;->mCacheMap:Ljava/util/WeakHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static getAvatarStream(Landroid/content/Context;I)Ljava/io/InputStream;
    .locals 4

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    .line 128
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 133
    :cond_1
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v0

    .line 139
    :cond_2
    :try_start_0
    invoke-static {p0, p1}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private declared-synchronized getCachedAvatar(I)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    .line 120
    :try_start_0
    iget-object v0, p0, Lus/zoom/zrc/utils/ContactsAvatarCache;->mCacheMap:Ljava/util/WeakHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized getInstance()Lus/zoom/zrc/utils/ContactsAvatarCache;
    .locals 2

    const-class v0, Lus/zoom/zrc/utils/ContactsAvatarCache;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lus/zoom/zrc/utils/ContactsAvatarCache;->instance:Lus/zoom/zrc/utils/ContactsAvatarCache;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lus/zoom/zrc/utils/ContactsAvatarCache;

    invoke-direct {v1}, Lus/zoom/zrc/utils/ContactsAvatarCache;-><init>()V

    sput-object v1, Lus/zoom/zrc/utils/ContactsAvatarCache;->instance:Lus/zoom/zrc/utils/ContactsAvatarCache;

    .line 31
    :cond_0
    sget-object v1, Lus/zoom/zrc/utils/ContactsAvatarCache;->instance:Lus/zoom/zrc/utils/ContactsAvatarCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static syncGetContactAvatar(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 92
    :cond_0
    invoke-static {p0, p1}, Lus/zoom/zrc/utils/ContactsAvatarCache;->getAvatarStream(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object p0

    if-nez p0, :cond_1

    .line 95
    invoke-static {}, Lus/zoom/zrc/utils/ContactsAvatarCache;->getInstance()Lus/zoom/zrc/utils/ContactsAvatarCache;

    move-result-object p0

    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/utils/ContactsAvatarCache;->cacheAvatar(ILandroid/graphics/Bitmap;)V

    return-object v0

    .line 99
    :cond_1
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 101
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 103
    sget-object v1, Lus/zoom/zrc/utils/ContactsAvatarCache;->TAG:Ljava/lang/String;

    const-string v2, "close InputStream exception"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, p0, v2, v3}, Lus/zoom/androidlib/util/ZMLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    :goto_0
    invoke-static {}, Lus/zoom/zrc/utils/ContactsAvatarCache;->getInstance()Lus/zoom/zrc/utils/ContactsAvatarCache;

    move-result-object p0

    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/utils/ContactsAvatarCache;->cacheAvatar(ILandroid/graphics/Bitmap;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getContactAvatar(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 39
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lus/zoom/zrc/utils/ContactsAvatarCache;->getContactAvatar(Landroid/content/Context;IZ)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getContactAvatar(Landroid/content/Context;IZ)Landroid/graphics/Bitmap;
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 44
    monitor-exit p0

    return-object v0

    .line 46
    :cond_0
    :try_start_0
    invoke-direct {p0, p2}, Lus/zoom/zrc/utils/ContactsAvatarCache;->getCachedAvatar(I)Ljava/lang/Object;

    move-result-object v1

    .line 47
    instance-of v2, v1, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 48
    check-cast v1, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_1
    if-eqz v1, :cond_2

    .line 50
    monitor-exit p0

    return-object v0

    :cond_2
    if-eqz p3, :cond_3

    .line 54
    monitor-exit p0

    return-object v0

    .line 56
    :cond_3
    :try_start_1
    invoke-static {p1, p2}, Lus/zoom/zrc/utils/ContactsAvatarCache;->syncGetContactAvatar(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
