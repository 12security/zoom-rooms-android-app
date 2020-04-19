.class public Lus/zoom/androidlib/util/NetworkStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStatusReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/util/NetworkStatusReceiver$SimpleNetworkStatusListener;,
        Lus/zoom/androidlib/util/NetworkStatusReceiver$NetworkStatusListener;
    }
.end annotation


# static fields
.field private static final MESSAGE_INIT:I = 0x0

.field private static final MESSAGE_RECEIVE_BROADCAST:I = 0x1


# instance fields
.field private handler:Landroid/os/Handler;

.field handlerThread:Landroid/os/HandlerThread;

.field private mLastConnection:Z

.field private mLastIpAddress:Ljava/lang/String;

.field private mLastType:I

.field private mListener:Lus/zoom/androidlib/util/ListenerList;

.field private mainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver;->mainHandler:Landroid/os/Handler;

    .line 34
    new-instance v0, Lus/zoom/androidlib/util/ListenerList;

    invoke-direct {v0}, Lus/zoom/androidlib/util/ListenerList;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver;->mListener:Lus/zoom/androidlib/util/ListenerList;

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver;->mLastType:I

    .line 36
    iput-boolean v0, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver;->mLastConnection:Z

    .line 40
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NetworkStatusReceiver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver;->handlerThread:Landroid/os/HandlerThread;

    .line 41
    iget-object v0, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 42
    new-instance v0, Lus/zoom/androidlib/util/NetworkStatusReceiver$1;

    iget-object v1, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lus/zoom/androidlib/util/NetworkStatusReceiver$1;-><init>(Lus/zoom/androidlib/util/NetworkStatusReceiver;Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/androidlib/util/NetworkStatusReceiver;)Lus/zoom/androidlib/util/ListenerList;
    .locals 0

    .line 14
    iget-object p0, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver;->mListener:Lus/zoom/androidlib/util/ListenerList;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/androidlib/util/NetworkStatusReceiver;)Z
    .locals 0

    .line 14
    iget-boolean p0, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver;->mLastConnection:Z

    return p0
.end method

.method static synthetic access$102(Lus/zoom/androidlib/util/NetworkStatusReceiver;Z)Z
    .locals 0

    .line 14
    iput-boolean p1, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver;->mLastConnection:Z

    return p1
.end method

.method static synthetic access$200(Lus/zoom/androidlib/util/NetworkStatusReceiver;)I
    .locals 0

    .line 14
    iget p0, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver;->mLastType:I

    return p0
.end method

.method static synthetic access$202(Lus/zoom/androidlib/util/NetworkStatusReceiver;I)I
    .locals 0

    .line 14
    iput p1, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver;->mLastType:I

    return p1
.end method

.method static synthetic access$300(Lus/zoom/androidlib/util/NetworkStatusReceiver;)Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver;->mLastIpAddress:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lus/zoom/androidlib/util/NetworkStatusReceiver;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 14
    iput-object p1, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver;->mLastIpAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lus/zoom/androidlib/util/NetworkStatusReceiver;)Landroid/os/Handler;
    .locals 0

    .line 14
    iget-object p0, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private notifyStatusChanged(Landroid/content/Context;)V
    .locals 12

    .line 136
    iget-object v0, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver;->mListener:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 137
    invoke-static {p1}, Lus/zoom/androidlib/util/NetworkUtil;->hasDataNetwork(Landroid/content/Context;)Z

    move-result v8

    .line 138
    invoke-static {p1}, Lus/zoom/androidlib/util/NetworkUtil;->getDataNetworkType(Landroid/content/Context;)I

    move-result v9

    .line 139
    invoke-static {p1}, Lus/zoom/androidlib/util/NetworkUtil;->getNetworkIP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 141
    array-length v10, v0

    const/4 v1, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_0

    aget-object v1, v0, v11

    .line 142
    check-cast v1, Lus/zoom/androidlib/util/NetworkStatusReceiver$NetworkStatusListener;

    .line 143
    iget-boolean v5, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver;->mLastConnection:Z

    iget v6, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver;->mLastType:I

    iget-object v7, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver;->mLastIpAddress:Ljava/lang/String;

    move v2, v8

    move v3, v9

    move-object v4, p1

    invoke-interface/range {v1 .. v7}, Lus/zoom/androidlib/util/NetworkStatusReceiver$NetworkStatusListener;->networkStatusChanged(ZILjava/lang/String;ZILjava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 147
    :cond_0
    iput-boolean v8, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver;->mLastConnection:Z

    .line 148
    iput v9, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver;->mLastType:I

    .line 149
    iput-object p1, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver;->mLastIpAddress:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addListener(Lus/zoom/androidlib/util/NetworkStatusReceiver$NetworkStatusListener;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver;->mListener:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    const/4 v1, 0x0

    .line 86
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 87
    aget-object v2, v0, v1

    if-ne v2, p1, :cond_1

    .line 88
    aget-object v2, v0, v1

    check-cast v2, Lus/zoom/androidlib/util/NetworkStatusReceiver$NetworkStatusListener;

    invoke-virtual {p0, v2}, Lus/zoom/androidlib/util/NetworkStatusReceiver;->removeListener(Lus/zoom/androidlib/util/NetworkStatusReceiver$NetworkStatusListener;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    :cond_2
    iget-object v0, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver;->mListener:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->add(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public isListenerEmpty()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver;->mListener:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-static {p1}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 128
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 131
    :cond_2
    iget-object p1, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver;->handler:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public registerReceiver(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 107
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    iget-object p1, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public removeListener(Lus/zoom/androidlib/util/NetworkStatusReceiver$NetworkStatusListener;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver;->mListener:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->remove(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public unregisterReceiver(Landroid/content/Context;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/util/NetworkStatusReceiver;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 115
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
