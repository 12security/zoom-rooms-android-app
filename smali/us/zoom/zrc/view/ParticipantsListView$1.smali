.class Lus/zoom/zrc/view/ParticipantsListView$1;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "ParticipantsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/ParticipantsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ParticipantsListView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/ParticipantsListView;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView$1;->this$0:Lus/zoom/zrc/view/ParticipantsListView;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 90
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->participantList:I

    if-ne p1, p2, :cond_0

    .line 91
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView$1;->this$0:Lus/zoom/zrc/view/ParticipantsListView;

    invoke-static {p1}, Lus/zoom/zrc/view/ParticipantsListView;->access$000(Lus/zoom/zrc/view/ParticipantsListView;)V

    .line 92
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView$1;->this$0:Lus/zoom/zrc/view/ParticipantsListView;

    invoke-virtual {p1}, Lus/zoom/zrc/view/ParticipantsListView;->updateParticipantList()V

    goto :goto_0

    .line 93
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->spotlightStatus:I

    if-ne p1, p2, :cond_1

    .line 94
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView$1;->this$0:Lus/zoom/zrc/view/ParticipantsListView;

    invoke-virtual {p1}, Lus/zoom/zrc/view/ParticipantsListView;->updateParticipantList()V

    goto :goto_0

    .line 95
    :cond_1
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->amIHost:I

    if-eq p1, p2, :cond_2

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->amICoHost:I

    if-ne p1, p2, :cond_3

    .line 96
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView$1;->this$0:Lus/zoom/zrc/view/ParticipantsListView;

    invoke-static {p1}, Lus/zoom/zrc/view/ParticipantsListView;->access$100(Lus/zoom/zrc/view/ParticipantsListView;)V

    .line 97
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView$1;->this$0:Lus/zoom/zrc/view/ParticipantsListView;

    invoke-static {p1}, Lus/zoom/zrc/view/ParticipantsListView;->access$000(Lus/zoom/zrc/view/ParticipantsListView;)V

    .line 98
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView$1;->this$0:Lus/zoom/zrc/view/ParticipantsListView;

    invoke-virtual {p1}, Lus/zoom/zrc/view/ParticipantsListView;->updateParticipantList()V

    :cond_3
    :goto_0
    return-void
.end method
