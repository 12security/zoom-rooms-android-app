.class Lus/zoom/zrc/view/MeetingMainControllerFragment$3;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "MeetingMainControllerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/MeetingMainControllerFragment;
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

    .line 180
    iput-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$3;->this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 183
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->allShareParticipants:I

    if-eq p2, p1, :cond_3

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->allShareSources:I

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->meetingShareSettings:I

    if-ne p2, p1, :cond_1

    .line 186
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$3;->this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->access$000(Lus/zoom/zrc/view/MeetingMainControllerFragment;)Z

    move-result p1

    iget-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$3;->this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-static {p2}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->access$100(Lus/zoom/zrc/view/MeetingMainControllerFragment;)Lus/zoom/zrc/model/ZRCPinUserManager;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/ZRCPinUserManager;->getMeetingShareSettings()Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;->isMultiShare()Z

    move-result p2

    if-eq p1, p2, :cond_4

    .line 187
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$3;->this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->access$100(Lus/zoom/zrc/view/MeetingMainControllerFragment;)Lus/zoom/zrc/model/ZRCPinUserManager;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/ZRCPinUserManager;->getMeetingShareSettings()Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCMeetingShareSettings;->isMultiShare()Z

    move-result p2

    invoke-static {p1, p2}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->access$002(Lus/zoom/zrc/view/MeetingMainControllerFragment;Z)Z

    .line 188
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$3;->this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object p2

    invoke-virtual {p1, p2}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->updateGalleryViewStatus(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V

    goto :goto_1

    .line 190
    :cond_1
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->zrPinStatusOfScreens:I

    if-ne p2, p1, :cond_2

    .line 191
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$3;->this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object p2

    invoke-virtual {p1, p2}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->updateGalleryViewStatus(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V

    goto :goto_1

    .line 192
    :cond_2
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->zrwPinStatusOfScreen:I

    if-ne p2, p1, :cond_4

    .line 193
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$3;->this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object p2

    invoke-virtual {p1, p2}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->updateGalleryViewStatus(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V

    goto :goto_1

    .line 184
    :cond_3
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$3;->this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object p2

    invoke-virtual {p1, p2}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->updateGalleryViewStatus(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V

    :cond_4
    :goto_1
    return-void
.end method
