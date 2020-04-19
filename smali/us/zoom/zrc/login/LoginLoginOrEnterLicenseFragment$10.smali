.class Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$10;
.super Ljava/lang/Object;
.source "LoginLoginOrEnterLicenseFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 333
    iput-object p1, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$10;->this$0:Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 336
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 337
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment$10;->this$0:Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;

    invoke-static {v0, p1}, Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;->access$700(Lus/zoom/zrc/login/LoginLoginOrEnterLicenseFragment;F)V

    return-void
.end method
