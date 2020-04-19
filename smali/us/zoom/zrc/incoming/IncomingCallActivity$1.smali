.class final Lus/zoom/zrc/incoming/IncomingCallActivity$1;
.super Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListenerAdapter;
.source "IncomingCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/incoming/IncomingCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 67
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListenerAdapter;->onUIMoveToForeground(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    .line 68
    instance-of p1, p1, Lus/zoom/zrc/incoming/IncomingCallActivity;

    if-nez p1, :cond_0

    invoke-static {}, Lus/zoom/zrc/incoming/IncomingCallActivity;->access$000()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 69
    invoke-static {}, Lus/zoom/zrc/incoming/IncomingCallActivity;->access$100()V

    :cond_0
    return-void
.end method
