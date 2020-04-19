.class Lus/zoom/zrc/view/MeetingRedPointController$1;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "MeetingRedPointController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/MeetingRedPointController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/MeetingRedPointController;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/MeetingRedPointController;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lus/zoom/zrc/view/MeetingRedPointController$1;->this$0:Lus/zoom/zrc/view/MeetingRedPointController;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 43
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->meetingShareSettings:I

    if-eq p2, p1, :cond_2

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->allShareParticipants:I

    if-eq p2, p1, :cond_2

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->allShareSources:I

    if-eq p2, p1, :cond_2

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->zrPinStatusOfScreens:I

    if-eq p2, p1, :cond_2

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->zrwPinStatusOfScreen:I

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->amIHost:I

    if-eq p1, p2, :cond_1

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->amICoHost:I

    if-eq p1, p2, :cond_1

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->participantList:I

    if-ne p1, p2, :cond_3

    .line 52
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingRedPointController$1;->this$0:Lus/zoom/zrc/view/MeetingRedPointController;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingRedPointController;->access$100(Lus/zoom/zrc/view/MeetingRedPointController;)V

    goto :goto_1

    .line 48
    :cond_2
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingRedPointController$1;->this$0:Lus/zoom/zrc/view/MeetingRedPointController;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingRedPointController;->access$000(Lus/zoom/zrc/view/MeetingRedPointController;)V

    :cond_3
    :goto_1
    return-void
.end method
