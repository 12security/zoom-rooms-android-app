.class Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SettingArrangeDisplaysFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->swapCenterAndLastView(Landroid/animation/AnimatorSet$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;

.field final synthetic val$view:[Landroid/view/View;


# direct methods
.method constructor <init>(Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;[Landroid/view/View;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment$6;->this$0:Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment$6;->val$view:[Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 410
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment$6;->val$view:[Landroid/view/View;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    check-cast p1, Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->tv_shadow_near:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 411
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment$6;->this$0:Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;

    invoke-static {p1}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->access$1200(Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;)Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$drawable;->tv_shadow_near:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 412
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment$6;->this$0:Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;

    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment$6;->val$view:[Landroid/view/View;

    invoke-static {p1, v0}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->access$1400(Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;[Landroid/view/View;)V

    return-void
.end method
