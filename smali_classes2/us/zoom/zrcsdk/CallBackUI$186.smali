.class Lus/zoom/zrcsdk/CallBackUI$186;
.super Ljava/lang/Object;
.source "CallBackUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrcsdk/CallBackUI;->onSetMicrophoneVolumeResult(ILjava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrcsdk/CallBackUI;

.field final synthetic val$deviceId:Ljava/lang/String;

.field final synthetic val$result:I

.field final synthetic val$volume:I


# direct methods
.method constructor <init>(Lus/zoom/zrcsdk/CallBackUI;ILjava/lang/String;I)V
    .locals 0

    .line 3027
    iput-object p1, p0, Lus/zoom/zrcsdk/CallBackUI$186;->this$0:Lus/zoom/zrcsdk/CallBackUI;

    iput p2, p0, Lus/zoom/zrcsdk/CallBackUI$186;->val$result:I

    iput-object p3, p0, Lus/zoom/zrcsdk/CallBackUI$186;->val$deviceId:Ljava/lang/String;

    iput p4, p0, Lus/zoom/zrcsdk/CallBackUI$186;->val$volume:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 3030
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI$186;->this$0:Lus/zoom/zrcsdk/CallBackUI;

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

    .line 3031
    iget v2, p0, Lus/zoom/zrcsdk/CallBackUI$186;->val$result:I

    iget-object v3, p0, Lus/zoom/zrcsdk/CallBackUI$186;->val$deviceId:Ljava/lang/String;

    iget v4, p0, Lus/zoom/zrcsdk/CallBackUI$186;->val$volume:I

    invoke-interface {v1, v2, v3, v4}, Lus/zoom/zrcsdk/IPtEventListener;->onSetMicrophoneVolumeResult(ILjava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method