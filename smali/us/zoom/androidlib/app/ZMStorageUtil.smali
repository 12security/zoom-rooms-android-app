.class public Lus/zoom/androidlib/app/ZMStorageUtil;
.super Ljava/lang/Object;
.source "ZMStorageUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/app/ZMStorageUtil$AsyncLoadAllStorage;,
        Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageListener;,
        Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ZMStorageUtil"

.field public static final TYPE_INTERNAL_STORAGE:I = 0x1

.field public static final TYPE_SDCARD:I = 0x2

.field public static final TYPE_USB_STORAGE:I = 0x3

.field private static sCachedStorages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;",
            ">;"
        }
    .end annotation
.end field

.field private static sHandler:Landroid/os/Handler;

.field private static sListeners:Lus/zoom/androidlib/util/ListenerList;

.field private static sLoader:Lus/zoom/androidlib/app/ZMStorageUtil$AsyncLoadAllStorage;

.field private static sTimeOutRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lus/zoom/androidlib/util/ListenerList;

    invoke-direct {v0}, Lus/zoom/androidlib/util/ListenerList;-><init>()V

    sput-object v0, Lus/zoom/androidlib/app/ZMStorageUtil;->sListeners:Lus/zoom/androidlib/util/ListenerList;

    const/4 v0, 0x0

    .line 33
    sput-object v0, Lus/zoom/androidlib/app/ZMStorageUtil;->sLoader:Lus/zoom/androidlib/app/ZMStorageUtil$AsyncLoadAllStorage;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lus/zoom/androidlib/app/ZMStorageUtil;->sCachedStorages:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lus/zoom/androidlib/app/ZMStorageUtil;->sHandler:Landroid/os/Handler;

    .line 37
    new-instance v0, Lus/zoom/androidlib/app/ZMStorageUtil$1;

    invoke-direct {v0}, Lus/zoom/androidlib/app/ZMStorageUtil$1;-><init>()V

    sput-object v0, Lus/zoom/androidlib/app/ZMStorageUtil;->sTimeOutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .line 25
    sget-object v0, Lus/zoom/androidlib/app/ZMStorageUtil;->sCachedStorages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/List;)V
    .locals 0

    .line 25
    invoke-static {p0}, Lus/zoom/androidlib/app/ZMStorageUtil;->notifyListeners(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/Runnable;
    .locals 1

    .line 25
    sget-object v0, Lus/zoom/androidlib/app/ZMStorageUtil;->sTimeOutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .locals 1

    .line 25
    sget-object v0, Lus/zoom/androidlib/app/ZMStorageUtil;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lus/zoom/androidlib/app/ZMStorageUtil$AsyncLoadAllStorage;)Lus/zoom/androidlib/app/ZMStorageUtil$AsyncLoadAllStorage;
    .locals 0

    .line 25
    sput-object p0, Lus/zoom/androidlib/app/ZMStorageUtil;->sLoader:Lus/zoom/androidlib/app/ZMStorageUtil$AsyncLoadAllStorage;

    return-object p0
.end method

.method static synthetic access$500(Ljava/lang/String;)Z
    .locals 0

    .line 25
    invoke-static {p0}, Lus/zoom/androidlib/app/ZMStorageUtil;->checkFsWritable(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static addListener(Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageListener;)V
    .locals 1

    .line 59
    sget-object v0, Lus/zoom/androidlib/app/ZMStorageUtil;->sListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p0}, Lus/zoom/androidlib/util/ListenerList;->add(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public static asyncGetAllStorages(Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageListener;J)V
    .locals 1

    .line 244
    invoke-static {p0}, Lus/zoom/androidlib/app/ZMStorageUtil;->addListener(Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageListener;)V

    .line 247
    sget-object p0, Lus/zoom/androidlib/app/ZMStorageUtil;->sLoader:Lus/zoom/androidlib/app/ZMStorageUtil$AsyncLoadAllStorage;

    if-eqz p0, :cond_0

    return-void

    .line 251
    :cond_0
    new-instance p0, Lus/zoom/androidlib/app/ZMStorageUtil$AsyncLoadAllStorage;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lus/zoom/androidlib/app/ZMStorageUtil$AsyncLoadAllStorage;-><init>(Lus/zoom/androidlib/app/ZMStorageUtil$1;)V

    sput-object p0, Lus/zoom/androidlib/app/ZMStorageUtil;->sLoader:Lus/zoom/androidlib/app/ZMStorageUtil$AsyncLoadAllStorage;

    .line 252
    sget-object p0, Lus/zoom/androidlib/app/ZMStorageUtil;->sLoader:Lus/zoom/androidlib/app/ZMStorageUtil$AsyncLoadAllStorage;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/app/ZMStorageUtil$AsyncLoadAllStorage;->execute([Ljava/lang/Object;)Lus/zoom/androidlib/util/ZMAsyncTask;

    .line 254
    sget-object p0, Lus/zoom/androidlib/app/ZMStorageUtil;->sHandler:Landroid/os/Handler;

    sget-object v0, Lus/zoom/androidlib/app/ZMStorageUtil;->sTimeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 255
    sget-object p0, Lus/zoom/androidlib/app/ZMStorageUtil;->sHandler:Landroid/os/Handler;

    sget-object v0, Lus/zoom/androidlib/app/ZMStorageUtil;->sTimeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static checkFsWritable(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 85
    :cond_0
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 89
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_2

    .line 92
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_2

    return v0

    .line 97
    :cond_2
    new-instance p0, Ljava/io/File;

    const-string v2, ".zoomflajfalsfka"

    invoke-direct {p0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 99
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 100
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 102
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 105
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method public static getAvailableMemSize(Ljava/lang/String;)J
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 273
    invoke-static {p0}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    .line 279
    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge p0, v1, :cond_1

    .line 288
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p0

    int-to-long v3, p0

    mul-long v1, v1, v3

    goto :goto_0

    .line 290
    :cond_1
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v1

    :goto_0
    return-wide v1

    :catch_0
    return-wide v1
.end method

.method public static getInternalStoragePath()Ljava/lang/String;
    .locals 1

    .line 73
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 77
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isInternalStorageMounted()Z
    .locals 2

    .line 68
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static notifyListeners(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;",
            ">;)V"
        }
    .end annotation

    .line 259
    sget-object v0, Lus/zoom/androidlib/app/ZMStorageUtil;->sListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 260
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 261
    instance-of v4, v3, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageListener;

    if-nez v4, :cond_0

    goto :goto_1

    .line 265
    :cond_0
    check-cast v3, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageListener;

    .line 266
    invoke-interface {v3, p0}, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageListener;->onRecieveStorageInfo(Ljava/util/List;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static removeListener(Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageListener;)V
    .locals 1

    .line 63
    sget-object v0, Lus/zoom/androidlib/app/ZMStorageUtil;->sListeners:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p0}, Lus/zoom/androidlib/util/ListenerList;->remove(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method
