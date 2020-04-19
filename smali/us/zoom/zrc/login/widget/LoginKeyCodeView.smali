.class public Lus/zoom/zrc/login/widget/LoginKeyCodeView;
.super Landroid/view/ViewGroup;
.source "LoginKeyCodeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/login/widget/LoginKeyCodeView$SavedState;,
        Lus/zoom/zrc/login/widget/LoginKeyCodeView$KeyCodeFilter;,
        Lus/zoom/zrc/login/widget/LoginKeyCodeView$MyInputConnection;,
        Lus/zoom/zrc/login/widget/LoginKeyCodeView$IZRCKeyCodeListener;
    }
.end annotation


# instance fields
.field private mBackGroundColor:I

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mCornerRadius:F

.field private mCursorEnabled:Z

.field private mDelayCompleteTask:Ljava/lang/Runnable;

.field private mDynamicLength:Z

.field private mEditable:Landroid/text/Editable;

.field private mGroupPadding:I

.field private mGroupSize:I

.field private mHighlightColor:I

.field private mInputDigits:Ljava/lang/String;

.field private mInputMethodDisabled:Z

.field private mInputType:I

.field private mItemGap:I

.field private mListener:Lus/zoom/zrc/login/widget/LoginKeyCodeView$IZRCKeyCodeListener;

.field private mMaxLength:I

.field private mSelectPos:I

.field private mTextColor:I

.field private mTextSize:F

.field private mVisible:Z

