.class Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LoginLoginOrEnterLicenseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->moveForKeyboard(Z)V
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

    .line 340
    iput-object p1, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$11;->this$0:Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 349
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 350
    iget-object p1, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$11;->this$0:Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->access$802(Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 343
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 344
    iget-object p1, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$11;->this$0:Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->access$802(Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
