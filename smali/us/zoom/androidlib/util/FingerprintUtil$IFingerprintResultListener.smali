.class public interface abstract Lus/zoom/androidlib/util/FingerprintUtil$IFingerprintResultListener;
.super Ljava/lang/Object;
.source "FingerprintUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/util/FingerprintUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IFingerprintResultListener"
.end annotation


# virtual methods
.method public abstract onAuthenticateError(ILjava/lang/CharSequence;)V
.end method

.method public abstract onAuthenticateFailed()V
.end method

.method public abstract onAuthenticateHelp(ILjava/lang/CharSequence;)V
.end method

.method public abstract onAuthenticateStart()V
.end method

.method public abstract onAuthenticateSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
.end method

.method public abstract onInSecurity()V
.end method

.method public abstract onNoEnroll()V
.end method

.method public abstract onNoHardwareDetected()V
.end method

.method public abstract onSupport()V
.end method
