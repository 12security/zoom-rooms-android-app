.class public abstract Landroidx/emoji/text/EmojiCompat$Config;
.super Ljava/lang/Object;
.source "EmojiCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji/text/EmojiCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Config"
.end annotation


# instance fields
.field mEmojiAsDefaultStyleExceptions:[I

.field mEmojiSpanIndicatorColor:I

.field mEmojiSpanIndicatorEnabled:Z

.field mInitCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/emoji/text/EmojiCompat$InitCallback;",
            ">;"
        }
    .end annotation
.end field

.field mMetadataLoadStrategy:I

.field final mMetadataLoader:Landroidx/emoji/text/EmojiCompat$MetadataRepoLoader;

.field mReplaceAll:Z

.field mUseEmojiAsDefaultStyle:Z


# direct methods
.method protected constructor <init>(Landroidx/emoji/text/EmojiCompat$MetadataRepoLoader;)V
    .locals 1
    .param p1    # Landroidx/emoji/text/EmojiCompat$MetadataRepoLoader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 917
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0xff0100

    .line 907
    iput v0, p0, Landroidx/emoji/text/EmojiCompat$Config;->mEmojiSpanIndicatorColor:I

    const/4 v0, 0x0

    .line 909
    iput v0, p0, Landroidx/emoji/text/EmojiCompat$Config;->mMetadataLoadStrategy:I

    const-string v0, "metadataLoader cannot be null."

    .line 918
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    iput-object p1, p0, Landroidx/emoji/text/EmojiCompat$Config;->mMetadataLoader:Landroidx/emoji/text/EmojiCompat$MetadataRepoLoader;

    return-void
.end method


# virtual methods
.method protected final getMetadataRepoLoader()Landroidx/emoji/text/EmojiCompat$MetadataRepoLoader;
    .locals 1

    .line 1088
    iget-object v0, p0, Landroidx/emoji/text/EmojiCompat$Config;->mMetadataLoader:Landroidx/emoji/text/EmojiCompat$MetadataRepoLoader;

    return-object v0
.end method

.method public registerInitCallback(Landroidx/emoji/text/EmojiCompat$InitCallback;)Landroidx/emoji/text/EmojiCompat$Config;
    .locals 1
    .param p1    # Landroidx/emoji/text/EmojiCompat$InitCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "initCallback cannot be null"

    .line 930
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    iget-object v0, p0, Landroidx/emoji/text/EmojiCompat$Config;->mInitCallbacks:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 932
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Landroidx/emoji/text/EmojiCompat$Config;->mInitCallbacks:Ljava/util/Set;

    .line 935
    :cond_0
    iget-object v0, p0, Landroidx/emoji/text/EmojiCompat$Config;->mInitCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setEmojiSpanIndicatorColor(I)Landroidx/emoji/text/EmojiCompat$Config;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1039
    iput p1, p0, Landroidx/emoji/text/EmojiCompat$Config;->mEmojiSpanIndicatorColor:I

    return-object p0
.end method

.method public setEmojiSpanIndicatorEnabled(Z)Landroidx/emoji/text/EmojiCompat$Config;
    .locals 0

    .line 1028
    iput-boolean p1, p0, Landroidx/emoji/text/EmojiCompat$Config;->mEmojiSpanIndicatorEnabled:Z

    return-object p0
.end method

.method public setMetadataLoadStrategy(I)Landroidx/emoji/text/EmojiCompat$Config;
    .locals 0

    .line 1080
    iput p1, p0, Landroidx/emoji/text/EmojiCompat$Config;->mMetadataLoadStrategy:I

    return-object p0
.end method

.method public setReplaceAll(Z)Landroidx/emoji/text/EmojiCompat$Config;
    .locals 0

    .line 965
    iput-boolean p1, p0, Landroidx/emoji/text/EmojiCompat$Config;->mReplaceAll:Z

    return-object p0
.end method

.method public setUseEmojiAsDefaultStyle(Z)Landroidx/emoji/text/EmojiCompat$Config;
    .locals 1

    const/4 v0, 0x0

    .line 985
    invoke-virtual {p0, p1, v0}, Landroidx/emoji/text/EmojiCompat$Config;->setUseEmojiAsDefaultStyle(ZLjava/util/List;)Landroidx/emoji/text/EmojiCompat$Config;

    move-result-object p1

    return-object p1
.end method

.method public setUseEmojiAsDefaultStyle(ZLjava/util/List;)Landroidx/emoji/text/EmojiCompat$Config;
    .locals 3
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/emoji/text/EmojiCompat$Config;"
        }
    .end annotation

    .line 1005
    iput-boolean p1, p0, Landroidx/emoji/text/EmojiCompat$Config;->mUseEmojiAsDefaultStyle:Z

    .line 1006
    iget-boolean p1, p0, Landroidx/emoji/text/EmojiCompat$Config;->mUseEmojiAsDefaultStyle:Z

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1007
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/emoji/text/EmojiCompat$Config;->mEmojiAsDefaultStyleExceptions:[I

    const/4 p1, 0x0

    .line 1009
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1010
    iget-object v1, p0, Landroidx/emoji/text/EmojiCompat$Config;->mEmojiAsDefaultStyleExceptions:[I

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, p1

    move p1, v2

    goto :goto_0

    .line 1012
    :cond_0
    iget-object p1, p0, Landroidx/emoji/text/EmojiCompat$Config;->mEmojiAsDefaultStyleExceptions:[I

    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 1014
    iput-object p1, p0, Landroidx/emoji/text/EmojiCompat$Config;->mEmojiAsDefaultStyleExceptions:[I

    :goto_1
    return-object p0
.end method

.method public unregisterInitCallback(Landroidx/emoji/text/EmojiCompat$InitCallback;)Landroidx/emoji/text/EmojiCompat$Config;
    .locals 1
    .param p1    # Landroidx/emoji/text/EmojiCompat$InitCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "initCallback cannot be null"

    .line 948
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    iget-object v0, p0, Landroidx/emoji/text/EmojiCompat$Config;->mInitCallbacks:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 950
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method
