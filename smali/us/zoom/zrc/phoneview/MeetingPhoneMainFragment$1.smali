.class Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment$1;
.super Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;
.source "MeetingPhoneMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment$1;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;

    invoke-direct {p0}, Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateMeetingSharingStatus(Lus/zoom/zrcsdk/model/ZRCSharingStatus;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment$1;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;

    invoke-static {v0, p1}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->access$000(Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;Lus/zoom/zrcsdk/model/ZRCSharingStatus;)V

    return-void
.end method
