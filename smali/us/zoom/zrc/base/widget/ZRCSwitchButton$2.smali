.class Lus/zoom/zrc/base/widget/ZRCSwitchButton$2;
.super Ljava/lang/Object;
.source "ZRCSwitchButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setOnSwitchChangedListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/base/widget/ZRCSwitchButton;


# direct methods
.method constructor <init>(Lus/zoom/zrc/base/widget/ZRCSwitchButton;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lus/zoom/zrc/base/widget/ZRCSwitchButton$2;->this$0:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 82
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    .line 85
    :cond_0
    iget-object p2, p0, Lus/zoom/zrc/base/widget/ZRCSwitchButton$2;->this$0:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    invoke-static {p2}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->access$000(Lus/zoom/zrc/base/widget/ZRCSwitchButton;)Lus/zoom/zrc/base/widget/ZRCSwitchButton$OnBlockedCheckedChange;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lus/zoom/zrc/base/widget/ZRCSwitchButton$2;->this$0:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    invoke-static {p2}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->access$000(Lus/zoom/zrc/base/widget/ZRCSwitchButton;)Lus/zoom/zrc/base/widget/ZRCSwitchButton$OnBlockedCheckedChange;

    move-result-object p2

    invoke-interface {p2}, Lus/zoom/zrc/base/widget/ZRCSwitchButton$OnBlockedCheckedChange;->shouldBlock()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 86
    iget-object p1, p0, Lus/zoom/zrc/base/widget/ZRCSwitchButton$2;->this$0:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    invoke-static {p1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->access$000(Lus/zoom/zrc/base/widget/ZRCSwitchButton;)Lus/zoom/zrc/base/widget/ZRCSwitchButton$OnBlockedCheckedChange;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton$OnBlockedCheckedChange;->blockToRun()V

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :goto_0
    return v0
.end method
