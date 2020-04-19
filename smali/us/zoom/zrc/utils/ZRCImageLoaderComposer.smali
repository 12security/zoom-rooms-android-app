.class Lus/zoom/zrc/utils/ZRCImageLoaderComposer;
.super Lus/zoom/zrc/utils/ZRCImageLoader;
.source "ZRCImageLoader.java"

# interfaces
.implements Lus/zoom/zrc/utils/ZRCImageLoader$OnImageLoadedListener;


# instance fields
.field private folderPath:Ljava/lang/String;

.field private loadHeight:I

.field private loadWidth:I

.field private loaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lus/zoom/zrc/utils/ZRCImageLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 771
    invoke-direct {p0}, Lus/zoom/zrc/utils/ZRCImageLoader;-><init>()V

    .line 773
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderComposer;->loaders:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public deleteUselessFiles()V
    .locals 9

    .line 828
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lus/zoom/zrc/utils/ZRCImageLoaderComposer;->folderPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 829
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 833
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 838
    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_8

    aget-object v4, v0, v3

    .line 839
    invoke-static {v4}, Lus/zoom/zrc/utils/ZRCImageLoaderComposer;->isDownloadingFile(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    .line 845
    :cond_2
    iget-object v5, p0, Lus/zoom/zrc/utils/ZRCImageLoaderComposer;->loaders:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lus/zoom/zrc/utils/ZRCImageLoader;

    .line 846
    check-cast v6, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;

    .line 847
    iget-object v8, v6, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->downloadingFile:Ljava/io/File;

    invoke-static {v8, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_1

    .line 851
    :cond_4
    iget-object v8, v6, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->decodingFile:Ljava/io/File;

    invoke-static {v8, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_1

    .line 855
    :cond_5
    iget-object v6, v6, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->decodedFile:Ljava/io/File;

    invoke-static {v6, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_6
    const/4 v7, 0x0

    :goto_1
    if-nez v7, :cond_7

    .line 862
    invoke-virtual {p0, v4}, Lus/zoom/zrc/utils/ZRCImageLoaderComposer;->deleteFile(Ljava/io/File;)V

    :cond_7
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method public downloadImage(Ljava/lang/String;)V
    .locals 3

    .line 802
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderComposer;->loaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/utils/ZRCImageLoader;

    if-nez v0, :cond_0

    .line 804
    new-instance v0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;

    invoke-direct {v0}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;-><init>()V

    .line 805
    iget-object v1, p0, Lus/zoom/zrc/utils/ZRCImageLoaderComposer;->folderPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/utils/ZRCImageLoader;->setFolder(Ljava/lang/String;)V

    .line 806
    iget v1, p0, Lus/zoom/zrc/utils/ZRCImageLoaderComposer;->loadWidth:I

    iget v2, p0, Lus/zoom/zrc/utils/ZRCImageLoaderComposer;->loadHeight:I

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/utils/ZRCImageLoader;->setSize(II)V

    .line 807
    iget-object v1, p0, Lus/zoom/zrc/utils/ZRCImageLoaderComposer;->loaders:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/utils/ZRCImageLoaderComposer;->drawableFactory:Lus/zoom/zrc/utils/ZRCImageLoader$IDrawableFactory;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/utils/ZRCImageLoader;->setDrawableFactory(Lus/zoom/zrc/utils/ZRCImageLoader$IDrawableFactory;)V

    .line 810
    invoke-virtual {v0, p1}, Lus/zoom/zrc/utils/ZRCImageLoader;->downloadImage(Ljava/lang/String;)V

    return-void
.end method

.method public isLoading()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public loadImage(Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .locals 3

    .line 788
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderComposer;->loaders:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/utils/ZRCImageLoader;

    if-nez v0, :cond_0

    .line 790
    new-instance v0, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;

    invoke-direct {v0}, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;-><init>()V

    .line 791
    iget-object v1, p0, Lus/zoom/zrc/utils/ZRCImageLoaderComposer;->folderPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/utils/ZRCImageLoader;->setFolder(Ljava/lang/String;)V

    .line 792
    iget v1, p0, Lus/zoom/zrc/utils/ZRCImageLoaderComposer;->loadWidth:I

    iget v2, p0, Lus/zoom/zrc/utils/ZRCImageLoaderComposer;->loadHeight:I

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/utils/ZRCImageLoader;->setSize(II)V

    .line 793
    iget-object v1, p0, Lus/zoom/zrc/utils/ZRCImageLoaderComposer;->loaders:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    :cond_0
    invoke-virtual {v0, p0, p0}, Lus/zoom/zrc/utils/ZRCImageLoader;->addListener(Ljava/lang/Object;Lus/zoom/zrc/utils/ZRCImageLoader$OnImageLoadedListener;)V

    .line 796
    iget-object v1, p0, Lus/zoom/zrc/utils/ZRCImageLoaderComposer;->drawableFactory:Lus/zoom/zrc/utils/ZRCImageLoader$IDrawableFactory;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/utils/ZRCImageLoader;->setDrawableFactory(Lus/zoom/zrc/utils/ZRCImageLoader$IDrawableFactory;)V

    .line 797
    invoke-virtual {v0, p1, p2, p3}, Lus/zoom/zrc/utils/ZRCImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    return-void
.end method

.method onFileDownloadFailed(Ljava/lang/String;)V
    .locals 2

    .line 887
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderComposer;->loaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/utils/ZRCImageLoader;

    .line 888
    invoke-virtual {v1, p1}, Lus/zoom/zrc/utils/ZRCImageLoader;->onFileDownloadFailed(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method onFileDownloadSuccess(Ljava/lang/String;)V
    .locals 2

    .line 880
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderComposer;->loaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/utils/ZRCImageLoader;

    .line 881
    invoke-virtual {v1, p1}, Lus/zoom/zrc/utils/ZRCImageLoader;->onFileDownloadSuccess(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onImageLoaded(ZLjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 894
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderComposer;->loaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/utils/ZRCImageLoader;

    .line 895
    move-object v2, v1

    check-cast v2, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;

    .line 896
    iget-object v2, v2, Lus/zoom/zrc/utils/ZRCImageLoaderImpl;->url:Ljava/lang/String;

    invoke-static {p2, v2}, Lus/zoom/androidlib/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 897
    invoke-virtual {v1, p0, v2}, Lus/zoom/zrc/utils/ZRCImageLoader;->removeListener(Ljava/lang/Object;Lus/zoom/zrc/utils/ZRCImageLoader$OnImageLoadedListener;)V

    goto :goto_0

    .line 901
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderComposer;->listenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 902
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrc/utils/ZRCImageLoader$OnImageLoadedListener;

    .line 903
    invoke-interface {v2, p1, p2, p3}, Lus/zoom/zrc/utils/ZRCImageLoader$OnImageLoadedListener;->onImageLoaded(ZLjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public removeCache()V
    .locals 2

    .line 820
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderComposer;->loaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/utils/ZRCImageLoader;

    .line 821
    invoke-virtual {v1}, Lus/zoom/zrc/utils/ZRCImageLoader;->removeCache()V

    goto :goto_0

    .line 823
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCImageLoaderComposer;->loaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method setFolder(Ljava/lang/String;)V
    .locals 3

    .line 869
    iput-object p1, p0, Lus/zoom/zrc/utils/ZRCImageLoaderComposer;->folderPath:Ljava/lang/String;

    .line 870
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 871
    invoke-virtual {p0, p1}, Lus/zoom/zrc/utils/ZRCImageLoaderComposer;->fileExists(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 872
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "ZRCImageLoader"

    .line 873
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create folder error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setSize(II)V
    .locals 0

    .line 782
    iput p1, p0, Lus/zoom/zrc/utils/ZRCImageLoaderComposer;->loadWidth:I

    .line 783
    iput p2, p0, Lus/zoom/zrc/utils/ZRCImageLoaderComposer;->loadHeight:I

    return-void
.end method
