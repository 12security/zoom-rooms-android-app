.class public Lus/zoom/zrc/utils/AvatarLoader;
.super Ljava/lang/Object;
.source "AvatarLoader.java"


# static fields
.field private static instance:Lus/zoom/zrc/utils/AvatarLoader;


# instance fields
.field private engine:Lus/zoom/zrc/utils/AvatarLoaderEngine;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private defineHandler()Landroid/os/Handler;
    .locals 2

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public static getInstance()Lus/zoom/zrc/utils/AvatarLoader;
    .locals 2

    .line 20
    sget-object v0, Lus/zoom/zrc/utils/AvatarLoader;->instance:Lus/zoom/zrc/utils/AvatarLoader;

    if-nez v0, :cond_1

    .line 21
    const-class v0, Lus/zoom/zrc/utils/AvatarLoader;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lus/zoom/zrc/utils/AvatarLoader;->instance:Lus/zoom/zrc/utils/AvatarLoader;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lus/zoom/zrc/utils/AvatarLoader;

    invoke-direct {v1}, Lus/zoom/zrc/utils/AvatarLoader;-><init>()V

    sput-object v1, Lus/zoom/zrc/utils/AvatarLoader;->instance:Lus/zoom/zrc/utils/AvatarLoader;

    .line 25
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 27
    :cond_1
    :goto_0
    sget-object v0, Lus/zoom/zrc/utils/AvatarLoader;->instance:Lus/zoom/zrc/utils/AvatarLoader;

    return-object v0
.end method


# virtual methods
.method public displayImage(Ljava/lang/String;Lus/zoom/zrc/view/AvatarView;)V
    .locals 3

    .line 35
    new-instance v0, Lus/zoom/zrc/utils/DownloadAndDisplayTask;

    iget-object v1, p0, Lus/zoom/zrc/utils/AvatarLoader;->engine:Lus/zoom/zrc/utils/AvatarLoaderEngine;

    invoke-direct {p0}, Lus/zoom/zrc/utils/AvatarLoader;->defineHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lus/zoom/zrc/utils/DownloadAndDisplayTask;-><init>(Lus/zoom/zrc/utils/AvatarLoaderEngine;Ljava/lang/String;Lus/zoom/zrc/view/AvatarView;Landroid/os/Handler;)V

    .line 36
    iget-object p1, p0, Lus/zoom/zrc/utils/AvatarLoader;->engine:Lus/zoom/zrc/utils/AvatarLoaderEngine;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/utils/AvatarLoaderEngine;->submit(Lus/zoom/zrc/utils/DownloadAndDisplayTask;)V

    return-void
.end method

.method public declared-synchronized init()V
    .locals 1

    monitor-enter p0

    .line 31
    :try_start_0
    new-instance v0, Lus/zoom/zrc/utils/AvatarLoaderEngine;

    invoke-direct {v0}, Lus/zoom/zrc/utils/AvatarLoaderEngine;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/utils/AvatarLoader;->engine:Lus/zoom/zrc/utils/AvatarLoaderEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public pause()V
    .locals 1

    .line 50
    iget-object v0, p0, Lus/zoom/zrc/utils/AvatarLoader;->engine:Lus/zoom/zrc/utils/AvatarLoaderEngine;

    invoke-virtual {v0}, Lus/zoom/zrc/utils/AvatarLoaderEngine;->pause()V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 46
    iget-object v0, p0, Lus/zoom/zrc/utils/AvatarLoader;->engine:Lus/zoom/zrc/utils/AvatarLoaderEngine;

    invoke-virtual {v0}, Lus/zoom/zrc/utils/AvatarLoaderEngine;->resume()V

    return-void
.end method
