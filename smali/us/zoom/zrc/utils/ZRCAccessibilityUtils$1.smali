.class final Lus/zoom/zrc/utils/ZRCAccessibilityUtils$1;
.super Ljava/lang/Object;
.source "ZRCAccessibilityUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/utils/ZRCAccessibilityUtils;->sendFirstItemAccessibility(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accessibilityView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lus/zoom/zrc/utils/ZRCAccessibilityUtils$1;->val$accessibilityView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 110
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCAccessibilityUtils$1;->val$accessibilityView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 111
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCAccessibilityUtils$1;->val$accessibilityView:Landroid/view/View;

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->sendAccessibilityFocusEvent(Landroid/view/View;)V

    return-void
.end method
