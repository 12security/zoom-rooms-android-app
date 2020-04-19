.class public Lus/zoom/net/AndroidNetworkLibrary;
.super Ljava/lang/Object;
.source "AndroidNetworkLibrary.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidNetworkLibrary"

.field public static x505UtilImp:Lus/zoom/net/X505UtilImp;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static verifyServerCertificates([[BLjava/lang/String;Ljava/lang/String;)Lus/zoom/net/AndroidCertVerifyResult;
    .locals 2

    const/4 v0, -0x1

    .line 31
    :try_start_0
    sget-object v1, Lus/zoom/net/AndroidNetworkLibrary;->x505UtilImp:Lus/zoom/net/X505UtilImp;

    if-nez v1, :cond_0

    new-instance p0, Lus/zoom/net/AndroidCertVerifyResult;

    invoke-direct {p0, v0}, Lus/zoom/net/AndroidCertVerifyResult;-><init>(I)V

    return-object p0

    .line 32
    :cond_0
    sget-object v1, Lus/zoom/net/AndroidNetworkLibrary;->x505UtilImp:Lus/zoom/net/X505UtilImp;

    invoke-interface {v1, p0, p1, p2}, Lus/zoom/net/X505UtilImp;->verifyServerCertificates([[BLjava/lang/String;Ljava/lang/String;)Lus/zoom/net/AndroidCertVerifyResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 40
    sget-object p1, Lus/zoom/net/AndroidNetworkLibrary;->TAG:Ljava/lang/String;

    const-string p2, "verifyServerCertificates exception"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p0, p2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    new-instance p0, Lus/zoom/net/AndroidCertVerifyResult;

    invoke-direct {p0, v0}, Lus/zoom/net/AndroidCertVerifyResult;-><init>(I)V

    return-object p0
.end method
