.class public Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$ContentLengthInputStream;
.super Ljava/io/InputStream;
.source "ZMDownloadDiscCacheFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContentLengthInputStream"
.end annotation


# instance fields
.field private final length:I

.field private final stream:Ljava/io/InputStream;

.field final synthetic this$0:Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;


# direct methods
.method public constructor <init>(Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;Ljava/io/InputStream;I)V
    .locals 0

    .line 33
    iput-object p1, p0, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$ContentLengthInputStream;->this$0:Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 34
    iput-object p2, p0, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$ContentLengthInputStream;->stream:Ljava/io/InputStream;

    .line 35
    iput p3, p0, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$ContentLengthInputStream;->length:I

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 40
    iget v0, p0, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$ContentLengthInputStream;->length:I

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$ContentLengthInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public mark(I)V
    .locals 1

    .line 50
    iget-object v0, p0, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$ContentLengthInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$ContentLengthInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$ContentLengthInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$ContentLengthInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$ContentLengthInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$ContentLengthInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    return-void
.end method

.method public skip(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lus/zoom/androidlib/util/ZMDownloadDiscCacheFile$ContentLengthInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method
