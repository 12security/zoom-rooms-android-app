.class Lus/zoom/zrc/base/widget/ZRCSwitchButton$1;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "ZRCSwitchButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lus/zoom/zrc/base/widget/ZRCSwitchButton;Z)V
    .locals 0

    .line 52
    iput-object p1, p0, Lus/zoom/zrc/base/widget/ZRCSwitchButton$1;->this$0:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    iput-boolean p2, p0, Lus/zoom/zrc/base/widget/ZRCSwitchButton$1;->val$enabled:Z

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    .line 55
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 56
    iget-boolean p1, p0, Lus/zoom/zrc/base/widget/ZRCSwitchButton$1;->val$enabled:Z

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    return-void
.end method
