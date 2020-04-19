.class Lus/zoom/androidlib/app/ForegroundTaskManager$1;
.super Ljava/lang/Object;
.source "ForegroundTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/app/ForegroundTaskManager;->runInForeground(Lus/zoom/androidlib/app/ForegroundTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/app/ForegroundTaskManager;

.field final synthetic val$_frontActivity:Lus/zoom/androidlib/app/ZMActivity;

.field final synthetic val$task:Lus/zoom/androidlib/app/ForegroundTask;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/app/ForegroundTaskManager;Lus/zoom/androidlib/app/ZMActivity;Lus/zoom/androidlib/app/ForegroundTask;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lus/zoom/androidlib/app/ForegroundTaskManager$1;->this$0:Lus/zoom/androidlib/app/ForegroundTaskManager;

    iput-object p2, p0, Lus/zoom/androidlib/app/ForegroundTaskManager$1;->val$_frontActivity:Lus/zoom/androidlib/app/ZMActivity;

    iput-object p3, p0, Lus/zoom/androidlib/app/ForegroundTaskManager$1;->val$task:Lus/zoom/androidlib/app/ForegroundTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 51
    invoke-static {}, Lus/zoom/androidlib/app/ZMActivity;->getFrontActivity()Lus/zoom/androidlib/app/ZMActivity;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lus/zoom/androidlib/app/ForegroundTaskManager$1;->val$_frontActivity:Lus/zoom/androidlib/app/ZMActivity;

    if-ne v1, v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lus/zoom/androidlib/app/ZMActivity;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lus/zoom/androidlib/app/ForegroundTaskManager$1;->val$_frontActivity:Lus/zoom/androidlib/app/ZMActivity;

    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Lus/zoom/androidlib/app/ForegroundTaskManager$1;->val$task:Lus/zoom/androidlib/app/ForegroundTask;

    invoke-virtual {v0}, Lus/zoom/androidlib/app/ForegroundTask;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ForegroundTaskManager$1;->this$0:Lus/zoom/androidlib/app/ForegroundTaskManager;

    iget-object v1, p0, Lus/zoom/androidlib/app/ForegroundTaskManager$1;->val$task:Lus/zoom/androidlib/app/ForegroundTask;

    iget-object v2, p0, Lus/zoom/androidlib/app/ForegroundTaskManager$1;->val$_frontActivity:Lus/zoom/androidlib/app/ZMActivity;

    invoke-static {v0, v1, v2}, Lus/zoom/androidlib/app/ForegroundTaskManager;->access$000(Lus/zoom/androidlib/app/ForegroundTaskManager;Lus/zoom/androidlib/app/ForegroundTask;Lus/zoom/androidlib/app/ZMActivity;)V

    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lus/zoom/androidlib/app/ForegroundTaskManager$1;->this$0:Lus/zoom/androidlib/app/ForegroundTaskManager;

    invoke-static {v0}, Lus/zoom/androidlib/app/ForegroundTaskManager;->access$100(Lus/zoom/androidlib/app/ForegroundTaskManager;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/androidlib/app/ForegroundTaskManager$1;->val$task:Lus/zoom/androidlib/app/ForegroundTask;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
