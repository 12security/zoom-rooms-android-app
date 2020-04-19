.class Lus/zoom/androidlib/util/ZMAsyncTask$2;
.super Lus/zoom/androidlib/util/ZMAsyncTask$WorkerRunnable;
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
        "Lus/zoom/androidlib/util/ZMAsyncTask$WorkerRunnable<",
        "TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/util/ZMAsyncTask;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/util/ZMAsyncTask;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lus/zoom/androidlib/util/ZMAsyncTask$2;->this$0:Lus/zoom/androidlib/util/ZMAsyncTask;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lus/zoom/androidlib/util/ZMAsyncTask$WorkerRunnable;-><init>(Lus/zoom/androidlib/util/ZMAsyncTask$1;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lus/zoom/androidlib/util/ZMAsyncTask$2;->this$0:Lus/zoom/androidlib/util/ZMAsyncTask;

    invoke-static {v0}, Lus/zoom/androidlib/util/ZMAsyncTask;->access$200(Lus/zoom/androidlib/util/ZMAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 109
    iget-object v0, p0, Lus/zoom/androidlib/util/ZMAsyncTask$2;->this$0:Lus/zoom/androidlib/util/ZMAsyncTask;

    iget-object v1, p0, Lus/zoom/androidlib/util/ZMAsyncTask$2;->mParams:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/util/ZMAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lus/zoom/androidlib/util/ZMAsyncTask;->access$300(Lus/zoom/androidlib/util/ZMAsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
