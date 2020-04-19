.class Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$2$2;
.super Ljava/lang/Object;
.source "MeetingPhoneMoreFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$2;->onUpdateMeetingVideoLayoutStatus(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$2;

.field final synthetic val$videoLayoutStatus:Lus/zoom/zrcsdk/model/VideoLayoutStatus;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$2;Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$2$2;->this$1:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$2;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$2$2;->val$videoLayoutStatus:Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 174
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$2$2;->this$1:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$2;

    iget-object v0, v0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$2;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$2$2;->val$videoLayoutStatus:Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->updateGalleryViewStatus(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V

    return-void
.end method
