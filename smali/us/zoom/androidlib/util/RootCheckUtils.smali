.class public Lus/zoom/androidlib/util/RootCheckUtils;
.super Ljava/lang/Object;
.source "RootCheckUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "us.zoom.androidlib.util.RootCheckUtils"

.field private static g_continueToUseWhenRooted:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkRootMethod1()Z
    .locals 7

    const/16 v0, 0x9

    .line 28
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/system/app/Superuser.apk"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "/sbin/su"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "/system/bin/su"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "/system/xbin/su"

    const/4 v4, 0x3

    aput-object v1, v0, v4

    const-string v1, "/data/local/xbin/su"

    const/4 v4, 0x4

    aput-object v1, v0, v4

    const-string v1, "/data/local/bin/su"

    const/4 v4, 0x5

    aput-object v1, v0, v4

    const-string v1, "/system/sd/xbin/su"

    const/4 v4, 0x6

    aput-object v1, v0, v4

    const-string v1, "/system/bin/failsafe/su"

    const/4 v4, 0x7

    aput-object v1, v0, v4

    const-string v1, "/data/local/su"

    const/16 v4, 0x8

    aput-object v1, v0, v4

    .line 29
    array-length v1, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, v0, v4

    .line 30
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    return v3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private static checkRootMethod2()Z
    .locals 2

    .line 53
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "su"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    :cond_0
    return v1

    :catchall_0
    move-exception v0

    .line 66
    throw v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static continueToUseWhenRooted()Z
    .locals 1

    .line 70
    sget-boolean v0, Lus/zoom/androidlib/util/RootCheckUtils;->g_continueToUseWhenRooted:Z

    return v0
.end method

.method public static final isRooted()Z
    .locals 1

    .line 11
    invoke-static {}, Lus/zoom/androidlib/util/RootCheckUtils;->checkRootMethod1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lus/zoom/androidlib/util/RootCheckUtils;->checkRootMethod2()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setContinueToUseWhenRooted(Z)V
    .locals 0

    .line 74
    sput-boolean p0, Lus/zoom/androidlib/util/RootCheckUtils;->g_continueToUseWhenRooted:Z

    return-void
.end method

.method public static final testIsRooted()V
    .locals 0

    .line 15
    invoke-static {}, Lus/zoom/androidlib/util/RootCheckUtils;->checkRootMethod1()Z

    .line 16
    invoke-static {}, Lus/zoom/androidlib/util/RootCheckUtils;->checkRootMethod2()Z

    return-void
.end method
