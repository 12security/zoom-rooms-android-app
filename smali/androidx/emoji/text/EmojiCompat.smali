.class public Landroidx/emoji/text/EmojiCompat;
.super Ljava/lang/Object;
.source "EmojiCompat.java"


# annotations
.annotation build Landroidx/annotation/AnyThread;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji/text/EmojiCompat$CompatInternal19;,
        Landroidx/emoji/text/EmojiCompat$CompatInternal;,
        Landroidx/emoji/text/EmojiCompat$ListenerDispatcher;,
        Landroidx/emoji/text/EmojiCompat$Config;,
        Landroidx/emoji/text/EmojiCompat$MetadataRepoLoaderCallback;,
        Landroidx/emoji/text/EmojiCompat$MetadataRepoLoader;,
        Landroidx/emoji/text/EmojiCompat$InitCallback;,
        Landroidx/emoji/text/EmojiCompat$SpanFactory;,
        Landroidx/emoji/text/EmojiCompat$LoadStrategy;,
        Landroidx/emoji/text/EmojiCompat$ReplaceStrategy;,
        Landroidx/emoji/text/EmojiCompat$LoadState;
    }
.end annotation


# static fields
.field public static final EDITOR_INFO_METAVERSION_KEY:Ljava/lang/String; = "android.support.text.emoji.emojiCompat_metadataVersion"

.field public static final EDITOR_INFO_REPLACE_ALL_KEY:Ljava/lang/String; = "android.support.text.emoji.emojiCompat_replaceAll"

.field static final EMOJI_COUNT_UNLIMITED:I = 0x7fffffff
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final LOAD_STATE_DEFAULT:I = 0x3

.field public static final LOAD_STATE_FAILED:I = 0x2

.field public static final LOAD_STATE_LOADING:I = 0x0

.field public static final LOAD_STATE_SUCCEEDED:I = 0x1

.field public static final LOAD_STRATEGY_DEFAULT:I = 0x0

.field public static final LOAD_STRATEGY_MANUAL:I = 0x1

.field public static final REPLACE_STRATEGY_ALL:I = 0x1

.field public static final REPLACE_STRATEGY_DEFAULT:I = 0x0

.field public static final REPLACE_STRATEGY_NON_EXISTENT:I = 0x2

.field private static volatile sInstance:Landroidx/emoji/text/EmojiCompat;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "sInstanceLock"
    .end annotation
