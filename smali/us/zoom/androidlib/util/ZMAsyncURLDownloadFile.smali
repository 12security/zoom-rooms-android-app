.class public Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile;
.super Lus/zoom/androidlib/util/ZMAsyncTask;
.source "ZMAsyncURLDownloadFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile$onCanceledRunnable;,
        Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile$onCompeletedRunnable;,
        Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile$OnErrorRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lus/zoom/androidlib/util/ZMAsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# static fields
.field private static BUFFER_SIZE:I = 0x400


# instance fields
.field private mInput:Landroid/net/Uri;

.field private mListener:Lus/zoom/androidlib/util/IDownloadFileListener;

.field private mOutput:Ljava/lang/String;

.field private mReadBytes:J

.field private mTotalBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JLjava/lang/String;Lus/zoom/androidlib/util/IDownloadFileListener;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lus/zoom/androidlib/util/ZMAsyncTask;-><init>()V

    .line 57
    iput-object p1, p0, Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile;->mInput:Landroid/net/Uri;

    .line 58
    iput-object p4, p0, Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile;->mOutput:Ljava/lang/String;

    .line 59
    iput-object p5, p0, Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile;->mListener:Lus/zoom/androidlib/util/IDownloadFileListener;

    .line 60
    iput-wide p2, p0, Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile;->mTotalBytes:J

    const-wide/16 p1, 0x0

    .line 61
    iput-wide p1, p0, Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile;->mReadBytes:J

    return-void
.end method

.method static synthetic access$000(Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile;)Lus/zoom/androidlib/util/IDownloadFileListener;
    .locals 0

    .line 14
    iget-object p0, p0, Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile;->mListener:Lus/zoom/androidlib/util/IDownloadFileListener;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile;)Landroid/net/Uri;
    .locals 0

    .line 14
    iget-object p0, p0, Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile;->mInput:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile;)Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile;->mOutput:Ljava/lang/String;

    return-object p0
.end method

.method private closeSilently(Ljava/io/Closeable;)V
    .locals 0

    .line 120
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile;->doInBackground([Ljava/lang/Void;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Runnable;
    .locals 10

    .line 66
    iget-object p1, p0, Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile;->mInput:Landroid/net/Uri;

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    iget-object p1, p0, Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile;->mOutput:Ljava/lang/String;

    invoke-static {p1}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_5

    .line 70
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 71
    new-instance p1, Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile$onCanceledRunnable;

    invoke-direct {p1, p0, v0}, Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile$onCanceledRunnable;-><init>(Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile;Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile$1;)V

    return-object p1

    .line 75
    :cond_1
    :try_start_0
    new-instance p1, Ljava/net/URL;

    iget-object v1, p0, Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile;->mInput:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_5

    .line 79
    :try_start_1
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 80
    :try_start_2
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile;->mOutput:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 81
    :try_start_3
    sget v2, Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile;->BUFFER_SIZE:I

    new-array v2, v2, [B

    .line 83
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 84
    invoke-virtual {p0}, Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 85
    new-instance v2, Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile$onCanceledRunnable;

    invoke-direct {v2, p0, v0}, Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile$onCanceledRunnable;-><init>(Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile;Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile$1;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz p1, :cond_2

    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :cond_2
    return-object v2

    :cond_3
    const/4 v4, 0x0

    .line 87
    :try_start_6
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 88
    iget-wide v5, p0, Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile;->mReadBytes:J

    int-to-long v7, v3

    add-long/2addr v5, v7

    iput-wide v5, p0, Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile;->mReadBytes:J

    const/4 v3, 0x2

    .line 89
    new-array v3, v3, [Ljava/lang/Long;

    iget-wide v5, p0, Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile;->mTotalBytes:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-wide v5, p0, Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile;->mReadBytes:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile;->publishProgress([Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 91
    :cond_4
    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz p1, :cond_5

    :try_start_8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 94
    :cond_5
    invoke-virtual {p0}, Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 95
    new-instance p1, Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile$onCanceledRunnable;

    invoke-direct {p1, p0, v0}, Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile$onCanceledRunnable;-><init>(Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile;Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile$1;)V

    return-object p1

    .line 98
    :cond_6
    new-instance p1, Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile$onCompeletedRunnable;

    invoke-direct {p1, p0, v0}, Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile$onCompeletedRunnable;-><init>(Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile;Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile$1;)V

    return-object p1

    :catchall_0
    move-exception v2

    move-object v3, v0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 79
    :try_start_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v3

    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    :goto_1
    if-eqz v3, :cond_7

    .line 91
    :try_start_a
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_b
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :goto_2
    throw v2
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_2
    move-exception v1

    move-object v2, v0

    goto :goto_3

    :catch_2
    move-exception v1

    .line 79
    :try_start_c
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catchall_3
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    :goto_3
    if-eqz p1, :cond_9

    if-eqz v2, :cond_8

    .line 91
    :try_start_d
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    goto :goto_4

    :catch_3
    move-exception p1

    :try_start_e
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_9
    :goto_4
    throw v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    .line 92
    :catch_4
    new-instance p1, Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile$OnErrorRunnable;

    invoke-direct {p1, p0, v0}, Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile$OnErrorRunnable;-><init>(Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile;Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile$1;)V

    return-object p1

    .line 77
    :catch_5
    new-instance p1, Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile$OnErrorRunnable;

    invoke-direct {p1, p0, v0}, Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile$OnErrorRunnable;-><init>(Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile;Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile$1;)V

    return-object p1

    .line 67
    :cond_a
    :goto_5
    new-instance p1, Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile$OnErrorRunnable;

    invoke-direct {p1, p0, v0}, Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile$OnErrorRunnable;-><init>(Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile;Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile$1;)V

    return-object p1
.end method

.method public getmOutput()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile;->mOutput:Ljava/lang/String;

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile;->onPostExecute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Runnable;)V
    .locals 0

    .line 103
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Long;)V
    .locals 7

    const/4 v0, 0x0

    .line 108
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v0, 0x1

    .line 109
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 111
    iget-object v1, p0, Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile;->mListener:Lus/zoom/androidlib/util/IDownloadFileListener;

    if-eqz v1, :cond_0

    move-object v2, p0

    .line 112
    invoke-interface/range {v1 .. v6}, Lus/zoom/androidlib/util/IDownloadFileListener;->onDownloadProgress(Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile;JJ)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, [Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/util/ZMAsyncURLDownloadFile;->onProgressUpdate([Ljava/lang/Long;)V

    return-void
.end method
