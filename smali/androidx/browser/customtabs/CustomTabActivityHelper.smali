.class public Landroidx/browser/customtabs/CustomTabActivityHelper;
.super Ljava/lang/Object;
.source "CustomTabActivityHelper.java"

# interfaces
.implements Lorg/chromium/customtabsclient/shared/ServiceConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/browser/customtabs/CustomTabActivityHelper$CustomTabFallback;,
        Landroidx/browser/customtabs/CustomTabActivityHelper$ConnectionCallback;
    }
.end annotation


# instance fields
.field private mClient:Landroidx/browser/customtabs/CustomTabsClient;

.field private mConnection:Landroidx/browser/customtabs/CustomTabsServiceConnection;

.field private mConnectionCallback:Landroidx/browser/customtabs/CustomTabActivityHelper$ConnectionCallback;

.field private mCustomTabsSession:Landroidx/browser/customtabs/CustomTabsSession;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static openCustomTab(Landroid/app/Activity;Landroidx/browser/customtabs/CustomTabsIntent;Landroid/net/Uri;Landroidx/browser/customtabs/CustomTabActivityHelper$CustomTabFallback;)V
    .locals 1

    .line 52
    invoke-static {p0}, Lorg/chromium/customtabsclient/shared/CustomTabsHelper;->getPackageNameToUse(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_1

    .line 58
    invoke-interface {p3, p0, p2}, Landroidx/browser/customtabs/CustomTabActivityHelper$CustomTabFallback;->openUri(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object p3, p1, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    invoke-virtual {p1, p0, p2}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/app/Activity;Landroid/net/Uri;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bindCustomTabsService(Landroid/app/Activity;)V
    .locals 2

    .line 105
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabActivityHelper;->mClient:Landroidx/browser/customtabs/CustomTabsClient;

    if-eqz v0, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-static {p1}, Lorg/chromium/customtabsclient/shared/CustomTabsHelper;->getPackageNameToUse(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 110
    :cond_1
    new-instance v1, Lorg/chromium/customtabsclient/shared/ServiceConnection;

    invoke-direct {v1, p0}, Lorg/chromium/customtabsclient/shared/ServiceConnection;-><init>(Lorg/chromium/customtabsclient/shared/ServiceConnectionCallback;)V

    iput-object v1, p0, Landroidx/browser/customtabs/CustomTabActivityHelper;->mConnection:Landroidx/browser/customtabs/CustomTabsServiceConnection;

    .line 111
    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabActivityHelper;->mConnection:Landroidx/browser/customtabs/CustomTabsServiceConnection;

    invoke-static {p1, v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsServiceConnection;)Z

    return-void
.end method

.method public getSession()Landroidx/browser/customtabs/CustomTabsSession;
    .locals 3

    .line 84
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabActivityHelper;->mClient:Landroidx/browser/customtabs/CustomTabsClient;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 85
    iput-object v1, p0, Landroidx/browser/customtabs/CustomTabActivityHelper;->mCustomTabsSession:Landroidx/browser/customtabs/CustomTabsSession;

    goto :goto_0

    .line 86
    :cond_0
    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabActivityHelper;->mCustomTabsSession:Landroidx/browser/customtabs/CustomTabsSession;

    if-nez v2, :cond_1

    .line 87
    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->newSession(Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object v0

    iput-object v0, p0, Landroidx/browser/customtabs/CustomTabActivityHelper;->mCustomTabsSession:Landroidx/browser/customtabs/CustomTabsSession;

    .line 89
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabActivityHelper;->mCustomTabsSession:Landroidx/browser/customtabs/CustomTabsSession;

    return-object v0
.end method

.method public mayLaunchUrl(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabActivityHelper;->mClient:Landroidx/browser/customtabs/CustomTabsClient;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 121
    :cond_0
    invoke-virtual {p0}, Landroidx/browser/customtabs/CustomTabActivityHelper;->getSession()Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 124
    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Landroidx/browser/customtabs/CustomTabsSession;->mayLaunchUrl(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public onServiceConnected(Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 2

    .line 129
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabActivityHelper;->mClient:Landroidx/browser/customtabs/CustomTabsClient;

    .line 130
    iget-object p1, p0, Landroidx/browser/customtabs/CustomTabActivityHelper;->mClient:Landroidx/browser/customtabs/CustomTabsClient;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->warmup(J)Z

    .line 131
    iget-object p1, p0, Landroidx/browser/customtabs/CustomTabActivityHelper;->mConnectionCallback:Landroidx/browser/customtabs/CustomTabActivityHelper$ConnectionCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/browser/customtabs/CustomTabActivityHelper$ConnectionCallback;->onCustomTabsConnected()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 1

    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Landroidx/browser/customtabs/CustomTabActivityHelper;->mClient:Landroidx/browser/customtabs/CustomTabsClient;

    .line 137
    iput-object v0, p0, Landroidx/browser/customtabs/CustomTabActivityHelper;->mCustomTabsSession:Landroidx/browser/customtabs/CustomTabsSession;

    .line 138
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabActivityHelper;->mConnectionCallback:Landroidx/browser/customtabs/CustomTabActivityHelper$ConnectionCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/browser/customtabs/CustomTabActivityHelper$ConnectionCallback;->onCustomTabsDisconnected()V

    :cond_0
    return-void
.end method

.method public setConnectionCallback(Landroidx/browser/customtabs/CustomTabActivityHelper$ConnectionCallback;)V
    .locals 0

    .line 97
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabActivityHelper;->mConnectionCallback:Landroidx/browser/customtabs/CustomTabActivityHelper$ConnectionCallback;

    return-void
.end method

.method public unbindCustomTabsService(Landroid/app/Activity;)V
    .locals 1

    .line 71
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabActivityHelper;->mConnection:Landroidx/browser/customtabs/CustomTabsServiceConnection;

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-virtual {p1, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabActivityHelper;->mClient:Landroidx/browser/customtabs/CustomTabsClient;

    .line 74
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabActivityHelper;->mCustomTabsSession:Landroidx/browser/customtabs/CustomTabsSession;

    .line 75
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabActivityHelper;->mConnection:Landroidx/browser/customtabs/CustomTabsServiceConnection;

    return-void
.end method
