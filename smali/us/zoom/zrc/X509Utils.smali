.class public Lus/zoom/zrc/X509Utils;
.super Ljava/lang/Object;
.source "X509Utils.java"

# interfaces
.implements Lus/zoom/net/X505UtilImp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/X509Utils$X509TrustManagerJellyBean;,
        Lus/zoom/zrc/X509Utils$X509TrustManagerIceCreamSandwich;,
        Lus/zoom/zrc/X509Utils$X509TrustManagerImplementation;,
        Lus/zoom/zrc/X509Utils$TrustStorageListener;
    }
.end annotation


# static fields
.field private static final HEX_DIGITS:[C

.field private static final OID_ANY_EKU:Ljava/lang/String; = "2.5.29.37.0"

.field private static final OID_SERVER_GATED_MICROSOFT:Ljava/lang/String; = "1.3.6.1.4.1.311.10.3.3"

.field private static final OID_SERVER_GATED_NETSCAPE:Ljava/lang/String; = "2.16.840.1.113730.4.1"

.field private static final OID_TLS_SERVER_AUTH:Ljava/lang/String; = "1.3.6.1.5.5.7.3.1"

.field private static final TAG:Ljava/lang/String; = "X509Util"

.field private static sCertificateFactory:Ljava/security/cert/CertificateFactory;

.field private static sDefaultTrustManager:Lus/zoom/zrc/X509Utils$X509TrustManagerImplementation;

.field private static sLoadedSystemKeyStore:Z

.field private static final sLock:Ljava/lang/Object;

.field private static sSystemCertificateDirectory:Ljava/io/File;

.field private static sSystemKeyStore:Ljava/security/KeyStore;

.field private static sSystemTrustAnchorCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/security/PublicKey;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sTestKeyStore:Ljava/security/KeyStore;

.field private static sTestTrustManager:Lus/zoom/zrc/X509Utils$X509TrustManagerImplementation;

.field private static sTrustStorageListener:Lus/zoom/zrc/X509Utils$TrustStorageListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 178
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lus/zoom/zrc/X509Utils;->sLock:Ljava/lang/Object;

    const/16 v0, 0x10

    .line 338
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lus/zoom/zrc/X509Utils;->HEX_DIGITS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 47
    invoke-static {}, Lus/zoom/zrc/X509Utils;->reloadDefaultTrustManager()V

    return-void
.end method

.method public static addTestRootCertificate([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 316
    invoke-static {}, Lus/zoom/zrc/X509Utils;->ensureInitialized()V

    .line 317
    invoke-static {p0}, Lus/zoom/zrc/X509Utils;->createCertificateFromBytes([B)Ljava/security/cert/X509Certificate;

    move-result-object p0

    .line 318
    sget-object v0, Lus/zoom/zrc/X509Utils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 319
    :try_start_0
    sget-object v1, Lus/zoom/zrc/X509Utils;->sTestKeyStore:Ljava/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "root_cert_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lus/zoom/zrc/X509Utils;->sTestKeyStore:Ljava/security/KeyStore;

    .line 320
    invoke-virtual {v3}, Ljava/security/KeyStore;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 319
    invoke-virtual {v1, v2, p0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 321
    invoke-static {}, Lus/zoom/zrc/X509Utils;->reloadTestTrustManager()V

    .line 322
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static clearTestRootCertificates()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 327
    invoke-static {}, Lus/zoom/zrc/X509Utils;->ensureInitialized()V

    .line 328
    sget-object v0, Lus/zoom/zrc/X509Utils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 330
    :try_start_0
    sget-object v1, Lus/zoom/zrc/X509Utils;->sTestKeyStore:Ljava/security/KeyStore;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 331
    invoke-static {}, Lus/zoom/zrc/X509Utils;->reloadTestTrustManager()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 335
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static createCertificateFromBytes([B)Ljava/security/cert/X509Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 309
    invoke-static {}, Lus/zoom/zrc/X509Utils;->ensureInitialized()V

    .line 310
    sget-object v0, Lus/zoom/zrc/X509Utils;->sCertificateFactory:Ljava/security/cert/CertificateFactory;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method private static createTrustManager(Ljava/security/KeyStore;)Lus/zoom/zrc/X509Utils$X509TrustManagerImplementation;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 257
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 259
    invoke-virtual {v0, p0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 261
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    .line 262
    instance-of v3, v2, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_1

    .line 264
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    .line 265
    new-instance v3, Lus/zoom/zrc/X509Utils$X509TrustManagerJellyBean;

    move-object v4, v2

    check-cast v4, Ljavax/net/ssl/X509TrustManager;

    invoke-direct {v3, v4}, Lus/zoom/zrc/X509Utils$X509TrustManagerJellyBean;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    return-object v3

    .line 267
    :cond_0
    new-instance v3, Lus/zoom/zrc/X509Utils$X509TrustManagerIceCreamSandwich;

    move-object v4, v2

    check-cast v4, Ljavax/net/ssl/X509TrustManager;

    invoke-direct {v3, v4}, Lus/zoom/zrc/X509Utils$X509TrustManagerIceCreamSandwich;-><init>(Ljavax/net/ssl/X509TrustManager;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 270
    :catch_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static ensureInitialized()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 185
    sget-object v0, Lus/zoom/zrc/X509Utils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    :try_start_0
    invoke-static {}, Lus/zoom/zrc/X509Utils;->ensureInitializedLocked()V

    .line 187
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static ensureInitializedLocked()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 202
    sget-object v0, Lus/zoom/zrc/X509Utils;->sCertificateFactory:Ljava/security/cert/CertificateFactory;

    if-nez v0, :cond_0

    const-string v0, "X.509"

    .line 203
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    sput-object v0, Lus/zoom/zrc/X509Utils;->sCertificateFactory:Ljava/security/cert/CertificateFactory;

    .line 205
    :cond_0
    sget-object v0, Lus/zoom/zrc/X509Utils;->sDefaultTrustManager:Lus/zoom/zrc/X509Utils$X509TrustManagerImplementation;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 206
    invoke-static {v1}, Lus/zoom/zrc/X509Utils;->createTrustManager(Ljava/security/KeyStore;)Lus/zoom/zrc/X509Utils$X509TrustManagerImplementation;

    move-result-object v0

    sput-object v0, Lus/zoom/zrc/X509Utils;->sDefaultTrustManager:Lus/zoom/zrc/X509Utils$X509TrustManagerImplementation;

    .line 208
    :cond_1
    sget-boolean v0, Lus/zoom/zrc/X509Utils;->sLoadedSystemKeyStore:Z

    if-nez v0, :cond_2

    :try_start_0
    const-string v0, "AndroidCAStore"

    .line 210
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    sput-object v0, Lus/zoom/zrc/X509Utils;->sSystemKeyStore:Ljava/security/KeyStore;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1

    .line 212
    :try_start_1
    sget-object v0, Lus/zoom/zrc/X509Utils;->sSystemKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1

    .line 216
    :catch_0
    :try_start_2
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANDROID_ROOT"

    .line 217
    invoke-static {v3}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/etc/security/cacerts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lus/zoom/zrc/X509Utils;->sSystemCertificateDirectory:Ljava/io/File;
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    const/4 v0, 0x1

    .line 222
    sput-boolean v0, Lus/zoom/zrc/X509Utils;->sLoadedSystemKeyStore:Z

    .line 224
    :cond_2
    sget-object v0, Lus/zoom/zrc/X509Utils;->sSystemTrustAnchorCache:Ljava/util/Set;

    if-nez v0, :cond_3

    .line 225
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lus/zoom/zrc/X509Utils;->sSystemTrustAnchorCache:Ljava/util/Set;

    .line 227
    :cond_3
    sget-object v0, Lus/zoom/zrc/X509Utils;->sTestKeyStore:Ljava/security/KeyStore;

    if-nez v0, :cond_4

    .line 228
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    sput-object v0, Lus/zoom/zrc/X509Utils;->sTestKeyStore:Ljava/security/KeyStore;

    .line 230
    :try_start_3
    sget-object v0, Lus/zoom/zrc/X509Utils;->sTestKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    nop

    .line 235
    :cond_4
    :goto_0
    sget-object v0, Lus/zoom/zrc/X509Utils;->sTestTrustManager:Lus/zoom/zrc/X509Utils$X509TrustManagerImplementation;

    if-nez v0, :cond_5

    .line 236
    sget-object v0, Lus/zoom/zrc/X509Utils;->sTestKeyStore:Ljava/security/KeyStore;

    invoke-static {v0}, Lus/zoom/zrc/X509Utils;->createTrustManager(Ljava/security/KeyStore;)Lus/zoom/zrc/X509Utils$X509TrustManagerImplementation;

    move-result-object v0

    sput-object v0, Lus/zoom/zrc/X509Utils;->sTestTrustManager:Lus/zoom/zrc/X509Utils$X509TrustManagerImplementation;

    .line 238
    :cond_5
    sget-object v0, Lus/zoom/zrc/X509Utils;->sTrustStorageListener:Lus/zoom/zrc/X509Utils$TrustStorageListener;

    if-nez v0, :cond_6

    .line 239
    new-instance v0, Lus/zoom/zrc/X509Utils$TrustStorageListener;

    invoke-direct {v0, v1}, Lus/zoom/zrc/X509Utils$TrustStorageListener;-><init>(Lus/zoom/zrc/X509Utils$1;)V

    sput-object v0, Lus/zoom/zrc/X509Utils;->sTrustStorageListener:Lus/zoom/zrc/X509Utils$TrustStorageListener;

    .line 240
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/ZRCApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 242
    sget-object v1, Lus/zoom/zrc/X509Utils;->sTrustStorageListener:Lus/zoom/zrc/X509Utils$TrustStorageListener;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.security.STORAGE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_6
    return-void
.end method

.method private static hashPrincipal(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "MD5"

    .line 346
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    const/16 v0, 0x8

    .line 347
    new-array v0, v0, [C

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    mul-int/lit8 v3, v1, 0x2

    .line 349
    sget-object v4, Lus/zoom/zrc/X509Utils;->HEX_DIGITS:[C

    rsub-int/lit8 v5, v1, 0x3

    aget-byte v6, p0, v5

    shr-int/lit8 v2, v6, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    aput-char v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    .line 350
    aget-byte v2, p0, v5

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    aput-char v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 352
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private static isKnownRoot(Ljava/security/cert/X509Certificate;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 360
    sget-object v0, Lus/zoom/zrc/X509Utils;->sSystemKeyStore:Ljava/security/KeyStore;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 364
    :cond_0
    new-instance v0, Landroid/util/Pair;

    .line 365
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 367
    sget-object v2, Lus/zoom/zrc/X509Utils;->sSystemTrustAnchorCache:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    .line 376
    :cond_1
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-static {v2}, Lus/zoom/zrc/X509Utils;->hashPrincipal(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 378
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 379
    new-instance v6, Ljava/io/File;

    sget-object v7, Lus/zoom/zrc/X509Utils;->sSystemCertificateDirectory:Ljava/io/File;

    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    return v1

    .line 381
    :cond_2
    sget-object v6, Lus/zoom/zrc/X509Utils;->sSystemKeyStore:Ljava/security/KeyStore;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "system:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 388
    :cond_3
    instance-of v6, v5, Ljava/security/cert/X509Certificate;

    if-nez v6, :cond_4

    .line 390
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    goto :goto_1

    .line 397
    :cond_4
    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 398
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 399
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 400
    sget-object p0, Lus/zoom/zrc/X509Utils;->sSystemTrustAnchorCache:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return v3

    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private static reloadDefaultTrustManager()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 296
    sget-object v0, Lus/zoom/zrc/X509Utils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 297
    :try_start_0
    sput-object v1, Lus/zoom/zrc/X509Utils;->sDefaultTrustManager:Lus/zoom/zrc/X509Utils$X509TrustManagerImplementation;

    .line 298
    sput-object v1, Lus/zoom/zrc/X509Utils;->sSystemTrustAnchorCache:Ljava/util/Set;

    .line 299
    invoke-static {}, Lus/zoom/zrc/X509Utils;->ensureInitializedLocked()V

    .line 300
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static reloadTestTrustManager()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 288
    sget-object v0, Lus/zoom/zrc/X509Utils;->sTestKeyStore:Ljava/security/KeyStore;

    invoke-static {v0}, Lus/zoom/zrc/X509Utils;->createTrustManager(Ljava/security/KeyStore;)Lus/zoom/zrc/X509Utils$X509TrustManagerImplementation;

    move-result-object v0

    sput-object v0, Lus/zoom/zrc/X509Utils;->sTestTrustManager:Lus/zoom/zrc/X509Utils$X509TrustManagerImplementation;

    return-void
.end method

.method static verifyKeyUsage(Ljava/security/cert/X509Certificate;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 418
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    return v1

    .line 427
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "1.3.6.1.5.5.7.3.1"

    .line 428
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "2.5.29.37.0"

    .line 429
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "2.16.840.1.113730.4.1"

    .line 430
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "1.3.6.1.4.1.311.10.3.3"

    .line 431
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    return v1

    :cond_3
    return v0

    :catch_0
    return v0
.end method


# virtual methods
.method public verifyServerCertificates([[BLjava/lang/String;Ljava/lang/String;)Lus/zoom/net/AndroidCertVerifyResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 444
    array-length v0, p1

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    aget-object v1, p1, v0

    if-eqz v1, :cond_4

    const/4 v1, -0x1

    .line 451
    :try_start_0
    invoke-static {}, Lus/zoom/zrc/X509Utils;->ensureInitialized()V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_6

    .line 456
    array-length v2, p1

    new-array v2, v2, [Ljava/security/cert/X509Certificate;

    const/4 v3, 0x0

    .line 458
    :goto_0
    :try_start_1
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 459
    aget-object v4, p1, v3

    invoke-static {v4}, Lus/zoom/zrc/X509Utils;->createCertificateFromBytes([B)Ljava/security/cert/X509Certificate;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 470
    :cond_0
    :try_start_2
    aget-object p1, v2, v0

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->checkValidity()V

    .line 471
    aget-object p1, v2, v0

    invoke-static {p1}, Lus/zoom/zrc/X509Utils;->verifyKeyUsage(Ljava/security/cert/X509Certificate;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 472
    new-instance p1, Lus/zoom/net/AndroidCertVerifyResult;

    const/4 p2, -0x6

    invoke-direct {p1, p2}, Lus/zoom/net/AndroidCertVerifyResult;-><init>(I)V
    :try_end_2
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    .line 483
    :cond_1
    sget-object p1, Lus/zoom/zrc/X509Utils;->sLock:Ljava/lang/Object;

    monitor-enter p1

    .line 485
    :try_start_3
    sget-object v3, Lus/zoom/zrc/X509Utils;->sDefaultTrustManager:Lus/zoom/zrc/X509Utils$X509TrustManagerImplementation;

    if-nez v3, :cond_2

    .line 486
    new-instance p2, Lus/zoom/net/AndroidCertVerifyResult;

    invoke-direct {p2, v1}, Lus/zoom/net/AndroidCertVerifyResult;-><init>(I)V

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object p2

    .line 491
    :cond_2
    :try_start_4
    sget-object v1, Lus/zoom/zrc/X509Utils;->sDefaultTrustManager:Lus/zoom/zrc/X509Utils$X509TrustManagerImplementation;

    invoke-interface {v1, v2, p2, p3}, Lus/zoom/zrc/X509Utils$X509TrustManagerImplementation;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 495
    :catch_0
    :try_start_5
    sget-object v1, Lus/zoom/zrc/X509Utils;->sTestTrustManager:Lus/zoom/zrc/X509Utils$X509TrustManagerImplementation;

    invoke-interface {v1, v2, p2, p3}, Lus/zoom/zrc/X509Utils$X509TrustManagerImplementation;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2
    :try_end_5
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 508
    :goto_1
    :try_start_6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_3

    .line 509
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/security/cert/X509Certificate;

    .line 510
    invoke-static {p3}, Lus/zoom/zrc/X509Utils;->isKnownRoot(Ljava/security/cert/X509Certificate;)Z

    move-result p3

    goto :goto_2

    :cond_3
    const/4 p3, 0x0

    .line 513
    :goto_2
    new-instance v1, Lus/zoom/net/AndroidCertVerifyResult;

    invoke-direct {v1, v0, p3, p2}, Lus/zoom/net/AndroidCertVerifyResult;-><init>(IZLjava/util/List;)V

    monitor-exit p1

    return-object v1

    .line 502
    :catch_1
    new-instance p2, Lus/zoom/net/AndroidCertVerifyResult;

    const/4 p3, -0x2

    invoke-direct {p2, p3}, Lus/zoom/net/AndroidCertVerifyResult;-><init>(I)V

    monitor-exit p1

    return-object p2

    :catchall_0
    move-exception p2

    .line 515
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p2

    .line 480
    :catch_2
    new-instance p1, Lus/zoom/net/AndroidCertVerifyResult;

    invoke-direct {p1, v1}, Lus/zoom/net/AndroidCertVerifyResult;-><init>(I)V

    return-object p1

    .line 478
    :catch_3
    new-instance p1, Lus/zoom/net/AndroidCertVerifyResult;

    const/4 p2, -0x4

    invoke-direct {p1, p2}, Lus/zoom/net/AndroidCertVerifyResult;-><init>(I)V

    return-object p1

    .line 476
    :catch_4
    new-instance p1, Lus/zoom/net/AndroidCertVerifyResult;

    const/4 p2, -0x3

    invoke-direct {p1, p2}, Lus/zoom/net/AndroidCertVerifyResult;-><init>(I)V

    return-object p1

    .line 462
    :catch_5
    new-instance p1, Lus/zoom/net/AndroidCertVerifyResult;

    const/4 p2, -0x5

    invoke-direct {p1, p2}, Lus/zoom/net/AndroidCertVerifyResult;-><init>(I)V

    return-object p1

    .line 453
    :catch_6
    new-instance p1, Lus/zoom/net/AndroidCertVerifyResult;

    invoke-direct {p1, v1}, Lus/zoom/net/AndroidCertVerifyResult;-><init>(I)V

    return-object p1

    .line 445
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected non-null and non-empty certificate chain passed as |certChain|. |certChain|="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-static {p1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    return-void
.end method
