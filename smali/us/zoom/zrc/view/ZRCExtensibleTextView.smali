.class public Lus/zoom/zrc/view/ZRCExtensibleTextView;
.super Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;
.source "ZRCExtensibleTextView.java"


# static fields
.field private static final MAX_DISPLAY_LINE_COUNT:I = 0x6


# instance fields
.field private mMoreText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCExtensibleTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 50
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCExtensibleTextView;->init()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/ZRCExtensibleTextView;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCExtensibleTextView;->showPopupWindow()V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/ZRCExtensibleTextView;[I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/ZRCExtensibleTextView;->getPopupLocationOnScreen([I)V

    return-void
.end method

.method private getMoreClickableText(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 4

    .line 79
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCExtensibleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    .line 82
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    .line 84
    sget v2, Lus/zoom/zrcbox/R$string;->meeting_info_dial_number_more:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 86
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 87
    new-instance v1, Lus/zoom/zrc/view/ZRCExtensibleTextView$1;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/ZRCExtensibleTextView$1;-><init>(Lus/zoom/zrc/view/ZRCExtensibleTextView;)V

    const/16 v3, 0x21

    invoke-virtual {v2, v1, p1, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v2
.end method

.method private getPopupLocationInWindow([I)V
    .locals 7

    .line 109
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCExtensibleTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 110
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCExtensibleTextView;->getLineCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 111
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ZRCExtensibleTextView;->getLocationInWindow([I)V

    const/4 v3, 0x0

    .line 112
    aget v4, p1, v3

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCExtensibleTextView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v5, v6}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    add-int/2addr v4, v5

    aput v4, p1, v3

    .line 113
    aget v3, p1, v2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    add-int/2addr v3, v0

    aput v3, p1, v2

    return-void
.end method

.method private getPopupLocationOnScreen([I)V
    .locals 7

    .line 117
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCExtensibleTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 118
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCExtensibleTextView;->getLineCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 119
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ZRCExtensibleTextView;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    .line 120
    aget v4, p1, v3

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCExtensibleTextView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v5, v6}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    add-int/2addr v4, v5

    aput v4, p1, v3

    .line 121
    aget v3, p1, v2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    add-int/2addr v3, v0

    aput v3, p1, v2

    return-void
.end method

.method private init()V
    .locals 1

    .line 55
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/ZRCExtensibleTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method private showPopupWindow()V
    .locals 10

    .line 126
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCExtensibleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$layout;->meeting_info_popup_more_number:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 127
    sget v1, Lus/zoom/zrcbox/R$id;->more_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 128
    sget v2, Lus/zoom/zrcbox/R$id;->iv_arrow:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 129
    iget-object v3, p0, Lus/zoom/zrc/view/ZRCExtensibleTextView;->mMoreText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 131
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCExtensibleTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 132
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v3, 0x1

    .line 133
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 134
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 136
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCExtensibleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lus/zoom/zrcbox/R$dimen;->zrc_meeting_info_more_number_popup_window_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 v4, -0x2

    .line 137
    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 138
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x2

    .line 140
    new-array v6, v4, [I

    .line 141
    invoke-direct {p0, v6}, Lus/zoom/zrc/view/ZRCExtensibleTextView;->getPopupLocationInWindow([I)V

    .line 142
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    aget v8, v6, v3

    const/high16 v9, -0x80000000

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/view/View;->measure(II)V

    .line 143
    aget v5, v6, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    div-int/2addr v7, v4

    sub-int/2addr v5, v7

    .line 144
    aget v3, v6, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCExtensibleTextView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v4, v7}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    sub-int/2addr v3, v4

    const v4, 0x800033

    .line 146
    invoke-virtual {v1, p0, v4, v5, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 148
    invoke-static {v1}, Lus/zoom/zrc/utils/PolycomTrioUtils;->setImmersiveModeForPolycomTrio(Landroid/widget/PopupWindow;)V

    .line 150
    new-instance v1, Lus/zoom/zrc/view/ZRCExtensibleTextView$2;

    invoke-direct {v1, p0, v6, v0, v2}, Lus/zoom/zrc/view/ZRCExtensibleTextView$2;-><init>(Lus/zoom/zrc/view/ZRCExtensibleTextView;[ILandroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 60
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 61
    :goto_0
    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x6

    if-ge v2, v4, :cond_2

    const-string v4, "\n"

    add-int/lit8 v3, v3, 0x1

    .line 67
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-lez v3, :cond_3

    .line 70
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v3, v3, 0x1

    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCExtensibleTextView;->mMoreText:Ljava/lang/CharSequence;

    .line 72
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/ZRCExtensibleTextView;->getMoreClickableText(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_2

    .line 74
    :cond_3
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/widget/ZRCTextViewWithClickableSpan;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :goto_2
    return-void
.end method
