.class Lus/zoom/zrc/view/MeetingMainControllerFragment$4;
.super Ljava/lang/Object;
.source "MeetingMainControllerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/MeetingMainControllerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/MeetingMainControllerFragment;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$4;->this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 428
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$4;->this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getVideoStatus()Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->updateVideoStatus(Lus/zoom/zrcsdk/model/ZRCVideoStatus;Z)V

    return-void
.end method
