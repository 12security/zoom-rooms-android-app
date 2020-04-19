.class Lus/zoom/zrc/base/notification/NotificationCenter$NotificationObserver;
.super Ljava/lang/Object;
.source "NotificationCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/base/notification/NotificationCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationObserver"
.end annotation


# instance fields
.field notifications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lus/zoom/zrc/base/notification/NotificationEvent;",
            "Lus/zoom/zrc/base/notification/INotification;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lus/zoom/zrc/base/notification/NotificationCenter;

.field token:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lus/zoom/zrc/base/notification/NotificationCenter;Ljava/lang/Object;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lus/zoom/zrc/base/notification/NotificationCenter$NotificationObserver;->this$0:Lus/zoom/zrc/base/notification/NotificationCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p2, p0, Lus/zoom/zrc/base/notification/NotificationCenter$NotificationObserver;->token:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method addNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Lus/zoom/zrc/base/notification/INotification;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lus/zoom/zrc/base/notification/NotificationCenter$NotificationObserver;->notifications:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/base/notification/NotificationCenter$NotificationObserver;->notifications:Ljava/util/HashMap;

    .line 105
    :cond_0
    invoke-interface {p1}, Lus/zoom/zrc/base/notification/NotificationEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lus/zoom/zrc/base/notification/INotification;->setName(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lus/zoom/zrc/base/notification/NotificationCenter$NotificationObserver;->notifications:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method getNotification(Lus/zoom/zrc/base/notification/NotificationEvent;)Lus/zoom/zrc/base/notification/INotification;
    .locals 1

    .line 118
    iget-object v0, p0, Lus/zoom/zrc/base/notification/NotificationCenter$NotificationObserver;->notifications:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/base/notification/INotification;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method isNotificationEmpty()Z
    .locals 1

    .line 114
    iget-object v0, p0, Lus/zoom/zrc/base/notification/NotificationCenter$NotificationObserver;->notifications:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method removeNotification(Lus/zoom/zrc/base/notification/NotificationEvent;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lus/zoom/zrc/base/notification/NotificationCenter$NotificationObserver;->notifications:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
