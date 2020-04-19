.class Lus/zoom/androidlib/util/ZMAsyncTask$AsyncTaskResult;
.super Ljava/lang/Object;
.source "ZMAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/util/ZMAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Lus/zoom/androidlib/util/ZMAsyncTask;


# direct methods
.method varargs constructor <init>(Lus/zoom/androidlib/util/ZMAsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lus/zoom/androidlib/util/ZMAsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    iput-object p1, p0, Lus/zoom/androidlib/util/ZMAsyncTask$AsyncTaskResult;->mTask:Lus/zoom/androidlib/util/ZMAsyncTask;

    .line 480
    iput-object p2, p0, Lus/zoom/androidlib/util/ZMAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    return-void
.end method
