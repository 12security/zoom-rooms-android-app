.class Lus/zoom/zrcsdk/CallBackUI$177;
.super Ljava/lang/Object;
.source "CallBackUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrcsdk/CallBackUI;->onUpdateVirtualAudioDeviceList(Ljava/lang/String;Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrcsdk/CallBackUI;

.field final synthetic val$action:I

.field final synthetic val$deviceInfos:Ljava/util/ArrayList;

.field final synthetic val$virtualDeviceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lus/zoom/zrcsdk/CallBackUI;Ljava/lang/String;Ljava/util/ArrayList;I)V
    .locals 0

    .line 2907
    iput-object p1, p0, Lus/zoom/zrcsdk/CallBackUI$177;->this$0:Lus/zoom/zrcsdk/CallBackUI;

    iput-object p2, p0, Lus/zoom/zrcsdk/CallBackUI$177;->val$virtualDeviceId:Ljava/lang/String;

    iput-object p3, p0, Lus/zoom/zrcsdk/CallBackUI$177;->val$deviceInfos:Ljava/util/ArrayList;

    iput p4, p0, Lus/zoom/zrcsdk/CallBackUI$177;->val$action:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2910
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI$177;->this$0:Lus/zoom/zrcsdk/CallBackUI;

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

    .line 2911
    iget-object v2, p0, Lus/zoom/zrcsdk/CallBackUI$177;->val$virtualDeviceId:Ljava/lang/String;

    iget-object v3, p0, Lus/zoom/zrcsdk/CallBackUI$177;->val$deviceInfos:Ljava/util/ArrayList;

    iget v4, p0, Lus/zoom/zrcsdk/CallBackUI$177;->val$action:I

    invoke-interface {v1, v2, v3, v4}, Lus/zoom/zrcsdk/IMeetingEventListener;->onUpdateVirtualAudioDeviceList(Ljava/lang/String;Ljava/util/ArrayList;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
