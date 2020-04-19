.class public abstract Lus/zoom/zrc/utils/ZRCImageLoader;
.super Ljava/lang/Object;
.source "ZRCImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/utils/ZRCImageLoader$LoadImageFailedTag;,
        Lus/zoom/zrc/utils/ZRCImageLoader$IDrawableFactory;,
        Lus/zoom/zrc/utils/ZRCImageLoader$OnImageLoadedListener;
    }
.end annotation


# static fields
.field private static final FOLDER_ZRC_VIRTUAL_BACKGROUND:Ljava/lang/String;

.field private static final FOLDER_ZRP_BACKGROUND:Ljava/lang/String;

.field private static final FOLDER_ZRP_MAP:Ljava/lang/String;

.field private static final LOADER_ZRC_VIRTUAL_BACKGROUND:I = 0x2

.field private static final LOADER_ZRP_MAP_BACKGROUND:I = 0x1

.field private static final LOADER_ZRP_PANEL_BACKGROUND:I = 0x0

.field static final TAG:Ljava/lang/String; = "ZRCImageLoader"

.field private static sLoaderInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lus/zoom/zrc/utils/ZRCImageLoader;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field drawableFactory:Lus/zoom/zrc/utils/ZRCImageLoader$IDrawableFactory;

.field listenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/Set<",
            "Lus/zoom/zrc/utils/ZRCImageLoader$OnImageLoadedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private loaderType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zipow/cmmlib/AppUtil;->getLogParentPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/zrp/map"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lus/zoom/zrc/utils/ZRCImageLoader;->FOLDER_ZRP_MAP:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zipow/cmmlib/AppUtil;->getLogParentPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/zrp/background"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lus/zoom/zrc/utils/ZRCImageLoader;->FOLDER_ZRP_BACKGROUND:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zipow/cmmlib/AppUtil;->getLogParentPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/files/virtual_background"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lus/zoom/zrc/utils/ZRCImageLoader;->FOLDER_ZRC_VIRTUAL_BACKGROUND:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lus/zoom/zrc/utils/ZRCImageLoader;->sLoaderInstanceMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoader;->listenerMap:Ljava/util/Map;

    .line 68
    new-instance v0, Lus/zoom/zrc/utils/ZRCImageLoader$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/utils/ZRCImageLoader$1;-><init>(Lus/zoom/zrc/utils/ZRCImageLoader;)V

    iput-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoader;->drawableFactory:Lus/zoom/zrc/utils/ZRCImageLoader$IDrawableFactory;

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .line 37
    sget-object v0, Lus/zoom/zrc/utils/ZRCImageLoader;->sLoaderInstanceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100()V
    .locals 0

    .line 37
    invoke-static {}, Lus/zoom/zrc/utils/ZRCImageLoader;->cleanupSavedImageFiles()V

    return-void
.end method

