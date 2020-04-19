.class Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$3;
.super Ljava/lang/Object;
.source "LoginLoginOrEnterLicenseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$3;->this$0:Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 148
    invoke-static {}, Lus/zoom/zrc/login/LoginUsageTrack;->sendEnterSignInWithLicenseKey()V

    .line 149
    iget-object p1, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$3;->this$0:Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$INavigator;->onEnterLicense()V

    return-void
.end method
