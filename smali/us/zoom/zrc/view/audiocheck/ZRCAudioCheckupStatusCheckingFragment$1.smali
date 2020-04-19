.class Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment$1;
.super Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;
.source "ZRCAudioCheckupStatusCheckingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment$1;->this$0:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment;

    invoke-direct {p0}, Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioCheckupNotification(Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;)V
    .locals 2

    .line 28
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->getStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 29
    iget-object v0, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment$1;->this$0:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment;->access$000(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->getPercentageOfCheckup()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method
