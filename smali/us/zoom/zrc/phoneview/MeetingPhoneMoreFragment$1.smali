.class Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$1;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
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

    .line 126
    iput-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$1;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 129
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->allShareParticipants:I

    if-eq p2, p1, :cond_3

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->allShareSources:I

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->meetingShareSettings:I

    if-ne p2, p1, :cond_1

    .line 132
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$1;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-static {p1}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->access$000(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;)Z

    move-result p1

    iget-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$1;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-static {p2}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->access$100(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;)Lus/zoom/zrc/model/ZRCPinUserManager;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/ZRCPinUserManager;->getMeetingShareSettings()Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;->isMultiShare()Z

    move-result p2

    if-eq p1, p2, :cond_4

    .line 133
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$1;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-static {p1}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->access$100(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;)Lus/zoom/zrc/model/ZRCPinUserManager;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/ZRCPinUserManager;->getMeetingShareSettings()Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;->isMultiShare()Z

    move-result p2

    invoke-static {p1, p2}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->access$002(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;Z)Z

    .line 134
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$1;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object p2

    invoke-virtual {p1, p2}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->updateGalleryViewStatus(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V

    goto :goto_1

    .line 136
    :cond_1
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->zrPinStatusOfScreens:I

    if-ne p2, p1, :cond_2

    .line 137
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$1;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object p2

    invoke-virtual {p1, p2}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->updateGalleryViewStatus(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V

    goto :goto_1

    .line 138
    :cond_2
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->zrwPinStatusOfScreen:I

    if-ne p2, p1, :cond_4

    .line 139
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$1;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object p2

    invoke-virtual {p1, p2}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->updateGalleryViewStatus(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V

    goto :goto_1

    .line 130
    :cond_3
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$1;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object p2

    invoke-virtual {p1, p2}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->updateGalleryViewStatus(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V

    :cond_4
    :goto_1
    return-void
.end method
