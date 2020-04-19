.class Lus/zoom/zrc/control_system/ControlSystemFragment$4;
.super Ljava/lang/Object;
.source "ControlSystemFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/control_system/ControlSystemFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/control_system/ControlSystemFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/control_system/ControlSystemFragment;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lus/zoom/zrc/control_system/ControlSystemFragment$4;->this$0:Lus/zoom/zrc/control_system/ControlSystemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 116
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment$4;->this$0:Lus/zoom/zrc/control_system/ControlSystemFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/control_system/ControlSystemFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment$4;->this$0:Lus/zoom/zrc/control_system/ControlSystemFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/control_system/ControlSystemFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemFragment$4;->this$0:Lus/zoom/zrc/control_system/ControlSystemFragment;

    invoke-static {v0}, Lus/zoom/zrc/control_system/ControlSystemFragment;->access$000(Lus/zoom/zrc/control_system/ControlSystemFragment;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
