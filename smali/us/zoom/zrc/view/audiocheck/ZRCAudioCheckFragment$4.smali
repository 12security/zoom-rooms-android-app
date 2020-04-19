.class Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$4;
.super Ljava/lang/Object;
.source "ZRCAudioCheckFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 131
    iput-object p1, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$4;->this$0:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 134
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getAudioCheckupInfo()Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 136
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->getStatus()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 137
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->getStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;->isCanRestartZoomRoomsSystem()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_3

    .line 139
    iget-object p1, p0, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment$4;->this$0:Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/view/audiocheck/ZRCAudioCheckFragment;->dismiss()V

    .line 140
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/PTApp;->cancelAudioCheckup()I

    :cond_3
    return-void
.end method
