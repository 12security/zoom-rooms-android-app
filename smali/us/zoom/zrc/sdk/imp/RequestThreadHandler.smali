.class public Lus/zoom/zrc/sdk/imp/RequestThreadHandler;
.super Ljava/lang/Object;
.source "RequestThreadHandler.java"

# interfaces
.implements Lus/zoom/zrcsdk/HandlerImp;


# instance fields
.field private isInited:Z

.field private mRequestHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lus/zoom/zrc/sdk/imp/RequestThreadHandler;->isInited:Z

    .line 19
    invoke-virtual {p0}, Lus/zoom/zrc/sdk/imp/RequestThreadHandler;->initHandlerThread()V

    return-void
.end method


# virtual methods
.method public initHandlerThread()V
    .locals 2

    .line 24
    iget-boolean v0, p0, Lus/zoom/zrc/sdk/imp/RequestThreadHandler;->isInited:Z

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lus/zoom/zrc/sdk/imp/RequestThreadHandler;->mRequestHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lus/zoom/zrc/sdk/imp/RequestThreadHandler;->isInited:Z

    :cond_0
    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lus/zoom/zrc/sdk/imp/RequestThreadHandler;->mRequestHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    .line 40
    iget-object v0, p0, Lus/zoom/zrc/sdk/imp/RequestThreadHandler;->mRequestHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 43
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
