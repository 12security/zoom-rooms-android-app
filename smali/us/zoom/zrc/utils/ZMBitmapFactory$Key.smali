.class Lus/zoom/zrc/utils/ZMBitmapFactory$Key;
.super Ljava/lang/Object;
.source "ZMBitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/utils/ZMBitmapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Key"
.end annotation


# static fields
.field private static flyWeightInstance:Lus/zoom/zrc/utils/ZMBitmapFactory$Key;


# instance fields
.field path:Ljava/lang/String;

.field subKey:Ljava/lang/String;

.field timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 22
    new-instance v0, Lus/zoom/zrc/utils/ZMBitmapFactory$Key;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v1, v2, v3}, Lus/zoom/zrc/utils/ZMBitmapFactory$Key;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    sput-object v0, Lus/zoom/zrc/utils/ZMBitmapFactory$Key;->flyWeightInstance:Lus/zoom/zrc/utils/ZMBitmapFactory$Key;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 26
    iput-wide v0, p0, Lus/zoom/zrc/utils/ZMBitmapFactory$Key;->timestamp:J

    .line 29
    iput-object p1, p0, Lus/zoom/zrc/utils/ZMBitmapFactory$Key;->path:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lus/zoom/zrc/utils/ZMBitmapFactory$Key;->subKey:Ljava/lang/String;

    .line 31
    iput-wide p3, p0, Lus/zoom/zrc/utils/ZMBitmapFactory$Key;->timestamp:J

    return-void
.end method

.method static getFlyweightInstance(Ljava/lang/String;Ljava/lang/String;J)Lus/zoom/zrc/utils/ZMBitmapFactory$Key;
    .locals 1

    .line 52
    sget-object v0, Lus/zoom/zrc/utils/ZMBitmapFactory$Key;->flyWeightInstance:Lus/zoom/zrc/utils/ZMBitmapFactory$Key;

    iput-object p0, v0, Lus/zoom/zrc/utils/ZMBitmapFactory$Key;->path:Ljava/lang/String;

    .line 53
    iput-object p1, v0, Lus/zoom/zrc/utils/ZMBitmapFactory$Key;->subKey:Ljava/lang/String;

    .line 54
    iput-wide p2, v0, Lus/zoom/zrc/utils/ZMBitmapFactory$Key;->timestamp:J

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 38
    :cond_0
    instance-of v1, p1, Lus/zoom/zrc/utils/ZMBitmapFactory$Key;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 41
    :cond_1
    check-cast p1, Lus/zoom/zrc/utils/ZMBitmapFactory$Key;

    .line 43
    iget-object v1, p0, Lus/zoom/zrc/utils/ZMBitmapFactory$Key;->path:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrc/utils/ZMBitmapFactory$Key;->path:Ljava/lang/String;

    invoke-static {v1, v3}, Lus/zoom/androidlib/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lus/zoom/zrc/utils/ZMBitmapFactory$Key;->subKey:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrc/utils/ZMBitmapFactory$Key;->subKey:Ljava/lang/String;

    invoke-static {v1, v3}, Lus/zoom/androidlib/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lus/zoom/zrc/utils/ZMBitmapFactory$Key;->timestamp:J

    iget-wide v5, p1, Lus/zoom/zrc/utils/ZMBitmapFactory$Key;->timestamp:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 48
    iget-wide v0, p0, Lus/zoom/zrc/utils/ZMBitmapFactory$Key;->timestamp:J

    long-to-int v1, v0

    return v1
.end method
