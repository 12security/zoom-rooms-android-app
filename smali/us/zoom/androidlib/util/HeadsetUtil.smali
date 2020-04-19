.class public Lus/zoom/androidlib/util/HeadsetUtil;
.super Landroid/content/BroadcastReceiver;
.source "HeadsetUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/util/HeadsetUtil$IHeadsetConnectionListener;
    }
.end annotation


# static fields
.field private static final A2DP_ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String;

.field private static final A2DP_EXTRA_STATE:Ljava/lang/String;

.field private static final ACTION_SCO_AUDIO_STATE_UPDATED:Ljava/lang/String; = "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

.field private static final BLUETOOTH_ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String;

.field private static final BLUETOOTH_EXTRA_STATE:Ljava/lang/String;

.field private static final BT_STATE_CONNECTED:I = 0x2

.field private static final BT_STATE_DISCONNECTED:I = 0x0

.field private static final BT_STATE_PLAYING:I = 0x4

.field public static final TAG:Ljava/lang/String; = "HeadsetUtil"

.field private static instance:Lus/zoom/androidlib/util/HeadsetUtil;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothHeadsetOn:Z

.field private mBluetoothScoAudioOn:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHeadsetProfileListener:Ljava/lang/Object;

.field private mIsStartingSco:Z

.field private mIsStoppingSco:Z

.field private mListenerList:Lus/zoom/androidlib/util/ListenerList;

.field private mStartBluetoothScoCalled:Z

.field private mWiredHeadsetOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android.bluetooth.BluetoothA2dp"

    const-string v1, "ACTION_CONNECTION_STATE_CHANGED"

    .line 40
    invoke-static {v0, v1}, Lus/zoom/androidlib/util/HeadsetUtil;->getStaticStringField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lus/zoom/androidlib/util/HeadsetUtil;->A2DP_ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String;

    const-string v0, "android.bluetooth.BluetoothA2dp"

    const-string v1, "EXTRA_STATE"

    .line 42
    invoke-static {v0, v1}, Lus/zoom/androidlib/util/HeadsetUtil;->getStaticStringField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lus/zoom/androidlib/util/HeadsetUtil;->A2DP_EXTRA_STATE:Ljava/lang/String;

    const-string v0, "android.bluetooth.BluetoothHeadset"

    const-string v1, "ACTION_CONNECTION_STATE_CHANGED"

    .line 45
    invoke-static {v0, v1}, Lus/zoom/androidlib/util/HeadsetUtil;->getStaticStringField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lus/zoom/androidlib/util/HeadsetUtil;->BLUETOOTH_ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String;

    const-string v0, "android.bluetooth.BluetoothProfile"

    const-string v1, "EXTRA_STATE"

    .line 47
    invoke-static {v0, v1}, Lus/zoom/androidlib/util/HeadsetUtil;->getStaticStringField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lus/zoom/androidlib/util/HeadsetUtil;->BLUETOOTH_EXTRA_STATE:Ljava/lang/String;

    const/4 v0, 0x0

    .line 50
    sput-object v0, Lus/zoom/androidlib/util/HeadsetUtil;->instance:Lus/zoom/androidlib/util/HeadsetUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 57
    new-instance v0, Lus/zoom/androidlib/util/ListenerList;

    invoke-direct {v0}, Lus/zoom/androidlib/util/ListenerList;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mListenerList:Lus/zoom/androidlib/util/ListenerList;

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mBluetoothHeadsetOn:Z

    .line 60
    iput-boolean v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mWiredHeadsetOn:Z

    .line 61
    iput-boolean v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mBluetoothScoAudioOn:Z

    .line 71
    iput-boolean v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mStartBluetoothScoCalled:Z

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mHandler:Landroid/os/Handler;

    .line 82
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 83
    new-instance v0, Lus/zoom/androidlib/util/HeadsetUtil$1;

    invoke-direct {v0, p0}, Lus/zoom/androidlib/util/HeadsetUtil$1;-><init>(Lus/zoom/androidlib/util/HeadsetUtil;)V

    iput-object v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mHeadsetProfileListener:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/androidlib/util/HeadsetUtil;)Landroid/media/AudioManager;
    .locals 0

    .line 19
    iget-object p0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/androidlib/util/HeadsetUtil;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 19
    iget-object p0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$1000(Lus/zoom/androidlib/util/HeadsetUtil;ZZ)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lus/zoom/androidlib/util/HeadsetUtil;->notifyHeadsetConnectionChanged(ZZ)V

    return-void
