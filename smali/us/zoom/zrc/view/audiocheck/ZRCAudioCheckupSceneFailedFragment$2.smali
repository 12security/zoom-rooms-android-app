.class Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneFailedFragment$2;
.super Ljava/lang/Object;
.source "ZRCAudioCheckupSceneFailedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneFailedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneFailedFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneFailedFragment;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneFailedFragment$2;->this$0:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneFailedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 69
    iget-object p1, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneFailedFragment$2;->this$0:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneFailedFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneFailedFragment;->access$000(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneFailedFragment;)Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneFailedFragment$2;->this$0:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneFailedFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneFailedFragment;->access$000(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneFailedFragment;)Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;->onRestart()V

    :cond_0
    return-void
.end method
