.class Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$1;
.super Ljava/lang/Object;
.source "ZMDownloadDiscCacheFile.java"

# interfaces
.implements Lus/zoom/androidlib/cache/IoUtils$CopyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;->doInBackground([Ljava/lang/Void;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$1;->this$0:Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBytesCopied(II)Z
    .locals 1

    .line 144
    iget-object v0, p0, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$1;->this$0:Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;

    invoke-static {v0, p1, p2}, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;->access$500(Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;II)Z

    move-result p1

    return p1
.end method
