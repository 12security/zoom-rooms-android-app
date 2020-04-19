.class Lus/zoom/androidlib/app/ZMFragment$1;
.super Ljava/lang/Object;
.source "ZMFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/app/ZMFragment;->performResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/app/ZMFragment;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/app/ZMFragment;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lus/zoom/androidlib/app/ZMFragment$1;->this$0:Lus/zoom/androidlib/app/ZMFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 170
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFragment$1;->this$0:Lus/zoom/androidlib/app/ZMFragment;

    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMFragment;->isInMultWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFragment$1;->this$0:Lus/zoom/androidlib/app/ZMFragment;

    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFragment$1;->this$0:Lus/zoom/androidlib/app/ZMFragment;

    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMFragment;->isInMultWindowMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFragment$1;->this$0:Lus/zoom/androidlib/app/ZMFragment;

    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFragment$1;->this$0:Lus/zoom/androidlib/app/ZMFragment;

    invoke-static {v0}, Lus/zoom/androidlib/app/ZMFragment;->access$000(Lus/zoom/androidlib/app/ZMFragment;)Lus/zoom/androidlib/util/EventTaskManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFragment$1;->this$0:Lus/zoom/androidlib/app/ZMFragment;

    invoke-static {v0}, Lus/zoom/androidlib/app/ZMFragment;->access$000(Lus/zoom/androidlib/app/ZMFragment;)Lus/zoom/androidlib/util/EventTaskManager;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/androidlib/app/ZMFragment$1;->this$0:Lus/zoom/androidlib/app/ZMFragment;

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/util/EventTaskManager;->onResume(Lus/zoom/androidlib/util/IUIElement;)V

    :cond_2
    return-void
.end method
