.class Lus/zoom/androidlib/util/ZMAsyncTask$3;
.super Ljava/util/concurrent/FutureTask;
.source "ZMAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/util/ZMAsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/util/ZMAsyncTask;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/util/ZMAsyncTask;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lus/zoom/androidlib/util/ZMAsyncTask$3;->this$0:Lus/zoom/androidlib/util/ZMAsyncTask;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 3

    .line 117
    :try_start_0
    invoke-virtual {p0}, Lus/zoom/androidlib/util/ZMAsyncTask$3;->get()Ljava/lang/Object;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lus/zoom/androidlib/util/ZMAsyncTask$3;->this$0:Lus/zoom/androidlib/util/ZMAsyncTask;

    invoke-static {v1, v0}, Lus/zoom/androidlib/util/ZMAsyncTask;->access$400(Lus/zoom/androidlib/util/ZMAsyncTask;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 128
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An error occured while executing doInBackground()"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 126
    :catch_1
    iget-object v0, p0, Lus/zoom/androidlib/util/ZMAsyncTask$3;->this$0:Lus/zoom/androidlib/util/ZMAsyncTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lus/zoom/androidlib/util/ZMAsyncTask;->access$400(Lus/zoom/androidlib/util/ZMAsyncTask;Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 123
    new-instance v1, Ljava/lang/RuntimeException;

    .line 124
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v2, "An error occured while executing doInBackground()"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    const-string v1, "AsyncTask"

    .line 121
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
