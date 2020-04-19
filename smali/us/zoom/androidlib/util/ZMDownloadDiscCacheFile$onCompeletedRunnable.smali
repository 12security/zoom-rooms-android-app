.class Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$onCompeletedRunnable;
.super Ljava/lang/Object;
.source "ZMDownloadDiscCacheFile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "onCompeletedRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;


# direct methods
.method private constructor <init>(Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$onCompeletedRunnable;->this$0:Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$1;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$onCompeletedRunnable;-><init>(Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 99
    iget-object v0, p0, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$onCompeletedRunnable;->this$0:Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;

    invoke-static {v0}, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;->access$000(Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;)Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$IDownloadFileListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$onCompeletedRunnable;->this$0:Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;

    invoke-static {v0}, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;->access$000(Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;)Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$IDownloadFileListener;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$onCompeletedRunnable;->this$0:Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;

    invoke-static {v1}, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;->access$100(Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$onCompeletedRunnable;->this$0:Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;

    invoke-static {v3}, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;->access$200(Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;)Lus/zoom/androidlib/cache/impl/LimitedAgeDiskCache;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$IDownloadFileListener;->onDownloadCompleted(Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;Ljava/lang/String;Lus/zoom/androidlib/cache/impl/LimitedAgeDiskCache;)V

    :cond_0
    return-void
.end method
