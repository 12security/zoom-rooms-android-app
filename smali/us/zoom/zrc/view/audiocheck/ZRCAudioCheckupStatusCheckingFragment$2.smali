.class Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment$2;
.super Ljava/lang/Object;
.source "ZRCAudioCheckupStatusCheckingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 62
    iput-object p1, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment$2;->this$0:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 65
    iget-object p1, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment$2;->this$0:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment;->access$100(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment;)Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment$2;->this$0:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment;->access$100(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckupStatusCheckingFragment;)Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$onAudioCheckListener;->onCancel()V

    :cond_0
    return-void
.end method
