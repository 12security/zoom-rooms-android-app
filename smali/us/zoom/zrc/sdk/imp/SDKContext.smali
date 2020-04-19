.class public Lus/zoom/zrc/sdk/imp/SDKContext;
.super Ljava/lang/Object;
.source "SDKContext.java"

# interfaces
.implements Lus/zoom/zrcsdk/ContextImp;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lus/zoom/zrc/sdk/imp/SDKContext;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getSharedPreferences(Ljava/lang/String;)Lus/zoom/zrcsdk/SharedPreferencesImp;
    .locals 3

    .line 23
    new-instance v0, Lus/zoom/zrc/sdk/imp/SdkSharePreferences;

    iget-object v1, p0, Lus/zoom/zrc/sdk/imp/SDKContext;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lus/zoom/zrc/sdk/imp/SdkSharePreferences;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v0
.end method

.method public startProxyActivity(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 29
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "us.zoom.zrc.proxyHost"

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "proxyHost"

    .line 32
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "port"

    .line 33
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "description"

    .line 34
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    iget-object p1, p0, Lus/zoom/zrc/sdk/imp/SDKContext;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
