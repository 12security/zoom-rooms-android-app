.class final Landroidx/emoji/widget/EmojiInputFilter;
.super Ljava/lang/Object;
.source "EmojiInputFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji/widget/EmojiInputFilter$InitCallbackImpl;
    }
.end annotation


# instance fields
.field private mInitCallback:Landroidx/emoji/text/EmojiCompat$InitCallback;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroidx/emoji/widget/EmojiInputFilter;->mTextView:Landroid/widget/TextView;

    return-void
.end method

.method private getInitCallback()Landroidx/emoji/text/EmojiCompat$InitCallback;
    .locals 2

    .line 93
    iget-object v0, p0, Landroidx/emoji/widget/EmojiInputFilter;->mInitCallback:Landroidx/emoji/text/EmojiCompat$InitCallback;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Landroidx/emoji/widget/EmojiInputFilter$InitCallbackImpl;

    iget-object v1, p0, Landroidx/emoji/widget/EmojiInputFilter;->mTextView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroidx/emoji/widget/EmojiInputFilter$InitCallbackImpl;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/emoji/widget/EmojiInputFilter;->mInitCallback:Landroidx/emoji/text/EmojiCompat$InitCallback;

    .line 96
    :cond_0
    iget-object v0, p0, Landroidx/emoji/widget/EmojiInputFilter;->mInitCallback:Landroidx/emoji/text/EmojiCompat$InitCallback;

    return-object v0
.end method

.method static updateSelection(Landroid/text/Spannable;II)V
    .locals 0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 127
    invoke-static {p0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    .line 129
    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    :cond_1
    if-ltz p2, :cond_2

    .line 131
    invoke-static {p0, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2

    .line 56
    iget-object v0, p0, Landroidx/emoji/widget/EmojiInputFilter;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 60
    :cond_0
    invoke-static {}, Landroidx/emoji/text/EmojiCompat;->get()Landroidx/emoji/text/EmojiCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji/text/EmojiCompat;->getLoadState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    packed-switch v0, :pswitch_data_0

    return-object p1

    :pswitch_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p6, :cond_1

    if-nez p5, :cond_1

    .line 63
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p4

    if-nez p4, :cond_1

    .line 64
    iget-object p4, p0, Landroidx/emoji/widget/EmojiInputFilter;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p4

    if-ne p1, p4, :cond_1

    const/4 v0, 0x0

    :cond_1
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-nez p2, :cond_2

    .line 72
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-ne p3, p4, :cond_2

    goto :goto_0

    .line 75
    :cond_2
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 77
    :goto_0
    invoke-static {}, Landroidx/emoji/text/EmojiCompat;->get()Landroidx/emoji/text/EmojiCompat;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    invoke-virtual {p2, p1, v1, p3}, Landroidx/emoji/text/EmojiCompat;->process(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_3
    return-object p1

    .line 83
    :cond_4
    :pswitch_1
    invoke-static {}, Landroidx/emoji/text/EmojiCompat;->get()Landroidx/emoji/text/EmojiCompat;

    move-result-object p2

    invoke-direct {p0}, Landroidx/emoji/widget/EmojiInputFilter;->getInitCallback()Landroidx/emoji/text/EmojiCompat$InitCallback;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/emoji/text/EmojiCompat;->registerInitCallback(Landroidx/emoji/text/EmojiCompat$InitCallback;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
