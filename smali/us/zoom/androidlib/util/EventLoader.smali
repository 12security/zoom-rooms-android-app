.class public Lus/zoom/androidlib/util/EventLoader;
.super Ljava/lang/Object;
.source "EventLoader.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/util/EventLoader$LoaderThread;,
        Lus/zoom/androidlib/util/EventLoader$LoadEventsRequest;,
        Lus/zoom/androidlib/util/EventLoader$LoadEventDaysRequest;,
        Lus/zoom/androidlib/util/EventLoader$ShutdownRequest;,
        Lus/zoom/androidlib/util/EventLoader$LoadRequest;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lus/zoom/androidlib/util/EventLoader$LoadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaderThread:Lus/zoom/androidlib/util/EventLoader$LoaderThread;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/util/EventLoader;->mHandler:Landroid/os/Handler;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/util/EventLoader;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 213
    iput-object p1, p0, Lus/zoom/androidlib/util/EventLoader;->mContext:Landroid/content/Context;

    .line 214
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/util/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/androidlib/util/EventLoader;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/androidlib/util/EventLoader;)Landroid/os/Handler;
    .locals 0

    .line 36
    iget-object p0, p0, Lus/zoom/androidlib/util/EventLoader;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/androidlib/util/EventLoader;)Landroid/content/ContentResolver;
    .locals 0

    .line 36
    iget-object p0, p0, Lus/zoom/androidlib/util/EventLoader;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/androidlib/util/EventLoader;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lus/zoom/androidlib/util/EventLoader;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/androidlib/util/EventLoader;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 36
    iget-object p0, p0, Lus/zoom/androidlib/util/EventLoader;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method


# virtual methods
.method loadEventDaysInBackground(II[ZLjava/lang/Runnable;)V
    .locals 1

    .line 278
    new-instance v0, Lus/zoom/androidlib/util/EventLoader$LoadEventDaysRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lus/zoom/androidlib/util/EventLoader$LoadEventDaysRequest;-><init>(II[ZLjava/lang/Runnable;)V

    .line 281
    :try_start_0
    iget-object p1, p0, Lus/zoom/androidlib/util/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Cal"

    const-string p2, "loadEventDaysInBackground() interrupted!"

    .line 286
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public loadEventsInBackground(ILjava/util/ArrayList;ILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lus/zoom/androidlib/util/Event;",
            ">;I",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lus/zoom/androidlib/util/EventLoader;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    .line 251
    new-instance v0, Lus/zoom/androidlib/util/EventLoader$LoadEventsRequest;

    move-object v1, v0

    move v3, p3

    move v4, p1

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lus/zoom/androidlib/util/EventLoader$LoadEventsRequest;-><init>(IIILjava/util/ArrayList;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 255
    :try_start_0
    iget-object p1, p0, Lus/zoom/androidlib/util/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Cal"

    const-string p2, "loadEventsInBackground() interrupted!"

    .line 260
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startBackgroundThread()V
    .locals 2

    .line 222
    new-instance v0, Lus/zoom/androidlib/util/EventLoader$LoaderThread;

    iget-object v1, p0, Lus/zoom/androidlib/util/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v1, p0}, Lus/zoom/androidlib/util/EventLoader$LoaderThread;-><init>(Ljava/util/concurrent/LinkedBlockingQueue;Lus/zoom/androidlib/util/EventLoader;)V

    iput-object v0, p0, Lus/zoom/androidlib/util/EventLoader;->mLoaderThread:Lus/zoom/androidlib/util/EventLoader$LoaderThread;

    .line 223
    iget-object v0, p0, Lus/zoom/androidlib/util/EventLoader;->mLoaderThread:Lus/zoom/androidlib/util/EventLoader$LoaderThread;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/EventLoader$LoaderThread;->start()V

    return-void
.end method

.method public stopBackgroundThread()V
    .locals 1

    .line 230
    iget-object v0, p0, Lus/zoom/androidlib/util/EventLoader;->mLoaderThread:Lus/zoom/androidlib/util/EventLoader$LoaderThread;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/EventLoader$LoaderThread;->shutdown()V

    return-void
.end method