.method private static cleanupSavedImageFiles()V
    .locals 3

    .line 276
    invoke-static {}, Lus/zoom/zrc/utils/ZRCImageLoader;->getZRPMapBackgroundLoader()Lus/zoom/zrc/utils/ZRCImageLoader;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Lus/zoom/zrc/utils/ZRCImageLoader;->removeCache()V

    .line 278
    invoke-virtual {v0}, Lus/zoom/zrc/utils/ZRCImageLoader;->deleteUselessFiles()V

    .line 281
    invoke-static {}, Lus/zoom/zrc/utils/ZRCImageLoader;->getZRCVirtualBackgroundLoader()Lus/zoom/zrc/utils/ZRCImageLoader;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Lus/zoom/zrc/utils/ZRCImageLoader;->removeCache()V

    .line 283
    invoke-virtual {v0}, Lus/zoom/zrc/utils/ZRCImageLoader;->deleteUselessFiles()V

    const-string v0, "ZRCImageLoader"

    const-string v1, "cleanup saved image files"

    const/4 v2, 0x0

    .line 285
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static getInstance(I)Lus/zoom/zrc/utils/ZRCImageLoader;
    .locals 2

    .line 82
    sget-object v0, Lus/zoom/zrc/utils/ZRCImageLoader;->sLoaderInstanceMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/utils/ZRCImageLoader;

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    .line 85
    new-instance v0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;

    invoke-direct {v0}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;-><init>()V

    goto :goto_0

    .line 87
    :cond_0
    new-instance v0, Lus/zoom/zrc/utils/ZRCImageLoaderComposer;

    invoke-direct {v0}, Lus/zoom/zrc/utils/ZRCImageLoaderComposer;-><init>()V

    .line 89
    :goto_0
    iput p0, v0, Lus/zoom/zrc/utils/ZRCImageLoader;->loaderType:I

    .line 90
    sget-object v1, Lus/zoom/zrc/utils/ZRCImageLoader;->sLoaderInstanceMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method private getLoaderName()Ljava/lang/String;
    .locals 1

    .line 320
    iget v0, p0, Lus/zoom/zrc/utils/ZRCImageLoader;->loaderType:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "Unknown"

    return-object v0

    :pswitch_0
    const-string v0, "ZRC_Virtual_Background"

    return-object v0

    :pswitch_1
    const-string v0, "ZRP_Map"

    return-object v0

    :pswitch_2
    const-string v0, "ZRP_Background"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getZRCVirtualBackgroundLoader()Lus/zoom/zrc/utils/ZRCImageLoader;
    .locals 2

    const/4 v0, 0x2

    .line 112
    invoke-static {v0}, Lus/zoom/zrc/utils/ZRCImageLoader;->getInstance(I)Lus/zoom/zrc/utils/ZRCImageLoader;

    move-result-object v0

    .line 113
    sget-object v1, Lus/zoom/zrc/utils/ZRCImageLoader;->FOLDER_ZRC_VIRTUAL_BACKGROUND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/utils/ZRCImageLoader;->setFolder(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getZRPMapBackgroundLoader()Lus/zoom/zrc/utils/ZRCImageLoader;
    .locals 3

    const/4 v0, 0x1

    .line 104
    invoke-static {v0}, Lus/zoom/zrc/utils/ZRCImageLoader;->getInstance(I)Lus/zoom/zrc/utils/ZRCImageLoader;

    move-result-object v0

    .line 105
    sget-object v1, Lus/zoom/zrc/utils/ZRCImageLoader;->FOLDER_ZRP_MAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/utils/ZRCImageLoader;->setFolder(Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v1

    .line 107
    invoke-static {v1}, Lus/zoom/androidlib/util/UIUtil;->getDisplayWidth(Landroid/content/Context;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1}, Lus/zoom/androidlib/util/UIUtil;->getDisplayHeight(Landroid/content/Context;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v2, v1}, Lus/zoom/zrc/utils/ZRCImageLoader;->setSize(II)V

    return-object v0
.end method

.method public static getZRPPanelBackgroundLoader()Lus/zoom/zrc/utils/ZRCImageLoader;
    .locals 3

    const/4 v0, 0x0

    .line 96
    invoke-static {v0}, Lus/zoom/zrc/utils/ZRCImageLoader;->getInstance(I)Lus/zoom/zrc/utils/ZRCImageLoader;

    move-result-object v0

    .line 97
    sget-object v1, Lus/zoom/zrc/utils/ZRCImageLoader;->FOLDER_ZRP_BACKGROUND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/utils/ZRCImageLoader;->setFolder(Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v1

    .line 99
    invoke-static {v1}, Lus/zoom/androidlib/util/UIUtil;->getDisplayWidth(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1}, Lus/zoom/androidlib/util/UIUtil;->getDisplayHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lus/zoom/zrc/utils/ZRCImageLoader;->setSize(II)V

    return-object v0
.end method

.method public static init()V
    .locals 4

    .line 227
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/utils/ZRCImageLoader;

    sget-object v2, Lus/zoom/zrc/base/notification/ModelEvent;->DownloadFileSuccess:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v3, Lus/zoom/zrc/utils/ZRCImageLoader$2;

    invoke-direct {v3}, Lus/zoom/zrc/utils/ZRCImageLoader$2;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 236
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/utils/ZRCImageLoader;

    sget-object v2, Lus/zoom/zrc/base/notification/ModelEvent;->DownloadFileFailed:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v3, Lus/zoom/zrc/utils/ZRCImageLoader$3;

    invoke-direct {v3}, Lus/zoom/zrc/utils/ZRCImageLoader$3;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 245
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/utils/ZRCImageLoader;

    sget-object v2, Lus/zoom/zrc/base/notification/ModelEvent;->ZR_SignOut:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v3, Lus/zoom/zrc/utils/ZRCImageLoader$4;

    invoke-direct {v3}, Lus/zoom/zrc/utils/ZRCImageLoader$4;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 251
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/utils/ZRCImageLoader;

    sget-object v2, Lus/zoom/zrc/base/notification/ModelEvent;->Logout:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v3, Lus/zoom/zrc/utils/ZRCImageLoader$5;

    invoke-direct {v3}, Lus/zoom/zrc/utils/ZRCImageLoader$5;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    .line 257
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/utils/ZRCImageLoader;

    sget-object v2, Lus/zoom/zrc/base/notification/ModelEvent;->SwitchingWorkMode:Lus/zoom/zrc/base/notification/ModelEvent;

    new-instance v3, Lus/zoom/zrc/utils/ZRCImageLoader$6;

    invoke-direct {v3}, Lus/zoom/zrc/utils/ZRCImageLoader$6;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lus/zoom/zrc/base/notification/NotificationCenter;->addNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V

    return-void
.end method

.method static isDownloadingFile(Ljava/io/File;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 332
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".zmdownload"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static release()V
    .locals 3

    .line 269
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    const-class v1, Lus/zoom/zrc/utils/ZRCImageLoader;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->removeNotification(Ljava/lang/Object;Lus/zoom/zrc/base/notification/NotificationEvent;)V

    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/Object;Lus/zoom/zrc/utils/ZRCImageLoader$OnImageLoadedListener;)V
    .locals 2

    .line 118
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoader;->listenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 120
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lus/zoom/zrc/utils/ZRCImageLoader;->listenerMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method deleteFile(Ljava/io/File;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 303
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 307
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 309
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 310
    invoke-virtual {p0, v4}, Lus/zoom/zrc/utils/ZRCImageLoader;->deleteFile(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 314
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ZRCImageLoader"

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lus/zoom/zrc/utils/ZRCImageLoader;->getLoaderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": delete file(%s) failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v0, v2, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public abstract deleteUselessFiles()V
.end method

.method public abstract downloadImage(Ljava/lang/String;)V
.end method

.method fileExists(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 294
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method public abstract isLoading()Z
.end method

.method public loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 178
    invoke-virtual {p0, p1, p2, v0}, Lus/zoom/zrc/utils/ZRCImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    return-void
.end method

.method public abstract loadImage(Landroid/widget/ImageView;Ljava/lang/String;Z)V
.end method

.method public loadImage(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 157
    invoke-virtual {p0, v0, p1, v1}, Lus/zoom/zrc/utils/ZRCImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    return-void
.end method

.method public loadImage(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 167
    invoke-virtual {p0, v0, p1, p2}, Lus/zoom/zrc/utils/ZRCImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    return-void
.end method

.method abstract onFileDownloadFailed(Ljava/lang/String;)V
.end method

.method abstract onFileDownloadSuccess(Ljava/lang/String;)V
.end method

.method public abstract removeCache()V
.end method

.method public removeListener(Ljava/lang/Object;Lus/zoom/zrc/utils/ZRCImageLoader$OnImageLoadedListener;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoader;->listenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 133
    iget-object p2, p0, Lus/zoom/zrc/utils/ZRCImageLoader;->listenerMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 135
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 136
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 137
    iget-object p2, p0, Lus/zoom/zrc/utils/ZRCImageLoader;->listenerMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public setDrawableFactory(Lus/zoom/zrc/utils/ZRCImageLoader$IDrawableFactory;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lus/zoom/zrc/utils/ZRCImageLoader;->drawableFactory:Lus/zoom/zrc/utils/ZRCImageLoader$IDrawableFactory;

    return-void
.end method

.method abstract setFolder(Ljava/lang/String;)V
.end method

.method public abstract setSize(II)V
.end method
