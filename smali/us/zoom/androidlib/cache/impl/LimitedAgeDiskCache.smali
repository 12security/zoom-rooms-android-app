.class public Lus/zoom/androidlib/cache/impl/LimitedAgeDiskCache;
.super Lus/zoom/androidlib/cache/impl/BaseDiskCache;
.source "LimitedAgeDiskCache.java"


# instance fields
.field private final loadingDates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/io/File;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final maxFileAge:J


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 6

    .line 49
    new-instance v3, Lus/zoom/androidlib/cache/naming/SH1FileNameGenerator;

    invoke-direct {v3}, Lus/zoom/androidlib/cache/naming/SH1FileNameGenerator;-><init>()V

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lus/zoom/androidlib/cache/impl/LimitedAgeDiskCache;-><init>(Ljava/io/File;Ljava/io/File;Lus/zoom/androidlib/cache/naming/FileNameGenerator;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;J)V
    .locals 6

    .line 58
    new-instance v3, Lus/zoom/androidlib/cache/naming/SH1FileNameGenerator;

    invoke-direct {v3}, Lus/zoom/androidlib/cache/naming/SH1FileNameGenerator;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lus/zoom/androidlib/cache/impl/LimitedAgeDiskCache;-><init>(Ljava/io/File;Ljava/io/File;Lus/zoom/androidlib/cache/naming/FileNameGenerator;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Lus/zoom/androidlib/cache/naming/FileNameGenerator;J)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/androidlib/cache/impl/BaseDiskCache;-><init>(Ljava/io/File;Ljava/io/File;Lus/zoom/androidlib/cache/naming/FileNameGenerator;)V

    .line 41
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/androidlib/cache/impl/LimitedAgeDiskCache;->loadingDates:Ljava/util/Map;

    const-wide/16 p1, 0x3e8

    mul-long p4, p4, p1

    .line 70
    iput-wide p4, p0, Lus/zoom/androidlib/cache/impl/LimitedAgeDiskCache;->maxFileAge:J

    return-void
.end method

.method private rememberUsage(Ljava/lang/String;)V
    .locals 3

    .line 123
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/cache/impl/LimitedAgeDiskCache;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 125
    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 126
    iget-object v2, p0, Lus/zoom/androidlib/cache/impl/LimitedAgeDiskCache;->loadingDates:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 118
    invoke-super {p0}, Lus/zoom/androidlib/cache/impl/BaseDiskCache;->clear()V

    .line 119
    iget-object v0, p0, Lus/zoom/androidlib/cache/impl/LimitedAgeDiskCache;->loadingDates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/io/File;
    .locals 7

    .line 75
    invoke-super {p0, p1}, Lus/zoom/androidlib/cache/impl/BaseDiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 76
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    iget-object v0, p0, Lus/zoom/androidlib/cache/impl/LimitedAgeDiskCache;->loadingDates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v0, v1

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 86
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lus/zoom/androidlib/cache/impl/LimitedAgeDiskCache;->maxFileAge:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 87
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 88
    iget-object v0, p0, Lus/zoom/androidlib/cache/impl/LimitedAgeDiskCache;->loadingDates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    .line 90
    iget-object v1, p0, Lus/zoom/androidlib/cache/impl/LimitedAgeDiskCache;->loadingDates:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-object p1
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 2

    .line 112
    iget-object v0, p0, Lus/zoom/androidlib/cache/impl/LimitedAgeDiskCache;->loadingDates:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/cache/impl/LimitedAgeDiskCache;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-super {p0, p1}, Lus/zoom/androidlib/cache/impl/BaseDiskCache;->remove(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public save(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-super {p0, p1, p2}, Lus/zoom/androidlib/cache/impl/BaseDiskCache;->save(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result p2

    .line 106
    invoke-direct {p0, p1}, Lus/zoom/androidlib/cache/impl/LimitedAgeDiskCache;->rememberUsage(Ljava/lang/String;)V

    return p2
.end method

.method public save(Ljava/lang/String;Ljava/io/InputStream;Lus/zoom/androidlib/cache/IoUtils$CopyListener;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-super {p0, p1, p2, p3}, Lus/zoom/androidlib/cache/impl/BaseDiskCache;->save(Ljava/lang/String;Ljava/io/InputStream;Lus/zoom/androidlib/cache/IoUtils$CopyListener;)Z

    move-result p2

    .line 99
    invoke-direct {p0, p1}, Lus/zoom/androidlib/cache/impl/LimitedAgeDiskCache;->rememberUsage(Ljava/lang/String;)V

    return p2
.end method
