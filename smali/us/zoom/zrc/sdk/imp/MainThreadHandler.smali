.class public Lus/zoom/zrc/sdk/imp/MainThreadHandler;
.super Ljava/lang/Object;
.source "MainThreadHandler.java"

# interfaces
.implements Lus/zoom/zrcsdk/HandlerImp;


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/sdk/imp/MainThreadHandler;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public initHandlerThread()V
    .locals 0

    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lus/zoom/zrc/sdk/imp/MainThreadHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    .line 30
    iget-object v0, p0, Lus/zoom/zrc/sdk/imp/MainThreadHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
