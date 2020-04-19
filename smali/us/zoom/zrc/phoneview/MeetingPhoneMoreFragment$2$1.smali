.class Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$2$1;
.super Ljava/lang/Object;
.source "MeetingPhoneMoreFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$2;->onUpdateGalleryVideoPageStatus(Lus/zoom/zrcsdk/model/VideoPageStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$2;

.field final synthetic val$videoPageStatus:Lus/zoom/zrcsdk/model/VideoPageStatus;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$2;Lus/zoom/zrcsdk/model/VideoPageStatus;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$2$1;->this$1:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$2;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$2$1;->val$videoPageStatus:Lus/zoom/zrcsdk/model/VideoPageStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 152
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$2$1;->this$1:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$2;

    iget-object v0, v0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$2;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$2$1;->val$videoPageStatus:Lus/zoom/zrcsdk/model/VideoPageStatus;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->updateTurnVideoArrowStatus(Lus/zoom/zrcsdk/model/VideoPageStatus;)V

    const-string v0, "f1"

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoPageStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$2$1;->val$videoPageStatus:Lus/zoom/zrcsdk/model/VideoPageStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
