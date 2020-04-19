.class public Lus/zoom/androidlib/widget/ZMTextViewWithImages;
.super Landroid/widget/TextView;
.source "ZMTextViewWithImages.java"


# static fields
.field private static final spannableFactory:Landroid/text/Spannable$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v0

    sput-object v0, Lus/zoom/androidlib/widget/ZMTextViewWithImages;->spannableFactory:Landroid/text/Spannable$Factory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private static addImages(Landroid/content/Context;Landroid/text/Spannable;)Z
    .locals 10

    const-string v0, "\\Q[img src=\\E([a-zA-Z0-9_]+?)\\Q/]\\E"

    .line 36
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 39
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 40
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 42
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    const-class v5, Landroid/text/style/ImageSpan;

    invoke-interface {p1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ImageSpan;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x1

    if-ge v5, v4, :cond_2

    aget-object v7, v3, v5

    .line 43
    invoke-interface {p1, v7}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    if-lt v8, v9, :cond_1

    .line 44
    invoke-interface {p1, v7}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v9

    if-gt v8, v9, :cond_1

    .line 46
    invoke-interface {p1, v7}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    const/4 v3, 0x1

    .line 52
    :goto_2
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->start(I)I

    move-result v4

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->end(I)I

    move-result v5

    invoke-interface {p1, v4, v5}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v7, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v4, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v3, :cond_0

    .line 56
    new-instance v2, Landroid/text/style/ImageSpan;

    invoke-direct {v2, p0, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    .line 57
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 58
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    const/16 v5, 0x21

    .line 56
    invoke-interface {p1, v2, v3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method private static getTextWithImages(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/text/Spannable;
    .locals 1

    .line 67
    sget-object v0, Lus/zoom/androidlib/widget/ZMTextViewWithImages;->spannableFactory:Landroid/text/Spannable$Factory;

    invoke-virtual {v0, p1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object p1

    .line 68
    invoke-static {p0, p1}, Lus/zoom/androidlib/widget/ZMTextViewWithImages;->addImages(Landroid/content/Context;Landroid/text/Spannable;)Z

    return-object p1
.end method


# virtual methods
.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 29
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMTextViewWithImages;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lus/zoom/androidlib/widget/ZMTextViewWithImages;->getTextWithImages(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object p1

    .line 30
    sget-object p2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method
