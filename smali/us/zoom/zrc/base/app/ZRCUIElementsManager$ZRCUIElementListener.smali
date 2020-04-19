.class public interface abstract Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListener;
.super Ljava/lang/Object;
.source "ZRCUIElementsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/base/app/ZRCUIElementsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ZRCUIElementListener"
.end annotation


# virtual methods
.method public abstract onUIMoveToBackground()V
.end method

.method public abstract onUIMoveToForeground(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onUserActivityOnUI()V
.end method
