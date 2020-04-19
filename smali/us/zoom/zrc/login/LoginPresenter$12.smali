.class Lus/zoom/zrc/login/LoginPresenter$12;
.super Ljava/lang/Object;
.source "LoginPresenter.java"

# interfaces
.implements Landroidx/browser/customtabs/CustomTabActivityHelper$CustomTabFallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginPresenter;->signUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/LoginPresenter;

.field final synthetic val$myActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/LoginPresenter;Landroid/app/Activity;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lus/zoom/zrc/login/LoginPresenter$12;->this$0:Lus/zoom/zrc/login/LoginPresenter;

    iput-object p2, p0, Lus/zoom/zrc/login/LoginPresenter$12;->val$myActivity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public openUri(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 1

    .line 266
    new-instance p1, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    invoke-virtual {p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object p1

    .line 267
    iget-object v0, p1, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 268
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter$12;->val$myActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0, p2}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/app/Activity;Landroid/net/Uri;)V

    return-void
.end method
