.class public Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;
.super Ljava/lang/Object;
.source "ZRCDialogTimerManager.java"


# instance fields
.field private mDelayDismiss:Ljava/lang/Runnable;

.field private mDelayTime:J

.field private mDialogFragment:Lus/zoom/zrc/base/app/ZRCDialogFragment;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lus/zoom/zrc/base/app/ZRCDialogFragment;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;->mDialogFragment:Lus/zoom/zrc/base/app/ZRCDialogFragment;

    .line 18
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;->mDelayTime:J

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;->mDelayDismiss:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;->refresh()V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;)Ljava/lang/Runnable;
    .locals 0

    .line 10
    iget-object p0, p0, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;->mDelayDismiss:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;)Landroid/os/Handler;
    .locals 0

    .line 10
    iget-object p0, p0, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private refresh()V
    .locals 4

    .line 68
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;->mDelayDismiss:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 69
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;->mDialogFragment:Lus/zoom/zrc/base/app/ZRCDialogFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;->mDialogFragment:Lus/zoom/zrc/base/app/ZRCDialogFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;->mDelayDismiss:Ljava/lang/Runnable;

    iget-wide v2, p0, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;->mDelayTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public startDelayDismissIfNoUserAction(JLjava/lang/Runnable;)V
    .locals 2

    .line 24
    iput-wide p1, p0, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;->mDelayTime:J

    .line 25
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;->mDialogFragment:Lus/zoom/zrc/base/app/ZRCDialogFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/base/app/ZRCDialog;

    if-eqz v0, :cond_0

    .line 27
    new-instance v1, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager$1;

    invoke-direct {v1, p0}, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager$1;-><init>(Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCDialog;->setUserActiveOnUIListener(Lus/zoom/zrc/base/app/ZRCDialog$UserActiveOnUIListener;)V

    .line 33
    new-instance v1, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager$2;

    invoke-direct {v1, p0}, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager$2;-><init>(Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCDialog;->setWindowFocusChangeListener(Lus/zoom/zrc/base/app/ZRCDialog$WindowFocusChangeListener;)V

    .line 47
    new-instance v0, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager$3;

    invoke-direct {v0, p0, p3}, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager$3;-><init>(Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;->mDelayDismiss:Ljava/lang/Runnable;

    .line 53
    iget-object p3, p0, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;->mDelayDismiss:Ljava/lang/Runnable;

    invoke-virtual {p3, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const-string p1, "Dialog is null!!"

    const/4 p2, 0x0

    .line 44
    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 57
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;->mDelayDismiss:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 58
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCDialogTimerManager;->mDialogFragment:Lus/zoom/zrc/base/app/ZRCDialogFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/base/app/ZRCDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 60
    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCDialog;->setUserActiveOnUIListener(Lus/zoom/zrc/base/app/ZRCDialog$UserActiveOnUIListener;)V

    .line 61
    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCDialog;->setWindowFocusChangeListener(Lus/zoom/zrc/base/app/ZRCDialog$WindowFocusChangeListener;)V

    goto :goto_0

    :cond_0
    const-string v0, "Dialog is null!!"

    const/4 v1, 0x0

    .line 63
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
