.class public Lus/zoom/zrc/model/VirtualBackgroundHelper;
.super Ljava/lang/Object;
.source "VirtualBackgroundHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VirtualBackgroundHelper"

.field private static instance:Lus/zoom/zrc/model/VirtualBackgroundHelper;


# instance fields
.field private imageLoader:Lus/zoom/zrc/utils/ZRCImageLoader;

.field private onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

.field private virtualBackgrounds:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCVirtualBackground;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lus/zoom/zrc/utils/ZRCImageLoader;->getZRCVirtualBackgroundLoader()Lus/zoom/zrc/utils/ZRCImageLoader;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/model/VirtualBackgroundHelper;->imageLoader:Lus/zoom/zrc/utils/ZRCImageLoader;

    .line 35
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getVirtualBackgrounds()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/model/VirtualBackgroundHelper;->virtualBackgrounds:Ljava/util/List;

    .line 37
    new-instance v0, Lus/zoom/zrc/model/VirtualBackgroundHelper$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/model/VirtualBackgroundHelper$1;-><init>(Lus/zoom/zrc/model/VirtualBackgroundHelper;)V

    iput-object v0, p0, Lus/zoom/zrc/model/VirtualBackgroundHelper;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    .line 54
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/model/VirtualBackgroundHelper;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 55
    invoke-direct {p0}, Lus/zoom/zrc/model/VirtualBackgroundHelper;->setImageLoaderListener()V

    return-void
.end method

.method public static declared-synchronized getDefault()Lus/zoom/zrc/model/VirtualBackgroundHelper;
    .locals 2

    const-class v0, Lus/zoom/zrc/model/VirtualBackgroundHelper;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lus/zoom/zrc/model/VirtualBackgroundHelper;->instance:Lus/zoom/zrc/model/VirtualBackgroundHelper;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lus/zoom/zrc/model/VirtualBackgroundHelper;

    invoke-direct {v1}, Lus/zoom/zrc/model/VirtualBackgroundHelper;-><init>()V

    sput-object v1, Lus/zoom/zrc/model/VirtualBackgroundHelper;->instance:Lus/zoom/zrc/model/VirtualBackgroundHelper;

    .line 50
    :cond_0
    sget-object v1, Lus/zoom/zrc/model/VirtualBackgroundHelper;->instance:Lus/zoom/zrc/model/VirtualBackgroundHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private setImageLoaderListener()V
    .locals 2

    .line 87
    new-instance v0, Lus/zoom/zrc/model/VirtualBackgroundHelper$2;

    invoke-direct {v0, p0}, Lus/zoom/zrc/model/VirtualBackgroundHelper$2;-><init>(Lus/zoom/zrc/model/VirtualBackgroundHelper;)V

    .line 107
    iget-object v1, p0, Lus/zoom/zrc/model/VirtualBackgroundHelper;->imageLoader:Lus/zoom/zrc/utils/ZRCImageLoader;

    invoke-virtual {v1, v0}, Lus/zoom/zrc/utils/ZRCImageLoader;->setDrawableFactory(Lus/zoom/zrc/utils/ZRCImageLoader$IDrawableFactory;)V

    return-void
.end method


# virtual methods
.method public deleteFiles()V
    .locals 3

    const-string v0, "VirtualBackgroundHelper"

    const-string v1, "delete all caches and saved images"

    const/4 v2, 0x0

    .line 129
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lus/zoom/zrc/model/VirtualBackgroundHelper;->imageLoader:Lus/zoom/zrc/utils/ZRCImageLoader;

    invoke-virtual {v0}, Lus/zoom/zrc/utils/ZRCImageLoader;->removeCache()V

    .line 131
    iget-object v0, p0, Lus/zoom/zrc/model/VirtualBackgroundHelper;->imageLoader:Lus/zoom/zrc/utils/ZRCImageLoader;

    invoke-virtual {v0}, Lus/zoom/zrc/utils/ZRCImageLoader;->deleteUselessFiles()V

    return-void
.end method

.method public downloadVirtualBackgroundImageFiles()V
    .locals 4

    .line 60
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getVirtualBackgrounds()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/model/VirtualBackgroundHelper;->virtualBackgrounds:Ljava/util/List;

    .line 62
    iget-object v0, p0, Lus/zoom/zrc/model/VirtualBackgroundHelper;->virtualBackgrounds:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "VirtualBackgroundHelper"

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download virtual background image files, size is="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrc/model/VirtualBackgroundHelper;->virtualBackgrounds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lus/zoom/zrc/model/VirtualBackgroundHelper;->virtualBackgrounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const-string v0, "VirtualBackgroundHelper"

    const-string v1, "receive empty list, delete all caches and files"

    .line 70
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-virtual {p0}, Lus/zoom/zrc/model/VirtualBackgroundHelper;->deleteFiles()V

    return-void

    .line 76
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/model/VirtualBackgroundHelper;->virtualBackgrounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;

    if-nez v1, :cond_2

    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->getSmall_img_url()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {v1}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 82
    :cond_3
    iget-object v2, p0, Lus/zoom/zrc/model/VirtualBackgroundHelper;->imageLoader:Lus/zoom/zrc/utils/ZRCImageLoader;

    invoke-virtual {v2, v1}, Lus/zoom/zrc/utils/ZRCImageLoader;->downloadImage(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public getUrlById(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 112
    iget-object v0, p0, Lus/zoom/zrc/model/VirtualBackgroundHelper;->virtualBackgrounds:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 115
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;

    if-nez v2, :cond_2

    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->getSmall_img_url()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v1
.end method

.method public loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lus/zoom/zrc/model/VirtualBackgroundHelper;->imageLoader:Lus/zoom/zrc/utils/ZRCImageLoader;

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/utils/ZRCImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method public removeCaches()V
    .locals 3

    const-string v0, "VirtualBackgroundHelper"

    const-string v1, "remove all caches"

    const/4 v2, 0x0

    .line 135
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lus/zoom/zrc/model/VirtualBackgroundHelper;->imageLoader:Lus/zoom/zrc/utils/ZRCImageLoader;

    invoke-virtual {v0}, Lus/zoom/zrc/utils/ZRCImageLoader;->removeCache()V

    return-void
.end method
