.class Lus/zoom/zrc/phonecall/PhoneCallLauncher$2;
.super Lus/zoom/zrc/base/util/ZRCForegroundTask;
.source "PhoneCallLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phonecall/PhoneCallLauncher;->resumeSipPhoneCallActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lus/zoom/zrc/base/util/ZRCForegroundTask<",
        "Lus/zoom/zrc/PTActivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phonecall/PhoneCallLauncher;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phonecall/PhoneCallLauncher;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lus/zoom/zrc/phonecall/PhoneCallLauncher$2;->this$0:Lus/zoom/zrc/phonecall/PhoneCallLauncher;

    invoke-direct {p0}, Lus/zoom/zrc/base/util/ZRCForegroundTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/zrc/PTActivity;)V
    .locals 0

    .line 87
    invoke-static {p1}, Lus/zoom/zrc/phonecall/SipPhoneCallActivity;->show(Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic run(Lus/zoom/zrc/ZRCActivity;)V
    .locals 0

    .line 84
    check-cast p1, Lus/zoom/zrc/PTActivity;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/phonecall/PhoneCallLauncher$2;->run(Lus/zoom/zrc/PTActivity;)V

    return-void
.end method
