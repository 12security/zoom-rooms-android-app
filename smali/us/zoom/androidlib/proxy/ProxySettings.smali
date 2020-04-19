.class public Lus/zoom/androidlib/proxy/ProxySettings;
.super Ljava/lang/Object;
.source "ProxySettings.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "us.zoom.androidlib.proxy.ProxySettings"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFtpProxyConfigs(Landroid/content/Context;)[Lus/zoom/androidlib/proxy/ProxyConfig;
    .locals 1

    const-string v0, "ftp://aafxbcfyfsghwcwu"

    .line 28
    invoke-static {p0, v0}, Lus/zoom/androidlib/proxy/ProxySettings;->getProxyConfigsForUri(Landroid/content/Context;Ljava/lang/String;)[Lus/zoom/androidlib/proxy/ProxyConfig;

    move-result-object p0

    return-object p0
.end method

.method public static getHttpProxyConfigs(Landroid/content/Context;)[Lus/zoom/androidlib/proxy/ProxyConfig;
    .locals 1

    const-string v0, "http://aafxbcfyfsghwcwu"

    .line 20
    invoke-static {p0, v0}, Lus/zoom/androidlib/proxy/ProxySettings;->getProxyConfigsForUri(Landroid/content/Context;Ljava/lang/String;)[Lus/zoom/androidlib/proxy/ProxyConfig;

    move-result-object p0

    return-object p0
.end method

.method public static getHttpsProxyConfigs(Landroid/content/Context;)[Lus/zoom/androidlib/proxy/ProxyConfig;
    .locals 1

    const-string v0, "https://aafxbcfyfsghwcwu"

    .line 24
    invoke-static {p0, v0}, Lus/zoom/androidlib/proxy/ProxySettings;->getProxyConfigsForUri(Landroid/content/Context;Ljava/lang/String;)[Lus/zoom/androidlib/proxy/ProxyConfig;

    move-result-object p0

    return-object p0
.end method

.method private static getProxyConfigsBelowOS31(Landroid/content/Context;)[Lus/zoom/androidlib/proxy/ProxyConfig;
    .locals 7

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "http_proxy"

    .line 73
    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 76
    invoke-static {p0}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ":"

    .line 77
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 78
    array-length v1, p0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 79
    aget-object v2, p0, v1

    const/4 v3, 0x1

    .line 81
    :try_start_0
    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 82
    new-instance v4, Ljava/net/Proxy;

    sget-object v5, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v6, Ljava/net/InetSocketAddress;

    .line 83
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {v6, v2, p0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v4, v5, v6}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 84
    new-instance p0, Lus/zoom/androidlib/proxy/ProxyConfig;

    invoke-direct {p0, v4}, Lus/zoom/androidlib/proxy/ProxyConfig;-><init>(Ljava/net/Proxy;)V

    .line 85
    new-array v2, v3, [Lus/zoom/androidlib/proxy/ProxyConfig;

    aput-object p0, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    :cond_1
    return-object v0
.end method

.method public static getProxyConfigsForUri(Landroid/content/Context;Ljava/lang/String;)[Lus/zoom/androidlib/proxy/ProxyConfig;
    .locals 0

    .line 36
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-static {p0, p1}, Lus/zoom/androidlib/proxy/ProxySettings;->getProxySelectorConfigs(Landroid/content/Context;Ljava/net/URI;)[Lus/zoom/androidlib/proxy/ProxyConfig;

    move-result-object p0

    return-object p0
.end method

.method public static getProxyConfigsStringForUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 40
    invoke-static {p0, p1}, Lus/zoom/androidlib/proxy/ProxySettings;->getProxyConfigsForUri(Landroid/content/Context;Ljava/lang/String;)[Lus/zoom/androidlib/proxy/ProxyConfig;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 41
    array-length p1, p0

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 44
    aget-object p1, p0, p1

    invoke-virtual {p1}, Lus/zoom/androidlib/proxy/ProxyConfig;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 45
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p0, v0

    invoke-virtual {p1}, Lus/zoom/androidlib/proxy/ProxyConfig;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method private static getProxySelectorConfigs(Landroid/content/Context;Ljava/net/URI;)[Lus/zoom/androidlib/proxy/ProxyConfig;
    .locals 3

    .line 53
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object p0

    .line 55
    invoke-virtual {p0, p1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p0

    .line 56
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 57
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lus/zoom/androidlib/proxy/ProxyConfig;

    const/4 v0, 0x0

    .line 58
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 59
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Proxy;

    .line 60
    new-instance v2, Lus/zoom/androidlib/proxy/ProxyConfig;

    invoke-direct {v2, v1}, Lus/zoom/androidlib/proxy/ProxyConfig;-><init>(Ljava/net/Proxy;)V

    aput-object v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSocketProxyConfigs(Landroid/content/Context;)[Lus/zoom/androidlib/proxy/ProxyConfig;
    .locals 1

    const-string v0, "socket://aafxbcfyfsghwcwu"

    .line 32
    invoke-static {p0, v0}, Lus/zoom/androidlib/proxy/ProxySettings;->getProxyConfigsForUri(Landroid/content/Context;Ljava/lang/String;)[Lus/zoom/androidlib/proxy/ProxyConfig;

    move-result-object p0

    return-object p0
.end method
