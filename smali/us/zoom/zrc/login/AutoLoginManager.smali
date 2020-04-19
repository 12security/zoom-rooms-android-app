.class public Lus/zoom/zrc/login/AutoLoginManager;
.super Ljava/lang/Object;
.source "AutoLoginManager.java"


# static fields
.field public static final POLICY_KEY_ACTIVATION_CODE:Ljava/lang/String; = "ActivationCode"

.field public static final POLICY_KEY_ACTIVATION_MODE:Ljava/lang/String; = "WorkMode"

.field public static final POLICY_KEY_AUTO_SIGN_IN_SEQUENCE:Ljava/lang/String; = "AutoSignInSequence"

.field private static final TAG:Ljava/lang/String; = "AutoLogin"

.field private static autoLoginManager:Lus/zoom/zrc/login/AutoLoginManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private arrangeLogin()V
    .locals 2

    .line 91
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/login/AutoLoginManager;->loginWithPushedCode()V

    goto :goto_1

    .line 94
    :cond_1
    :goto_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->setAppState(I)V

    :goto_1
    return-void
.end method

.method private static convertMode(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 117
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/4 v1, -0x1

    .line 118
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x22324636

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    const v3, 0x25fe639c

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "controller"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const-string v2, "scheduling display"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    const/4 p0, 0x2

    return p0

    :pswitch_1
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized getInstance()Lus/zoom/zrc/login/AutoLoginManager;
    .locals 2

    const-class v0, Lus/zoom/zrc/login/AutoLoginManager;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lus/zoom/zrc/login/AutoLoginManager;->autoLoginManager:Lus/zoom/zrc/login/AutoLoginManager;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lus/zoom/zrc/login/AutoLoginManager;

    invoke-direct {v1}, Lus/zoom/zrc/login/AutoLoginManager;-><init>()V

    sput-object v1, Lus/zoom/zrc/login/AutoLoginManager;->autoLoginManager:Lus/zoom/zrc/login/AutoLoginManager;

    .line 36
    :cond_0
    sget-object v1, Lus/zoom/zrc/login/AutoLoginManager;->autoLoginManager:Lus/zoom/zrc/login/AutoLoginManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private setExpectedMode(I)V
    .locals 1

    .line 112
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->setWorkMode(I)V

    return-void
.end method


# virtual methods
.method checkAutoLoginFailed()V
    .locals 3

    .line 43
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    .line 46
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lus/zoom/zrc/model/Model;->setWorkMode(I)V

    .line 47
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->setAppState(I)V

    :cond_1
    return-void
.end method

.method public loginWithPushedCode()V
    .locals 3

    .line 101
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isConnectingToZoomRoom()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isConnectedToZoomRoom()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isStandaloneZRP()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0xbbc

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 104
    :goto_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lus/zoom/zrc/model/Model;->logout(ZI)V

    .line 107
    :cond_2
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getPushedWorkMode()I

    move-result v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/login/AutoLoginManager;->setExpectedMode(I)V

    .line 108
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object v0

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->AutoLogin:Lus/zoom/zrc/base/notification/ModelEvent;

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getPushedActivationCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public receiveCode(Landroid/os/Bundle;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "ActivationCode"

    .line 57
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "WorkMode"

    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "AutoSignInSequence"

    .line 59
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "receiveCode, the appRestrictions contains nothing!"

    .line 60
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v0, "ActivationCode"

    .line 65
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "WorkMode"

    .line 66
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AutoSignInSequence"

    .line 67
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "AutoLogin"

    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receiveCode() called with: activationCode = [*], activationMode = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "], autoSignInSequence = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-static {v0}, Lus/zoom/zrc/login/util/LoginLicenseKeyUtils;->normalizeLicenseKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v2}, Lus/zoom/zrc/login/AutoLoginManager;->convertMode(Ljava/lang/String;)I

    move-result v2

    .line 74
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->getPushedActivationCode()Ljava/lang/String;

    move-result-object v3

    .line 75
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrc/model/Model;->getPushedWorkMode()I

    move-result v4

    .line 76
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v5

    invoke-virtual {v5}, Lus/zoom/zrc/model/Model;->getPushedAutoSignInSequence()Ljava/lang/String;

    move-result-object v5

    .line 77
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v6

    invoke-virtual {v6, v0, v2, p1}, Lus/zoom/zrc/model/Model;->setPushedAutoSignInData(Ljava/lang/String;ILjava/lang/String;)V

    .line 79
    invoke-static {v0}, Lus/zoom/zrc/login/util/LoginLicenseKeyUtils;->isValidLicenseKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string p1, "AutoLogin"

    const-string v0, "activationCode is not valid"

    .line 80
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 84
    :cond_2
    invoke-static {p1, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eq v4, v2, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    if-eqz v1, :cond_5

    .line 86
    invoke-direct {p0}, Lus/zoom/zrc/login/AutoLoginManager;->arrangeLogin()V

    :cond_5
    return-void
.end method
