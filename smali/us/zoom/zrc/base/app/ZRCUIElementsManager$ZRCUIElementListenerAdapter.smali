.class public Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListenerAdapter;
.super Ljava/lang/Object;
.source "ZRCUIElementsManager.java"

# interfaces
.implements Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/base/app/ZRCUIElementsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZRCUIElementListenerAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUIMoveToBackground()V
    .locals 0

    return-void
.end method

.method public onUIMoveToForeground(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onUserActivityOnUI()V
    .locals 0

    return-void
.end method
