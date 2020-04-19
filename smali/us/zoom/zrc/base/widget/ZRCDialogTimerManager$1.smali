.class Lus/zoom/zrc/base/widget/ZRCDialogTimerManager$1;
.super Ljava/lang/Object;
.source "ZRCDialogTimerManager.java"

# interfaces
.implements Lus/zoom/zrc/base/app/ZRCDialog$UserActiveOnUIListener;


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

    .line 27
    iput-object p1, p0, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager$1;->this$0:Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserActiveOnUI()V
    .locals 1

    .line 30
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager$1;->this$0:Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;

    invoke-static {v0}, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;->access$000(Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;)V

    return-void
.end method
