.class Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$ClickSpansTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "ZRCTextViewWithClickableSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickSpansTouchHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;


# direct methods
.method constructor <init>(Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;Landroid/view/View;)V
    .locals 0
    .param p1    # Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 153
    iput-object p1, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$ClickSpansTouchHelper;->this$0:Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;

    .line 154
    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 4

    .line 159
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$ClickSpansTouchHelper;->this$0:Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;

    invoke-static {v0}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->access$100(Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;)[Landroid/text/style/ClickableSpan;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 160
    :goto_0
    iget-object v1, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$ClickSpansTouchHelper;->this$0:Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;

    invoke-static {v1}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->access$100(Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;)[Landroid/text/style/ClickableSpan;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 161
    iget-object v1, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$ClickSpansTouchHelper;->this$0:Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;

    invoke-static {v1}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->access$100(Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;)[Landroid/text/style/ClickableSpan;

    move-result-object v1

    aget-object v1, v1, v0

    .line 162
    iget-object v2, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$ClickSpansTouchHelper;->this$0:Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;

    invoke-static {v2, v1}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->access$200(Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;Ljava/lang/Object;)V

    .line 164
    iget-object v1, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$ClickSpansTouchHelper;->this$0:Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;

    invoke-static {v1}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->access$000(Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;)Landroid/graphics/Rect;

    move-result-object v1

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/high16 p1, -0x80000000

    return p1
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$ClickSpansTouchHelper;->this$0:Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;

    invoke-static {v0}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->access$100(Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;)[Landroid/text/style/ClickableSpan;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 179
    :goto_0
    iget-object v1, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$ClickSpansTouchHelper;->this$0:Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;

    invoke-static {v1}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->access$100(Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;)[Landroid/text/style/ClickableSpan;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 180
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 0
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 p3, 0x10

    if-ne p2, p3, :cond_0

    .line 212
    iget-object p2, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$ClickSpansTouchHelper;->this$0:Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;

    invoke-static {p2, p1}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->access$400(Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 3
    .param p2    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 186
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$ClickSpansTouchHelper;->this$0:Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;

    invoke-static {v0}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->access$100(Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;)[Landroid/text/style/ClickableSpan;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$ClickSpansTouchHelper;->this$0:Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;

    invoke-static {v0}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->access$100(Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;)[Landroid/text/style/ClickableSpan;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 189
    iget-object p1, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$ClickSpansTouchHelper;->this$0:Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;

    invoke-static {p1}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->access$000(Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    const-string p1, ""

    .line 190
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 191
    iget-object p1, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$ClickSpansTouchHelper;->this$0:Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;

    invoke-static {p1}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->access$000(Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 192
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$ClickSpansTouchHelper;->this$0:Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;

    invoke-static {v0}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->access$100(Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;)[Landroid/text/style/ClickableSpan;

    move-result-object v0

    aget-object p1, v0, p1

    .line 197
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$ClickSpansTouchHelper;->this$0:Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;

    invoke-static {v0, p1}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->access$300(Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$ClickSpansTouchHelper;->this$0:Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;

    invoke-static {v1, p1}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->access$200(Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;Ljava/lang/Object;)V

    .line 200
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object p1, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$ClickSpansTouchHelper;->this$0:Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;

    invoke-static {p1}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->access$000(Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 202
    sget-object p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 203
    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    .line 204
    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    .line 205
    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setImportantForAccessibility(Z)V

    .line 206
    const-class p1, Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method
