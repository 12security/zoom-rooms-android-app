.class Landroidx/exifinterface/media/ExifInterface$1;
.super Landroid/media/MediaDataSource;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/exifinterface/media/ExifInterface;->getHeifAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mPosition:J

.field final synthetic this$0:Landroidx/exifinterface/media/ExifInterface;

.field final synthetic val$in:Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;


# direct methods
.method constructor <init>(Landroidx/exifinterface/media/ExifInterface;Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 0

    .line 5398
    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface$1;->this$0:Landroidx/exifinterface/media/ExifInterface;

    iput-object p2, p0, Landroidx/exifinterface/media/ExifInterface$1;->val$in:Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {p0}, Landroid/media/MediaDataSource;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public getSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public readAt(J[BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p5, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-wide/16 v0, 0x0

    const/4 v2, -0x1

    cmp-long v3, p1, v0

    if-gez v3, :cond_1

    return v2

    .line 5414
    :cond_1
    :try_start_0
    iget-wide v3, p0, Landroidx/exifinterface/media/ExifInterface$1;->mPosition:J

    cmp-long v5, v3, p1

    if-eqz v5, :cond_3

    .line 5419
    iget-wide v3, p0, Landroidx/exifinterface/media/ExifInterface$1;->mPosition:J

    cmp-long v5, v3, v0

    if-ltz v5, :cond_2

    iget-wide v0, p0, Landroidx/exifinterface/media/ExifInterface$1;->mPosition:J

    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface$1;->val$in:Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    cmp-long v3, p1, v0

    if-ltz v3, :cond_2

    return v2

    .line 5422
    :cond_2
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface$1;->val$in:Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-virtual {v0, p1, p2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 5423
    iput-wide p1, p0, Landroidx/exifinterface/media/ExifInterface$1;->mPosition:J

    .line 5429
    :cond_3
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface$1;->val$in:Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result p1

    if-le p5, p1, :cond_4

    .line 5430
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface$1;->val$in:Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result p5

    .line 5433
    :cond_4
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface$1;->val$in:Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-virtual {p1, p3, p4, p5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([BII)I

    move-result p1

    if-ltz p1, :cond_5

    .line 5435
    iget-wide p2, p0, Landroidx/exifinterface/media/ExifInterface$1;->mPosition:J

    int-to-long p4, p1

    add-long/2addr p2, p4

    iput-wide p2, p0, Landroidx/exifinterface/media/ExifInterface$1;->mPosition:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_5
    const-wide/16 p1, -0x1

    .line 5441
    iput-wide p1, p0, Landroidx/exifinterface/media/ExifInterface$1;->mPosition:J

    return v2
.end method
