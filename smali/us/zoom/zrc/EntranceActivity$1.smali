.class Lus/zoom/zrc/EntranceActivity$1;
.super Ljava/lang/Object;
.source "EntranceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/EntranceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/EntranceActivity;


# direct methods
.method constructor <init>(Lus/zoom/zrc/EntranceActivity;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lus/zoom/zrc/EntranceActivity$1;->this$0:Lus/zoom/zrc/EntranceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 49
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isRunInYealinkCP960()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lus/zoom/zrc/EntranceActivity$1;->this$0:Lus/zoom/zrc/EntranceActivity;

    invoke-virtual {v0}, Lus/zoom/zrc/EntranceActivity;->finish()V

    .line 52
    :cond_0
    invoke-static {}, Lus/zoom/zrc/ActivityLauncher;->getDefault()Lus/zoom/zrc/ActivityLauncher;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/EntranceActivity$1;->this$0:Lus/zoom/zrc/EntranceActivity;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/ActivityLauncher;->launchActivityByAppState(Landroid/content/Context;)V

    return-void
.end method
