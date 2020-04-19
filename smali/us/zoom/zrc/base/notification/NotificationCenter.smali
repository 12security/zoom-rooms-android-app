.class public Lus/zoom/zrc/base/notification/NotificationCenter;
.super Ljava/lang/Object;
.source "NotificationCenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/base/notification/NotificationCenter$NotificationObserver;
    }
.end annotation


# static fields
.field private static instance:Lus/zoom/zrc/base/notification/NotificationCenter;


# instance fields
.field private observers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lus/zoom/zrc/base/notification/NotificationCenter$NotificationObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/base/notification/NotificationCenter;->observers:Ljava/util/Vector;

    return-void
.end method

.method public static declared-synchronized getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;
    .locals 2

    const-class v0, Lus/zoom/zrc/base/notification/NotificationCenter;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lus/zoom/zrc/base/notification/NotificationCenter;->instance:Lus/zoom/zrc/base/notification/NotificationCenter;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lus/zoom/zrc/base/notification/NotificationCenter;

    invoke-direct {v1}, Lus/zoom/zrc/base/notification/NotificationCenter;-><init>()V

    sput-object v1, Lus/zoom/zrc/base/notification/NotificationCenter;->instance:Lus/zoom/zrc/base/notification/NotificationCenter;

    .line 26
    :cond_0
    sget-object v1, Lus/zoom/zrc/base/notification/NotificationCenter;->instance:Lus/zoom/zrc/base/notification/NotificationCenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getObserver(Ljava/lang/Object;)Lus/zoom/zrc/base/notification/NotificationCenter$NotificationObserver;
    .locals 3

    .line 84
    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lus/zoom/zrc/base/notification/NotificationCenter;->observers:Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    .line 85
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/base/notification/NotificationCenter$NotificationObserver;

    .line 86
    iget-object v2, v1, Lus/zoom/zrc/base/notification/NotificationCenter$NotificationObserver;->token:Ljava/lang/Object;

    if-ne p1, v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lus/zoom/zrc/base/notification/NotificationEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lus/zoom/zrc/base/notification/INotification;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 37
    invoke-direct {p0, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->getObserver(Ljava/lang/Object;)Lus/zoom/zrc/base/notification/NotificationCenter$NotificationObserver;

    move-result-object v0

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lus/zoom/zrc/base/notification/NotificationCenter$NotificationObserver;

    invoke-direct {v0, p0, p1}, Lus/zoom/zrc/base/notification/NotificationCenter$NotificationObserver;-><init>(Lus/zoom/zrc/base/notification/NotificationCenter;Ljava/lang/Object;)V

    .line 40
    iget-object p1, p0, Lus/zoom/zrc/base/notification/NotificationCenter;->observers:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_0
    invoke-virtual {v0, p2, p3}, Lus/zoom/zrc/base/notification/NotificationCenter$NotificationObserver;->addNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    return-void
.end method

.method public postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, p1, v0}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 3

    const-string v0, "postNotification event: %s, arg: %s"

    const/4 v1, 0x2

    .line 69
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lus/zoom/zrc/base/notification/NotificationCenter;->observers:Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    .line 71
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/base/notification/NotificationCenter$NotificationObserver;

    .line 72
    invoke-virtual {v1, p1}, Lus/zoom/zrc/base/notification/NotificationCenter$NotificationObserver;->getNotification(Lus/zoom/zrc/base/notification/NotificationEvent;)Lus/zoom/zrc/base/notification/INotification;

    move-result-object v2

    if-nez v2, :cond_1

    .line 74
    sget-object v2, Lus/zoom/zrc/base/notification/BasicEvent;->All:Lus/zoom/zrc/base/notification/BasicEvent;

    invoke-virtual {v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter$NotificationObserver;->getNotification(Lus/zoom/zrc/base/notification/NotificationEvent;)Lus/zoom/zrc/base/notification/INotification;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_0

    .line 77
    invoke-virtual {v2, p2}, Lus/zoom/zrc/base/notification/INotification;->onNotification(Ljava/lang/Object;)V

    .line 78
    invoke-virtual {v2, p1, p2}, Lus/zoom/zrc/base/notification/INotification;->onNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public removeNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lus/zoom/zrc/base/notification/NotificationEvent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 51
    invoke-direct {p0, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->getObserver(Ljava/lang/Object;)Lus/zoom/zrc/base/notification/NotificationCenter$NotificationObserver;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 53
    sget-object v0, Lus/zoom/zrc/base/notification/BasicEvent;->All:Lus/zoom/zrc/base/notification/BasicEvent;

    if-ne v0, p2, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p1, p2}, Lus/zoom/zrc/base/notification/NotificationCenter$NotificationObserver;->removeNotification(Lus/zoom/zrc/base/notification/NotificationEvent;)V

    .line 57
    invoke-virtual {p1}, Lus/zoom/zrc/base/notification/NotificationCenter$NotificationObserver;->isNotificationEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 58
    iget-object p2, p0, Lus/zoom/zrc/base/notification/NotificationCenter;->observers:Ljava/util/Vector;

    invoke-virtual {p2, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    iget-object p2, p0, Lus/zoom/zrc/base/notification/NotificationCenter;->observers:Ljava/util/Vector;

    invoke-virtual {p2, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return-void
.end method
