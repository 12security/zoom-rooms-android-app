.class Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$2;
.super Ljava/lang/Object;
.source "LoginLoginOrEnterLicenseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 136
    iput-object p1, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$2;->this$0:Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 139
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$2;->this$0:Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$2;->this$0:Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$dimen;->login_title_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v2, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$2;->this$0:Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;

    invoke-static {v2}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->access$400(Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->access$302(Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;F)F

    return-void
.end method
