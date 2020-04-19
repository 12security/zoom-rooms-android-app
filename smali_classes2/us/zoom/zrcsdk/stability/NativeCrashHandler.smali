.class public Lus/zoom/zrcsdk/stability/NativeCrashHandler;
.super Ljava/lang/Object;
.source "NativeCrashHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NativeCrashHandler"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static installNativeCrashHandler(ZLjava/lang/String;)V
    .locals 1

    .line 14
    invoke-static {}, Lus/zoom/zrcsdk/util/ZRCLog;->getLogFolder()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 16
    sget-object p0, Lus/zoom/zrcsdk/stability/NativeCrashHandler;->TAG:Ljava/lang/String;

    const-string p1, "can not get log folder , installNativeCrashHandler failed"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 20
    :cond_0
    invoke-static {p0, v0, p1}, Lus/zoom/zrcsdk/stability/NativeCrashHandler;->installNativeCrashHandlerImpl(ZLjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static native installNativeCrashHandlerImpl(ZLjava/lang/String;Ljava/lang/String;)I
.end method

.method public static onNativeCrashed(ILjava/lang/String;)V
    .locals 5

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/16 v0, 0xb

    if-eq p0, v0, :cond_2

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string v0, "???"

    goto :goto_0

    :pswitch_0
    const-string v0, "SIGFPE"

    goto :goto_0

    :pswitch_1
    const-string v0, "SIGBUS"

    goto :goto_0

    :pswitch_2
    const-string v0, "SIGABRT"

    goto :goto_0

    :cond_0
    const-string v0, "SIGSTKFLT"

    goto :goto_0

    :cond_1
    const-string v0, "SIGPIPE"

    goto :goto_0

    :cond_2
    const-string v0, "SIGSEGV"

    goto :goto_0

    :cond_3
    const-string v0, "SIGILL"

    .line 43
    :goto_0
    sget-object v1, Lus/zoom/zrcsdk/stability/NativeCrashHandler;->TAG:Ljava/lang/String;

    const-string v2, "onNativeCrashed, signum=%d, signame=%s, info=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v4

    const/4 p0, 0x1

    aput-object v0, v3, p0

    const/4 p0, 0x2

    aput-object p1, v3, p0

    invoke-static {v1, v2, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static onNativeCrashed(Ljava/lang/String;)V
    .locals 3

    .line 51
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 52
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    new-instance v2, Lus/zoom/zrcsdk/stability/NativeCrashException;

    invoke-direct {v2, p0}, Lus/zoom/zrcsdk/stability/NativeCrashException;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
