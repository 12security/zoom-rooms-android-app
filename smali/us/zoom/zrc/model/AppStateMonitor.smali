.class public Lus/zoom/zrc/model/AppStateMonitor;
.super Ljava/lang/Object;
.source "AppStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/model/AppStateMonitor$AppStateListener;
    }
.end annotation


# static fields
.field private static sInstance:Lus/zoom/zrc/model/AppStateMonitor;


# instance fields
.field private mAppState:I

.field private mListeners:Lus/zoom/androidlib/util/ListenerList;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lus/zoom/androidlib/util/ListenerList;

    invoke-direct {v0}, Lus/zoom/androidlib/util/ListenerList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/model/AppStateMonitor;->mListeners:Lus/zoom/androidlib/util/ListenerList;

    return-void
.end method

.method public static declared-synchronized getInstance()Lus/zoom/zrc/model/AppStateMonitor;
    .locals 2

    const-class v0, Lus/zoom/zrc/model/AppStateMonitor;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lus/zoom/zrc/model/AppStateMonitor;->sInstance:Lus/zoom/zrc/model/AppStateMonitor;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lus/zoom/zrc/model/AppStateMonitor;

    invoke-direct {v1}, Lus/zoom/zrc/model/AppStateMonitor;-><init>()V

    sput-object v1, Lus/zoom/zrc/model/AppStateMonitor;->sInstance:Lus/zoom/zrc/model/AppStateMonitor;

    .line 22
    :cond_0
    sget-object v1, Lus/zoom/zrc/model/AppStateMonitor;->sInstance:Lus/zoom/zrc/model/AppStateMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addAppStateListener(Lus/zoom/zrc/model/AppStateMonitor$AppStateListener;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lus/zoom/zrc/model/AppStateMonitor;->mListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->add(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public removeAppStateListener(Lus/zoom/zrc/model/AppStateMonitor$AppStateListener;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lus/zoom/zrc/model/AppStateMonitor;->mListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->remove(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method setAppState(I)V
    .locals 5

    .line 33
    iget v0, p0, Lus/zoom/zrc/model/AppStateMonitor;->mAppState:I

    if-eq v0, p1, :cond_1

    .line 35
    iput p1, p0, Lus/zoom/zrc/model/AppStateMonitor;->mAppState:I

    .line 37
    iget-object v1, p0, Lus/zoom/zrc/model/AppStateMonitor;->mListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v1}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 38
    check-cast v4, Lus/zoom/zrc/model/AppStateMonitor$AppStateListener;

    invoke-interface {v4, p1, v0}, Lus/zoom/zrc/model/AppStateMonitor$AppStateListener;->onAppStateChanged(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v1

    sget-object v2, Lus/zoom/zrc/base/notification/ModelEvent;->OnEnterState:Lus/zoom/zrc/base/notification/ModelEvent;

    const-string v3, "newState"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v4, "oldState"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, p1, v4, v0}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
