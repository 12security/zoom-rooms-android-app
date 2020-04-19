.class Lus/zoom/zrc/base/widget/ZRCDialogTimerManager$2;
.super Ljava/lang/Object;
.source "ZRCDialogTimerManager.java"

# interfaces
.implements Lus/zoom/zrc/base/app/ZRCDialog$WindowFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;->startDelayDismissIfNoUserAction(JLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;


# direct methods
.method constructor <init>(Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager$2;->this$0:Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowFocusChange(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 37
    iget-object p1, p0, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager$2;->this$0:Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;

    invoke-static {p1}, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;->access$000(Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;)V

    goto :goto_0

    .line 39
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager$2;->this$0:Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;

    invoke-static {p1}, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;->access$200(Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager$2;->this$0:Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;

    invoke-static {v0}, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;->access$100(Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
