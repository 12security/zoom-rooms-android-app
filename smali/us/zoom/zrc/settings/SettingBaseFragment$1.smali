.class Lus/zoom/zrc/settings/SettingBaseFragment$1;
.super Ljava/lang/Object;
.source "SettingBaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/SettingBaseFragment;->sendFirstItemAccessibility(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/settings/SettingBaseFragment;

.field final synthetic val$accessibilityView:Landroid/view/View;


# direct methods
.method constructor <init>(Lus/zoom/zrc/settings/SettingBaseFragment;Landroid/view/View;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingBaseFragment$1;->this$0:Lus/zoom/zrc/settings/SettingBaseFragment;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingBaseFragment$1;->val$accessibilityView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lus/zoom/zrc/settings/SettingBaseFragment$1;->this$0:Lus/zoom/zrc/settings/SettingBaseFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/settings/SettingBaseFragment;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingBaseFragment$1;->this$0:Lus/zoom/zrc/settings/SettingBaseFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/settings/SettingBaseFragment;->getContentView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 140
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingBaseFragment$1;->val$accessibilityView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 141
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingBaseFragment$1;->val$accessibilityView:Landroid/view/View;

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->sendAccessibilityFocusEvent(Landroid/view/View;)V

    return-void
.end method
