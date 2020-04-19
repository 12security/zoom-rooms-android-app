.class Lus/zoom/zrc/model/RoomSystemDialSessionHelper$1;
.super Ljava/lang/Object;
.source "RoomSystemDialSessionHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/model/RoomSystemDialSessionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/model/RoomSystemDialSessionHelper;


# direct methods
.method constructor <init>(Lus/zoom/zrc/model/RoomSystemDialSessionHelper;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lus/zoom/zrc/model/RoomSystemDialSessionHelper$1;->this$0:Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 54
    iget-object v0, p0, Lus/zoom/zrc/model/RoomSystemDialSessionHelper$1;->this$0:Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->setRoomSystemStatusAndNotify(I)V

    return-void
.end method
