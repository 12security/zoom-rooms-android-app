.class Lus/zoom/zrcsdk/CallBackUI$7;
.super Ljava/lang/Object;
.source "CallBackUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrcsdk/CallBackUI;->onUpdateGenericSettings(Lus/zoom/zrcsdk/model/ZRCGenericSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrcsdk/CallBackUI;

.field final synthetic val$genericSettings:Lus/zoom/zrcsdk/model/ZRCGenericSettings;


# direct methods
.method constructor <init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZRCGenericSettings;)V
    .locals 0

    .line 538
    iput-object p1, p0, Lus/zoom/zrcsdk/CallBackUI$7;->this$0:Lus/zoom/zrcsdk/CallBackUI;

    iput-object p2, p0, Lus/zoom/zrcsdk/CallBackUI$7;->val$genericSettings:Lus/zoom/zrcsdk/model/ZRCGenericSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 542
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI$7;->this$0:Lus/zoom/zrcsdk/CallBackUI;

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

    .line 543
    iget-object v2, p0, Lus/zoom/zrcsdk/CallBackUI$7;->val$genericSettings:Lus/zoom/zrcsdk/model/ZRCGenericSettings;

    invoke-interface {v1, v2}, Lus/zoom/zrcsdk/IPtEventListener;->onUpdateGenericSettings(Lus/zoom/zrcsdk/model/ZRCGenericSettings;)V

    goto :goto_0

    :cond_0
    return-void
.end method