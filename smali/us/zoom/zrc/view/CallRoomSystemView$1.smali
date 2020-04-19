.class Lus/zoom/zrc/view/CallRoomSystemView$1;
.super Ljava/lang/Object;
.source "CallRoomSystemView.java"

# interfaces
.implements Lus/zoom/zrc/base/widget/ZRCKeyboardDetector$IKeyboardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/CallRoomSystemView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/CallRoomSystemView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/CallRoomSystemView;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lus/zoom/zrc/view/CallRoomSystemView$1;->this$0:Lus/zoom/zrc/view/CallRoomSystemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyboardClosed()V
    .locals 2

    .line 63
    iget-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemView$1;->this$0:Lus/zoom/zrc/view/CallRoomSystemView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/CallRoomSystemView;->moveUp(Z)V

    return-void
.end method

.method public onKeyboardOpen()V
    .locals 2

    .line 58
    iget-object v0, p0, Lus/zoom/zrc/view/CallRoomSystemView$1;->this$0:Lus/zoom/zrc/view/CallRoomSystemView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/CallRoomSystemView;->moveUp(Z)V

    return-void
.end method
