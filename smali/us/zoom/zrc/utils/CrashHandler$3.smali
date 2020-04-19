.class Lus/zoom/zrc/utils/CrashHandler$3;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/utils/CrashHandler;->removeOldestLogFiles(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/utils/CrashHandler;

.field final synthetic val$prefix:Ljava/lang/String;

.field final synthetic val$suffixes:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lus/zoom/zrc/utils/CrashHandler;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lus/zoom/zrc/utils/CrashHandler$3;->this$0:Lus/zoom/zrc/utils/CrashHandler;

    iput-object p2, p0, Lus/zoom/zrc/utils/CrashHandler$3;->val$prefix:Ljava/lang/String;

    iput-object p3, p0, Lus/zoom/zrc/utils/CrashHandler$3;->val$suffixes:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 7

    .line 335
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 337
    iget-object v0, p0, Lus/zoom/zrc/utils/CrashHandler$3;->val$prefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 339
    iget-object v1, p0, Lus/zoom/zrc/utils/CrashHandler$3;->val$suffixes:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    .line 340
    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3
.end method
