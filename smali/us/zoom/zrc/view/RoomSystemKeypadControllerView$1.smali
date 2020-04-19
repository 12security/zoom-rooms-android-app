.class Lus/zoom/zrc/view/RoomSystemKeypadControllerView$1;
.super Ljava/lang/Object;
.source "RoomSystemKeypadControllerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/RoomSystemKeypadControllerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/RoomSystemKeypadControllerView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/RoomSystemKeypadControllerView;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView$1;->this$0:Lus/zoom/zrc/view/RoomSystemKeypadControllerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 40
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView$1;->this$0:Lus/zoom/zrc/view/RoomSystemKeypadControllerView;

    invoke-static {v0}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->access$000(Lus/zoom/zrc/view/RoomSystemKeypadControllerView;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 41
    iget-object p1, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView$1;->this$0:Lus/zoom/zrc/view/RoomSystemKeypadControllerView;

    invoke-static {p1}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->access$100(Lus/zoom/zrc/view/RoomSystemKeypadControllerView;)Lus/zoom/zrc/view/RoomSystemKeypadControllerListener;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 42
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView$1;->this$0:Lus/zoom/zrc/view/RoomSystemKeypadControllerView;

    invoke-static {p1}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->access$100(Lus/zoom/zrc/view/RoomSystemKeypadControllerView;)Lus/zoom/zrc/view/RoomSystemKeypadControllerListener;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/view/RoomSystemKeypadControllerListener;->onClickDisconnect()V

    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView$1;->this$0:Lus/zoom/zrc/view/RoomSystemKeypadControllerView;

    invoke-static {v0}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->access$200(Lus/zoom/zrc/view/RoomSystemKeypadControllerView;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 44
    iget-object p1, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView$1;->this$0:Lus/zoom/zrc/view/RoomSystemKeypadControllerView;

    invoke-static {p1}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->access$100(Lus/zoom/zrc/view/RoomSystemKeypadControllerView;)Lus/zoom/zrc/view/RoomSystemKeypadControllerListener;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 45
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView$1;->this$0:Lus/zoom/zrc/view/RoomSystemKeypadControllerView;

    invoke-static {p1}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->access$100(Lus/zoom/zrc/view/RoomSystemKeypadControllerView;)Lus/zoom/zrc/view/RoomSystemKeypadControllerListener;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/view/RoomSystemKeypadControllerListener;->onClickDone()V

    goto :goto_0

    .line 46
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView$1;->this$0:Lus/zoom/zrc/view/RoomSystemKeypadControllerView;

    invoke-static {v0}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->access$300(Lus/zoom/zrc/view/RoomSystemKeypadControllerView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_4

    const-string p1, "RoomSystemKeypadControllerView"

    const-string v0, "onClick() called with: v = ivKeypad"

    .line 47
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    invoke-static {}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getDefault()Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->stopAutoEnd()V

    .line 49
    iget-object p1, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView$1;->this$0:Lus/zoom/zrc/view/RoomSystemKeypadControllerView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->access$400(Lus/zoom/zrc/view/RoomSystemKeypadControllerView;Z)V

    goto :goto_0

    .line 50
    :cond_4
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView$1;->this$0:Lus/zoom/zrc/view/RoomSystemKeypadControllerView;

    invoke-static {v0}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->access$500(Lus/zoom/zrc/view/RoomSystemKeypadControllerView;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 51
    iget-object p1, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView$1;->this$0:Lus/zoom/zrc/view/RoomSystemKeypadControllerView;

    invoke-static {p1, v1}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->access$400(Lus/zoom/zrc/view/RoomSystemKeypadControllerView;Z)V

    :cond_5
    :goto_0
    return-void
.end method
