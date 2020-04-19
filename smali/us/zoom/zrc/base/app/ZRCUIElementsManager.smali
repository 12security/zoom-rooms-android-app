.class public Lus/zoom/zrc/base/app/ZRCUIElementsManager;
.super Ljava/lang/Object;
.source "ZRCUIElementsManager.java"

# interfaces
.implements Lus/zoom/androidlib/app/ZMActivity$GlobalActivityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListenerAdapter;,
        Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListener;
    }
.end annotation


# static fields
.field private static sInstance:Lus/zoom/zrc/base/app/ZRCUIElementsManager;


# instance fields
.field private listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->listeners:Ljava/util/Set;

    .line 47
    invoke-static {p0}, Lus/zoom/androidlib/app/ZMActivity;->addGlobalActivityListener(Lus/zoom/androidlib/app/ZMActivity$GlobalActivityListener;)V

    return-void
.end method

.method public static getInstance()Lus/zoom/zrc/base/app/ZRCUIElementsManager;
    .locals 1

    .line 51
    sget-object v0, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->sInstance:Lus/zoom/zrc/base/app/ZRCUIElementsManager;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lus/zoom/zrc/base/app/ZRCUIElementsManager;

    invoke-direct {v0}, Lus/zoom/zrc/base/app/ZRCUIElementsManager;-><init>()V

    sput-object v0, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->sInstance:Lus/zoom/zrc/base/app/ZRCUIElementsManager;

    .line 54
    :cond_0
    sget-object v0, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->sInstance:Lus/zoom/zrc/base/app/ZRCUIElementsManager;

    return-object v0
.end method

.method public static isForegroundFragment(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Z
    .locals 1
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 111
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-ne v0, p0, :cond_1

    if-eq p1, p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isIncomingCallActivity(Landroid/app/Activity;)Z
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 107
    instance-of p0, p0, Lus/zoom/zrc/incoming/IncomingCallActivity;

    return p0
.end method

.method public static isWaitingDialog(Landroidx/fragment/app/Fragment;)Z
    .locals 0
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 103
    instance-of p0, p0, Lus/zoom/zrc/base/app/ZRCWaitingDialogFragment;

    return p0
.end method


# virtual methods
.method public addListener(Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListener;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method dispatchFragmentAttached(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 97
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListener;

    .line 98
    invoke-interface {v1, p1, p2}, Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListener;->onUIMoveToForeground(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityMoveToFront(Lus/zoom/androidlib/app/ZMActivity;)V
    .locals 3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUIMoveToForeground: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListener;

    const/4 v2, 0x0

    .line 71
    invoke-interface {v1, p1, v2}, Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListener;->onUIMoveToForeground(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUIMoveToBackground()V
    .locals 2

    .line 77
    invoke-static {}, Lus/zoom/androidlib/app/ZMActivity;->getFrontActivity()Lus/zoom/androidlib/app/ZMActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "onUIMoveToBackground"

    const/4 v1, 0x0

    .line 78
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListener;

    .line 80
    invoke-interface {v1}, Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListener;->onUIMoveToBackground()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUserActivityOnUI()V
    .locals 2

    .line 88
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListener;

    .line 89
    invoke-interface {v1}, Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListener;->onUserActivityOnUI()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeListener(Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListener;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
