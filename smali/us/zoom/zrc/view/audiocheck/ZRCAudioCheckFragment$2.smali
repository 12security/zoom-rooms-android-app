.class Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$2;
.super Ljava/lang/Object;
.source "ZRCAudioCheckFragment.java"

# interfaces
.implements Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$2;->this$0:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 48
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/PTApp;->cancelAudioCheckup()I

    return-void
.end method

.method public onRestart()V
    .locals 2

    .line 53
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/PTApp;->restartOperatingSystem(Z)I

    return-void
.end method

.method public onRetest()V
    .locals 1

    .line 58
    iget-object v0, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$2;->this$0:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->access$100(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;)V

    return-void
.end method
