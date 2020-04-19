.class Lus/zoom/zrc/utils/DownloadAndDisplayTask$3;
.super Ljava/lang/Object;
.source "DownloadAndDisplayTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/utils/DownloadAndDisplayTask;->onSinkDownloadFile(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/utils/DownloadAndDisplayTask;

.field final synthetic val$avatar:Lus/zoom/zrc/view/AvatarView;

.field final synthetic val$localFilePath:Ljava/lang/String;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lus/zoom/zrc/utils/DownloadAndDisplayTask;Ljava/lang/String;ILus/zoom/zrc/view/AvatarView;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lus/zoom/zrc/utils/DownloadAndDisplayTask$3;->this$0:Lus/zoom/zrc/utils/DownloadAndDisplayTask;

    iput-object p2, p0, Lus/zoom/zrc/utils/DownloadAndDisplayTask$3;->val$localFilePath:Ljava/lang/String;

    iput p3, p0, Lus/zoom/zrc/utils/DownloadAndDisplayTask$3;->val$result:I

    iput-object p4, p0, Lus/zoom/zrc/utils/DownloadAndDisplayTask$3;->val$avatar:Lus/zoom/zrc/view/AvatarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 121
    iget-object v0, p0, Lus/zoom/zrc/utils/DownloadAndDisplayTask$3;->this$0:Lus/zoom/zrc/utils/DownloadAndDisplayTask;

    iget-object v1, p0, Lus/zoom/zrc/utils/DownloadAndDisplayTask$3;->val$localFilePath:Ljava/lang/String;

    iget v2, p0, Lus/zoom/zrc/utils/DownloadAndDisplayTask$3;->val$result:I

    iget-object v3, p0, Lus/zoom/zrc/utils/DownloadAndDisplayTask$3;->val$avatar:Lus/zoom/zrc/view/AvatarView;

    invoke-static {v0, v1, v2, v3}, Lus/zoom/zrc/utils/DownloadAndDisplayTask;->access$200(Lus/zoom/zrc/utils/DownloadAndDisplayTask;Ljava/lang/String;ILus/zoom/zrc/view/AvatarView;)V

    return-void
.end method
