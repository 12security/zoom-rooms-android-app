.class public Lus/zoom/zrc/utils/DownloadAndDisplayTask;
.super Ljava/lang/Object;
.source "DownloadAndDisplayTask.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lus/zoom/zrc/model/AppEngine$IFileDownloadEvent;


# instance fields
.field private engine:Lus/zoom/zrc/utils/AvatarLoaderEngine;

.field private handler:Landroid/os/Handler;

.field private localFilePath:Ljava/lang/String;

.field private ref:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Lus/zoom/zrc/view/AvatarView;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lus/zoom/zrc/utils/AvatarLoaderEngine;Ljava/lang/String;Lus/zoom/zrc/view/AvatarView;Landroid/os/Handler;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lus/zoom/zrc/utils/DownloadAndDisplayTask;->engine:Lus/zoom/zrc/utils/AvatarLoaderEngine;

    .line 31
    iput-object p2, p0, Lus/zoom/zrc/utils/DownloadAndDisplayTask;->url:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lus/zoom/zrc/utils/DownloadAndDisplayTask;->handler:Landroid/os/Handler;

    .line 33
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p4, Lus/zoom/zrc/utils/AvatarLoaderEngine;->AVATAR_DIRECTORY:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "/"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lus/zoom/zrc/utils/Md5FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/utils/DownloadAndDisplayTask;->localFilePath:Ljava/lang/String;

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p3}, Lus/zoom/zrc/view/AvatarView;->getName()Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 38
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p4, Lus/zoom/zrc/utils/AvatarLoaderEngine;->AVATAR_DIRECTORY:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "/"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lus/zoom/zrc/utils/Md5FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/utils/DownloadAndDisplayTask;->localFilePath:Ljava/lang/String;

    goto :goto_0

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lus/zoom/zrc/utils/AvatarLoaderEngine;->AVATAR_DIRECTORY:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/utils/DownloadAndDisplayTask;->localFilePath:Ljava/lang/String;

    .line 43
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/utils/DownloadAndDisplayTask;->localFilePath:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lus/zoom/zrc/view/AvatarView;->setTag(Ljava/lang/Object;)V

    .line 44
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lus/zoom/zrc/utils/DownloadAndDisplayTask;->ref:Ljava/lang/ref/Reference;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/utils/DownloadAndDisplayTask;)Ljava/lang/ref/Reference;
    .locals 0

    .line 22
    iget-object p0, p0, Lus/zoom/zrc/utils/DownloadAndDisplayTask;->ref:Ljava/lang/ref/Reference;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/utils/DownloadAndDisplayTask;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lus/zoom/zrc/utils/DownloadAndDisplayTask;->localFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/utils/DownloadAndDisplayTask;Ljava/lang/String;ILus/zoom/zrc/view/AvatarView;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/zrc/utils/DownloadAndDisplayTask;->setAvatar(Ljava/lang/String;ILus/zoom/zrc/view/AvatarView;)V

    return-void
.end method

.method private removeFileDownloadListener(Lus/zoom/zrc/model/AppEngine$IFileDownloadEvent;)V
    .locals 1

    .line 139
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/AppEngine;->removeFileDownloadListener(Lus/zoom/zrc/model/AppEngine$IFileDownloadEvent;)V

    return-void
.end method

