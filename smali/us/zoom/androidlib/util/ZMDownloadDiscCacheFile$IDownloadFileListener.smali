.class public interface abstract Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$IDownloadFileListener;
.super Ljava/lang/Object;
.source "ZMDownloadDiscCacheFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IDownloadFileListener"
.end annotation


# virtual methods
.method public abstract onDownloadCanceled(Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;Ljava/lang/String;)V
.end method

.method public abstract onDownloadCompleted(Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;Ljava/lang/String;Lus/zoom/androidlib/cache/impl/LimitedAgeDiskCache;)V
.end method

.method public abstract onDownloadFailed(Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;Ljava/lang/String;)V
.end method

.method public abstract onDownloadProgress(Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;II)V
.end method
