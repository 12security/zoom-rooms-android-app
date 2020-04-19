.class Lus/zoom/androidlib/util/EventTaskManager$1;
.super Ljava/lang/Object;
.source "EventTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/util/EventTaskManager;->push(Ljava/lang/String;Lus/zoom/androidlib/util/EventAction;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/util/EventTaskManager;

.field final synthetic val$action:Lus/zoom/androidlib/util/EventAction;

.field final synthetic val$uniqueId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/util/EventTaskManager;Ljava/lang/String;Lus/zoom/androidlib/util/EventAction;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lus/zoom/androidlib/util/EventTaskManager$1;->this$0:Lus/zoom/androidlib/util/EventTaskManager;

    iput-object p2, p0, Lus/zoom/androidlib/util/EventTaskManager$1;->val$uniqueId:Ljava/lang/String;

    iput-object p3, p0, Lus/zoom/androidlib/util/EventTaskManager$1;->val$action:Lus/zoom/androidlib/util/EventAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 91
    iget-object v0, p0, Lus/zoom/androidlib/util/EventTaskManager$1;->this$0:Lus/zoom/androidlib/util/EventTaskManager;

    iget-object v1, p0, Lus/zoom/androidlib/util/EventTaskManager$1;->val$uniqueId:Ljava/lang/String;

    iget-object v2, p0, Lus/zoom/androidlib/util/EventTaskManager$1;->val$action:Lus/zoom/androidlib/util/EventAction;

    invoke-static {v0, v1, v2}, Lus/zoom/androidlib/util/EventTaskManager;->access$000(Lus/zoom/androidlib/util/EventTaskManager;Ljava/lang/String;Lus/zoom/androidlib/util/EventAction;)V

    return-void
.end method
