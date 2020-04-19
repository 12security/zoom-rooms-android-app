.class public Lus/zoom/androidlib/util/ZMHtmlUtil;
.super Ljava/lang/Object;
.source "ZMHtmlUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/util/ZMHtmlUtil$URLSpanToWebView;,
        Lus/zoom/androidlib/util/ZMHtmlUtil$OnURLSpanClickListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromHtml(Ljava/lang/String;Lus/zoom/androidlib/util/ZMHtmlUtil$OnURLSpanClickListener;)Ljava/lang/CharSequence;
    .locals 10
    .param p1    # Lus/zoom/androidlib/util/ZMHtmlUtil$OnURLSpanClickListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 13
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    .line 14
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 15
    instance-of v1, p0, Landroid/text/Spannable;

    if-eqz v1, :cond_2

    .line 16
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 17
    move-object v2, p0

    check-cast v2, Landroid/text/Spannable;

    .line 18
    const-class v3, Landroid/text/style/URLSpan;

    const/4 v4, 0x0

    invoke-interface {v2, v4, v1, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    .line 19
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 20
    array-length v3, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .line 21
    invoke-interface {v2, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 22
    invoke-interface {v2, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v6, v8, :cond_1

    if-eq v7, v8, :cond_1

    if-le v6, v7, :cond_0

    goto :goto_1

    .line 26
    :cond_0
    new-instance v8, Lus/zoom/androidlib/util/ZMHtmlUtil$1;

    invoke-virtual {v5}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v6, v7}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v5, v9, p1}, Lus/zoom/androidlib/util/ZMHtmlUtil$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lus/zoom/androidlib/util/ZMHtmlUtil$OnURLSpanClickListener;)V

    const/16 v5, 0x22

    .line 34
    invoke-virtual {v0, v8, v6, v7, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0

    :cond_2
    return-object v0
.end method