.end field

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field final mEmojiAsDefaultStyleExceptions:[I

.field private final mEmojiSpanIndicatorColor:I

.field private final mEmojiSpanIndicatorEnabled:Z

.field private final mHelper:Landroidx/emoji/text/EmojiCompat$CompatInternal;

.field private final mInitCallbacks:Ljava/util/Set;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mInitLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/emoji/text/EmojiCompat$InitCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private mLoadState:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mInitLock"
    .end annotation
.end field

.field private final mMainHandler:Landroid/os/Handler;

.field private final mMetadataLoadStrategy:I

.field final mMetadataLoader:Landroidx/emoji/text/EmojiCompat$MetadataRepoLoader;

.field final mReplaceAll:Z

.field final mUseEmojiAsDefaultStyle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 196
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/emoji/text/EmojiCompat;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroidx/emoji/text/EmojiCompat$Config;)V
    .locals 2
    .param p1    # Landroidx/emoji/text/EmojiCompat$Config;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroidx/emoji/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    const/4 v0, 0x3

    .line 266
    iput v0, p0, Landroidx/emoji/text/EmojiCompat;->mLoadState:I

    .line 267
    iget-boolean v0, p1, Landroidx/emoji/text/EmojiCompat$Config;->mReplaceAll:Z

    iput-boolean v0, p0, Landroidx/emoji/text/EmojiCompat;->mReplaceAll:Z

    .line 268
    iget-boolean v0, p1, Landroidx/emoji/text/EmojiCompat$Config;->mUseEmojiAsDefaultStyle:Z

    iput-boolean v0, p0, Landroidx/emoji/text/EmojiCompat;->mUseEmojiAsDefaultStyle:Z

    .line 269
    iget-object v0, p1, Landroidx/emoji/text/EmojiCompat$Config;->mEmojiAsDefaultStyleExceptions:[I

    iput-object v0, p0, Landroidx/emoji/text/EmojiCompat;->mEmojiAsDefaultStyleExceptions:[I

    .line 270
    iget-boolean v0, p1, Landroidx/emoji/text/EmojiCompat$Config;->mEmojiSpanIndicatorEnabled:Z

    iput-boolean v0, p0, Landroidx/emoji/text/EmojiCompat;->mEmojiSpanIndicatorEnabled:Z

    .line 271
    iget v0, p1, Landroidx/emoji/text/EmojiCompat$Config;->mEmojiSpanIndicatorColor:I

    iput v0, p0, Landroidx/emoji/text/EmojiCompat;->mEmojiSpanIndicatorColor:I

    .line 272
    iget-object v0, p1, Landroidx/emoji/text/EmojiCompat$Config;->mMetadataLoader:Landroidx/emoji/text/EmojiCompat$MetadataRepoLoader;

    iput-object v0, p0, Landroidx/emoji/text/EmojiCompat;->mMetadataLoader:Landroidx/emoji/text/EmojiCompat$MetadataRepoLoader;

    .line 273
    iget v0, p1, Landroidx/emoji/text/EmojiCompat$Config;->mMetadataLoadStrategy:I

    iput v0, p0, Landroidx/emoji/text/EmojiCompat;->mMetadataLoadStrategy:I

    .line 274
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/emoji/text/EmojiCompat;->mMainHandler:Landroid/os/Handler;

    .line 275
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Landroidx/emoji/text/EmojiCompat;->mInitCallbacks:Ljava/util/Set;

    .line 276
    iget-object v0, p1, Landroidx/emoji/text/EmojiCompat$Config;->mInitCallbacks:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/emoji/text/EmojiCompat$Config;->mInitCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    iget-object v0, p0, Landroidx/emoji/text/EmojiCompat;->mInitCallbacks:Ljava/util/Set;

    iget-object p1, p1, Landroidx/emoji/text/EmojiCompat$Config;->mInitCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 279
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-ge p1, v0, :cond_1

    new-instance p1, Landroidx/emoji/text/EmojiCompat$CompatInternal;

    invoke-direct {p1, p0}, Landroidx/emoji/text/EmojiCompat$CompatInternal;-><init>(Landroidx/emoji/text/EmojiCompat;)V

    goto :goto_0

    :cond_1
    new-instance p1, Landroidx/emoji/text/EmojiCompat$CompatInternal19;

    invoke-direct {p1, p0}, Landroidx/emoji/text/EmojiCompat$CompatInternal19;-><init>(Landroidx/emoji/text/EmojiCompat;)V

    :goto_0
    iput-object p1, p0, Landroidx/emoji/text/EmojiCompat;->mHelper:Landroidx/emoji/text/EmojiCompat$CompatInternal;

    .line 281
    invoke-direct {p0}, Landroidx/emoji/text/EmojiCompat;->loadMetadata()V

    return-void
.end method

.method public static get()Landroidx/emoji/text/EmojiCompat;
    .locals 3

    .line 356
    sget-object v0, Landroidx/emoji/text/EmojiCompat;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 357
    :try_start_0
    sget-object v1, Landroidx/emoji/text/EmojiCompat;->sInstance:Landroidx/emoji/text/EmojiCompat;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "EmojiCompat is not initialized. Please call EmojiCompat.init() first"

    invoke-static {v1, v2}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 359
    sget-object v1, Landroidx/emoji/text/EmojiCompat;->sInstance:Landroidx/emoji/text/EmojiCompat;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 360
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static handleDeleteSurroundingText(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z
    .locals 2
    .param p0    # Landroid/view/inputmethod/InputConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/text/Editable;
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

    .line 574
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 575
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/emoji/text/EmojiProcessor;->handleDeleteSurroundingText(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static handleOnKeyDown(Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p0    # Landroid/text/Editable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 545
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 546
    invoke-static {p0, p1, p2}, Landroidx/emoji/text/EmojiProcessor;->handleOnKeyDown(Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static init(Landroidx/emoji/text/EmojiCompat$Config;)Landroidx/emoji/text/EmojiCompat;
    .locals 2
    .param p0    # Landroidx/emoji/text/EmojiCompat$Config;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 295
    sget-object v0, Landroidx/emoji/text/EmojiCompat;->sInstance:Landroidx/emoji/text/EmojiCompat;

    if-nez v0, :cond_1

    .line 296
    sget-object v0, Landroidx/emoji/text/EmojiCompat;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_0
    sget-object v1, Landroidx/emoji/text/EmojiCompat;->sInstance:Landroidx/emoji/text/EmojiCompat;

    if-nez v1, :cond_0

    .line 298
    new-instance v1, Landroidx/emoji/text/EmojiCompat;

    invoke-direct {v1, p0}, Landroidx/emoji/text/EmojiCompat;-><init>(Landroidx/emoji/text/EmojiCompat$Config;)V

    sput-object v1, Landroidx/emoji/text/EmojiCompat;->sInstance:Landroidx/emoji/text/EmojiCompat;

    .line 300
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 302
    :cond_1
    :goto_0
    sget-object p0, Landroidx/emoji/text/EmojiCompat;->sInstance:Landroidx/emoji/text/EmojiCompat;

    return-object p0
.end method

.method private isInitialized()Z
    .locals 2

    .line 502
    invoke-virtual {p0}, Landroidx/emoji/text/EmojiCompat;->getLoadState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private loadMetadata()V
    .locals 2

    .line 396
    iget-object v0, p0, Landroidx/emoji/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 398
    :try_start_0
    iget v0, p0, Landroidx/emoji/text/EmojiCompat;->mMetadataLoadStrategy:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 399
    iput v0, p0, Landroidx/emoji/text/EmojiCompat;->mLoadState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    :cond_0
    iget-object v0, p0, Landroidx/emoji/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 405
    invoke-virtual {p0}, Landroidx/emoji/text/EmojiCompat;->getLoadState()I

    move-result v0

    if-nez v0, :cond_1

    .line 406
    iget-object v0, p0, Landroidx/emoji/text/EmojiCompat;->mHelper:Landroidx/emoji/text/EmojiCompat$CompatInternal;

    invoke-virtual {v0}, Landroidx/emoji/text/EmojiCompat$CompatInternal;->loadMetadata()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 402
    iget-object v1, p0, Landroidx/emoji/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public static reset(Landroidx/emoji/text/EmojiCompat$Config;)Landroidx/emoji/text/EmojiCompat;
    .locals 2
    .param p0    # Landroidx/emoji/text/EmojiCompat$Config;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 315
    sget-object v0, Landroidx/emoji/text/EmojiCompat;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 316
    :try_start_0
    new-instance v1, Landroidx/emoji/text/EmojiCompat;

    invoke-direct {v1, p0}, Landroidx/emoji/text/EmojiCompat;-><init>(Landroidx/emoji/text/EmojiCompat$Config;)V

    sput-object v1, Landroidx/emoji/text/EmojiCompat;->sInstance:Landroidx/emoji/text/EmojiCompat;

    .line 317
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    sget-object p0, Landroidx/emoji/text/EmojiCompat;->sInstance:Landroidx/emoji/text/EmojiCompat;

    return-object p0

    :catchall_0
    move-exception p0

    .line 317
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static reset(Landroidx/emoji/text/EmojiCompat;)Landroidx/emoji/text/EmojiCompat;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 330
    sget-object v0, Landroidx/emoji/text/EmojiCompat;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 331
    :try_start_0
    sput-object p0, Landroidx/emoji/text/EmojiCompat;->sInstance:Landroidx/emoji/text/EmojiCompat;

    .line 332
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    sget-object p0, Landroidx/emoji/text/EmojiCompat;->sInstance:Landroidx/emoji/text/EmojiCompat;

    return-object p0

    :catchall_0
    move-exception p0

    .line 332
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public getAssetSignature()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 790
    invoke-direct {p0}, Landroidx/emoji/text/EmojiCompat;->isInitialized()Z

    move-result v0

    const-string v1, "Not initialized yet"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 791
    iget-object v0, p0, Landroidx/emoji/text/EmojiCompat;->mHelper:Landroidx/emoji/text/EmojiCompat$CompatInternal;

    invoke-virtual {v0}, Landroidx/emoji/text/EmojiCompat$CompatInternal;->getAssetSignature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getEmojiSpanIndicatorColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 520
    iget v0, p0, Landroidx/emoji/text/EmojiCompat;->mEmojiSpanIndicatorColor:I

    return v0
.end method

.method public getLoadState()I
    .locals 2

    .line 490
    iget-object v0, p0, Landroidx/emoji/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 492
    :try_start_0
    iget v0, p0, Landroidx/emoji/text/EmojiCompat;->mLoadState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    iget-object v1, p0, Landroidx/emoji/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/emoji/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public hasEmojiGlyph(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 593
    invoke-direct {p0}, Landroidx/emoji/text/EmojiCompat;->isInitialized()Z

    move-result v0

    const-string v1, "Not initialized yet"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    const-string v0, "sequence cannot be null"

    .line 594
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    iget-object v0, p0, Landroidx/emoji/text/EmojiCompat;->mHelper:Landroidx/emoji/text/EmojiCompat$CompatInternal;

    invoke-virtual {v0, p1}, Landroidx/emoji/text/EmojiCompat$CompatInternal;->hasEmojiGlyph(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public hasEmojiGlyph(Ljava/lang/CharSequence;I)Z
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 612
    invoke-direct {p0}, Landroidx/emoji/text/EmojiCompat;->isInitialized()Z

    move-result v0

    const-string v1, "Not initialized yet"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    const-string v0, "sequence cannot be null"

    .line 613
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    iget-object v0, p0, Landroidx/emoji/text/EmojiCompat;->mHelper:Landroidx/emoji/text/EmojiCompat$CompatInternal;

    invoke-virtual {v0, p1, p2}, Landroidx/emoji/text/EmojiCompat$CompatInternal;->hasEmojiGlyph(Ljava/lang/CharSequence;I)Z

    move-result p1

    return p1
.end method

.method isEmojiSpanIndicatorEnabled()Z
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 511
    iget-boolean v0, p0, Landroidx/emoji/text/EmojiCompat;->mEmojiSpanIndicatorEnabled:Z

    return v0
.end method

.method public load()V
    .locals 3

    .line 380
    iget v0, p0, Landroidx/emoji/text/EmojiCompat;->mMetadataLoadStrategy:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v0, "Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading"

    invoke-static {v2, v0}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 382
    invoke-direct {p0}, Landroidx/emoji/text/EmojiCompat;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 384
    :cond_1
    iget-object v0, p0, Landroidx/emoji/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 386
    :try_start_0
    iget v0, p0, Landroidx/emoji/text/EmojiCompat;->mLoadState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 389
    iget-object v0, p0, Landroidx/emoji/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 387
    :cond_2
    :try_start_1
    iput v1, p0, Landroidx/emoji/text/EmojiCompat;->mLoadState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 389
    iget-object v0, p0, Landroidx/emoji/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 392
    iget-object v0, p0, Landroidx/emoji/text/EmojiCompat;->mHelper:Landroidx/emoji/text/EmojiCompat$CompatInternal;

    invoke-virtual {v0}, Landroidx/emoji/text/EmojiCompat$CompatInternal;->loadMetadata()V

    return-void

    :catchall_0
    move-exception v0

    .line 389
    iget-object v1, p0, Landroidx/emoji/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method onMetadataLoadFailed(Ljava/lang/Throwable;)V
    .locals 4
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 428
    iget-object v1, p0, Landroidx/emoji/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x2

    .line 430
    :try_start_0
    iput v1, p0, Landroidx/emoji/text/EmojiCompat;->mLoadState:I

    .line 431
    iget-object v1, p0, Landroidx/emoji/text/EmojiCompat;->mInitCallbacks:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 432
    iget-object v1, p0, Landroidx/emoji/text/EmojiCompat;->mInitCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    iget-object v1, p0, Landroidx/emoji/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 436
    iget-object v1, p0, Landroidx/emoji/text/EmojiCompat;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Landroidx/emoji/text/EmojiCompat$ListenerDispatcher;

    iget v3, p0, Landroidx/emoji/text/EmojiCompat;->mLoadState:I

    invoke-direct {v2, v0, v3, p1}, Landroidx/emoji/text/EmojiCompat$ListenerDispatcher;-><init>(Ljava/util/Collection;ILjava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 434
    iget-object v0, p0, Landroidx/emoji/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method onMetadataLoadSuccess()V
    .locals 4

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 413
    iget-object v1, p0, Landroidx/emoji/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x1

    .line 415
    :try_start_0
    iput v1, p0, Landroidx/emoji/text/EmojiCompat;->mLoadState:I

    .line 416
    iget-object v1, p0, Landroidx/emoji/text/EmojiCompat;->mInitCallbacks:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 417
    iget-object v1, p0, Landroidx/emoji/text/EmojiCompat;->mInitCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    iget-object v1, p0, Landroidx/emoji/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 422
    iget-object v1, p0, Landroidx/emoji/text/EmojiCompat;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Landroidx/emoji/text/EmojiCompat$ListenerDispatcher;

    iget v3, p0, Landroidx/emoji/text/EmojiCompat;->mLoadState:I

    invoke-direct {v2, v0, v3}, Landroidx/emoji/text/EmojiCompat$ListenerDispatcher;-><init>(Ljava/util/Collection;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    .line 419
    iget-object v1, p0, Landroidx/emoji/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public process(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 633
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 634
    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Landroidx/emoji/text/EmojiCompat;->process(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public process(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 1
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
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    const v0, 0x7fffffff

    .line 666
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/emoji/text/EmojiCompat;->process(Ljava/lang/CharSequence;III)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public process(Ljava/lang/CharSequence;III)Ljava/lang/CharSequence;
    .locals 6
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
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 702
    invoke-virtual/range {v0 .. v5}, Landroidx/emoji/text/EmojiCompat;->process(Ljava/lang/CharSequence;IIII)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public process(Ljava/lang/CharSequence;IIII)Ljava/lang/CharSequence;
    .locals 7
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
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 742
    invoke-direct {p0}, Landroidx/emoji/text/EmojiCompat;->isInitialized()Z

    move-result v0

    const-string v1, "Not initialized yet"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    const-string v0, "start cannot be negative"

    .line 743
    invoke-static {p2, v0}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    const-string v0, "end cannot be negative"

    .line 744
    invoke-static {p3, v0}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    const-string v0, "maxEmojiCount cannot be negative"

    .line 745
    invoke-static {p4, v0}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gt p2, p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "start should be <= than end"

    .line 746
    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-nez p1, :cond_1

    return-object p1

    .line 754
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt p2, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const-string v3, "start should be < than charSequence length"

    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 756
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt p3, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    const-string v3, "end should be < than charSequence length"

    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 760
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_5

    if-ne p2, p3, :cond_4

    goto :goto_4

    :cond_4
    packed-switch p5, :pswitch_data_0

    .line 774
    iget-boolean v0, p0, Landroidx/emoji/text/EmojiCompat;->mReplaceAll:Z

    move v6, v0

    goto :goto_3

    :pswitch_0
    const/4 v6, 0x0

    goto :goto_3

    :pswitch_1
    const/4 v6, 0x1

    .line 778
    :goto_3
    iget-object v1, p0, Landroidx/emoji/text/EmojiCompat;->mHelper:Landroidx/emoji/text/EmojiCompat$CompatInternal;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/emoji/text/EmojiCompat$CompatInternal;->process(Ljava/lang/CharSequence;IIIZ)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_4
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public registerInitCallback(Landroidx/emoji/text/EmojiCompat$InitCallback;)V
    .locals 3
    .param p1    # Landroidx/emoji/text/EmojiCompat$InitCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "initCallback cannot be null"

    .line 453
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    iget-object v0, p0, Landroidx/emoji/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 457
    :try_start_0
    iget v0, p0, Landroidx/emoji/text/EmojiCompat;->mLoadState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroidx/emoji/text/EmojiCompat;->mLoadState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 460
    :cond_0
    iget-object v0, p0, Landroidx/emoji/text/EmojiCompat;->mInitCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 458
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/emoji/text/EmojiCompat;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/emoji/text/EmojiCompat$ListenerDispatcher;

    iget v2, p0, Landroidx/emoji/text/EmojiCompat;->mLoadState:I

    invoke-direct {v1, p1, v2}, Landroidx/emoji/text/EmojiCompat$ListenerDispatcher;-><init>(Landroidx/emoji/text/EmojiCompat$InitCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    :goto_1
    iget-object p1, p0, Landroidx/emoji/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Landroidx/emoji/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method setGlyphChecker(Landroidx/emoji/text/EmojiProcessor$GlyphChecker;)V
    .locals 1
    .param p1    # Landroidx/emoji/text/EmojiProcessor$GlyphChecker;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 344
    iget-object v0, p0, Landroidx/emoji/text/EmojiCompat;->mHelper:Landroidx/emoji/text/EmojiCompat$CompatInternal;

    invoke-virtual {v0, p1}, Landroidx/emoji/text/EmojiCompat$CompatInternal;->setGlyphChecker(Landroidx/emoji/text/EmojiProcessor$GlyphChecker;)V

    return-void
.end method

.method public unregisterInitCallback(Landroidx/emoji/text/EmojiCompat$InitCallback;)V
    .locals 1
    .param p1    # Landroidx/emoji/text/EmojiCompat$InitCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "initCallback cannot be null"

    .line 473
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    iget-object v0, p0, Landroidx/emoji/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 476
    :try_start_0
    iget-object v0, p0, Landroidx/emoji/text/EmojiCompat;->mInitCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    iget-object p1, p0, Landroidx/emoji/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Landroidx/emoji/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public updateEditorInfoAttrs(Landroid/view/inputmethod/EditorInfo;)V
    .locals 1
    .param p1    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 809
    invoke-direct {p0}, Landroidx/emoji/text/EmojiCompat;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Landroidx/emoji/text/EmojiCompat;->mHelper:Landroidx/emoji/text/EmojiCompat$CompatInternal;

    invoke-virtual {v0, p1}, Landroidx/emoji/text/EmojiCompat$CompatInternal;->updateEditorInfoAttrs(Landroid/view/inputmethod/EditorInfo;)V

    :cond_0
    return-void
.end method
