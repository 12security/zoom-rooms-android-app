.class final Lus/zoom/zrc/utils/ZRCImageLoader$3;
.super Lus/zoom/zrc/base/notification/INotification;
.source "ZRCImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/utils/ZRCImageLoader;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 236
    invoke-direct {p0}, Lus/zoom/zrc/base/notification/INotification;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotification(Ljava/lang/Object;)V
    .locals 2

    .line 239
    check-cast p1, Ljava/lang/String;

    .line 240
    invoke-static {}, Lus/zoom/zrc/utils/ZRCImageLoader;->access$000()Ljava/util/Map;

    move-result-object v0

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

    .line 241
    invoke-virtual {v1, p1}, Lus/zoom/zrc/utils/ZRCImageLoader;->onFileDownloadFailed(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
