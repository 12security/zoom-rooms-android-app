.class Lus/zoom/androidlib/util/EventLoader$LoadEventsRequest;
.super Ljava/lang/Object;
.source "EventLoader.java"

# interfaces
.implements Lus/zoom/androidlib/util/EventLoader$LoadRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/util/EventLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadEventsRequest"
.end annotation


# instance fields
.field public cancelCallback:Ljava/lang/Runnable;

.field public events:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lus/zoom/androidlib/util/Event;",
            ">;"
        }
    .end annotation
.end field

.field public id:I

.field public numDays:I

.field public startDay:I

.field public successCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(IIILjava/util/ArrayList;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/ArrayList<",
            "Lus/zoom/androidlib/util/Event;",
            ">;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput p1, p0, Lus/zoom/androidlib/util/EventLoader$LoadEventsRequest;->id:I

    .line 139
    iput p2, p0, Lus/zoom/androidlib/util/EventLoader$LoadEventsRequest;->startDay:I

    .line 140
    iput p3, p0, Lus/zoom/androidlib/util/EventLoader$LoadEventsRequest;->numDays:I

    .line 141
    iput-object p4, p0, Lus/zoom/androidlib/util/EventLoader$LoadEventsRequest;->events:Ljava/util/ArrayList;

    .line 142
    iput-object p5, p0, Lus/zoom/androidlib/util/EventLoader$LoadEventsRequest;->successCallback:Ljava/lang/Runnable;

    .line 143
    iput-object p6, p0, Lus/zoom/androidlib/util/EventLoader$LoadEventsRequest;->cancelCallback:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public processRequest(Lus/zoom/androidlib/util/EventLoader;)V
    .locals 6

    .line 147
    invoke-static {p1}, Lus/zoom/androidlib/util/EventLoader;->access$200(Lus/zoom/androidlib/util/EventLoader;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/androidlib/util/EventLoader$LoadEventsRequest;->events:Ljava/util/ArrayList;

    iget v2, p0, Lus/zoom/androidlib/util/EventLoader$LoadEventsRequest;->startDay:I

    iget v3, p0, Lus/zoom/androidlib/util/EventLoader$LoadEventsRequest;->numDays:I

    iget v4, p0, Lus/zoom/androidlib/util/EventLoader$LoadEventsRequest;->id:I

    .line 148
    invoke-static {p1}, Lus/zoom/androidlib/util/EventLoader;->access$300(Lus/zoom/androidlib/util/EventLoader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    .line 147
    invoke-static/range {v0 .. v5}, Lus/zoom/androidlib/util/Event;->loadEvents(Landroid/content/Context;Ljava/util/ArrayList;IIILjava/util/concurrent/atomic/AtomicInteger;)V

    .line 151
    iget v0, p0, Lus/zoom/androidlib/util/EventLoader$LoadEventsRequest;->id:I

    invoke-static {p1}, Lus/zoom/androidlib/util/EventLoader;->access$300(Lus/zoom/androidlib/util/EventLoader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 152
    invoke-static {p1}, Lus/zoom/androidlib/util/EventLoader;->access$000(Lus/zoom/androidlib/util/EventLoader;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/androidlib/util/EventLoader$LoadEventsRequest;->successCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 154
    :cond_0
    invoke-static {p1}, Lus/zoom/androidlib/util/EventLoader;->access$000(Lus/zoom/androidlib/util/EventLoader;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/androidlib/util/EventLoader$LoadEventsRequest;->cancelCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public skipRequest(Lus/zoom/androidlib/util/EventLoader;)V
    .locals 1

    .line 159
    invoke-static {p1}, Lus/zoom/androidlib/util/EventLoader;->access$000(Lus/zoom/androidlib/util/EventLoader;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/androidlib/util/EventLoader$LoadEventsRequest;->cancelCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
