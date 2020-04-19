.class Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$2;
.super Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;
.source "MeetingPhoneMoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$2;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-direct {p0}, Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateGalleryVideoPageStatus(Lus/zoom/zrcsdk/model/VideoPageStatus;)V
    .locals 2

    .line 149
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$2;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-static {v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->access$200(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$2$1;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$2$1;-><init>(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$2;Lus/zoom/zrcsdk/model/VideoPageStatus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUpdateMeetingSharingStatus(Lus/zoom/zrcsdk/model/ZRCSharingStatus;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$2;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->onUpdateMeetingSharingStatusSub(Lus/zoom/zrcsdk/model/ZRCSharingStatus;)V

    return-void
.end method

.method public onUpdateMeetingVideoLayoutStatus(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V
    .locals 2

    .line 170
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$2;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-static {v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->access$200(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$2$2;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$2$2;-><init>(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$2;Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUpdateVideoThumbInfo(Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$2;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->onUpdateVideoThumbInfoSub(Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)V

    return-void
.end method
