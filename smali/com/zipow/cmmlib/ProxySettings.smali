.class public Lcom/zipow/cmmlib/ProxySettings;
.super Ljava/lang/Object;
.source "ProxySettings.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.zipow.cmmlib.ProxySettings"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFtpProxyConfigs(Landroid/content/Context;)[Lcom/zipow/cmmlib/ProxyConfig;
    .locals 1

    const-string v0, "ftp://aafxbcfyfsghwcwu"

    .line 30
    invoke-static {p0, v0}, Lcom/zipow/cmmlib/ProxySettings;->getProxyConfigsForUri(Landroid/content/Context;Ljava/lang/String;)[Lcom/zipow/cmmlib/ProxyConfig;

    move-result-object p0

    return-object p0
.end method

.method public static getHttpProxyConfigs(Landroid/content/Context;)[Lcom/zipow/cmmlib/ProxyConfig;
    .locals 1

    const-string v0, "http://aafxbcfyfsghwcwu"

    .line 22
    invoke-static {p0, v0}, Lcom/zipow/cmmlib/ProxySettings;->getProxyConfigsForUri(Landroid/content/Context;Ljava/lang/String;)[Lcom/zipow/cmmlib/ProxyConfig;

    move-result-object p0

    return-object p0
.end method

.method public static getHttpsProxyConfigs(Landroid/content/Context;)[Lcom/zipow/cmmlib/ProxyConfig;
    .locals 1

    const-string v0, "https://aafxbcfyfsghwcwu"

    .line 26
    invoke-static {p0, v0}, Lcom/zipow/cmmlib/ProxySettings;->getProxyConfigsForUri(Landroid/content/Context;Ljava/lang/String;)[Lcom/zipow/cmmlib/ProxyConfig;

    move-result-object p0

    return-object p0
.end method

.method private static getProxyConfigsBelowOS31(Landroid/content/Context;)[Lcom/zipow/cmmlib/ProxyConfig;
    .locals 8

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "http_proxy"

    .line 79
    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 82
    invoke-static {p0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ":"

    .line 83
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 84
    array-length v1, p0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 85
    aget-object v2, p0, v1

    const/4 v3, 0x1

    .line 87
    :try_start_0
    aget-object v4, p0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 88
    new-instance v5, Ljava/net/Proxy;

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v7, Ljava/net/InetSocketAddress;

    .line 89
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v7, v2, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v5, v6, v7}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 90
    new-instance v2, Lcom/zipow/cmmlib/ProxyConfig;

    invoke-direct {v2, v5}, Lcom/zipow/cmmlib/ProxyConfig;-><init>(Ljava/net/Proxy;)V

    .line 91
    new-array v4, v3, [Lcom/zipow/cmmlib/ProxyConfig;

    aput-object v2, v4, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 93
    :catch_0
    sget-object v2, Lcom/zipow/cmmlib/ProxySettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "proxy port is NAN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v3

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public static getProxyConfigsForUri(Landroid/content/Context;Ljava/lang/String;)[Lcom/zipow/cmmlib/ProxyConfig;
    .locals 2

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 39
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zipow/cmmlib/ProxySettings;->getProxySelectorConfigs(Landroid/content/Context;Ljava/net/URI;)[Lcom/zipow/cmmlib/ProxyConfig;

    move-result-object p0

    return-object p0

    .line 41
    :cond_0
    invoke-static {p0}, Lcom/zipow/cmmlib/ProxySettings;->getProxyConfigsBelowOS31(Landroid/content/Context;)[Lcom/zipow/cmmlib/ProxyConfig;

    move-result-object p0

    return-object p0
.end method

.method public static getProxyConfigsStringForUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 46
    invoke-static {p0, p1}, Lcom/zipow/cmmlib/ProxySettings;->getProxyConfigsForUri(Landroid/content/Context;Ljava/lang/String;)[Lcom/zipow/cmmlib/ProxyConfig;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 47
    array-length p1, p0

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 50
    aget-object p1, p0, p1

    invoke-virtual {p1}, Lcom/zipow/cmmlib/ProxyConfig;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 51
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p0, v0

    invoke-virtual {p1}, Lcom/zipow/cmmlib/ProxyConfig;->toString()Ljava/lang/String;

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

.method private static getProxySelectorConfigs(Landroid/content/Context;Ljava/net/URI;)[Lcom/zipow/cmmlib/ProxyConfig;
    .locals 3

    .line 59
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object p0

    .line 61
    invoke-virtual {p0, p1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p0

    .line 62
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 63
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/zipow/cmmlib/ProxyConfig;

    const/4 v0, 0x0

    .line 64
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 65
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Proxy;

    .line 66
    new-instance v2, Lcom/zipow/cmmlib/ProxyConfig;

    invoke-direct {v2, v1}, Lcom/zipow/cmmlib/ProxyConfig;-><init>(Ljava/net/Proxy;)V

    aput-object v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSocketProxyConfigs(Landroid/content/Context;)[Lcom/zipow/cmmlib/ProxyConfig;
    .locals 1

    const-string v0, "socket://aafxbcfyfsghwcwu"

    .line 34
    invoke-static {p0, v0}, Lcom/zipow/cmmlib/ProxySettings;->getProxyConfigsForUri(Landroid/content/Context;Ljava/lang/String;)[Lcom/zipow/cmmlib/ProxyConfig;

    move-result-object p0

    return-object p0
.end method
