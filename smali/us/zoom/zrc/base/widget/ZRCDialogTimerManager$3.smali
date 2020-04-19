.class Lus/zoom/zrc/base/widget/ZRCDialogTimerManager$3;
.super Ljava/lang/Object;
.source "ZRCDialogTimerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$dismissAction:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;Ljava/lang/Runnable;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager$3;->this$0:Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;

    iput-object p2, p0, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager$3;->val$dismissAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 50
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager$3;->val$dismissAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
