.class public Lus/zoom/androidlib/util/ListenerList;
.super Ljava/lang/Object;
.source "ListenerList.java"


# instance fields
.field private mList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lus/zoom/androidlib/util/IListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/util/ListenerList;->mList:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public add(Lus/zoom/androidlib/util/IListener;)I
    .locals 2

    .line 15
    iget-object v0, p0, Lus/zoom/androidlib/util/ListenerList;->mList:Ljava/util/Vector;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 16
    :try_start_0
    iget-object v1, p0, Lus/zoom/androidlib/util/ListenerList;->mList:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 17
    iget-object v1, p0, Lus/zoom/androidlib/util/ListenerList;->mList:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_0
    iget-object p1, p0, Lus/zoom/androidlib/util/ListenerList;->mList:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    .line 20
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clear()V
    .locals 2

    .line 66
    iget-object v0, p0, Lus/zoom/androidlib/util/ListenerList;->mList:Ljava/util/Vector;

    monitor-enter v0

    .line 67
    :try_start_0
    iget-object v1, p0, Lus/zoom/androidlib/util/ListenerList;->mList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 68
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAll()[Lus/zoom/androidlib/util/IListener;
    .locals 3

    .line 74
    iget-object v0, p0, Lus/zoom/androidlib/util/ListenerList;->mList:Ljava/util/Vector;

    monitor-enter v0

    .line 75
    :try_start_0
    iget-object v1, p0, Lus/zoom/androidlib/util/ListenerList;->mList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lus/zoom/androidlib/util/IListener;

    .line 76
    iget-object v2, p0, Lus/zoom/androidlib/util/ListenerList;->mList:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 77
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public remove(Lus/zoom/androidlib/util/IListener;)I
    .locals 2

    .line 26
    iget-object v0, p0, Lus/zoom/androidlib/util/ListenerList;->mList:Ljava/util/Vector;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 28
    :try_start_0
    iget-object v1, p0, Lus/zoom/androidlib/util/ListenerList;->mList:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 30
    :cond_0
    iget-object p1, p0, Lus/zoom/androidlib/util/ListenerList;->mList:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    .line 31
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeAll(Lus/zoom/androidlib/util/IListener;)I
    .locals 2

    .line 37
    iget-object v0, p0, Lus/zoom/androidlib/util/ListenerList;->mList:Ljava/util/Vector;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 39
    :try_start_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 40
    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object p1, p0, Lus/zoom/androidlib/util/ListenerList;->mList:Ljava/util/Vector;

    invoke-virtual {p1, v1}, Ljava/util/Vector;->removeAll(Ljava/util/Collection;)Z

    .line 42
    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 44
    :cond_0
    iget-object p1, p0, Lus/zoom/androidlib/util/ListenerList;->mList:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    .line 45
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeAllSameClass(Lus/zoom/androidlib/util/IListener;)I
    .locals 4

    .line 51
    iget-object v0, p0, Lus/zoom/androidlib/util/ListenerList;->mList:Ljava/util/Vector;

    monitor-enter v0

    if-eqz p1, :cond_1

    .line 53
    :try_start_0
    iget-object v1, p0, Lus/zoom/androidlib/util/ListenerList;->mList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 54
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 56
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 60
    :cond_1
    iget-object p1, p0, Lus/zoom/androidlib/util/ListenerList;->mList:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    .line 61
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    return-void
.end method

.method public size()I
    .locals 2

    .line 83
    iget-object v0, p0, Lus/zoom/androidlib/util/ListenerList;->mList:Ljava/util/Vector;

    monitor-enter v0

    .line 84
    :try_start_0
    iget-object v1, p0, Lus/zoom/androidlib/util/ListenerList;->mList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 85
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
