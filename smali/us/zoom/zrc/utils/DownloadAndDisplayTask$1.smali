.class Lus/zoom/zrc/utils/DownloadAndDisplayTask$1;
.super Ljava/lang/Object;
.source "DownloadAndDisplayTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/utils/DownloadAndDisplayTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/utils/DownloadAndDisplayTask;


# direct methods
.method constructor <init>(Lus/zoom/zrc/utils/DownloadAndDisplayTask;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lus/zoom/zrc/utils/DownloadAndDisplayTask$1;->this$0:Lus/zoom/zrc/utils/DownloadAndDisplayTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 55
    iget-object v0, p0, Lus/zoom/zrc/utils/DownloadAndDisplayTask$1;->this$0:Lus/zoom/zrc/utils/DownloadAndDisplayTask;

    invoke-static {v0}, Lus/zoom/zrc/utils/DownloadAndDisplayTask;->access$000(Lus/zoom/zrc/utils/DownloadAndDisplayTask;)Ljava/lang/ref/Reference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/AvatarView;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Lus/zoom/zrc/view/AvatarView;->getTag()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/utils/DownloadAndDisplayTask$1;->this$0:Lus/zoom/zrc/utils/DownloadAndDisplayTask;

    invoke-static {v2}, Lus/zoom/zrc/utils/DownloadAndDisplayTask;->access$100(Lus/zoom/zrc/utils/DownloadAndDisplayTask;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 57
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/AvatarView;->setAvatar(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
