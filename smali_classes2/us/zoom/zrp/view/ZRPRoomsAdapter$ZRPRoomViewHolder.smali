.class Lus/zoom/zrp/view/ZRPRoomsAdapter$ZRPRoomViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ZRPRoomsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrp/view/ZRPRoomsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ZRPRoomViewHolder"
.end annotation


# instance fields
.field private btnRoomReserve:Landroid/widget/Button;

.field final synthetic this$0:Lus/zoom/zrp/view/ZRPRoomsAdapter;

.field private tvRoomName:Landroid/widget/TextView;

.field private tvRoomStatus:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lus/zoom/zrp/view/ZRPRoomsAdapter;Landroid/view/View;)V
    .locals 0
    .param p1    # Lus/zoom/zrp/view/ZRPRoomsAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 97
    iput-object p1, p0, Lus/zoom/zrp/view/ZRPRoomsAdapter$ZRPRoomViewHolder;->this$0:Lus/zoom/zrp/view/ZRPRoomsAdapter;

    .line 98
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 100
    sget p1, Lus/zoom/zrcbox/R$id;->tv_reserve_room_item_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrp/view/ZRPRoomsAdapter$ZRPRoomViewHolder;->tvRoomName:Landroid/widget/TextView;

    .line 101
    sget p1, Lus/zoom/zrcbox/R$id;->tv_reserve_room_item_status:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrp/view/ZRPRoomsAdapter$ZRPRoomViewHolder;->tvRoomStatus:Landroid/widget/TextView;

    .line 102
    sget p1, Lus/zoom/zrcbox/R$id;->btn_reserve_room_item_reserve:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lus/zoom/zrp/view/ZRPRoomsAdapter$ZRPRoomViewHolder;->btnRoomReserve:Landroid/widget/Button;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrp/view/ZRPRoomsAdapter$ZRPRoomViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 91
    iget-object p0, p0, Lus/zoom/zrp/view/ZRPRoomsAdapter$ZRPRoomViewHolder;->tvRoomName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrp/view/ZRPRoomsAdapter$ZRPRoomViewHolder;)Landroid/widget/Button;
    .locals 0

    .line 91
    iget-object p0, p0, Lus/zoom/zrp/view/ZRPRoomsAdapter$ZRPRoomViewHolder;->btnRoomReserve:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/zrp/view/ZRPRoomsAdapter$ZRPRoomViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 91
    iget-object p0, p0, Lus/zoom/zrp/view/ZRPRoomsAdapter$ZRPRoomViewHolder;->tvRoomStatus:Landroid/widget/TextView;

    return-object p0
.end method
