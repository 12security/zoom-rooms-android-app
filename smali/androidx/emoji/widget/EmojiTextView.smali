.class public Landroidx/emoji/widget/EmojiTextView;
.super Landroid/widget/TextView;
.source "EmojiTextView.java"


# instance fields
.field private mEmojiTextViewHelper:Landroidx/emoji/widget/EmojiTextViewHelper;

.field private mInitialized:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-direct {p0}, Landroidx/emoji/widget/EmojiTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    invoke-direct {p0}, Landroidx/emoji/widget/EmojiTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    invoke-direct {p0}, Landroidx/emoji/widget/EmojiTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    invoke-direct {p0}, Landroidx/emoji/widget/EmojiTextView;->init()V

    return-void
.end method

.method private getEmojiTextViewHelper()Landroidx/emoji/widget/EmojiTextViewHelper;
    .locals 1

    .line 81
    iget-object v0, p0, Landroidx/emoji/widget/EmojiTextView;->mEmojiTextViewHelper:Landroidx/emoji/widget/EmojiTextViewHelper;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Landroidx/emoji/widget/EmojiTextViewHelper;

    invoke-direct {v0, p0}, Landroidx/emoji/widget/EmojiTextViewHelper;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/emoji/widget/EmojiTextView;->mEmojiTextViewHelper:Landroidx/emoji/widget/EmojiTextViewHelper;

    .line 84
    :cond_0
    iget-object v0, p0, Landroidx/emoji/widget/EmojiTextView;->mEmojiTextViewHelper:Landroidx/emoji/widget/EmojiTextViewHelper;

    return-object v0
.end method

.method private init()V
    .locals 1

    .line 63
    iget-boolean v0, p0, Landroidx/emoji/widget/EmojiTextView;->mInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Landroidx/emoji/widget/EmojiTextView;->mInitialized:Z

    .line 65
    invoke-direct {p0}, Landroidx/emoji/widget/EmojiTextView;->getEmojiTextViewHelper()Landroidx/emoji/widget/EmojiTextViewHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji/widget/EmojiTextViewHelper;->updateTransformationMethod()V

    :cond_0
    return-void
.end method


# virtual methods
.method public setAllCaps(Z)V
    .locals 1

    .line 76
    invoke-super {p0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 77
    invoke-direct {p0}, Landroidx/emoji/widget/EmojiTextView;->getEmojiTextViewHelper()Landroidx/emoji/widget/EmojiTextViewHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/emoji/widget/EmojiTextViewHelper;->setAllCaps(Z)V

    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 94
    invoke-static {p0, p1}, Landroidx/core/widget/TextViewCompat;->wrapCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    .line 93
    invoke-super {p0, p1}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Landroidx/emoji/widget/EmojiTextView;->getEmojiTextViewHelper()Landroidx/emoji/widget/EmojiTextViewHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/emoji/widget/EmojiTextViewHelper;->getFilters([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method