.field private mWaitingComplete:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 108
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    .line 65
    iput v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mItemGap:I

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mSelectPos:I

    .line 83
    new-instance v1, Lus/zoom/zrc/login/widget/LoginKeyCodeView$1;

    invoke-direct {v1, p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView$1;-><init>(Lus/zoom/zrc/login/widget/LoginKeyCodeView;)V

    iput-object v1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mDelayCompleteTask:Ljava/lang/Runnable;

    .line 109
    sget-object v1, Lus/zoom/zrcbox/R$styleable;->LoginKeyCodeView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 110
    sget p2, Lus/zoom/zrcbox/R$styleable;->LoginKeyCodeView_cornerRadius:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mCornerRadius:F

    .line 111
    sget p2, Lus/zoom/zrcbox/R$styleable;->LoginKeyCodeView_groupSize:I

    const/4 v2, 0x1

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mGroupSize:I

    .line 112
    sget p2, Lus/zoom/zrcbox/R$styleable;->LoginKeyCodeView_groupPadding:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mGroupPadding:I

    .line 113
    sget p2, Lus/zoom/zrcbox/R$styleable;->LoginKeyCodeView_backgroundColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mBackGroundColor:I

    .line 114
    sget p2, Lus/zoom/zrcbox/R$styleable;->LoginKeyCodeView_highlightColor:I

    iget v3, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mBackGroundColor:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mHighlightColor:I

    .line 115
    sget p2, Lus/zoom/zrcbox/R$styleable;->LoginKeyCodeView_android_textColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mTextColor:I

    .line 116
    sget p2, Lus/zoom/zrcbox/R$styleable;->LoginKeyCodeView_android_textSize:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mTextSize:F

    .line 117
    sget p2, Lus/zoom/zrcbox/R$styleable;->LoginKeyCodeView_android_maxLength:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mMaxLength:I

    .line 118
    sget p2, Lus/zoom/zrcbox/R$styleable;->LoginKeyCodeView_android_inputType:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mInputType:I

    .line 119
    sget p2, Lus/zoom/zrcbox/R$styleable;->LoginKeyCodeView_android_digits:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mInputDigits:Ljava/lang/String;

    .line 120
    sget p2, Lus/zoom/zrcbox/R$styleable;->LoginKeyCodeView_dynamicLength:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mDynamicLength:Z

    .line 121
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 123
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mEditable:Landroid/text/Editable;

    .line 124
    iget-object p1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mEditable:Landroid/text/Editable;

    invoke-direct {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->createInputFilters()[Landroid/text/InputFilter;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 125
    iget-object p1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mEditable:Landroid/text/Editable;

    iget p2, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mSelectPos:I

    invoke-static {p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 127
    invoke-virtual {p0, v2}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->setFocusable(Z)V

    .line 128
    invoke-virtual {p0, v2}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->setFocusableInTouchMode(Z)V

    .line 130
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x10

    if-lt p1, p2, :cond_0

    .line 131
    invoke-virtual {p0, v2}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->setImportantForAccessibility(I)V

    :cond_0
    const/high16 p1, 0x20000

    .line 134
    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->setDescendantFocusability(I)V

    .line 136
    iget p1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mInputType:I

    if-nez p1, :cond_1

    .line 137
    iput-boolean v2, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mInputMethodDisabled:Z

    .line 140
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mContentDescription:Ljava/lang/CharSequence;

    .line 141
    invoke-direct {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->init()V

    .line 142
    invoke-direct {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->fillInputText()V

    return-void
.end method

.method static synthetic access$002(Lus/zoom/zrc/login/widget/LoginKeyCodeView;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mWaitingComplete:Z

    return p1
.end method

.method static synthetic access$100(Lus/zoom/zrc/login/widget/LoginKeyCodeView;)Lus/zoom/zrc/login/widget/LoginKeyCodeView$IZRCKeyCodeListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mListener:Lus/zoom/zrc/login/widget/LoginKeyCodeView$IZRCKeyCodeListener;

    return-object p0
.end method

.method static synthetic access$1000(Lus/zoom/zrc/login/widget/LoginKeyCodeView;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mVisible:Z

    return p0
.end method

.method static synthetic access$1100(Lus/zoom/zrc/login/widget/LoginKeyCodeView;)Landroid/text/Editable;
    .locals 0

    .line 44
    iget-object p0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mEditable:Landroid/text/Editable;

    return-object p0
.end method

.method static synthetic access$1200(Lus/zoom/zrc/login/widget/LoginKeyCodeView;)[Landroid/text/InputFilter;
    .locals 0

    .line 44
    invoke-direct {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->createInputFilters()[Landroid/text/InputFilter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lus/zoom/zrc/login/widget/LoginKeyCodeView;)I
    .locals 0

    .line 44
    iget p0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mSelectPos:I

    return p0
.end method

.method static synthetic access$1400(Lus/zoom/zrc/login/widget/LoginKeyCodeView;)I
    .locals 0

    .line 44
    iget p0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mMaxLength:I

    return p0
.end method

.method static synthetic access$1500(Lus/zoom/zrc/login/widget/LoginKeyCodeView;)Ljava/lang/Runnable;
    .locals 0

    .line 44
    iget-object p0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mDelayCompleteTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1600(Lus/zoom/zrc/login/widget/LoginKeyCodeView;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mInputDigits:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lus/zoom/zrc/login/widget/LoginKeyCodeView;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->clearText()V

    return-void
.end method

.method static synthetic access$800(Lus/zoom/zrc/login/widget/LoginKeyCodeView;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->deleteText()V

    return-void
.end method

.method static synthetic access$900(Lus/zoom/zrc/login/widget/LoginKeyCodeView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->appendText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private appendText(Ljava/lang/CharSequence;)V
    .locals 5

    .line 406
    iget-boolean v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mWaitingComplete:Z

    if-eqz v0, :cond_0

    return-void

    .line 410
    :cond_0
    iget-boolean v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mDynamicLength:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mSelectPos:I

    iget v2, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mMaxLength:I

    if-lt v0, v2, :cond_1

    .line 412
    iget-object v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mEditable:Landroid/text/Editable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 413
    iget-object v2, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mEditable:Landroid/text/Editable;

    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    .line 414
    iput v1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mSelectPos:I

    .line 415
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {p0, v0, v2, v3, v1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V

    .line 418
    :cond_1
    iget v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mSelectPos:I

    add-int/lit8 v2, v0, 0x1

    .line 420
    iget-object v3, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mEditable:Landroid/text/Editable;

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 421
    iget-object v2, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mEditable:Landroid/text/Editable;

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    .line 424
    :cond_2
    iget-object v3, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mEditable:Landroid/text/Editable;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 425
    iget-object v4, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mEditable:Landroid/text/Editable;

    invoke-interface {v4, v0, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 426
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-direct {p0, v3, v0, v1, v2}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V

    .line 428
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 429
    iget-object v1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mEditable:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 430
    iget-object v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mEditable:Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 432
    :cond_3
    iget-object v1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mEditable:Landroid/text/Editable;

    invoke-static {v1, v0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 434
    iput v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mSelectPos:I

    .line 436
    invoke-direct {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->fillInputText()V

    .line 438
    iget-object v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mListener:Lus/zoom/zrc/login/widget/LoginKeyCodeView$IZRCKeyCodeListener;

    if-eqz v0, :cond_4

    .line 439
    iget v1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mSelectPos:I

    invoke-interface {v0, p1, v1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView$IZRCKeyCodeListener;->onKeyCodeInput(Ljava/lang/CharSequence;I)V

    .line 442
    :cond_4
    iget-object p1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mDelayCompleteTask:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 443
    iget p1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mSelectPos:I

    iget v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mMaxLength:I

    if-lt p1, v0, :cond_5

    const/4 p1, 0x1

    .line 444
    iput-boolean p1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mWaitingComplete:Z

    .line 445
    iget-object p1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mDelayCompleteTask:Ljava/lang/Runnable;

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method

.method private clearText()V
    .locals 4

    .line 450
    iget-object v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mEditable:Landroid/text/Editable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 451
    iput v1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mSelectPos:I

    .line 452
    iget-object v2, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mEditable:Landroid/text/Editable;

    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    .line 453
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {p0, v0, v2, v3, v1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V

    .line 454
    invoke-direct {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->fillInputText()V

    .line 455
    iget-object v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mListener:Lus/zoom/zrc/login/widget/LoginKeyCodeView$IZRCKeyCodeListener;

    if-eqz v0, :cond_0

    .line 456
    invoke-interface {v0, v1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView$IZRCKeyCodeListener;->onKeyCodeDeleted(I)V

    :cond_0
    return-void
.end method

.method private createInputFilters()[Landroid/text/InputFilter;
    .locals 3

    .line 327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 328
    iget v1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mMaxLength:I

    if-lez v1, :cond_0

    .line 329
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mInputDigits:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 332
    new-instance v1, Lus/zoom/zrc/login/widget/LoginKeyCodeView$KeyCodeFilter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lus/zoom/zrc/login/widget/LoginKeyCodeView$KeyCodeFilter;-><init>(Lus/zoom/zrc/login/widget/LoginKeyCodeView;Lus/zoom/zrc/login/widget/LoginKeyCodeView$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_1
    new-instance v1, Landroid/text/InputFilter$AllCaps;

    invoke-direct {v1}, Landroid/text/InputFilter$AllCaps;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/text/InputFilter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/InputFilter;

    return-object v0
.end method

.method private createLetterView()Landroid/widget/TextView;
    .locals 3

    .line 253
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 254
    iget v1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mTextSize:F

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 255
    iget v1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x11

    .line 256
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 257
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-boolean v1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mCursorEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 259
    iget-boolean v1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mCursorEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    return-object v0
.end method

.method private deleteText()V
    .locals 5

    .line 461
    iget v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mSelectPos:I

    if-gez v0, :cond_0

    return-void

    .line 467
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mEditable:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 468
    iget v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mSelectPos:I

    add-int/lit8 v1, v0, -0x1

    goto :goto_0

    .line 471
    :cond_1
    iget v1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mSelectPos:I

    add-int/lit8 v0, v1, 0x1

    :goto_0
    const/4 v2, 0x0

    if-gez v1, :cond_2

    const/4 v1, 0x0

    .line 477
    :cond_2
    iget-object v3, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mEditable:Landroid/text/Editable;

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-le v0, v3, :cond_3

    .line 478
    iget-object v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mEditable:Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 481
    :cond_3
    iget-object v3, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mEditable:Landroid/text/Editable;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 482
    iget-object v4, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mEditable:Landroid/text/Editable;

    invoke-interface {v4, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    const/4 v0, 0x1

    .line 484
    invoke-direct {p0, v3, v1, v0, v2}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V

    .line 486
    iget v1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mSelectPos:I

    if-lez v1, :cond_4

    sub-int/2addr v1, v0

    .line 487
    iput v1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mSelectPos:I

    .line 490
    :cond_4
    invoke-direct {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->fillInputText()V

    .line 492
    iget-object v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mListener:Lus/zoom/zrc/login/widget/LoginKeyCodeView$IZRCKeyCodeListener;

    if-eqz v0, :cond_5

    .line 493
    iget v1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mSelectPos:I

    invoke-interface {v0, v1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView$IZRCKeyCodeListener;->onKeyCodeDeleted(I)V

    .line 496
    :cond_5
    iget-object v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mDelayCompleteTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 497
    iput-boolean v2, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mWaitingComplete:Z

    return-void
.end method

.method private fillInputText()V
    .locals 3

    .line 339
    iget-object v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mEditable:Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 340
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->getChildCount()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mEditable:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 341
    invoke-direct {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->createLetterView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 344
    :goto_1
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 345
    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 346
    invoke-direct {p0, v0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->updateBackground(I)V

    .line 347
    iget-object v2, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mEditable:Landroid/text/Editable;

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 348
    iget-object v2, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mEditable:Landroid/text/Editable;

    invoke-interface {v2, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    const-string v2, ""

    .line 350
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 354
    :cond_2
    invoke-direct {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->getAccessibilityAnnouncement()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private getAccessibilityAnnouncement()Ljava/lang/String;
    .locals 6

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    iget-object v1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 360
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    iget-object v1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mEditable:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 362
    :goto_0
    iget-object v3, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mEditable:Landroid/text/Editable;

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 363
    iget-object v3, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mEditable:Landroid/text/Editable;

    invoke-interface {v3, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, " "

    .line 364
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, ", "

    .line 366
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lus/zoom/zrcbox/R$string;->login_accessibility_field_of:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mEditable:Landroid/text/Editable;

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget v2, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mMaxLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDisplayLength()I
    .locals 2

    .line 240
    iget-boolean v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mDynamicLength:Z

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mEditable:Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    goto :goto_0

    .line 243
    :cond_0
    iget v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mMaxLength:I

    .line 246
    :goto_0
    iget v1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mMaxLength:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    .line 247
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private init()V
    .locals 2

    const/4 v0, 0x0

    .line 264
    :goto_0
    invoke-direct {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->getDisplayLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 265
    invoke-direct {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->createLetterView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->addView(Landroid/view/View;)V

    .line 266
    invoke-direct {p0, v0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->updateBackground(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isGroupEnd(I)Z
    .locals 2

    .line 276
    iget v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mGroupSize:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->getDisplayLength()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    add-int/2addr p1, v1

    .line 277
    rem-int/2addr p1, v0

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private isGroupStart(I)Z
    .locals 1

    .line 271
    iget v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mGroupSize:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->getDisplayLength()I

    move-result v0

    .line 272
    :goto_0
    rem-int/2addr p1, v0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .line 550
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 554
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    .line 555
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/16 v1, 0x10

    .line 561
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 562
    invoke-virtual {v1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 563
    invoke-virtual {v1, p3}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 564
    invoke-virtual {v1, p4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 565
    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 566
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mEditable:Landroid/text/Editable;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->isEnabled()Z

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 569
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 570
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 572
    invoke-static {v1}, Landroidx/core/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroidx/core/view/accessibility/AccessibilityRecordCompat;

    move-result-object p1

    .line 573
    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setSource(Landroid/view/View;)V

    .line 574
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method private updateBackground(I)V
    .locals 13

    .line 373
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    .line 374
    :cond_0
    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 376
    new-instance v1, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/PaintDrawable;-><init>()V

    .line 379
    iget-boolean v2, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mCursorEnabled:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mSelectPos:I

    if-ne p1, v2, :cond_1

    .line 380
    invoke-virtual {v1}, Landroid/graphics/drawable/PaintDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    iget v3, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mHighlightColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 381
    :cond_1
    invoke-direct {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->getDisplayLength()I

    move-result v2

    if-lt p1, v2, :cond_2

    .line 382
    invoke-virtual {v1}, Landroid/graphics/drawable/PaintDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lus/zoom/zrcbox/R$color;->transparent:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 384
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/PaintDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    iget v3, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mBackGroundColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 389
    :goto_0
    iget v2, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mGroupSize:I

    if-lez v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mEditable:Landroid/text/Editable;

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    :goto_1
    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x1

    if-gt v2, v11, :cond_4

    .line 391
    new-array p1, v10, [F

    iget v2, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mCornerRadius:F

    aput v2, p1, v9

    aput v2, p1, v11

    aput v2, p1, v8

    aput v2, p1, v7

    aput v2, p1, v6

    aput v2, p1, v5

    aput v2, p1, v4

    aput v2, p1, v3

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadii([F)V

    goto :goto_2

    .line 392
    :cond_4
    invoke-direct {p0, p1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->isGroupStart(I)Z

    move-result v2

    const/4 v12, 0x0

    if-eqz v2, :cond_5

    .line 393
    new-array p1, v10, [F

    iget v2, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mCornerRadius:F

    aput v2, p1, v9

    aput v2, p1, v11

    aput v12, p1, v8

    aput v12, p1, v7

    aput v12, p1, v6

    aput v12, p1, v5

    aput v2, p1, v4

    aput v2, p1, v3

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadii([F)V

    goto :goto_2

    .line 394
    :cond_5
    invoke-direct {p0, p1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->isGroupEnd(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 395
    new-array p1, v10, [F

    aput v12, p1, v9

    aput v12, p1, v11

    iget v2, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mCornerRadius:F

    aput v2, p1, v8

    aput v2, p1, v7

    aput v2, p1, v6

    aput v2, p1, v5

    aput v12, p1, v4

    aput v12, p1, v3

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadii([F)V

    .line 398
    :cond_6
    :goto_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt p1, v2, :cond_7

    .line 399
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 401
    :cond_7
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public clickKey(ILjava/lang/CharSequence;)V
    .locals 1

    const/16 v0, 0x43

    if-ne v0, p1, :cond_0

    .line 542
    invoke-direct {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->deleteText()V

    goto :goto_0

    .line 544
    :cond_0
    invoke-direct {p0, p2}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->appendText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 313
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->showInputMethod()V

    .line 314
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getMaxLength()I
    .locals 1

    .line 146
    iget v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mMaxLength:I

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 521
    iget-object v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mEditable:Landroid/text/Editable;

    return-object v0
.end method

.method public hideInputMethod()V
    .locals 3

    .line 511
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    return-void

    .line 513
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 160
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mVisible:Z

    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .line 293
    iget-boolean v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mInputMethodDisabled:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 298
    iget-boolean v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mCursorEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 301
    :cond_0
    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 302
    iget-object v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mEditable:Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-le p1, v0, :cond_1

    return-void

    .line 305
    :cond_1
    iget v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mSelectPos:I

    .line 306
    iput p1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mSelectPos:I

    .line 307
    invoke-direct {p0, v0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->updateBackground(I)V

    .line 308
    iget p1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mSelectPos:I

    invoke-direct {p0, p1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->updateBackground(I)V

    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    .line 282
    iget-boolean v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mInputMethodDisabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 283
    iget v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mInputType:I

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v0, 0x10000002

    .line 284
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 285
    new-instance p1, Lus/zoom/zrc/login/widget/LoginKeyCodeView$MyInputConnection;

    invoke-direct {p1, p0, v1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView$MyInputConnection;-><init>(Lus/zoom/zrc/login/widget/LoginKeyCodeView;Lus/zoom/zrc/login/widget/LoginKeyCodeView$1;)V

    return-object p1

    :cond_0
    return-object v1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 166
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mVisible:Z

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x43

    if-ne v0, p1, :cond_0

    .line 320
    invoke-direct {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->deleteText()V

    const/4 p1, 0x1

    return p1

    .line 323
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 224
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->getPaddingLeft()I

    move-result p1

    .line 225
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->getPaddingTop()I

    move-result p2

    const/4 p3, 0x0

    .line 226
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->getChildCount()I

    move-result p4

    if-ge p3, p4, :cond_1

    .line 227
    invoke-virtual {p0, p3}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 228
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p5, p1

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p4, p1, p2, p5, v0}, Landroid/view/View;->layout(IIII)V

    .line 229
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p1, p4

    .line 230
    invoke-direct {p0, p3}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->isGroupEnd(I)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 231
    iget p4, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mGroupPadding:I

    add-int/2addr p1, p4

    goto :goto_1

    .line 233
    :cond_0
    iget p4, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mItemGap:I

    add-int/2addr p1, p4

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 197
    invoke-direct {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->getDisplayLength()I

    move-result p1

    .line 198
    iget v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mGroupSize:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    .line 200
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    int-to-double v3, v1

    const-wide v5, 0x3fe999999999999aL    # 0.8

    .line 203
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-int v3, v3

    goto :goto_1

    :cond_1
    int-to-double v3, v1

    const-wide v5, 0x3fe7ae147ae147aeL    # 0.74

    .line 205
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-int v3, v3

    :goto_1
    const/4 v4, 0x0

    .line 208
    :goto_2
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->getChildCount()I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    if-ge v4, v5, :cond_2

    .line 209
    invoke-virtual {p0, v4}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 210
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v7, v6}, Landroid/view/View;->measure(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 214
    :cond_2
    div-int v1, p1, v0

    sub-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v4, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mItemGap:I

    mul-int v0, v0, v4

    sub-int/2addr v1, v2

    .line 215
    iget v2, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mGroupPadding:I

    mul-int v1, v1, v2

    mul-int v3, v3, p1

    add-int/2addr v3, v0

    add-int/2addr v3, v1

    .line 216
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->getPaddingLeft()I

    move-result p1

    add-int/2addr v3, p1

    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->getPaddingRight()I

    move-result p1

    add-int/2addr v3, p1

    .line 218
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 219
    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 182
    instance-of v0, p1, Lus/zoom/zrc/login/widget/LoginKeyCodeView$SavedState;

    if-nez v0, :cond_0

    .line 183
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 186
    :cond_0
    check-cast p1, Lus/zoom/zrc/login/widget/LoginKeyCodeView$SavedState;

    .line 187
    invoke-virtual {p1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 188
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    invoke-static {p1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView$SavedState;->access$300(Lus/zoom/zrc/login/widget/LoginKeyCodeView$SavedState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mEditable:Landroid/text/Editable;

    .line 189
    iget-object v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mEditable:Landroid/text/Editable;

    invoke-direct {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->createInputFilters()[Landroid/text/InputFilter;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 190
    invoke-static {p1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView$SavedState;->access$400(Lus/zoom/zrc/login/widget/LoginKeyCodeView$SavedState;)I

    move-result p1

    iput p1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mSelectPos:I

    .line 191
    iget-object p1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mEditable:Landroid/text/Editable;

    iget v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mSelectPos:I

    invoke-static {p1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 192
    invoke-direct {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->fillInputText()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 173
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 174
    new-instance v1, Lus/zoom/zrc/login/widget/LoginKeyCodeView$SavedState;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lus/zoom/zrc/login/widget/LoginKeyCodeView$SavedState;-><init>(Landroid/os/Parcelable;Lus/zoom/zrc/login/widget/LoginKeyCodeView$1;)V

    .line 175
    iget-object v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mEditable:Landroid/text/Editable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView$SavedState;->access$302(Lus/zoom/zrc/login/widget/LoginKeyCodeView$SavedState;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    iget v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mSelectPos:I

    invoke-static {v1, v0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView$SavedState;->access$402(Lus/zoom/zrc/login/widget/LoginKeyCodeView$SavedState;I)I

    return-object v1
.end method

.method public setCursorEnabled(Z)V
    .locals 2

    .line 150
    iput-boolean p1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mCursorEnabled:Z

    const/4 p1, 0x0

    .line 151
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 152
    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 153
    iget-boolean v1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mCursorEnabled:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 154
    iget-boolean v1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mCursorEnabled:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setKeyCodeListener(Lus/zoom/zrc/login/widget/LoginKeyCodeView$IZRCKeyCodeListener;)V
    .locals 0

    .line 517
    iput-object p1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mListener:Lus/zoom/zrc/login/widget/LoginKeyCodeView$IZRCKeyCodeListener;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    .line 529
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mMaxLength:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 530
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 533
    :cond_1
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mEditable:Landroid/text/Editable;

    .line 534
    iget-object v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mEditable:Landroid/text/Editable;

    invoke-direct {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->createInputFilters()[Landroid/text/InputFilter;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 535
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mSelectPos:I

    .line 536
    iget-object p1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mEditable:Landroid/text/Editable;

    iget v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mSelectPos:I

    invoke-static {p1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 537
    invoke-direct {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->fillInputText()V

    return-void
.end method

.method public showInputMethod()V
    .locals 2

    .line 501
    iget-boolean v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->mInputMethodDisabled:Z

    if-eqz v0, :cond_0

    return-void

    .line 502
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 503
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 505
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 506
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    :cond_2
    return-void
.end method
