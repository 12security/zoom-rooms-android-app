.class public Lus/zoom/zrc/utils/CallTimeHandler;
.super Landroid/os/Handler;
.source "CallTimeHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mRunning:Z

.field private mTimeConsume:J

.field private mTimeView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 18
    iput-object p1, p0, Lus/zoom/zrc/utils/CallTimeHandler;->mTimeView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lus/zoom/zrc/utils/CallTimeHandler;->mRunning:Z

    return v0
.end method

.method public run()V
    .locals 4

    .line 47
    iget-object v0, p0, Lus/zoom/zrc/utils/CallTimeHandler;->mTimeView:Landroid/widget/TextView;

    iget-wide v1, p0, Lus/zoom/zrc/utils/CallTimeHandler;->mTimeConsume:J

    invoke-static {v1, v2}, Lus/zoom/zrcsdk/util/ZRCTimeUtils;->formatElapsedInHMS(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-wide v0, p0, Lus/zoom/zrc/utils/CallTimeHandler;->mTimeConsume:J

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lus/zoom/zrc/utils/CallTimeHandler;->mTimeConsume:J

    .line 49
    invoke-virtual {p0, p0, v2, v3}, Lus/zoom/zrc/utils/CallTimeHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setTimeView(Landroid/widget/TextView;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lus/zoom/zrc/utils/CallTimeHandler;->mTimeView:Landroid/widget/TextView;

    .line 23
    iput-object p1, p0, Lus/zoom/zrc/utils/CallTimeHandler;->mTimeView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 25
    iget-object p1, p0, Lus/zoom/zrc/utils/CallTimeHandler;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public start(J)V
    .locals 1

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lus/zoom/zrc/utils/CallTimeHandler;->mRunning:Z

    .line 31
    iput-wide p1, p0, Lus/zoom/zrc/utils/CallTimeHandler;->mTimeConsume:J

    .line 32
    invoke-virtual {p0, p0}, Lus/zoom/zrc/utils/CallTimeHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 33
    invoke-virtual {p0, p0}, Lus/zoom/zrc/utils/CallTimeHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stop()V
    .locals 1

    .line 37
    invoke-virtual {p0, p0}, Lus/zoom/zrc/utils/CallTimeHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lus/zoom/zrc/utils/CallTimeHandler;->mRunning:Z

    return-void
.end method
