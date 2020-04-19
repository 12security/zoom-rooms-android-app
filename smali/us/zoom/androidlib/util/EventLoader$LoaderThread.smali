.class Lus/zoom/androidlib/util/EventLoader$LoaderThread;
.super Ljava/lang/Thread;
.source "EventLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/util/EventLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoaderThread"
.end annotation


# instance fields
.field mEventLoader:Lus/zoom/androidlib/util/EventLoader;

.field mQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lus/zoom/androidlib/util/EventLoader$LoadRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/LinkedBlockingQueue;Lus/zoom/androidlib/util/EventLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lus/zoom/androidlib/util/EventLoader$LoadRequest;",
            ">;",
            "Lus/zoom/androidlib/util/EventLoader;",
            ")V"
        }
    .end annotation

    .line 167
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 168
    iput-object p1, p0, Lus/zoom/androidlib/util/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 169
    iput-object p2, p0, Lus/zoom/androidlib/util/EventLoader$LoaderThread;->mEventLoader:Lus/zoom/androidlib/util/EventLoader;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/16 v0, 0xa

    .line 185
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 189
    :goto_0
    :try_start_0
    iget-object v0, p0, Lus/zoom/androidlib/util/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/androidlib/util/EventLoader$LoadRequest;

    .line 193
    :goto_1
    iget-object v1, p0, Lus/zoom/androidlib/util/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    iget-object v1, p0, Lus/zoom/androidlib/util/EventLoader$LoaderThread;->mEventLoader:Lus/zoom/androidlib/util/EventLoader;

    invoke-interface {v0, v1}, Lus/zoom/androidlib/util/EventLoader$LoadRequest;->skipRequest(Lus/zoom/androidlib/util/EventLoader;)V

    .line 198
    iget-object v0, p0, Lus/zoom/androidlib/util/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/androidlib/util/EventLoader$LoadRequest;

    goto :goto_1

    .line 201
    :cond_0
    instance-of v1, v0, Lus/zoom/androidlib/util/EventLoader$ShutdownRequest;

    if-eqz v1, :cond_1

    return-void

    .line 204
    :cond_1
    iget-object v1, p0, Lus/zoom/androidlib/util/EventLoader$LoaderThread;->mEventLoader:Lus/zoom/androidlib/util/EventLoader;

    invoke-interface {v0, v1}, Lus/zoom/androidlib/util/EventLoader$LoadRequest;->processRequest(Lus/zoom/androidlib/util/EventLoader;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Cal"

    const-string v1, "background LoaderThread interrupted!"

    .line 206
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public shutdown()V
    .locals 3

    .line 174
    :try_start_0
    iget-object v0, p0, Lus/zoom/androidlib/util/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Lus/zoom/androidlib/util/EventLoader$ShutdownRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lus/zoom/androidlib/util/EventLoader$ShutdownRequest;-><init>(Lus/zoom/androidlib/util/EventLoader$1;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Cal"

    const-string v1, "LoaderThread.shutdown() interrupted!"

    .line 179
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
