.class public Lus/zoom/zrc/base/widget/ZRCEditText;
.super Landroid/widget/EditText;
.source "ZRCEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field private mAnnounceTextChangeEvenUnSelected:Z

.field private mBeforeText:Ljava/lang/CharSequence;

.field private mCloseIcon:Landroid/graphics/drawable/Drawable;

.field private mCloseVisible:Z

.field private mDisableClearIcon:Z

.field private mDisableSelection:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-direct {p0}, Lus/zoom/zrc/base/widget/ZRCEditText;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-direct {p0}, Lus/zoom/zrc/base/widget/ZRCEditText;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    invoke-direct {p0}, Lus/zoom/zrc/base/widget/ZRCEditText;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 61
    invoke-direct {p0}, Lus/zoom/zrc/base/widget/ZRCEditText;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 65
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$dimen;->zrc_close_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 66
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$drawable;->ic_close:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lus/zoom/zrc/base/widget/ZRCEditText;->mCloseIcon:Landroid/graphics/drawable/Drawable;

    .line 67
    iget-object v1, p0, Lus/zoom/zrc/base/widget/ZRCEditText;->mCloseIcon:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 69
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCEditText;->getCompoundDrawablePadding()I

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCEditText;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/widget/ZRCEditText;->setCompoundDrawablePadding(I)V

    :cond_0
    return-void
.end method

.method private sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;Ljava/lang/CharSequence;III)V
    .locals 2

    .line 206
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 210
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    .line 211
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/16 v1, 0x10

    .line 217
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 218
    invoke-virtual {v1, p3}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 219
    invoke-virtual {v1, p4}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 220
    invoke-virtual {v1, p5}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 221
    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 222
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCEditText;->isEnabled()Z

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 225
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 226
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCEditText;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 228
    invoke-static {v1}, Landroidx/core/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroidx/core/view/accessibility/AccessibilityRecordCompat;

    move-result-object p1

    .line 229
    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setSource(Landroid/view/View;)V

    .line 230
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method private updateCloseIconVisible()V
    .locals 5

    .line 188
    iget-boolean v0, p0, Lus/zoom/zrc/base/widget/ZRCEditText;->mDisableClearIcon:Z

    if-eqz v0, :cond_0

    return-void

    .line 191
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCEditText;->isFocused()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 192
    :goto_0
    iget-boolean v3, p0, Lus/zoom/zrc/base/widget/ZRCEditText;->mCloseVisible:Z

    if-ne v3, v0, :cond_2

    return-void

    .line 195
    :cond_2
    iput-boolean v0, p0, Lus/zoom/zrc/base/widget/ZRCEditText;->mCloseVisible:Z

    .line 196
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x3

    if-eqz v0, :cond_3

    .line 198
    aget-object v0, v3, v2

    aget-object v1, v3, v1

    iget-object v2, p0, Lus/zoom/zrc/base/widget/ZRCEditText;->mCloseIcon:Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lus/zoom/zrc/base/widget/ZRCEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 200
    :cond_3
    aget-object v0, v3, v2

    aget-object v1, v3, v1

    const/4 v2, 0x0

    aget-object v3, v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lus/zoom/zrc/base/widget/ZRCEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 184
    invoke-direct {p0}, Lus/zoom/zrc/base/widget/ZRCEditText;->updateCloseIconVisible()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 167
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/base/widget/ZRCEditText;->mBeforeText:Ljava/lang/CharSequence;

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 119
    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    .line 120
    invoke-virtual {p0, p0}, Lus/zoom/zrc/base/widget/ZRCEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 125
    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    .line 126
    invoke-virtual {p0, p0}, Lus/zoom/zrc/base/widget/ZRCEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 145
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 146
    invoke-direct {p0}, Lus/zoom/zrc/base/widget/ZRCEditText;->updateCloseIconVisible()V

    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 2

    .line 131
    iget-boolean v0, p0, Lus/zoom/zrc/base/widget/ZRCEditText;->mDisableSelection:Z

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 134
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne p1, v1, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eq p2, v1, :cond_1

    .line 135
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/base/widget/ZRCEditText;->setSelection(II)V

    return-void

    .line 140
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7

    .line 173
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCEditText;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCEditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lus/zoom/zrc/base/widget/ZRCEditText;->mAnnounceTextChangeEvenUnSelected:Z

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCEditText;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCEditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iget-object v2, p0, Lus/zoom/zrc/base/widget/ZRCEditText;->mBeforeText:Ljava/lang/CharSequence;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lus/zoom/zrc/base/widget/ZRCEditText;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;Ljava/lang/CharSequence;III)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 152
    iget-boolean v0, p0, Lus/zoom/zrc/base/widget/ZRCEditText;->mCloseVisible:Z

    if-eqz v0, :cond_0

    .line 153
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 155
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCEditText;->getPaddingRight()I

    move-result v1

    iget-object v2, p0, Lus/zoom/zrc/base/widget/ZRCEditText;->mCloseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCEditText;->getCompoundDrawablePadding()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 156
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCEditText;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    const-string p1, ""

    .line 157
    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/widget/ZRCEditText;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    return p1

    .line 161
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setAnnounceTextChangeEvenUnselected()V
    .locals 1

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lus/zoom/zrc/base/widget/ZRCEditText;->mAnnounceTextChangeEvenUnSelected:Z

    return-void
.end method

.method public setDisableClearIcon()V
    .locals 1

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lus/zoom/zrc/base/widget/ZRCEditText;->mDisableClearIcon:Z

    return-void
.end method

.method public setDisableSelectionAndPaste()V
    .locals 3

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lus/zoom/zrc/base/widget/ZRCEditText;->mDisableSelection:Z

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/widget/ZRCEditText;->setCursorVisible(Z)V

    .line 82
    new-instance v0, Lus/zoom/zrc/base/widget/ZRCEditText$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/base/widget/ZRCEditText$1;-><init>(Lus/zoom/zrc/base/widget/ZRCEditText;)V

    .line 103
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 104
    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/widget/ZRCEditText;->setCustomInsertionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 106
    :cond_0
    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/widget/ZRCEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setEnableClearIcon()V
    .locals 1

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lus/zoom/zrc/base/widget/ZRCEditText;->mDisableClearIcon:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 235
    invoke-super {p0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 237
    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/widget/ZRCEditText;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    .line 239
    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/widget/ZRCEditText;->setAlpha(F)V

    :goto_0
    return-void
.end method
