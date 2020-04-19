.class public Lus/zoom/zrcsdk/model/PolicyBlockUnknownSSLCert;
.super Ljava/lang/Object;
.source "PolicyBlockUnknownSSLCert.java"


# static fields
.field public static final CONFIG_KEY:Ljava/lang/String; = "policy_block_unknown_ssl_cert"

.field public static final DEFAULT:Ljava/lang/String; = "Default"

.field public static final NO:Ljava/lang/String; = "No"

.field public static final YES:Ljava/lang/String; = "Yes"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBlockUnknownSSLCert()Z
    .locals 2

    .line 17
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->getPolicyBlockUnknownSSLCert()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Yes"

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSSLNeedVerify()Z
    .locals 2

    .line 22
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdkContext;->getPolicyBlockUnknownSSLCert()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No"

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
