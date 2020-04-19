.class public interface abstract Lus/zoom/zrc/utils/ZRCImageLoader$OnImageLoadedListener;
.super Ljava/lang/Object;
.source "ZRCImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/utils/ZRCImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnImageLoadedListener"
.end annotation


# virtual methods
.method public abstract onImageLoaded(ZLjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
