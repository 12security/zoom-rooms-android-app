.class Landroidx/emoji/text/EmojiCompat$CompatInternal;
.super Ljava/lang/Object;
.source "EmojiCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji/text/EmojiCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompatInternal"
.end annotation


# instance fields
.field final mEmojiCompat:Landroidx/emoji/text/EmojiCompat;


# direct methods
.method constructor <init>(Landroidx/emoji/text/EmojiCompat;)V
    .locals 0

    .line 1146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1147
    iput-object p1, p0, Landroidx/emoji/text/EmojiCompat$CompatInternal;->mEmojiCompat:Landroidx/emoji/text/EmojiCompat;

    return-void
.end method


# virtual methods
.method getAssetSignature()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method hasEmojiGlyph(Ljava/lang/CharSequence;)Z
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method hasEmojiGlyph(Ljava/lang/CharSequence;I)Z
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method loadMetadata()V
    .locals 1

    .line 1152
    iget-object v0, p0, Landroidx/emoji/text/EmojiCompat$CompatInternal;->mEmojiCompat:Landroidx/emoji/text/EmojiCompat;

    invoke-virtual {v0}, Landroidx/emoji/text/EmojiCompat;->onMetadataLoadSuccess()V

    return-void
.end method

.method process(Ljava/lang/CharSequence;IIIZ)Ljava/lang/CharSequence;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    return-object p1
.end method

.method setGlyphChecker(Landroidx/emoji/text/EmojiProcessor$GlyphChecker;)V
    .locals 0
    .param p1    # Landroidx/emoji/text/EmojiProcessor$GlyphChecker;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method updateEditorInfoAttrs(Landroid/view/inputmethod/EditorInfo;)V
    .locals 0
    .param p1    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
