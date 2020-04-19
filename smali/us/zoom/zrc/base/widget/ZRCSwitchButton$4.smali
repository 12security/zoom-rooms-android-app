.class Lus/zoom/zrc/base/widget/ZRCSwitchButton$4;
.super Ljava/lang/Object;
.source "ZRCSwitchButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 110
    iput-object p1, p0, Lus/zoom/zrc/base/widget/ZRCSwitchButton$4;->this$0:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 113
    iget-object p1, p0, Lus/zoom/zrc/base/widget/ZRCSwitchButton$4;->this$0:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    invoke-virtual {p1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 116
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/base/widget/ZRCSwitchButton$4;->this$0:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    invoke-static {p1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->access$000(Lus/zoom/zrc/base/widget/ZRCSwitchButton;)Lus/zoom/zrc/base/widget/ZRCSwitchButton$OnBlockedCheckedChange;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lus/zoom/zrc/base/widget/ZRCSwitchButton$4;->this$0:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    invoke-static {p1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->access$000(Lus/zoom/zrc/base/widget/ZRCSwitchButton;)Lus/zoom/zrc/base/widget/ZRCSwitchButton$OnBlockedCheckedChange;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton$OnBlockedCheckedChange;->shouldBlock()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 117
    iget-object p1, p0, Lus/zoom/zrc/base/widget/ZRCSwitchButton$4;->this$0:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    invoke-static {p1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->access$000(Lus/zoom/zrc/base/widget/ZRCSwitchButton;)Lus/zoom/zrc/base/widget/ZRCSwitchButton$OnBlockedCheckedChange;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton$OnBlockedCheckedChange;->blockToRun()V

    goto :goto_0

    .line 119
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/base/widget/ZRCSwitchButton$4;->this$0:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    invoke-virtual {p1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->performClick()Z

    :goto_0
    return-void
.end method
