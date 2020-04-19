.class Lus/zoom/zrp/reserve/ZRPReserveControllerView$1;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "ZRPReserveControllerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrp/reserve/ZRPReserveControllerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrp/reserve/ZRPReserveControllerView;


# direct methods
.method constructor <init>(Lus/zoom/zrp/reserve/ZRPReserveControllerView;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView$1;->this$0:Lus/zoom/zrp/reserve/ZRPReserveControllerView;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 125
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->meetingList:I

    if-eq p1, p2, :cond_0

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->forcePrivateMeeting:I

    if-eq p1, p2, :cond_0

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->hideHostInfoForPrivateMeeting:I

    if-ne p1, p2, :cond_1

    .line 126
    :cond_0
    iget-object p1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView$1;->this$0:Lus/zoom/zrp/reserve/ZRPReserveControllerView;

    invoke-static {p1}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->access$000(Lus/zoom/zrp/reserve/ZRPReserveControllerView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 127
    iget-object p1, p0, Lus/zoom/zrp/reserve/ZRPReserveControllerView$1;->this$0:Lus/zoom/zrp/reserve/ZRPReserveControllerView;

    invoke-static {p1}, Lus/zoom/zrp/reserve/ZRPReserveControllerView;->access$100(Lus/zoom/zrp/reserve/ZRPReserveControllerView;)V

    :cond_1
    return-void
.end method
