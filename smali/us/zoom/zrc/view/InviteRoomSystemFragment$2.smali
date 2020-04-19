.class Lus/zoom/zrc/view/InviteRoomSystemFragment$2;
.super Ljava/lang/Object;
.source "InviteRoomSystemFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/InviteRoomSystemFragment;->closeWhenVisible()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/InviteRoomSystemFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/InviteRoomSystemFragment;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lus/zoom/zrc/view/InviteRoomSystemFragment$2;->this$0:Lus/zoom/zrc/view/InviteRoomSystemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 155
    invoke-static {}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getDefault()Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->forceEndRoomSystemUISession()V

    return-void
.end method
