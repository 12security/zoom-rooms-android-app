.class Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SettingArrangeDisplaysFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->startCenterAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment$5;->this$0:Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 385
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment$5;->this$0:Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;

    invoke-static {p1}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->access$1200(Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;)Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$drawable;->tv_shadow_near:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 386
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment$5;->this$0:Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;

    invoke-static {p1}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->access$1300(Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;)V

    return-void
.end method
