.class Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SettingArrangeDisplaysFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->startRightAnimator()V
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

    .line 317
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment$3;->this$0:Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 320
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment$3;->this$0:Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;

    invoke-static {p1}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->access$900(Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;)Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$drawable;->tv_shadow_near:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 321
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment$3;->this$0:Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;

    invoke-static {p1}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->access$1000(Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;)V

    return-void
.end method
