.class Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneStartingFragment$1;
.super Ljava/lang/Object;
.source "ZRCAudioCheckupSceneStartingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneStartingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneStartingFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneStartingFragment;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneStartingFragment$1;->this$0:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneStartingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 44
    iget-object p1, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneStartingFragment$1;->this$0:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneStartingFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneStartingFragment;->access$000(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneStartingFragment;)Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneStartingFragment$1;->this$0:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneStartingFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneStartingFragment;->access$000(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupSceneStartingFragment;)Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;->onCancel()V

    :cond_0
    return-void
.end method
