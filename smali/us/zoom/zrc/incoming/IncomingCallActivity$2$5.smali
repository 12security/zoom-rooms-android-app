.class Lus/zoom/zrc/incoming/IncomingCallActivity$2$5;
.super Lus/zoom/zrc/base/util/ZRCForegroundTask;
.source "IncomingCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/incoming/IncomingCallActivity$2;->onReceivedSipCallTerminated(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;I)V
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

.field final synthetic val$call:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

.field final synthetic val$reason:I


# direct methods
.method constructor <init>(Lus/zoom/zrc/incoming/IncomingCallActivity$2;Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;I)V
    .locals 0

    .line 171
    iput-object p1, p0, Lus/zoom/zrc/incoming/IncomingCallActivity$2$5;->this$0:Lus/zoom/zrc/incoming/IncomingCallActivity$2;

    iput-object p2, p0, Lus/zoom/zrc/incoming/IncomingCallActivity$2$5;->val$call:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    iput p3, p0, Lus/zoom/zrc/incoming/IncomingCallActivity$2$5;->val$reason:I

    invoke-direct {p0}, Lus/zoom/zrc/base/util/ZRCForegroundTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lus/zoom/zrc/ZRCActivity;)V
    .locals 0

    .line 171
    check-cast p1, Lus/zoom/zrc/incoming/IncomingCallActivity;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/incoming/IncomingCallActivity$2$5;->run(Lus/zoom/zrc/incoming/IncomingCallActivity;)V

    return-void
.end method

.method public run(Lus/zoom/zrc/incoming/IncomingCallActivity;)V
    .locals 2

    .line 174
    iget-object v0, p0, Lus/zoom/zrc/incoming/IncomingCallActivity$2$5;->val$call:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    iget v1, p0, Lus/zoom/zrc/incoming/IncomingCallActivity$2$5;->val$reason:I

    invoke-static {p1, v0, v1}, Lus/zoom/zrc/incoming/IncomingCallActivity;->access$700(Lus/zoom/zrc/incoming/IncomingCallActivity;Lus/zoom/zrcsdk/model/ZRCIncomingCall;I)V

    return-void
.end method
