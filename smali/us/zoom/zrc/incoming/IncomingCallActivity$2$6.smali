.class Lus/zoom/zrc/incoming/IncomingCallActivity$2$6;
.super Lus/zoom/zrc/base/util/ZRCForegroundTask;
.source "IncomingCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/incoming/IncomingCallActivity$2;->onReceivedTreatedIncomingCall(Lus/zoom/zrcsdk/model/ZRCIncomingCall;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lus/zoom/zrc/base/util/ZRCForegroundTask<",
        "Lus/zoom/zrc/incoming/IncomingCallActivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/incoming/IncomingCallActivity$2;

.field final synthetic val$accepted:Z

.field final synthetic val$incomingCall:Lus/zoom/zrcsdk/model/ZRCIncomingCall;


# direct methods
.method constructor <init>(Lus/zoom/zrc/incoming/IncomingCallActivity$2;Lus/zoom/zrcsdk/model/ZRCIncomingCall;Z)V
    .locals 0

    .line 183
    iput-object p1, p0, Lus/zoom/zrc/incoming/IncomingCallActivity$2$6;->this$0:Lus/zoom/zrc/incoming/IncomingCallActivity$2;

    iput-object p2, p0, Lus/zoom/zrc/incoming/IncomingCallActivity$2$6;->val$incomingCall:Lus/zoom/zrcsdk/model/ZRCIncomingCall;

    iput-boolean p3, p0, Lus/zoom/zrc/incoming/IncomingCallActivity$2$6;->val$accepted:Z

    invoke-direct {p0}, Lus/zoom/zrc/base/util/ZRCForegroundTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lus/zoom/zrc/ZRCActivity;)V
    .locals 0

    .line 183
    check-cast p1, Lus/zoom/zrc/incoming/IncomingCallActivity;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/incoming/IncomingCallActivity$2$6;->run(Lus/zoom/zrc/incoming/IncomingCallActivity;)V

    return-void
.end method

.method public run(Lus/zoom/zrc/incoming/IncomingCallActivity;)V
    .locals 2

    .line 186
    iget-object v0, p0, Lus/zoom/zrc/incoming/IncomingCallActivity$2$6;->val$incomingCall:Lus/zoom/zrcsdk/model/ZRCIncomingCall;

    iget-boolean v1, p0, Lus/zoom/zrc/incoming/IncomingCallActivity$2$6;->val$accepted:Z

    invoke-static {p1, v0, v1}, Lus/zoom/zrc/incoming/IncomingCallActivity;->access$800(Lus/zoom/zrc/incoming/IncomingCallActivity;Lus/zoom/zrcsdk/model/ZRCIncomingCall;Z)V

    return-void
.end method
