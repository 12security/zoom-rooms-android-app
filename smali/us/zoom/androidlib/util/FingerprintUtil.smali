.class public Lus/zoom/androidlib/util/FingerprintUtil;
.super Ljava/lang/Object;
.source "FingerprintUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/util/FingerprintUtil$IFingerprintResultListener;
    }
.end annotation


# instance fields
.field private mActivity:Lus/zoom/androidlib/app/ZMActivity;

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mKeyManager:Landroid/app/KeyguardManager;


# direct methods
.method public constructor <init>(Lus/zoom/androidlib/app/ZMActivity;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lus/zoom/androidlib/util/FingerprintUtil;->mActivity:Lus/zoom/androidlib/app/ZMActivity;

    .line 25
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1, v0}, Lus/zoom/androidlib/app/ZMActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p1, p0, Lus/zoom/androidlib/util/FingerprintUtil;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 26
    iget-object p1, p0, Lus/zoom/androidlib/util/FingerprintUtil;->mActivity:Lus/zoom/androidlib/app/ZMActivity;

    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Lus/zoom/androidlib/app/ZMActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lus/zoom/androidlib/util/FingerprintUtil;->mKeyManager:Landroid/app/KeyguardManager;

    return-void
.end method

.method private isHasEnrolledFingerprints()Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 110
    :try_start_0
    iget-object v0, p0, Lus/zoom/androidlib/util/FingerprintUtil;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private isKeyguardSecure()Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .line 138
    :try_start_0
    iget-object v0, p0, Lus/zoom/androidlib/util/FingerprintUtil;->mKeyManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public callFingerPrintVerify(Lus/zoom/androidlib/util/FingerprintUtil$IFingerprintResultListener;)V
    .locals 7
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 32
    invoke-virtual {p0}, Lus/zoom/androidlib/util/FingerprintUtil;->isHardwareDetected()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 34
    invoke-interface {p1}, Lus/zoom/androidlib/util/FingerprintUtil$IFingerprintResultListener;->onNoHardwareDetected()V

    :cond_0
    return-void

    .line 38
    :cond_1
    invoke-direct {p0}, Lus/zoom/androidlib/util/FingerprintUtil;->isHasEnrolledFingerprints()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    .line 40
    invoke-interface {p1}, Lus/zoom/androidlib/util/FingerprintUtil$IFingerprintResultListener;->onNoEnroll()V

    :cond_2
    return-void

    .line 44
    :cond_3
    invoke-direct {p0}, Lus/zoom/androidlib/util/FingerprintUtil;->isKeyguardSecure()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p1, :cond_4

    .line 46
    invoke-interface {p1}, Lus/zoom/androidlib/util/FingerprintUtil$IFingerprintResultListener;->onInSecurity()V

    :cond_4
    return-void

    :cond_5
    if-eqz p1, :cond_6

    .line 51
    invoke-interface {p1}, Lus/zoom/androidlib/util/FingerprintUtil$IFingerprintResultListener;->onSupport()V

    :cond_6
    if-eqz p1, :cond_7

    .line 55
    invoke-interface {p1}, Lus/zoom/androidlib/util/FingerprintUtil$IFingerprintResultListener;->onAuthenticateStart()V

    .line 57
    :cond_7
    iget-object v0, p0, Lus/zoom/androidlib/util/FingerprintUtil;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-nez v0, :cond_8

    .line 58
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/util/FingerprintUtil;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 63
    :cond_8
    :try_start_0
    iget-object v1, p0, Lus/zoom/androidlib/util/FingerprintUtil;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v2, 0x0

    iget-object v3, p0, Lus/zoom/androidlib/util/FingerprintUtil;->mCancellationSignal:Landroid/os/CancellationSignal;

    const/4 v4, 0x0

    new-instance v5, Lus/zoom/androidlib/util/FingerprintUtil$1;

    invoke-direct {v5, p0, p1}, Lus/zoom/androidlib/util/FingerprintUtil$1;-><init>(Lus/zoom/androidlib/util/FingerprintUtil;Lus/zoom/androidlib/util/FingerprintUtil$IFingerprintResultListener;)V

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public cancelAuthenticate()V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .line 171
    iget-object v0, p0, Lus/zoom/androidlib/util/FingerprintUtil;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lus/zoom/androidlib/util/FingerprintUtil;->mCancellationSignal:Landroid/os/CancellationSignal;

    :cond_0
    return-void
.end method

.method public isHardwareDetected()Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 124
    :try_start_0
    iget-object v0, p0, Lus/zoom/androidlib/util/FingerprintUtil;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportFingerprint()Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 99
    invoke-virtual {p0}, Lus/zoom/androidlib/util/FingerprintUtil;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lus/zoom/androidlib/util/FingerprintUtil;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lus/zoom/androidlib/util/FingerprintUtil;->isHasEnrolledFingerprints()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDestroy()V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .line 180
    invoke-virtual {p0}, Lus/zoom/androidlib/util/FingerprintUtil;->cancelAuthenticate()V

    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lus/zoom/androidlib/util/FingerprintUtil;->mKeyManager:Landroid/app/KeyguardManager;

    .line 182
    iput-object v0, p0, Lus/zoom/androidlib/util/FingerprintUtil;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-void
.end method
