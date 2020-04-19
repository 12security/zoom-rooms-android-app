.class public Lus/zoom/zrcsdk/model/ProxyInfo;
.super Ljava/lang/Object;
.source "ProxyInfo.java"


# instance fields
.field private port:I

.field private proxyHost:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field private userPwd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPort()I
    .locals 1

    .line 15
    iget v0, p0, Lus/zoom/zrcsdk/model/ProxyInfo;->port:I

    return v0
.end method

.method public getProxyHost()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ProxyInfo;->proxyHost:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ProxyInfo;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPwd()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ProxyInfo;->userPwd:Ljava/lang/String;

    return-object v0
.end method

.method public setPort(I)V
    .locals 0

    .line 18
    iput p1, p0, Lus/zoom/zrcsdk/model/ProxyInfo;->port:I

    return-void
.end method

.method public setProxyHost(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ProxyInfo;->proxyHost:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ProxyInfo;->userName:Ljava/lang/String;

    return-void
.end method

.method public setUserPwd(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ProxyInfo;->userPwd:Ljava/lang/String;

    return-void
.end method
