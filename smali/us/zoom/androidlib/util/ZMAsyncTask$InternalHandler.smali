.class Lus/zoom/androidlib/util/ZMAsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "ZMAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/util/ZMAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 452
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lus/zoom/androidlib/util/ZMAsyncTask$1;)V
    .locals 0

    .line 452
    invoke-direct {p0}, Lus/zoom/androidlib/util/ZMAsyncTask$InternalHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 456
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lus/zoom/androidlib/util/ZMAsyncTask$AsyncTaskResult;

    .line 457
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 463
    :pswitch_0
    iget-object p1, v0, Lus/zoom/androidlib/util/ZMAsyncTask$AsyncTaskResult;->mTask:Lus/zoom/androidlib/util/ZMAsyncTask;

    iget-object v0, v0, Lus/zoom/androidlib/util/ZMAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lus/zoom/androidlib/util/ZMAsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0

    .line 460
    :pswitch_1
    iget-object p1, v0, Lus/zoom/androidlib/util/ZMAsyncTask$AsyncTaskResult;->mTask:Lus/zoom/androidlib/util/ZMAsyncTask;

    iget-object v0, v0, Lus/zoom/androidlib/util/ZMAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lus/zoom/androidlib/util/ZMAsyncTask;->access$500(Lus/zoom/androidlib/util/ZMAsyncTask;Ljava/lang/Object;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
