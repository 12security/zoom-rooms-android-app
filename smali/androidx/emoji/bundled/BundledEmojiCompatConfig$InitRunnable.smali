.class Landroidx/emoji/bundled/BundledEmojiCompatConfig$InitRunnable;
.super Ljava/lang/Object;
.source "BundledEmojiCompatConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji/bundled/BundledEmojiCompatConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitRunnable"
.end annotation


# static fields
.field private static final FONT_NAME:Ljava/lang/String; = "NotoColorEmojiCompat.ttf"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLoaderCallback:Landroidx/emoji/text/EmojiCompat$MetadataRepoLoaderCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/emoji/text/EmojiCompat$MetadataRepoLoaderCallback;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Landroidx/emoji/bundled/BundledEmojiCompatConfig$InitRunnable;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Landroidx/emoji/bundled/BundledEmojiCompatConfig$InitRunnable;->mLoaderCallback:Landroidx/emoji/text/EmojiCompat$MetadataRepoLoaderCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 79
    :try_start_0
    iget-object v0, p0, Landroidx/emoji/bundled/BundledEmojiCompatConfig$InitRunnable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "NotoColorEmojiCompat.ttf"

    .line 80
    invoke-static {v0, v1}, Landroidx/emoji/text/MetadataRepo;->create(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroidx/emoji/text/MetadataRepo;

    move-result-object v0

    .line 81
    iget-object v1, p0, Landroidx/emoji/bundled/BundledEmojiCompatConfig$InitRunnable;->mLoaderCallback:Landroidx/emoji/text/EmojiCompat$MetadataRepoLoaderCallback;

    invoke-virtual {v1, v0}, Landroidx/emoji/text/EmojiCompat$MetadataRepoLoaderCallback;->onLoaded(Landroidx/emoji/text/MetadataRepo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 83
    iget-object v1, p0, Landroidx/emoji/bundled/BundledEmojiCompatConfig$InitRunnable;->mLoaderCallback:Landroidx/emoji/text/EmojiCompat$MetadataRepoLoaderCallback;

    invoke-virtual {v1, v0}, Landroidx/emoji/text/EmojiCompat$MetadataRepoLoaderCallback;->onFailed(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