.method private setAvatar(Ljava/lang/String;ILus/zoom/zrc/view/AvatarView;)V
    .locals 1

    .line 128
    invoke-virtual {p3}, Lus/zoom/zrc/view/AvatarView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lus/zoom/zrc/utils/DownloadAndDisplayTask;->localFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    .line 130
    invoke-virtual {p3, p1}, Lus/zoom/zrc/view/AvatarView;->setAvatar(Ljava/lang/String;)V

    .line 131
    invoke-direct {p0, p0}, Lus/zoom/zrc/utils/DownloadAndDisplayTask;->removeFileDownloadListener(Lus/zoom/zrc/model/AppEngine$IFileDownloadEvent;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 133
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p3, p1}, Lus/zoom/zrc/view/AvatarView;->setAvatar(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private waitIfPaused()Z
    .locals 2

    .line 94
    iget-object v0, p0, Lus/zoom/zrc/utils/DownloadAndDisplayTask;->engine:Lus/zoom/zrc/utils/AvatarLoaderEngine;

    invoke-virtual {v0}, Lus/zoom/zrc/utils/AvatarLoaderEngine;->getPaused()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lus/zoom/zrc/utils/DownloadAndDisplayTask;->engine:Lus/zoom/zrc/utils/AvatarLoaderEngine;

    invoke-virtual {v1}, Lus/zoom/zrc/utils/AvatarLoaderEngine;->getPauseLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 97
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 99
    :try_start_1
    iget-object v0, p0, Lus/zoom/zrc/utils/DownloadAndDisplayTask;->engine:Lus/zoom/zrc/utils/AvatarLoaderEngine;

    invoke-virtual {v0}, Lus/zoom/zrc/utils/AvatarLoaderEngine;->getPauseLock()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    .line 101
    :try_start_2
    monitor-exit v1

    return v0

    .line 104
    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onSinkDownloadFile(Ljava/lang/String;I)V
    .locals 3

    .line 111
    iget-object v0, p0, Lus/zoom/zrc/utils/DownloadAndDisplayTask;->ref:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/AvatarView;

    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 116
    invoke-direct {p0, p1, p2, v0}, Lus/zoom/zrc/utils/DownloadAndDisplayTask;->setAvatar(Ljava/lang/String;ILus/zoom/zrc/view/AvatarView;)V

    goto :goto_0

    .line 118
    :cond_1
    iget-object v1, p0, Lus/zoom/zrc/utils/DownloadAndDisplayTask;->handler:Landroid/os/Handler;

    new-instance v2, Lus/zoom/zrc/utils/DownloadAndDisplayTask$3;

    invoke-direct {v2, p0, p1, p2, v0}, Lus/zoom/zrc/utils/DownloadAndDisplayTask$3;-><init>(Lus/zoom/zrc/utils/DownloadAndDisplayTask;Ljava/lang/String;ILus/zoom/zrc/view/AvatarView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public run()V
    .locals 7

    .line 49
    invoke-direct {p0}, Lus/zoom/zrc/utils/DownloadAndDisplayTask;->waitIfPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/utils/DownloadAndDisplayTask;->engine:Lus/zoom/zrc/utils/AvatarLoaderEngine;

    iget-object v1, p0, Lus/zoom/zrc/utils/DownloadAndDisplayTask;->localFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/utils/AvatarLoaderEngine;->getLockForUri(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lus/zoom/zrc/utils/DownloadAndDisplayTask;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    iget-object v0, p0, Lus/zoom/zrc/utils/DownloadAndDisplayTask;->handler:Landroid/os/Handler;

    new-instance v1, Lus/zoom/zrc/utils/DownloadAndDisplayTask$1;

    invoke-direct {v1, p0}, Lus/zoom/zrc/utils/DownloadAndDisplayTask$1;-><init>(Lus/zoom/zrc/utils/DownloadAndDisplayTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 63
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 66
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lus/zoom/zrc/utils/DownloadAndDisplayTask;->localFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-lez v6, :cond_2

    .line 68
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 69
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 70
    iget-object v4, p0, Lus/zoom/zrc/utils/DownloadAndDisplayTask;->localFilePath:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 71
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v4, :cond_2

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v1, :cond_2

    const/4 v3, 0x1

    :cond_2
    if-eqz v3, :cond_3

    .line 74
    iget-object v1, p0, Lus/zoom/zrc/utils/DownloadAndDisplayTask;->handler:Landroid/os/Handler;

    new-instance v2, Lus/zoom/zrc/utils/DownloadAndDisplayTask$2;

    invoke-direct {v2, p0}, Lus/zoom/zrc/utils/DownloadAndDisplayTask$2;-><init>(Lus/zoom/zrc/utils/DownloadAndDisplayTask;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 82
    :cond_3
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v1

    invoke-virtual {v1, p0}, Lus/zoom/zrc/model/AppEngine;->addFileDownloadListener(Lus/zoom/zrc/model/AppEngine$IFileDownloadEvent;)V

    .line 83
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/utils/DownloadAndDisplayTask;->url:Ljava/lang/String;

    iget-object v3, p0, Lus/zoom/zrc/utils/DownloadAndDisplayTask;->localFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lus/zoom/zrcsdk/PTApp;->downloadingFile(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 86
    :catch_0
    :try_start_1
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v1

    invoke-virtual {v1, p0}, Lus/zoom/zrc/model/AppEngine;->addFileDownloadListener(Lus/zoom/zrc/model/AppEngine$IFileDownloadEvent;)V

    .line 87
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/utils/DownloadAndDisplayTask;->url:Ljava/lang/String;

    iget-object v3, p0, Lus/zoom/zrc/utils/DownloadAndDisplayTask;->localFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lus/zoom/zrcsdk/PTApp;->downloadingFile(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 90
    throw v1
.end method
