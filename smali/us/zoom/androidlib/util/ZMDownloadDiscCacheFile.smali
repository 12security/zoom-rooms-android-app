.class public Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;
.super Lus/zoom/androidlib/util/ZMAsyncTask;
.source "ZMDownloadDiscCacheFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$onCanceledRunnable;,
        Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$onCompeletedRunnable;,
        Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$OnErrorRunnable;,
        Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$ContentLengthInputStream;,
        Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$IDownloadFileListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lus/zoom/androidlib/util/ZMAsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# instance fields
.field private diskCache:Lus/zoom/androidlib/cache/impl/LimitedAgeDiskCache;

.field private mListener:Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$IDownloadFileListener;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$IDownloadFileListener;Ljava/lang/String;Lus/zoom/androidlib/cache/impl/LimitedAgeDiskCache;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Lus/zoom/androidlib/util/ZMAsyncTask;-><init>()V

    .line 119
    iput-object p1, p0, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;->mListener:Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$IDownloadFileListener;

    .line 120
    iput-object p2, p0, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;->mUrl:Ljava/lang/String;

    .line 121
    iput-object p3, p0, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;->diskCache:Lus/zoom/androidlib/cache/impl/LimitedAgeDiskCache;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;)Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$IDownloadFileListener;
    .locals 0

    .line 14
    iget-object p0, p0, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;->mListener:Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$IDownloadFileListener;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;)Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;)Lus/zoom/androidlib/cache/impl/LimitedAgeDiskCache;
    .locals 0

    .line 14
    iget-object p0, p0, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;->diskCache:Lus/zoom/androidlib/cache/impl/LimitedAgeDiskCache;

    return-object p0
.end method

.method static synthetic access$500(Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;II)Z
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;->fireProgressEvent(II)Z

    move-result p0

    return p0
.end method

.method private fireProgressEvent(II)Z
    .locals 2

    .line 159
    invoke-direct {p0}, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;->isTaskInterrupted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    .line 161
    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;->publishProgress([Ljava/lang/Object;)V

    return p2
.end method

.method private isTaskInterrupted()Z
    .locals 1

    .line 166
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;->doInBackground([Ljava/lang/Void;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Runnable;
    .locals 4

    .line 128
    iget-object p1, p0, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;->mUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_3

    iget-object p1, p0, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;->diskCache:Lus/zoom/androidlib/cache/impl/LimitedAgeDiskCache;

    if-nez p1, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 133
    new-instance p1, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$onCanceledRunnable;

    invoke-direct {p1, p0, v0}, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$onCanceledRunnable;-><init>(Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$1;)V

    return-object p1

    .line 137
    :cond_1
    :try_start_0
    new-instance p1, Ljava/net/URL;

    iget-object v1, p0, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;->mUrl:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 139
    new-instance v1, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$ContentLengthInputStream;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentLength()I

    move-result p1

    invoke-direct {v1, p0, v2, p1}, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$ContentLengthInputStream;-><init>(Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;Ljava/io/InputStream;I)V

    .line 140
    iget-object p1, p0, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;->diskCache:Lus/zoom/androidlib/cache/impl/LimitedAgeDiskCache;

    iget-object v2, p0, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;->mUrl:Ljava/lang/String;

    new-instance v3, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$1;

    invoke-direct {v3, p0}, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$1;-><init>(Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;)V

    invoke-virtual {p1, v2, v1, v3}, Lus/zoom/androidlib/cache/impl/LimitedAgeDiskCache;->save(Ljava/lang/String;Ljava/io/InputStream;Lus/zoom/androidlib/cache/IoUtils$CopyListener;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    invoke-virtual {p0}, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 152
    new-instance p1, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$onCanceledRunnable;

    invoke-direct {p1, p0, v0}, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$onCanceledRunnable;-><init>(Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$1;)V

    return-object p1

    .line 155
    :cond_2
    new-instance p1, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$onCompeletedRunnable;

    invoke-direct {p1, p0, v0}, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$onCompeletedRunnable;-><init>(Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$1;)V

    return-object p1

    .line 148
    :catch_0
    new-instance p1, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$OnErrorRunnable;

    invoke-direct {p1, p0, v0}, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$OnErrorRunnable;-><init>(Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$1;)V

    return-object p1

    .line 129
    :cond_3
    :goto_0
    new-instance p1, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$OnErrorRunnable;

    invoke-direct {p1, p0, v0}, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$OnErrorRunnable;-><init>(Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$1;)V

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;->onPostExecute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Runnable;)V
    .locals 0

    .line 174
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2

    const/4 v0, 0x1

    .line 179
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    .line 180
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 182
    iget-object v1, p0, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;->mListener:Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$IDownloadFileListener;

    if-eqz v1, :cond_0

    .line 183
    invoke-interface {v1, p0, v0, p1}, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$IDownloadFileListener;->onDownloadProgress(Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;II)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
