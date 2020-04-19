.class Lus/zoom/zrc/ZRCActivity$3;
.super Ljava/lang/Object;
.source "ZRCActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/ZRCActivity;->backToLoginActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/ZRCActivity;


# direct methods
.method constructor <init>(Lus/zoom/zrc/ZRCActivity;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lus/zoom/zrc/ZRCActivity$3;->this$0:Lus/zoom/zrc/ZRCActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 366
    iget-object v0, p0, Lus/zoom/zrc/ZRCActivity$3;->this$0:Lus/zoom/zrc/ZRCActivity;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lus/zoom/zrc/ZRCActivity;->setResult(I)V

    .line 367
    iget-object v0, p0, Lus/zoom/zrc/ZRCActivity$3;->this$0:Lus/zoom/zrc/ZRCActivity;

    invoke-virtual {v0}, Lus/zoom/zrc/ZRCActivity;->finish()V

    .line 368
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v0

    if-nez v0, :cond_0

    .line 369
    invoke-static {}, Lus/zoom/zrc/ActivityLauncher;->getDefault()Lus/zoom/zrc/ActivityLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/ActivityLauncher;->onStart()V

    .line 371
    :cond_0
    invoke-static {}, Lus/zoom/zrc/ActivityLauncher;->getDefault()Lus/zoom/zrc/ActivityLauncher;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/ZRCActivity$3;->this$0:Lus/zoom/zrc/ZRCActivity;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/ActivityLauncher;->launchActivityByAppState(Landroid/content/Context;)V

    return-void
.end method
