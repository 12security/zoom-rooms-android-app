.class public Lcom/zipow/cmmlib/ProxyConfig;
.super Ljava/lang/Object;
.source "ProxyConfig.java"


# instance fields
.field private mProxy:Ljava/net/Proxy;


# direct methods
.method public constructor <init>(Ljava/net/Proxy;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/zipow/cmmlib/ProxyConfig;->mProxy:Ljava/net/Proxy;

    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 3

    .line 15
    iget-object v0, p0, Lcom/zipow/cmmlib/ProxyConfig;->mProxy:Ljava/net/Proxy;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/zipow/cmmlib/ProxyConfig;->mProxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getPort()I
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/zipow/cmmlib/ProxyConfig;->mProxy:Ljava/net/Proxy;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/zipow/cmmlib/ProxyConfig;->mProxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    return v0

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method public getProxyType()Ljava/net/Proxy$Type;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/zipow/cmmlib/ProxyConfig;->mProxy:Ljava/net/Proxy;

    if-nez v0, :cond_0

    .line 38
    sget-object v0, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    return-object v0

    .line 40
    :cond_0
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 45
    invoke-virtual {p0}, Lcom/zipow/cmmlib/ProxyConfig;->getProxyType()Ljava/net/Proxy$Type;

    move-result-object v0

    .line 47
    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_4

    iget-object v1, p0, Lcom/zipow/cmmlib/ProxyConfig;->mProxy:Ljava/net/Proxy;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 51
    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v2, :cond_1

    const-string v1, "http"

    goto :goto_0

    .line 53
    :cond_1
    sget-object v2, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v0, v2, :cond_2

    const-string v1, "socks"

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    const-string v0, ""

    return-object v0

    .line 60
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zipow/cmmlib/ProxyConfig;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zipow/cmmlib/ProxyConfig;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_1
    const-string v0, ""

    return-object v0
.end method
