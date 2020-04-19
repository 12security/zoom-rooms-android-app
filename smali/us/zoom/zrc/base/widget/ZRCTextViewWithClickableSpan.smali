.class public Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;
.super Landroid/widget/TextView;
.source "ZRCTextViewWithClickableSpan.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$ClickSpansTouchHelper;
    }
.end annotation


# instance fields
.field private clickSpansTouchHelper:Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$ClickSpansTouchHelper;

.field private clickableSpans:[Landroid/text/style/ClickableSpan;

.field private tempPath:Landroid/graphics/Path;

.field private tempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->tempRect:Landroid/graphics/Rect;

    .line 33
    new-instance p1, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$1;

    invoke-direct {p1, p0}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$1;-><init>(Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;)V

    iput-object p1, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->tempPath:Landroid/graphics/Path;

    .line 45
    invoke-direct {p0}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->tempRect:Landroid/graphics/Rect;

    .line 33
    new-instance p1, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$1;

    invoke-direct {p1, p0}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$1;-><init>(Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;)V

    iput-object p1, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->tempPath:Landroid/graphics/Path;

    .line 50
    invoke-direct {p0}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->tempRect:Landroid/graphics/Rect;

    .line 33
    new-instance p1, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$1;

    invoke-direct {p1, p0}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$1;-><init>(Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;)V

    iput-object p1, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->tempPath:Landroid/graphics/Path;

    .line 55
    invoke-direct {p0}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->init()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;)Landroid/graphics/Rect;
    .locals 0

    .line 28
    iget-object p0, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->tempRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;)[Landroid/text/style/ClickableSpan;
    .locals 0

    .line 28
    iget-object p0, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->clickableSpans:[Landroid/text/style/ClickableSpan;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;Ljava/lang/Object;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->getSpanRect(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->getSpanText(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;I)Z
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->handleClickSpanClicked(I)Z

    move-result p0

    return p0
.end method

.method private getSpanRect(Ljava/lang/Object;)V
    .locals 3

    .line 112
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 114
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 115
    instance-of v1, v0, Landroid/text/SpannableString;

    if-nez v1, :cond_0

    return-void

    .line 119
    :cond_0
    check-cast v0, Landroid/text/SpannableString;

    .line 121
    invoke-virtual {v0, p1}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 122
    invoke-virtual {v0, p1}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    .line 124
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v2, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->tempPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1, p1, v2}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 129
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->tempRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->getTotalPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 130
    iget-object p1, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->tempRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->getTotalPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 131
    iget-object p1, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->tempRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->getTotalPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 132
    iget-object p1, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->tempRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->getTotalPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method private getSpanText(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 2

    .line 136
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 138
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 139
    instance-of v1, v0, Landroid/text/SpannableString;

    if-nez v1, :cond_0

    const-string p1, ""

    return-object p1

    .line 143
    :cond_0
    check-cast v0, Landroid/text/SpannableString;

    .line 145
    invoke-virtual {v0, p1}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 146
    invoke-virtual {v0, p1}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    .line 148
    invoke-virtual {v0, v1, p1}, Landroid/text/SpannableString;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method private handleClickSpanClicked(I)Z
    .locals 2

    .line 101
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->clickableSpans:[Landroid/text/style/ClickableSpan;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    aget-object p1, v0, p1

    .line 106
    invoke-virtual {p1, p0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private init()V
    .locals 1

    .line 59
    new-instance v0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$ClickSpansTouchHelper;

    invoke-direct {v0, p0, p0}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$ClickSpansTouchHelper;-><init>(Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;Landroid/view/View;)V

    iput-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->clickSpansTouchHelper:Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$ClickSpansTouchHelper;

    .line 60
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->clickSpansTouchHelper:Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$ClickSpansTouchHelper;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    const/4 v0, 0x1

    .line 61
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 62
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->clickSpansTouchHelper:Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$ClickSpansTouchHelper;

    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$ClickSpansTouchHelper;->invalidateRoot()V

    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 67
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->clickSpansTouchHelper:Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$ClickSpansTouchHelper;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$ClickSpansTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 72
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->clickSpansTouchHelper:Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$ClickSpansTouchHelper;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$ClickSpansTouchHelper;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public getClickableSpans()[Landroid/text/style/ClickableSpan;
    .locals 4

    .line 91
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 92
    instance-of v1, v0, Landroid/text/SpannableString;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 96
    :cond_0
    check-cast v0, Landroid/text/SpannableString;

    const/4 v1, 0x0

    .line 97
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const-class v3, Landroid/text/style/ClickableSpan;

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    return-object v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .line 77
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 78
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->clickSpansTouchHelper:Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$ClickSpansTouchHelper;

    invoke-virtual {v0, p1, p2, p3}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$ClickSpansTouchHelper;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 83
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 84
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->getClickableSpans()[Landroid/text/style/ClickableSpan;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->clickableSpans:[Landroid/text/style/ClickableSpan;

    .line 85
    iget-object p1, p0, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->clickSpansTouchHelper:Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$ClickSpansTouchHelper;

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p1}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan$ClickSpansTouchHelper;->invalidateRoot()V

    :cond_0
    return-void
.end method
