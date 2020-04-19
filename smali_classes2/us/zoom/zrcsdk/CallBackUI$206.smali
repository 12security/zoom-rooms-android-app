.class Lus/zoom/zrcsdk/CallBackUI$206;
.super Ljava/lang/Object;
.source "CallBackUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrcsdk/CallBackUI;->onUpdateMeetingZRWSharingStatus(Lus/zoom/zrcsdk/model/ZRWSharingStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrcsdk/CallBackUI;

.field final synthetic val$zrwSharingStatus:Lus/zoom/zrcsdk/model/ZRWSharingStatus;


# direct methods
.method constructor <init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZRWSharingStatus;)V
    .locals 0

    .line 3319
    iput-object p1, p0, Lus/zoom/zrcsdk/CallBackUI$206;->this$0:Lus/zoom/zrcsdk/CallBackUI;

    iput-object p2, p0, Lus/zoom/zrcsdk/CallBackUI$206;->val$zrwSharingStatus:Lus/zoom/zrcsdk/model/ZRWSharingStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3322
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI$206;->this$0:Lus/zoom/zrcsdk/CallBackUI;

    invoke-static {v0}, Lus/zoom/zrcsdk/CallBackUI;->access$400(Lus/zoom/zrcsdk/CallBackUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/IMeetingEventListener;

    .line 3323
    iget-object v2, p0, Lus/zoom/zrcsdk/CallBackUI$206;->val$zrwSharingStatus:Lus/zoom/zrcsdk/model/ZRWSharingStatus;

    invoke-interface {v1, v2}, Lus/zoom/zrcsdk/IMeetingEventListener;->onUpdateMeetingZRWSharingStatus(Lus/zoom/zrcsdk/model/ZRWSharingStatus;)V

    goto :goto_0

    :cond_0
    return-void
.end method
