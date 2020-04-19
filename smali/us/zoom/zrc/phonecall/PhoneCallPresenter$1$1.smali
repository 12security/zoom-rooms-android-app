.class Lus/zoom/zrc/phonecall/PhoneCallPresenter$1$1;
.super Lus/zoom/androidlib/util/EventAction;
.source "PhoneCallPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phonecall/PhoneCallPresenter$1;->onNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lus/zoom/zrc/phonecall/PhoneCallPresenter$1;

.field final synthetic val$arg:Ljava/lang/Object;

.field final synthetic val$event:Lus/zoom/zrc/base/notification/NotificationEvent;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phonecall/PhoneCallPresenter$1;Ljava/lang/String;Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lus/zoom/zrc/phonecall/PhoneCallPresenter$1$1;->this$1:Lus/zoom/zrc/phonecall/PhoneCallPresenter$1;

    iput-object p3, p0, Lus/zoom/zrc/phonecall/PhoneCallPresenter$1$1;->val$event:Lus/zoom/zrc/base/notification/NotificationEvent;

    iput-object p4, p0, Lus/zoom/zrc/phonecall/PhoneCallPresenter$1$1;->val$arg:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lus/zoom/androidlib/util/EventAction;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 2

    .line 74
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PhoneCallPresenter$1$1;->this$1:Lus/zoom/zrc/phonecall/PhoneCallPresenter$1;

    iget-object p1, p1, Lus/zoom/zrc/phonecall/PhoneCallPresenter$1;->this$0:Lus/zoom/zrc/phonecall/PhoneCallPresenter;

    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallPresenter$1$1;->val$event:Lus/zoom/zrc/base/notification/NotificationEvent;

    iget-object v1, p0, Lus/zoom/zrc/phonecall/PhoneCallPresenter$1$1;->val$arg:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method
