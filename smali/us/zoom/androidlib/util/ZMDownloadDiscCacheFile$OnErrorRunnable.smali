.class Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$OnErrorRunnable;
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
    name = "OnErrorRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;


# direct methods
.method private constructor <init>(Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$OnErrorRunnable;->this$0:Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$1;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$OnErrorRunnable;-><init>(Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 88
    iget-object v0, p0, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$OnErrorRunnable;->this$0:Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;

    invoke-static {v0}, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;->access$000(Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;)Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$IDownloadFileListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$OnErrorRunnable;->this$0:Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;

    invoke-static {v0}, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;->access$000(Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;)Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$IDownloadFileListener;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$OnErrorRunnable;->this$0:Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;

    invoke-static {v1}, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;->access$100(Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$IDownloadFileListener;->onDownloadFailed(Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
