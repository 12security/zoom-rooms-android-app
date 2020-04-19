.class Lus/zoom/zrc/base/widget/ZRCSwitchButton$3;
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

    .line 99
    iput-object p1, p0, Lus/zoom/zrc/base/widget/ZRCSwitchButton$3;->this$0:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 102
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
