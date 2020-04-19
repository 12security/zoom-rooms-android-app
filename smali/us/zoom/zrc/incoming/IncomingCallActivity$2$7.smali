.class Lus/zoom/zrc/incoming/IncomingCallActivity$2$7;
.super Lus/zoom/zrc/base/util/ZRCForegroundTask;
.source "IncomingCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/incoming/IncomingCallActivity$2;->onAnswerIncomingCallResult(ZLjava/lang/String;Lus/zoom/zrcsdk/model/ZRCIncomingCall;Z)V
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

.field final synthetic val$requestId:Ljava/lang/String;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lus/zoom/zrc/incoming/IncomingCallActivity$2;ZLjava/lang/String;Lus/zoom/zrcsdk/model/ZRCIncomingCall;Z)V
    .locals 0

    .line 195
    iput-object p1, p0, Lus/zoom/zrc/incoming/IncomingCallActivity$2$7;->this$0:Lus/zoom/zrc/incoming/IncomingCallActivity$2;

    iput-boolean p2, p0, Lus/zoom/zrc/incoming/IncomingCallActivity$2$7;->val$result:Z

    iput-object p3, p0, Lus/zoom/zrc/incoming/IncomingCallActivity$2$7;->val$requestId:Ljava/lang/String;

    iput-object p4, p0, Lus/zoom/zrc/incoming/IncomingCallActivity$2$7;->val$incomingCall:Lus/zoom/zrcsdk/model/ZRCIncomingCall;

    iput-boolean p5, p0, Lus/zoom/zrc/incoming/IncomingCallActivity$2$7;->val$accepted:Z

    invoke-direct {p0}, Lus/zoom/zrc/base/util/ZRCForegroundTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lus/zoom/zrc/ZRCActivity;)V
    .locals 0

    .line 195
    check-cast p1, Lus/zoom/zrc/incoming/IncomingCallActivity;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/incoming/IncomingCallActivity$2$7;->run(Lus/zoom/zrc/incoming/IncomingCallActivity;)V

    return-void
.end method

.method public run(Lus/zoom/zrc/incoming/IncomingCallActivity;)V
    .locals 4

    .line 198
    iget-boolean v0, p0, Lus/zoom/zrc/incoming/IncomingCallActivity$2$7;->val$result:Z

    iget-object v1, p0, Lus/zoom/zrc/incoming/IncomingCallActivity$2$7;->val$requestId:Ljava/lang/String;

    iget-object v2, p0, Lus/zoom/zrc/incoming/IncomingCallActivity$2$7;->val$incomingCall:Lus/zoom/zrcsdk/model/ZRCIncomingCall;

    iget-boolean v3, p0, Lus/zoom/zrc/incoming/IncomingCallActivity$2$7;->val$accepted:Z

    invoke-static {p1, v0, v1, v2, v3}, Lus/zoom/zrc/incoming/IncomingCallActivity;->access$900(Lus/zoom/zrc/incoming/IncomingCallActivity;ZLjava/lang/String;Lus/zoom/zrcsdk/model/ZRCIncomingCall;Z)V

    return-void
.end method
