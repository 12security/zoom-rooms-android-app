.class public Landroidx/browser/customtabs/BundleCompatDonut;
.super Ljava/lang/Object;
.source "BundleCompatDonut.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BundleCompatDonut"

.field private static sGetIBinderMethod:Ljava/lang/reflect/Method;

.field private static sGetIBinderMethodFetched:Z

.field private static sPutIBinderMethod:Ljava/lang/reflect/Method;

.field private static sPutIBinderMethodFetched:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 6

    .line 37
    sget-boolean v0, Landroidx/browser/customtabs/BundleCompatDonut;->sGetIBinderMethodFetched:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 39
    :try_start_0
    const-class v0, Landroid/os/Bundle;

    const-string v3, "getIBinder"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/browser/customtabs/BundleCompatDonut;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    .line 40
    sget-object v0, Landroidx/browser/customtabs/BundleCompatDonut;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "BundleCompatDonut"

    const-string v4, "Failed to retrieve getIBinder method"

    .line 42
    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-static {v3, v4, v5}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    :goto_0
    sput-boolean v2, Landroidx/browser/customtabs/BundleCompatDonut;->sGetIBinderMethodFetched:Z

    .line 47
    :cond_0
    sget-object v0, Landroidx/browser/customtabs/BundleCompatDonut;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 49
    :try_start_1
    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    const-string p1, "BundleCompatDonut"

    const-string v0, "Failed to invoke getIBinder via reflection"

    .line 51
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-static {p1, v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    sput-object v3, Landroidx/browser/customtabs/BundleCompatDonut;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    :cond_1
    return-object v3
.end method

.method public static putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 7

    .line 59
    sget-boolean v0, Landroidx/browser/customtabs/BundleCompatDonut;->sPutIBinderMethodFetched:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 61
    :try_start_0
    const-class v0, Landroid/os/Bundle;

    const-string v4, "putIBinder"

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v5, v3

    .line 62
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/browser/customtabs/BundleCompatDonut;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    .line 63
    sget-object v0, Landroidx/browser/customtabs/BundleCompatDonut;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "BundleCompatDonut"

    const-string v5, "Failed to retrieve putIBinder method"

    .line 65
    new-array v6, v3, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-static {v4, v5, v6}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    :goto_0
    sput-boolean v3, Landroidx/browser/customtabs/BundleCompatDonut;->sPutIBinderMethodFetched:Z

    .line 70
    :cond_0
    sget-object v0, Landroidx/browser/customtabs/BundleCompatDonut;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 72
    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string p1, "BundleCompatDonut"

    const-string p2, "Failed to invoke putIBinder via reflection"

    .line 74
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v2

    invoke-static {p1, p2, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 75
    sput-object p0, Landroidx/browser/customtabs/BundleCompatDonut;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    :cond_1
    :goto_1
    return-void
.end method
