.class Lus/zoom/zrc/view/RoomSystemKeypadControllerView$2;
.super Ljava/lang/Object;
.source "RoomSystemKeypadControllerView.java"

# interfaces
.implements Lus/zoom/zrc/base/widget/keypad/KeypadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->init()V
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

    .line 88
    iput-object p1, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView$2;->this$0:Lus/zoom/zrc/view/RoomSystemKeypadControllerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyClicked(Ljava/lang/String;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView$2;->this$0:Lus/zoom/zrc/view/RoomSystemKeypadControllerView;

    invoke-static {v0}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->access$100(Lus/zoom/zrc/view/RoomSystemKeypadControllerView;)Lus/zoom/zrc/view/RoomSystemKeypadControllerListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemKeypadControllerView$2;->this$0:Lus/zoom/zrc/view/RoomSystemKeypadControllerView;

    invoke-static {v0}, Lus/zoom/zrc/view/RoomSystemKeypadControllerView;->access$100(Lus/zoom/zrc/view/RoomSystemKeypadControllerView;)Lus/zoom/zrc/view/RoomSystemKeypadControllerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lus/zoom/zrc/view/RoomSystemKeypadControllerListener;->onDial(Ljava/lang/String;)V

    return-void
.end method
