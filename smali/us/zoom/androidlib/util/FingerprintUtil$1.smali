.class Lus/zoom/androidlib/util/FingerprintUtil$1;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "FingerprintUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/util/FingerprintUtil;->callFingerPrintVerify(Lus/zoom/androidlib/util/FingerprintUtil$IFingerprintResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/util/FingerprintUtil;

.field final synthetic val$listener:Lus/zoom/androidlib/util/FingerprintUtil$IFingerprintResultListener;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/util/FingerprintUtil;Lus/zoom/androidlib/util/FingerprintUtil$IFingerprintResultListener;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lus/zoom/androidlib/util/FingerprintUtil$1;->this$0:Lus/zoom/androidlib/util/FingerprintUtil;

    iput-object p2, p0, Lus/zoom/androidlib/util/FingerprintUtil$1;->val$listener:Lus/zoom/androidlib/util/FingerprintUtil$IFingerprintResultListener;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lus/zoom/androidlib/util/FingerprintUtil$1;->val$listener:Lus/zoom/androidlib/util/FingerprintUtil$IFingerprintResultListener;

    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0, p1, p2}, Lus/zoom/androidlib/util/FingerprintUtil$IFingerprintResultListener;->onAuthenticateError(ILjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 1

    .line 74
    iget-object v0, p0, Lus/zoom/androidlib/util/FingerprintUtil$1;->val$listener:Lus/zoom/androidlib/util/FingerprintUtil$IFingerprintResultListener;

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0}, Lus/zoom/androidlib/util/FingerprintUtil$IFingerprintResultListener;->onAuthenticateFailed()V

    :cond_0
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lus/zoom/androidlib/util/FingerprintUtil$1;->val$listener:Lus/zoom/androidlib/util/FingerprintUtil$IFingerprintResultListener;

    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v0, p1, p2}, Lus/zoom/androidlib/util/FingerprintUtil$IFingerprintResultListener;->onAuthenticateHelp(ILjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lus/zoom/androidlib/util/FingerprintUtil$1;->val$listener:Lus/zoom/androidlib/util/FingerprintUtil$IFingerprintResultListener;

    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v0, p1}, Lus/zoom/androidlib/util/FingerprintUtil$IFingerprintResultListener;->onAuthenticateSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V

    :cond_0
    return-void
.end method
