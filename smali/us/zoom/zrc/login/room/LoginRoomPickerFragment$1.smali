.class Lus/zoom/zrc/login/room/LoginRoomPickerFragment$1;
.super Ljava/lang/Object;
.source "LoginRoomPickerFragment.java"

# interfaces
.implements Lus/zoom/zrc/login/widget/ZRCRecyclerListView$IRecyclerItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/room/LoginRoomPickerFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/room/LoginRoomPickerFragment;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lus/zoom/zrc/login/room/LoginRoomPickerFragment$1;->this$0:Lus/zoom/zrc/login/room/LoginRoomPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(I)V
    .locals 0

    .line 62
    iget-object p1, p0, Lus/zoom/zrc/login/room/LoginRoomPickerFragment$1;->this$0:Lus/zoom/zrc/login/room/LoginRoomPickerFragment;

    invoke-static {p1}, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->access$000(Lus/zoom/zrc/login/room/LoginRoomPickerFragment;)V

    return-void
.end method
