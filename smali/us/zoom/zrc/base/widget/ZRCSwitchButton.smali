.class public Lus/zoom/zrc/base/widget/ZRCSwitchButton;
.super Landroidx/appcompat/widget/SwitchCompat;
.source "ZRCSwitchButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/base/widget/ZRCSwitchButton$OnBlockedCheckedChange;
    }
.end annotation


# instance fields
.field private action:Lus/zoom/zrc/base/widget/ZRCSwitchButton$OnBlockedCheckedChange;

.field private checkedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 27
    sget v0, Lus/zoom/zrcbox/R$attr;->switchStyle:I

    invoke-direct {p0, p1, p2, v0}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 32
    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setSaveEnabled(Z)V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/base/widget/ZRCSwitchButton;)Lus/zoom/zrc/base/widget/ZRCSwitchButton$OnBlockedCheckedChange;
    .locals 0

    .line 17
    iget-object p0, p0, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->action:Lus/zoom/zrc/base/widget/ZRCSwitchButton$OnBlockedCheckedChange;

    return-object p0
.end method


# virtual methods
.method public setBlockedCheckedChangeAction(Lus/zoom/zrc/base/widget/ZRCSwitchButton$OnBlockedCheckedChange;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->action:Lus/zoom/zrc/base/widget/ZRCSwitchButton$OnBlockedCheckedChange;

    return-void
.end method

.method public setCheckedOnlyForUI(Z)V
    .locals 1

    .line 65
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->isChecked()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 68
    invoke-super {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 69
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 70
    iget-object p1, p0, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->checkedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-super {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 47
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setEnabled(Z)V

    .line 48
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 52
    :cond_0
    new-instance v1, Lus/zoom/zrc/base/widget/ZRCSwitchButton$1;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton$1;-><init>(Lus/zoom/zrc/base/widget/ZRCSwitchButton;Z)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public setOnSwitchChangedListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 77
    :cond_0
    iput-object p1, p0, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->checkedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 78
    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 79
    new-instance p1, Lus/zoom/zrc/base/widget/ZRCSwitchButton$2;

    invoke-direct {p1, p0}, Lus/zoom/zrc/base/widget/ZRCSwitchButton$2;-><init>(Lus/zoom/zrc/base/widget/ZRCSwitchButton;)V

    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 p1, 0x0

    .line 93
    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setClickable(Z)V

    .line 94
    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setFocusable(Z)V

    .line 95
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-nez p1, :cond_1

    return-void

    .line 99
    :cond_1
    new-instance v0, Lus/zoom/zrc/base/widget/ZRCSwitchButton$3;

    invoke-direct {v0, p0}, Lus/zoom/zrc/base/widget/ZRCSwitchButton$3;-><init>(Lus/zoom/zrc/base/widget/ZRCSwitchButton;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 110
    new-instance v0, Lus/zoom/zrc/base/widget/ZRCSwitchButton$4;

    invoke-direct {v0, p0}, Lus/zoom/zrc/base/widget/ZRCSwitchButton$4;-><init>(Lus/zoom/zrc/base/widget/ZRCSwitchButton;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
