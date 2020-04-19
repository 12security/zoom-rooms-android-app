.class public Lus/zoom/androidlib/util/EncryptUtils;
.super Ljava/lang/Object;
.source "EncryptUtils.java"


# static fields
.field private static final CIPHER_TRANSFORMATION_OAEP:Ljava/lang/String; = "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

.field private static final CIPHER_TRANSFORMATION_PKCS:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field private static final KEY_CIPHER_TRANSFORMATION:Ljava/lang/String; = "key_cipher_transformation"

.field private static final LOCALE_PREFERENCE_NAME:Ljava/lang/String; = "local_prefenrence_name"

.field private static final TAG:Ljava/lang/String; = "EncryptUtils"

.field static encryptUtilsInstance:Lus/zoom/androidlib/util/EncryptUtils;


# instance fields
.field keyStore:Ljava/security/KeyStore;

.field private mCipherTransformation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RSA/ECB/PKCS1Padding"

    .line 43
    iput-object v0, p0, Lus/zoom/androidlib/util/EncryptUtils;->mCipherTransformation:Ljava/lang/String;

    return-void
.end method

.method private createNewKeys(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    .line 79
    invoke-static {p2}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5

    const/4 v0, 0x0

    .line 82
    :try_start_0
    iget-object v2, p0, Lus/zoom/androidlib/util/EncryptUtils;->keyStore:Ljava/security/KeyStore;

    invoke-virtual {v2, p2}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 83
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 84
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/16 v5, 0x14

    .line 85
    invoke-virtual {v4, v1, v5}, Ljava/util/Calendar;->add(II)V

    .line 87
    invoke-static {}, Lus/zoom/androidlib/util/OsUtil;->isAtLeastM()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v3, "RSA/ECB/PKCS1Padding"

    .line 88
    iput-object v3, p0, Lus/zoom/androidlib/util/EncryptUtils;->mCipherTransformation:Ljava/lang/String;

    .line 89
    new-instance v3, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v5, 0x3

    invoke-direct {v3, p2, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    new-instance v5, Ljavax/security/auth/x500/X500Principal;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CN="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v5, p2}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v3, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p2

    new-array v3, v1, [Ljava/lang/String;

    const-string v5, "PKCS1Padding"

    aput-object v5, v3, v0

    .line 92
    invoke-virtual {p2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p2

    sget-object v3, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    .line 93
    invoke-virtual {p2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateSerialNumber(Ljava/math/BigInteger;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p2

    .line 94
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateNotBefore(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p2

    .line 95
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateNotAfter(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p2

    .line 96
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v3

    goto :goto_0

    .line 98
    :cond_0
    invoke-static {}, Lus/zoom/androidlib/util/OsUtil;->isAtLeastJB_MR2()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v3, "RSA/ECB/PKCS1Padding"

    .line 99
    iput-object v3, p0, Lus/zoom/androidlib/util/EncryptUtils;->mCipherTransformation:Ljava/lang/String;

    .line 100
    new-instance v3, Landroid/security/KeyPairGeneratorSpec$Builder;

    invoke-direct {v3, p1}, Landroid/security/KeyPairGeneratorSpec$Builder;-><init>(Landroid/content/Context;)V

    .line 101
    invoke-virtual {v3, p2}, Landroid/security/KeyPairGeneratorSpec$Builder;->setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v3

    new-instance v5, Ljavax/security/auth/x500/X500Principal;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CN="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v5, p2}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v3, v5}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p2

    sget-object v3, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    .line 103
    invoke-virtual {p2, v3}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p2

    .line 104
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/security/KeyPairGeneratorSpec$Builder;->setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p2

    .line 105
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/security/KeyPairGeneratorSpec$Builder;->setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p2

    .line 106
    invoke-virtual {p2}, Landroid/security/KeyPairGeneratorSpec$Builder;->build()Landroid/security/KeyPairGeneratorSpec;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string p2, "RSA/ECB/PKCS1Padding"

    .line 116
    iput-object p2, p0, Lus/zoom/androidlib/util/EncryptUtils;->mCipherTransformation:Ljava/lang/String;

    :goto_0
    const-string p2, "RSA"

    const-string v2, "AndroidKeyStore"

    .line 119
    invoke-static {p2, v2}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object p2

    .line 120
    invoke-static {}, Lus/zoom/androidlib/util/OsUtil;->isAtLeastJB_MR2()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 121
    invoke-virtual {p2, v3}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 124
    :cond_2
    invoke-virtual {p2}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    const-string p2, "local_prefenrence_name"

    .line 125
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 126
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "key_cipher_transformation"

    .line 127
    iget-object v2, p0, Lus/zoom/androidlib/util/EncryptUtils;->mCipherTransformation:Ljava/lang/String;

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 128
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    :cond_3
    const-string p2, "local_prefenrence_name"

    .line 131
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "key_cipher_transformation"

    .line 132
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-static {p1}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p1, "RSA/ECB/PKCS1Padding"

    .line 134
    iput-object p1, p0, Lus/zoom/androidlib/util/EncryptUtils;->mCipherTransformation:Ljava/lang/String;

    goto :goto_1

    .line 136
    :cond_4
    iput-object p1, p0, Lus/zoom/androidlib/util/EncryptUtils;->mCipherTransformation:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public static getInstance()Lus/zoom/androidlib/util/EncryptUtils;
    .locals 2

    .line 47
    const-class v0, Lus/zoom/androidlib/util/EncryptUtils;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lus/zoom/androidlib/util/EncryptUtils;->encryptUtilsInstance:Lus/zoom/androidlib/util/EncryptUtils;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lus/zoom/androidlib/util/EncryptUtils;

    invoke-direct {v1}, Lus/zoom/androidlib/util/EncryptUtils;-><init>()V

    sput-object v1, Lus/zoom/androidlib/util/EncryptUtils;->encryptUtilsInstance:Lus/zoom/androidlib/util/EncryptUtils;

    .line 51
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    sget-object v0, Lus/zoom/androidlib/util/EncryptUtils;->encryptUtilsInstance:Lus/zoom/androidlib/util/EncryptUtils;

    return-object v0

    :catchall_0
    move-exception v1

    .line 51
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getOAEPParameterSpec(Ljava/lang/String;)Ljavax/crypto/spec/OAEPParameterSpec;
    .locals 4

    const-string v0, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    .line 59
    invoke-static {p1, v0}, Lus/zoom/androidlib/util/StringUtil;->isSameStringForNotAllowNull(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 60
    new-instance p1, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v0, "SHA-256"

    const-string v1, "MGF1"

    new-instance v2, Ljava/security/spec/MGF1ParameterSpec;

    const-string v3, "SHA-1"

    invoke-direct {v2, v3}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {p1, v0, v1, v2, v3}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private initKeyStore(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AndroidKeyStore"

    .line 66
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Lus/zoom/androidlib/util/EncryptUtils;->keyStore:Ljava/security/KeyStore;

    .line 67
    iget-object v1, p0, Lus/zoom/androidlib/util/EncryptUtils;->keyStore:Ljava/security/KeyStore;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    invoke-static {}, Lus/zoom/androidlib/util/OsUtil;->isAtLeastJB_MR2()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    invoke-direct {p0, p1, p2}, Lus/zoom/androidlib/util/EncryptUtils;->createNewKeys(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    return v0

    :catch_0
    return v0
.end method


# virtual methods
.method public decryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 199
    invoke-virtual {p0, p1, p2, p3}, Lus/zoom/androidlib/util/EncryptUtils;->decryptStringInByte(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 200
    array-length p2, p1

    if-lez p2, :cond_0

    .line 201
    new-instance p2, Ljava/lang/String;

    const/4 p3, 0x0

    array-length v0, p1

    invoke-static {}, Lus/zoom/androidlib/util/CompatUtils;->getStardardCharSetUTF8()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {p2, p1, p3, v0, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object p2

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public decryptStringInByte(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 207
    invoke-static {p3}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    invoke-static {p2}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 209
    invoke-static {}, Lus/zoom/androidlib/util/OsUtil;->isAtLeastJB_MR2()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 210
    invoke-direct {p0, p1, p3}, Lus/zoom/androidlib/util/EncryptUtils;->initKeyStore(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-object v1

    .line 216
    :cond_1
    :try_start_0
    iget-object p1, p0, Lus/zoom/androidlib/util/EncryptUtils;->keyStore:Ljava/security/KeyStore;

    invoke-virtual {p1, p3, v1}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object p1

    check-cast p1, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 217
    iget-object p3, p0, Lus/zoom/androidlib/util/EncryptUtils;->mCipherTransformation:Ljava/lang/String;

    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p3

    .line 218
    iget-object v0, p0, Lus/zoom/androidlib/util/EncryptUtils;->mCipherTransformation:Ljava/lang/String;

    invoke-direct {p0, v0}, Lus/zoom/androidlib/util/EncryptUtils;->getOAEPParameterSpec(Ljava/lang/String;)Ljavax/crypto/spec/OAEPParameterSpec;

    move-result-object v0

    const/4 v3, 0x2

    if-eqz v0, :cond_2

    .line 220
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object p1

    invoke-virtual {p3, v3, p1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_1

    .line 222
    :cond_2
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object p1

    invoke-virtual {p3, v3, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 230
    :goto_1
    :try_start_1
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-static {p2, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 231
    :try_start_2
    new-instance p2, Ljavax/crypto/CipherInputStream;

    invoke-direct {p2, p1, p3}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 235
    :try_start_3
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 237
    :goto_2
    invoke-virtual {p2}, Ljavax/crypto/CipherInputStream;->read()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    int-to-byte v0, v0

    .line 238
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 241
    :cond_3
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    .line 242
    :goto_3
    array-length v3, v0

    if-ge v2, v3, :cond_4

    .line 243
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 245
    :cond_4
    invoke-virtual {p2}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 247
    :try_start_4
    invoke-virtual {p2}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    return-object v0

    :catchall_0
    move-exception p3

    move-object v0, v1

    goto :goto_4

    :catch_0
    move-exception p3

    .line 230
    :try_start_6
    throw p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    move-object v0, p3

    move-object p3, v4

    :goto_4
    if-eqz v0, :cond_5

    .line 247
    :try_start_7
    invoke-virtual {p2}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_5

    :catch_1
    move-exception p2

    :try_start_8
    invoke-virtual {v0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_5
    invoke-virtual {p2}, Ljavax/crypto/CipherInputStream;->close()V

    :goto_5
    throw p3
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p2

    move-object p3, v1

    goto :goto_6

    :catch_2
    move-exception p2

    .line 230
    :try_start_9
    throw p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception p3

    move-object v4, p3

    move-object p3, p2

    move-object p2, v4

    :goto_6
    if-eqz p3, :cond_6

    .line 247
    :try_start_a
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_7

    :catch_3
    move-exception p1

    :try_start_b
    invoke-virtual {p3, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_6
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->close()V

    :goto_7
    throw p2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    :catch_4
    return-object v1

    :catch_5
    return-object v1

    :cond_7
    return-object v1
.end method

.method public encryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 149
    invoke-static {}, Lus/zoom/androidlib/util/CompatUtils;->getStardardCharSetUTF8()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lus/zoom/androidlib/util/EncryptUtils;->encryptString(Landroid/content/Context;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encryptString(Landroid/content/Context;[BLjava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 153
    invoke-static {p3}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p2, :cond_5

    array-length v0, p2

    if-lez v0, :cond_5

    .line 155
    invoke-static {}, Lus/zoom/androidlib/util/OsUtil;->isAtLeastJB_MR2()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 156
    invoke-direct {p0, p1, p3}, Lus/zoom/androidlib/util/EncryptUtils;->initKeyStore(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    return-object p1

    .line 163
    :cond_1
    :try_start_0
    iget-object p1, p0, Lus/zoom/androidlib/util/EncryptUtils;->keyStore:Ljava/security/KeyStore;

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object p1

    check-cast p1, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 165
    iget-object p3, p0, Lus/zoom/androidlib/util/EncryptUtils;->mCipherTransformation:Ljava/lang/String;

    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p3

    .line 166
    iget-object v2, p0, Lus/zoom/androidlib/util/EncryptUtils;->mCipherTransformation:Ljava/lang/String;

    invoke-direct {p0, v2}, Lus/zoom/androidlib/util/EncryptUtils;->getOAEPParameterSpec(Ljava/lang/String;)Ljavax/crypto/spec/OAEPParameterSpec;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 168
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-virtual {p3, v3, p1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_1

    .line 170
    :cond_2
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-virtual {p3, v3, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 178
    :goto_1
    :try_start_1
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 179
    :try_start_2
    new-instance v2, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v2, p1, p3}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 183
    :try_start_3
    invoke-virtual {v2, p2}, Ljavax/crypto/CipherOutputStream;->write([B)V

    .line 184
    invoke-virtual {v2}, Ljavax/crypto/CipherOutputStream;->close()V

    .line 185
    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 186
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    invoke-static {p3, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 187
    :try_start_4
    invoke-virtual {v2}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    return-object p3

    :catchall_0
    move-exception p3

    move-object v3, v0

    goto :goto_2

    :catch_0
    move-exception p3

    .line 178
    :try_start_6
    throw p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v3

    move-object v4, v3

    move-object v3, p3

    move-object p3, v4

    :goto_2
    if-eqz v3, :cond_3

    .line 187
    :try_start_7
    invoke-virtual {v2}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3

    :catch_1
    move-exception v2

    :try_start_8
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljavax/crypto/CipherOutputStream;->close()V

    :goto_3
    throw p3
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p3

    goto :goto_4

    :catch_2
    move-exception p3

    move-object v0, p3

    .line 178
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_4
    if-eqz v0, :cond_4

    .line 187
    :try_start_a
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_5

    :catch_3
    move-exception p1

    :try_start_b
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_4
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    :goto_5
    throw p3
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 189
    :catch_4
    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([BB)V

    const-string p1, ""

    return-object p1

    :catch_5
    const-string p1, ""

    return-object p1

    :cond_5
    const-string p1, ""

    return-object p1
.end method
