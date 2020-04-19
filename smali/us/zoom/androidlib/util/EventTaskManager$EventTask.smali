.class Lus/zoom/androidlib/util/EventTaskManager$EventTask;
.super Ljava/lang/Object;
.source "EventTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/util/EventTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventTask"
.end annotation


# instance fields
.field action:Lus/zoom/androidlib/util/EventAction;

.field id:Ljava/lang/String;

.field final synthetic this$0:Lus/zoom/androidlib/util/EventTaskManager;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/util/EventTaskManager;Ljava/lang/String;Lus/zoom/androidlib/util/EventAction;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lus/zoom/androidlib/util/EventTaskManager$EventTask;->this$0:Lus/zoom/androidlib/util/EventTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p2, p0, Lus/zoom/androidlib/util/EventTaskManager$EventTask;->id:Ljava/lang/String;

    .line 162
    iput-object p3, p0, Lus/zoom/androidlib/util/EventTaskManager$EventTask;->action:Lus/zoom/androidlib/util/EventAction;

    return-void
.end method
