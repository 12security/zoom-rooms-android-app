.class Lus/zoom/zrcsdk/CallBackUI$27;
.super Ljava/lang/Object;
.source "CallBackUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrcsdk/CallBackUI;->onImAddContactNotification(Lus/zoom/zrcsdk/model/ZRCContact;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrcsdk/CallBackUI;

.field final synthetic val$contact:Lus/zoom/zrcsdk/model/ZRCContact;

.field final synthetic val$groupId:Ljava/lang/String;

.field final synthetic val$groupName:Ljava/lang/String;

.field final synthetic val$isZoomRoomsGroup:Z


# direct methods
.method constructor <init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZRCContact;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 822
    iput-object p1, p0, Lus/zoom/zrcsdk/CallBackUI$27;->this$0:Lus/zoom/zrcsdk/CallBackUI;

    iput-object p2, p0, Lus/zoom/zrcsdk/CallBackUI$27;->val$contact:Lus/zoom/zrcsdk/model/ZRCContact;

    iput-object p3, p0, Lus/zoom/zrcsdk/CallBackUI$27;->val$groupId:Ljava/lang/String;

    iput-object p4, p0, Lus/zoom/zrcsdk/CallBackUI$27;->val$groupName:Ljava/lang/String;

    iput-boolean p5, p0, Lus/zoom/zrcsdk/CallBackUI$27;->val$isZoomRoomsGroup:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 826
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI$27;->this$0:Lus/zoom/zrcsdk/CallBackUI;

    invoke-static {v0}, Lus/zoom/zrcsdk/CallBackUI;->access$100(Lus/zoom/zrcsdk/CallBackUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/IPtEventListener;

    .line 827
    iget-object v2, p0, Lus/zoom/zrcsdk/CallBackUI$27;->val$contact:Lus/zoom/zrcsdk/model/ZRCContact;

    iget-object v3, p0, Lus/zoom/zrcsdk/CallBackUI$27;->val$groupId:Ljava/lang/String;

    iget-object v4, p0, Lus/zoom/zrcsdk/CallBackUI$27;->val$groupName:Ljava/lang/String;

    iget-boolean v5, p0, Lus/zoom/zrcsdk/CallBackUI$27;->val$isZoomRoomsGroup:Z

    invoke-interface {v1, v2, v3, v4, v5}, Lus/zoom/zrcsdk/IPtEventListener;->onImAddContactNotification(Lus/zoom/zrcsdk/model/ZRCContact;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
