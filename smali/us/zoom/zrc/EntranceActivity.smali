.class public Lus/zoom/zrc/EntranceActivity;
.super Landroid/app/Activity;
.source "EntranceActivity.java"


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/EntranceActivity;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 26
    invoke-static {p0}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 27
    invoke-virtual {p0, v1}, Lus/zoom/zrc/EntranceActivity;->setRequestedOrientation(I)V

    .line 29
    :cond_0
    invoke-virtual {p0, v1}, Lus/zoom/zrc/EntranceActivity;->requestWindowFeature(I)Z

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lus/zoom/zrc/EntranceActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 35
    invoke-virtual {p0}, Lus/zoom/zrc/EntranceActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 36
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 37
    invoke-virtual {p0}, Lus/zoom/zrc/EntranceActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/utils/PolycomTrioUtils;->setImmersiveModeForPolycomTrio(Landroid/view/Window;)V

    .line 38
    sget p1, Lus/zoom/zrcbox/R$layout;->entrance:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/EntranceActivity;->setContentView(I)V

    const-wide/16 v0, 0x320

    .line 41
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result p1

    if-nez p1, :cond_1

    .line 42
    invoke-static {}, Lus/zoom/zrc/ActivityLauncher;->getDefault()Lus/zoom/zrc/ActivityLauncher;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/ActivityLauncher;->onStart()V

    const-wide/16 v0, 0x7d0

    .line 46
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/EntranceActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lus/zoom/zrc/EntranceActivity$1;

    invoke-direct {v2, p0}, Lus/zoom/zrc/EntranceActivity$1;-><init>(Lus/zoom/zrc/EntranceActivity;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 61
    invoke-static {}, Lus/zoom/zrc/ActivityLauncher;->getDefault()Lus/zoom/zrc/ActivityLauncher;

    move-result-object p1

    invoke-virtual {p1, p0}, Lus/zoom/zrc/ActivityLauncher;->launchActivityByAppState(Landroid/content/Context;)V

    return-void
.end method
