.class Lus/zoom/zrp/view/ZRPRoomsAdapter$1;
.super Ljava/lang/Object;
.source "ZRPRoomsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrp/view/ZRPRoomsAdapter;->onBindViewHolder(Lus/zoom/zrp/view/ZRPRoomsAdapter$ZRPRoomViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrp/view/ZRPRoomsAdapter;

.field final synthetic val$reservableRoomInfo:Lus/zoom/zrp/model/ZRPRoomInfo;


# direct methods
.method constructor <init>(Lus/zoom/zrp/view/ZRPRoomsAdapter;Lus/zoom/zrp/model/ZRPRoomInfo;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lus/zoom/zrp/view/ZRPRoomsAdapter$1;->this$0:Lus/zoom/zrp/view/ZRPRoomsAdapter;

    iput-object p2, p0, Lus/zoom/zrp/view/ZRPRoomsAdapter$1;->val$reservableRoomInfo:Lus/zoom/zrp/model/ZRPRoomInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 63
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPRoomsAdapter$1;->this$0:Lus/zoom/zrp/view/ZRPRoomsAdapter;

    invoke-static {p1}, Lus/zoom/zrp/view/ZRPRoomsAdapter;->access$100(Lus/zoom/zrp/view/ZRPRoomsAdapter;)Lus/zoom/zrp/roomlist/OnRoomClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 64
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPRoomsAdapter$1;->this$0:Lus/zoom/zrp/view/ZRPRoomsAdapter;

    invoke-static {p1}, Lus/zoom/zrp/view/ZRPRoomsAdapter;->access$100(Lus/zoom/zrp/view/ZRPRoomsAdapter;)Lus/zoom/zrp/roomlist/OnRoomClickListener;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrp/view/ZRPRoomsAdapter$1;->val$reservableRoomInfo:Lus/zoom/zrp/model/ZRPRoomInfo;

    invoke-interface {p1, v0}, Lus/zoom/zrp/roomlist/OnRoomClickListener;->onRoomClick(Lus/zoom/zrp/model/ZRPRoomInfo;)V

    :cond_0
    return-void
.end method
