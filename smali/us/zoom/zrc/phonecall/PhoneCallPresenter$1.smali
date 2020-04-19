.class Lus/zoom/zrc/phonecall/PhoneCallPresenter$1;
.super Lus/zoom/zrc/base/notification/INotification;
.source "PhoneCallPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/phonecall/PhoneCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phonecall/PhoneCallPresenter;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phonecall/PhoneCallPresenter;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lus/zoom/zrc/phonecall/PhoneCallPresenter$1;->this$0:Lus/zoom/zrc/phonecall/PhoneCallPresenter;

    invoke-direct {p0}, Lus/zoom/zrc/base/notification/INotification;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 5

    .line 68
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/notification/INotification;->onNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallPresenter$1;->this$0:Lus/zoom/zrc/phonecall/PhoneCallPresenter;

    invoke-virtual {v0}, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->isUIActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v1, p0, Lus/zoom/zrc/phonecall/PhoneCallPresenter$1;->this$0:Lus/zoom/zrc/phonecall/PhoneCallPresenter;

    new-instance v2, Lus/zoom/zrc/phonecall/PhoneCallPresenter$1$1;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhonePresenter_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1, p2}, Lus/zoom/zrc/phonecall/PhoneCallPresenter$1$1;-><init>(Lus/zoom/zrc/phonecall/PhoneCallPresenter$1;Ljava/lang/String;Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->dispatchEventAction(Lus/zoom/androidlib/util/EventAction;)V

    .line 78
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/phonecall/PhoneCallPresenter$1;->this$0:Lus/zoom/zrc/phonecall/PhoneCallPresenter;

    invoke-virtual {v1, p1, p2}, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->onReceivedNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallPresenter$1;->this$0:Lus/zoom/zrc/phonecall/PhoneCallPresenter;

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
