.class Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment$2;
.super Ljava/lang/Object;
.source "SettingArrangeDisplaysFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->initView()V
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

    .line 208
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment$2;->this$0:Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 212
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment$2;->this$0:Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;

    invoke-static {v0}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->access$200(Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->access$102(Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;F)F

    .line 213
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment$2;->this$0:Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;

    invoke-static {v0}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->access$400(Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->access$302(Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;F)F

    .line 214
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment$2;->this$0:Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;

    invoke-static {v0}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->access$600(Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->access$502(Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;F)F

    .line 215
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment$2;->this$0:Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;

    invoke-static {v0}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->access$800(Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->access$702(Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;F)F

    return-void
.end method
