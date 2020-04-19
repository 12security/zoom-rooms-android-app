.class Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$1;
.super Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;
.source "ZRCAudioCheckFragment.java"


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

    .line 37
    iput-object p1, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$1;->this$0:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;

    invoke-direct {p0}, Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioCheckupNotification(Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;->onAudioCheckupNotification(Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;)V

    .line 41
    iget-object p1, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$1;->this$0:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->access$000(Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;)V

    return-void
.end method
