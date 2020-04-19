.class Lus/zoom/androidlib/app/ZMDialogFragment$2;
.super Ljava/lang/Object;
.source "ZMDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/app/ZMDialogFragment;->performResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/app/ZMDialogFragment;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/app/ZMDialogFragment;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lus/zoom/androidlib/app/ZMDialogFragment$2;->this$0:Lus/zoom/androidlib/app/ZMDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 270
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMDialogFragment$2;->this$0:Lus/zoom/androidlib/app/ZMDialogFragment;

    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMDialogFragment;->isInMultWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lus/zoom/androidlib/app/ZMDialogFragment$2;->this$0:Lus/zoom/androidlib/app/ZMDialogFragment;

    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMDialogFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMDialogFragment$2;->this$0:Lus/zoom/androidlib/app/ZMDialogFragment;

    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMDialogFragment;->isInMultWindowMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lus/zoom/androidlib/app/ZMDialogFragment$2;->this$0:Lus/zoom/androidlib/app/ZMDialogFragment;

    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMDialogFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    :cond_1
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMDialogFragment$2;->this$0:Lus/zoom/androidlib/app/ZMDialogFragment;

    invoke-static {v0}, Lus/zoom/androidlib/app/ZMDialogFragment;->access$000(Lus/zoom/androidlib/app/ZMDialogFragment;)Lus/zoom/androidlib/util/EventTaskManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMDialogFragment$2;->this$0:Lus/zoom/androidlib/app/ZMDialogFragment;

    invoke-static {v0}, Lus/zoom/androidlib/app/ZMDialogFragment;->access$000(Lus/zoom/androidlib/app/ZMDialogFragment;)Lus/zoom/androidlib/util/EventTaskManager;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/androidlib/app/ZMDialogFragment$2;->this$0:Lus/zoom/androidlib/app/ZMDialogFragment;

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/util/EventTaskManager;->onResume(Lus/zoom/androidlib/util/IUIElement;)V

    :cond_2
    return-void
.end method
