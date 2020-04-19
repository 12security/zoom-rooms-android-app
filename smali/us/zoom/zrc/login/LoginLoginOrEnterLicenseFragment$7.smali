.class Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$7;
.super Ljava/lang/Object;
.source "LoginLoginOrEnterLicenseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->onStart()V
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

    .line 203
    iput-object p1, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$7;->this$0:Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 206
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$7;->this$0:Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->hideSoftKeyboard()V

    .line 207
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$7;->this$0:Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$7;->this$0:Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method
