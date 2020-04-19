.class Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$2;
.super Lus/zoom/zrc/base/notification/INotification;
.source "SipPhoneCallPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$2;->this$0:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    invoke-direct {p0}, Lus/zoom/zrc/base/notification/INotification;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$2;->this$0:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->onReceivedNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method
