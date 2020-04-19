.class public Lus/zoom/androidlib/widget/ZMSpanny;
.super Landroid/text/SpannableStringBuilder;
.source "ZMSpanny.java"


# instance fields
.field private flag:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    .line 22
    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v0, 0x21

    .line 19
    iput v0, p0, Lus/zoom/androidlib/widget/ZMSpanny;->flag:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 p1, 0x21

    .line 19
    iput p1, p0, Lus/zoom/androidlib/widget/ZMSpanny;->flag:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/Object;)V
    .locals 1

    .line 37
    invoke-direct {p0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v0, 0x21

    .line 19
    iput v0, p0, Lus/zoom/androidlib/widget/ZMSpanny;->flag:I

    .line 38
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Lus/zoom/androidlib/widget/ZMSpanny;->setSpan(Ljava/lang/Object;II)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/CharSequence;[Ljava/lang/Object;)V
    .locals 4

    .line 30
    invoke-direct {p0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 p1, 0x21

    .line 19
    iput p1, p0, Lus/zoom/androidlib/widget/ZMSpanny;->flag:I

    .line 31
    array-length p1, p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v2, p2, v1

    .line 32
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMSpanny;->length()I

    move-result v3

    invoke-direct {p0, v2, v0, v3}, Lus/zoom/androidlib/widget/ZMSpanny;->setSpan(Ljava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setSpan(Ljava/lang/Object;II)V
    .locals 1

    .line 98
    iget v0, p0, Lus/zoom/androidlib/widget/ZMSpanny;->flag:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lus/zoom/androidlib/widget/ZMSpanny;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public static spanText(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/text/SpannableString;
    .locals 3

    .line 140
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 141
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const/4 v1, 0x0

    const/16 v2, 0x21

    invoke-virtual {v0, p1, v1, p0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static varargs spanText(Ljava/lang/CharSequence;[Ljava/lang/Object;)Landroid/text/SpannableString;
    .locals 7

    .line 132
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 133
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 134
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v0, v4, v2, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public bridge synthetic append(Ljava/lang/CharSequence;)Landroid/text/Editable;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 17
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/ZMSpanny;->append(Ljava/lang/CharSequence;)Lus/zoom/androidlib/widget/ZMSpanny;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 17
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/ZMSpanny;->append(Ljava/lang/CharSequence;)Lus/zoom/androidlib/widget/ZMSpanny;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/ZMSpanny;->append(Ljava/lang/CharSequence;)Lus/zoom/androidlib/widget/ZMSpanny;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/CharSequence;)Lus/zoom/androidlib/widget/ZMSpanny;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 78
    invoke-super {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;Landroid/text/style/ImageSpan;)Lus/zoom/androidlib/widget/ZMSpanny;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/ZMSpanny;->append(Ljava/lang/CharSequence;)Lus/zoom/androidlib/widget/ZMSpanny;

    .line 68
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMSpanny;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMSpanny;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Lus/zoom/androidlib/widget/ZMSpanny;->setSpan(Ljava/lang/Object;II)V

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;Ljava/lang/Object;)Lus/zoom/androidlib/widget/ZMSpanny;
    .locals 1

    .line 56
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/ZMSpanny;->append(Ljava/lang/CharSequence;)Lus/zoom/androidlib/widget/ZMSpanny;

    .line 57
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMSpanny;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMSpanny;->length()I

    move-result p1

    invoke-direct {p0, p2, v0, p1}, Lus/zoom/androidlib/widget/ZMSpanny;->setSpan(Ljava/lang/Object;II)V

    return-object p0
.end method

.method public varargs append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lus/zoom/androidlib/widget/ZMSpanny;
    .locals 5

    .line 48
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/ZMSpanny;->append(Ljava/lang/CharSequence;)Lus/zoom/androidlib/widget/ZMSpanny;

    .line 49
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 50
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMSpanny;->length()I

    move-result v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMSpanny;->length()I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lus/zoom/androidlib/widget/ZMSpanny;->setSpan(Ljava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setFlag(I)V
    .locals 0

    .line 89
    iput p1, p0, Lus/zoom/androidlib/widget/ZMSpanny;->flag:I

    return-void
.end method

.method public varargs setSpans(Ljava/lang/CharSequence;[Landroid/text/style/CharacterStyle;)Lus/zoom/androidlib/widget/ZMSpanny;
    .locals 6

    if-eqz p2, :cond_4

    .line 111
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 115
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMSpanny;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 117
    array-length v2, p2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, p2, v3

    .line 118
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/2addr v5, v1

    invoke-direct {p0, v4, v1, v5}, Lus/zoom/androidlib/widget/ZMSpanny;->setSpan(Ljava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 119
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_3
    return-object p0

    :cond_4
    :goto_2
    return-object p0
.end method
