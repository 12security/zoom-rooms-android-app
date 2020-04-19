.class Lus/zoom/zrc/phonecall/PhoneCallLauncher$1;
.super Lus/zoom/zrc/base/notification/INotification;
.source "PhoneCallLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phonecall/PhoneCallLauncher;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phonecall/PhoneCallLauncher;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phonecall/PhoneCallLauncher;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lus/zoom/zrc/phonecall/PhoneCallLauncher$1;->this$0:Lus/zoom/zrc/phonecall/PhoneCallLauncher;

    invoke-direct {p0}, Lus/zoom/zrc/base/notification/INotification;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 1

    .line 34
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->SIPCallStatusNotification:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_0

    const-string p1, "call"

    .line 35
    invoke-static {p2, p1}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->valueFromMap(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    .line 36
    iget-object p2, p0, Lus/zoom/zrc/phonecall/PhoneCallLauncher$1;->this$0:Lus/zoom/zrc/phonecall/PhoneCallLauncher;

    invoke-static {p2, p1}, Lus/zoom/zrc/phonecall/PhoneCallLauncher;->access$000(Lus/zoom/zrc/phonecall/PhoneCallLauncher;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    :cond_0
    return-void
.end method
