.class Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog$1;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "RoomSystemDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog$1;->this$1:Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 36
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->roomSystemSessionStatus:I

    if-ne p2, p1, :cond_0

    .line 37
    invoke-static {}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getDefault()Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getSessionStatus()Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    move-result-object p1

    .line 38
    iget-object p2, p0, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog$1;->this$1:Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;

    invoke-static {p2, p1}, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;->access$000(Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;)V

    :cond_0
    return-void
.end method
