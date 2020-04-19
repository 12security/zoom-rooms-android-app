.class Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment$5;
.super Ljava/lang/Object;
.source "LoginAddNewCalendarFragment.java"

# interfaces
.implements Landroidx/browser/customtabs/CustomTabActivityHelper$CustomTabFallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;->onGoogleClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment$5;->this$0:Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public openUri(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 2

    .line 131
    new-instance v0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v0

    .line 132
    iget-object v1, v0, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 133
    invoke-virtual {v0, p1, p2}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/app/Activity;Landroid/net/Uri;)V

    return-void
.end method