.end method

.method static synthetic access$200(Lus/zoom/androidlib/util/HeadsetUtil;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    .line 19
    iget-object p0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p0
.end method

.method static synthetic access$202(Lus/zoom/androidlib/util/HeadsetUtil;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    .line 19
    iput-object p1, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$302(Lus/zoom/androidlib/util/HeadsetUtil;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mStartBluetoothScoCalled:Z

    return p1
.end method

.method static synthetic access$400(Lus/zoom/androidlib/util/HeadsetUtil;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lus/zoom/androidlib/util/HeadsetUtil;->resetSco()V

    return-void
.end method

.method static synthetic access$500(Lus/zoom/androidlib/util/HeadsetUtil;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lus/zoom/androidlib/util/HeadsetUtil;->checkBTConnectionStatus()V

    return-void
.end method

.method static synthetic access$602(Lus/zoom/androidlib/util/HeadsetUtil;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 19
    iput-object p1, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$700(Lus/zoom/androidlib/util/HeadsetUtil;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mBluetoothHeadsetOn:Z

    return p0
.end method

.method static synthetic access$702(Lus/zoom/androidlib/util/HeadsetUtil;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mBluetoothHeadsetOn:Z

    return p1
.end method

.method static synthetic access$800(Lus/zoom/androidlib/util/HeadsetUtil;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lus/zoom/androidlib/util/HeadsetUtil;->postNotifyHeadsetConnectionChanged()V

    return-void
.end method

.method static synthetic access$900(Lus/zoom/androidlib/util/HeadsetUtil;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mWiredHeadsetOn:Z

    return p0
.end method

.method private checkBTConnectionStatus()V
    .locals 6

    .line 260
    iget-boolean v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mBluetoothHeadsetOn:Z

    .line 261
    iget-boolean v1, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mBluetoothScoAudioOn:Z

    .line 262
    invoke-direct {p0}, Lus/zoom/androidlib/util/HeadsetUtil;->hasBlueHeadSet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 263
    iget-object v3, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 264
    iget-object v3, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 266
    :cond_0
    iget-object v3, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    if-eqz v2, :cond_2

    .line 267
    invoke-virtual {v3}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mBluetoothHeadsetOn:Z

    .line 269
    :cond_3
    iget-object v3, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v3, :cond_5

    if-eqz v2, :cond_4

    .line 270
    invoke-virtual {v3}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mBluetoothScoAudioOn:Z

    .line 275
    :cond_5
    iget-boolean v2, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mBluetoothScoAudioOn:Z

    if-eq v1, v2, :cond_6

    .line 276
    invoke-direct {p0, v2}, Lus/zoom/androidlib/util/HeadsetUtil;->notifyBluetoothScoAudioStatus(Z)V

    .line 278
    :cond_6
    iget-boolean v1, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mBluetoothHeadsetOn:Z

    if-eq v0, v1, :cond_7

    .line 279
    invoke-direct {p0}, Lus/zoom/androidlib/util/HeadsetUtil;->postNotifyHeadsetConnectionChanged()V

    :cond_7
    return-void
.end method

.method public static declared-synchronized getInstance()Lus/zoom/androidlib/util/HeadsetUtil;
    .locals 2

    const-class v0, Lus/zoom/androidlib/util/HeadsetUtil;

    monitor-enter v0

    .line 76
    :try_start_0
    sget-object v1, Lus/zoom/androidlib/util/HeadsetUtil;->instance:Lus/zoom/androidlib/util/HeadsetUtil;

    if-nez v1, :cond_0

    .line 77
    new-instance v1, Lus/zoom/androidlib/util/HeadsetUtil;

    invoke-direct {v1}, Lus/zoom/androidlib/util/HeadsetUtil;-><init>()V

    sput-object v1, Lus/zoom/androidlib/util/HeadsetUtil;->instance:Lus/zoom/androidlib/util/HeadsetUtil;

    .line 78
    :cond_0
    sget-object v1, Lus/zoom/androidlib/util/HeadsetUtil;->instance:Lus/zoom/androidlib/util/HeadsetUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getStaticStringField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 405
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 411
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 417
    :try_start_2
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    return-object v0

    :catch_1
    return-object v0

    :catch_2
    return-object v0
.end method

.method private hasBlueHeadSet()Z
    .locals 1

    .line 243
    iget-object v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/CollectionsUtil;->isListEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyBluetoothScoAudioStatus(Z)V
    .locals 4

    .line 383
    iget-object v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mListenerList:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 384
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 385
    check-cast v3, Lus/zoom/androidlib/util/HeadsetUtil$IHeadsetConnectionListener;

    .line 386
    invoke-interface {v3, p1}, Lus/zoom/androidlib/util/HeadsetUtil$IHeadsetConnectionListener;->onBluetoothScoAudioStatus(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyHeadsetConnectionChanged(ZZ)V
    .locals 4

    .line 375
    iget-object v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mListenerList:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 376
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 377
    check-cast v3, Lus/zoom/androidlib/util/HeadsetUtil$IHeadsetConnectionListener;

    .line 378
    invoke-interface {v3, p1, p2}, Lus/zoom/androidlib/util/HeadsetUtil$IHeadsetConnectionListener;->onHeadsetStatusChanged(ZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private postNotifyHeadsetConnectionChanged()V
    .locals 4

    .line 367
    iget-object v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mHandler:Landroid/os/Handler;

    new-instance v1, Lus/zoom/androidlib/util/HeadsetUtil$3;

    invoke-direct {v1, p0}, Lus/zoom/androidlib/util/HeadsetUtil$3;-><init>(Lus/zoom/androidlib/util/HeadsetUtil;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private resetSco()V
    .locals 1

    const/4 v0, 0x0

    .line 390
    iput-boolean v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mIsStartingSco:Z

    .line 391
    iput-boolean v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mIsStoppingSco:Z

    return-void
.end method


# virtual methods
.method public addListener(Lus/zoom/androidlib/util/HeadsetUtil$IHeadsetConnectionListener;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mListenerList:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->add(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public enterA2dpMode()V
    .locals 1

    .line 395
    invoke-direct {p0}, Lus/zoom/androidlib/util/HeadsetUtil;->resetSco()V

    .line 396
    iget-boolean v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mBluetoothScoAudioOn:Z

    invoke-direct {p0, v0}, Lus/zoom/androidlib/util/HeadsetUtil;->notifyBluetoothScoAudioStatus(Z)V

    return-void
.end method

.method public getConnectedBTName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 254
    iget-object v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Z)V
    .locals 2

    .line 126
    iput-object p1, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mContext:Landroid/content/Context;

    .line 127
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.HEADSET_PLUG"

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.SCO_AUDIO_STATE_CHANGED"

    .line 129
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 130
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    sget-object v1, Lus/zoom/androidlib/util/HeadsetUtil;->BLUETOOTH_ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_0
    sget-object v1, Lus/zoom/androidlib/util/HeadsetUtil;->A2DP_ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 134
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    iget-object v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mAudioManager:Landroid/media/AudioManager;

    .line 142
    iget-object v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    iput-boolean v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mWiredHeadsetOn:Z

    .line 143
    iget-object v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mBluetoothHeadsetOn:Z

    if-eqz p2, :cond_4

    .line 146
    iget-object p2, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mHeadsetProfileListener:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {p2, p1, v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method

.method public isBTAndWiredHeadsetsOn()Z
    .locals 1

    .line 296
    invoke-virtual {p0}, Lus/zoom/androidlib/util/HeadsetUtil;->isBluetoothHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lus/zoom/androidlib/util/HeadsetUtil;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBluetoothHeadsetOn()Z
    .locals 1

    .line 284
    iget-boolean v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mBluetoothHeadsetOn:Z

    return v0
.end method

.method public isBluetoothScoAudioOn()Z
    .locals 1

    .line 292
    iget-boolean v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mBluetoothScoAudioOn:Z

    return v0
.end method

.method public isWiredHeadsetOn()Z
    .locals 1

    .line 288
    iget-boolean v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mWiredHeadsetOn:Z

    return v0
.end method

.method public ismIsStartingSco()Z
    .locals 1

    .line 246
    iget-boolean v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mIsStartingSco:Z

    return v0
.end method

.method public ismIsStoppingSco()Z
    .locals 1

    .line 250
    iget-boolean v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mIsStoppingSco:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 166
    sget-object p1, Lus/zoom/androidlib/util/HeadsetUtil;->A2DP_ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String;

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 167
    sget-object p1, Lus/zoom/androidlib/util/HeadsetUtil;->A2DP_EXTRA_STATE:Ljava/lang/String;

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_12

    .line 177
    iput-boolean v4, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mBluetoothHeadsetOn:Z

    .line 178
    iput-boolean v4, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mBluetoothScoAudioOn:Z

    .line 179
    iput-boolean v4, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mStartBluetoothScoCalled:Z

    .line 180
    invoke-direct {p0}, Lus/zoom/androidlib/util/HeadsetUtil;->postNotifyHeadsetConnectionChanged()V

    goto/16 :goto_6

    .line 170
    :cond_1
    :goto_0
    iput-boolean v3, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mBluetoothHeadsetOn:Z

    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 171
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_2

    .line 173
    iput-object p1, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 174
    :cond_2
    invoke-direct {p0}, Lus/zoom/androidlib/util/HeadsetUtil;->postNotifyHeadsetConnectionChanged()V

    goto/16 :goto_6

    :cond_3
    const-string p1, "android.media.SCO_AUDIO_STATE_CHANGED"

    .line 183
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    const-string p1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    .line 184
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto/16 :goto_3

    .line 202
    :cond_4
    sget-object p1, Lus/zoom/androidlib/util/HeadsetUtil;->BLUETOOTH_ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String;

    if-eqz p1, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 203
    sget-object p1, Lus/zoom/androidlib/util/HeadsetUtil;->BLUETOOTH_EXTRA_STATE:Ljava/lang/String;

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_6

    if-ne p1, v0, :cond_5

    goto :goto_1

    :cond_5
    if-nez p1, :cond_12

    .line 213
    iput-boolean v4, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mStartBluetoothScoCalled:Z

    .line 214
    invoke-direct {p0}, Lus/zoom/androidlib/util/HeadsetUtil;->checkBTConnectionStatus()V

    .line 218
    iget-object p1, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mHandler:Landroid/os/Handler;

    new-instance p2, Lus/zoom/androidlib/util/HeadsetUtil$2;

    invoke-direct {p2, p0}, Lus/zoom/androidlib/util/HeadsetUtil$2;-><init>(Lus/zoom/androidlib/util/HeadsetUtil;)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_6

    .line 206
    :cond_6
    :goto_1
    iput-boolean v3, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mBluetoothHeadsetOn:Z

    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 207
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_7

    .line 209
    iput-object p1, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 210
    :cond_7
    invoke-direct {p0}, Lus/zoom/androidlib/util/HeadsetUtil;->postNotifyHeadsetConnectionChanged()V

    goto/16 :goto_6

    :cond_8
    const-string p1, "android.intent.action.HEADSET_PLUG"

    .line 224
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "state"

    .line 225
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v3, :cond_9

    goto :goto_2

    :cond_9
    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mWiredHeadsetOn:Z

    .line 227
    invoke-direct {p0}, Lus/zoom/androidlib/util/HeadsetUtil;->postNotifyHeadsetConnectionChanged()V

    goto :goto_6

    :cond_a
    const-string p1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 230
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    .line 231
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xc

    if-eq p1, p2, :cond_b

    goto :goto_6

    .line 234
    :cond_b
    iget-object p1, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p1, :cond_12

    iget-object p1, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez p1, :cond_12

    .line 235
    invoke-direct {p0}, Lus/zoom/androidlib/util/HeadsetUtil;->resetSco()V

    .line 236
    iget-object p1, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object p2, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mHeadsetProfileListener:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {p1, p2, v0, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    goto :goto_6

    :cond_c
    :goto_3
    const-string p1, "android.media.extra.SCO_AUDIO_STATE"

    .line 185
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v3, :cond_d

    const/4 p2, 0x1

    goto :goto_4

    :cond_d
    const/4 p2, 0x0

    .line 187
    :goto_4
    iput-boolean p2, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mBluetoothScoAudioOn:Z

    if-ne p1, v3, :cond_e

    .line 189
    iput-boolean v4, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mIsStartingSco:Z

    goto :goto_5

    :cond_e
    if-nez p1, :cond_f

    .line 192
    iput-boolean v4, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mIsStoppingSco:Z

    goto :goto_5

    :cond_f
    if-eq p1, v1, :cond_10

    .line 195
    invoke-direct {p0}, Lus/zoom/androidlib/util/HeadsetUtil;->resetSco()V

    .line 197
    :cond_10
    :goto_5
    iget-boolean p1, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mBluetoothScoAudioOn:Z

    if-eqz p1, :cond_11

    iget-boolean p1, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mStartBluetoothScoCalled:Z

    if-nez p1, :cond_11

    .line 199
    iput-boolean v4, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mBluetoothScoAudioOn:Z

    .line 201
    :cond_11
    iget-boolean p1, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mBluetoothScoAudioOn:Z

    invoke-direct {p0, p1}, Lus/zoom/androidlib/util/HeadsetUtil;->notifyBluetoothScoAudioStatus(Z)V

    :cond_12
    :goto_6
    return-void
.end method

.method public removeListener(Lus/zoom/androidlib/util/HeadsetUtil$IHeadsetConnectionListener;)V
    .locals 1

    .line 159
    iget-object v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mListenerList:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/util/ListenerList;->remove(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public startBluetoothSco()V
    .locals 2

    .line 300
    iget-object v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 304
    :cond_0
    iget-object v1, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_1

    :try_start_0
    const-string v1, "audio"

    .line 306
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mAudioManager:Landroid/media/AudioManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 313
    :cond_1
    :goto_0
    iget-object v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x1

    .line 318
    :try_start_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-nez v0, :cond_3

    .line 320
    iput-boolean v1, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mIsStartingSco:Z

    .line 321
    iget-object v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const/4 v0, 0x0

    .line 331
    iput-boolean v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mIsStartingSco:Z

    .line 336
    :cond_3
    :goto_1
    iput-boolean v1, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mStartBluetoothScoCalled:Z

    return-void
.end method

.method public stopBluetoothSco()V
    .locals 2

    .line 340
    iget-object v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 344
    :cond_0
    iget-object v1, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_1

    :try_start_0
    const-string v1, "audio"

    .line 346
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mAudioManager:Landroid/media/AudioManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 353
    :cond_1
    :goto_0
    iget-object v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x1

    .line 358
    iput-boolean v1, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mIsStoppingSco:Z

    .line 359
    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    const/4 v0, 0x0

    .line 360
    iput-boolean v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mStartBluetoothScoCalled:Z

    .line 364
    iput-boolean v0, p0, Lus/zoom/androidlib/util/HeadsetUtil;->mBluetoothScoAudioOn:Z

    return-void
.end method
