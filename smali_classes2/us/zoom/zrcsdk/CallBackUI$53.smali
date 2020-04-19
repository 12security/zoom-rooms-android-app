.class Lus/zoom/zrcsdk/CallBackUI$53;
.super Ljava/lang/Object;
.source "CallBackUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrcsdk/CallBackUI;->onHostChangedNotification(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrcsdk/CallBackUI;

.field final synthetic val$amIHost:Z

.field final synthetic val$hostUserId:I


# direct methods
.method constructor <init>(Lus/zoom/zrcsdk/CallBackUI;IZ)V
    .locals 0

    .line 1210
    iput-object p1, p0, Lus/zoom/zrcsdk/CallBackUI$53;->this$0:Lus/zoom/zrcsdk/CallBackUI;

    iput p2, p0, Lus/zoom/zrcsdk/CallBackUI$53;->val$hostUserId:I

    iput-boolean p3, p0, Lus/zoom/zrcsdk/CallBackUI$53;->val$amIHost:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1214
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI$53;->this$0:Lus/zoom/zrcsdk/CallBackUI;

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

    .line 1215
    iget v2, p0, Lus/zoom/zrcsdk/CallBackUI$53;->val$hostUserId:I

    iget-boolean v3, p0, Lus/zoom/zrcsdk/CallBackUI$53;->val$amIHost:Z

    invoke-interface {v1, v2, v3}, Lus/zoom/zrcsdk/IMeetingEventListener;->onHostChangedNotification(IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method
