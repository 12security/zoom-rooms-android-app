.class public Lus/zoom/zrc/base/widget/ZRCTextChangeTalkBack;
.super Ljava/lang/Object;
.source "ZRCTextChangeTalkBack.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private mBeforeText:Ljava/lang/CharSequence;

.field private mHandleView:Landroid/widget/TextView;

.field private mIsPhoneNumber:Z

.field private mTargetView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p1}, Lus/zoom/zrc/base/widget/ZRCTextChangeTalkBack;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lus/zoom/zrc/base/widget/ZRCTextChangeTalkBack;->mHandleView:Landroid/widget/TextView;

    .line 42
    iput-object p2, p0, Lus/zoom/zrc/base/widget/ZRCTextChangeTalkBack;->mTargetView:Landroid/widget/TextView;

    return-void
.end method

.method private sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;Ljava/lang/CharSequence;III)V
    .locals 3

    .line 87
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTextChangeTalkBack;->mHandleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 88
    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "accessibility"

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/16 v2, 0x10

    .line 99
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 100
    invoke-virtual {v2, p3}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 101
    invoke-virtual {v2, p4}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 102
    invoke-virtual {v2, p5}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 103
    invoke-virtual {v2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object p1, p0, Lus/zoom/zrc/base/widget/ZRCTextChangeTalkBack;->mHandleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isEnabled()Z

    move-result p1

    invoke-virtual {v2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 110
    invoke-static {v2}, Landroidx/core/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroidx/core/view/accessibility/AccessibilityRecordCompat;

    move-result-object p1

    .line 111
    iget-object p2, p0, Lus/zoom/zrc/base/widget/ZRCTextChangeTalkBack;->mHandleView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setSource(Landroid/view/View;)V

    .line 112
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 69
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTextChangeTalkBack;->mHandleView:Landroid/widget/TextView;

    iget-object v1, p0, Lus/zoom/zrc/base/widget/ZRCTextChangeTalkBack;->mTargetView:Landroid/widget/TextView;

    if-eq v0, v1, :cond_0

    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :cond_0
    iget-boolean v0, p0, Lus/zoom/zrc/base/widget/ZRCTextChangeTalkBack;->mIsPhoneNumber:Z

    if-eqz v0, :cond_2

    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-static {p1}, Lus/zoom/zrc/phonecall/PhoneCallNumberUtils;->getContentDescriptionForNumber(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 76
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTextChangeTalkBack;->mHandleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 79
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTextChangeTalkBack;->mTargetView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 80
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 59
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/base/widget/ZRCTextChangeTalkBack;->mBeforeText:Ljava/lang/CharSequence;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    .line 64
    iget-object v1, p0, Lus/zoom/zrc/base/widget/ZRCTextChangeTalkBack;->mBeforeText:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lus/zoom/zrc/base/widget/ZRCTextChangeTalkBack;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;Ljava/lang/CharSequence;III)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 54
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTextChangeTalkBack;->mHandleView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public setAsPhoneNumber()V
    .locals 1

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lus/zoom/zrc/base/widget/ZRCTextChangeTalkBack;->mIsPhoneNumber:Z

    return-void
.end method

.method public setup()V
    .locals 1

    .line 50
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTextChangeTalkBack;->mHandleView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
