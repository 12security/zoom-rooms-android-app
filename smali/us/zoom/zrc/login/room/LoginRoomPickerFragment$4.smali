.class Lus/zoom/zrc/login/room/LoginRoomPickerFragment$4;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "LoginRoomPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->setupListScrollListener()V
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

    .line 138
    iput-object p1, p0, Lus/zoom/zrc/login/room/LoginRoomPickerFragment$4;->this$0:Lus/zoom/zrc/login/room/LoginRoomPickerFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 141
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 142
    iget-object p1, p0, Lus/zoom/zrc/login/room/LoginRoomPickerFragment$4;->this$0:Lus/zoom/zrc/login/room/LoginRoomPickerFragment;

    invoke-static {p1}, Lus/zoom/zrc/login/room/LoginRoomPickerFragment;->access$308(Lus/zoom/zrc/login/room/LoginRoomPickerFragment;)I

    return-void
.end method
