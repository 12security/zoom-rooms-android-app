.class Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$onCanceledRunnable;
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
    name = "onCanceledRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;


# direct methods
.method private constructor <init>(Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$onCanceledRunnable;->this$0:Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$1;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$onCanceledRunnable;-><init>(Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 110
    iget-object v0, p0, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$onCanceledRunnable;->this$0:Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;

    invoke-static {v0}, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;->access$000(Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;)Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$IDownloadFileListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$onCanceledRunnable;->this$0:Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;

    invoke-static {v0}, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;->access$000(Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;)Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$IDownloadFileListener;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$onCanceledRunnable;->this$0:Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;

    invoke-static {v1}, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;->access$100(Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$IDownloadFileListener;->onDownloadCanceled(Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
