.class Lus/zoom/zrc/incoming/IncomingCallActivity$2$1;
.super Lus/zoom/zrc/base/util/ZRCForegroundTask;
.source "IncomingCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/incoming/IncomingCallActivity$2;->onJoinSipCallToMeetingResult(I)V
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

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lus/zoom/zrc/incoming/IncomingCallActivity$2;I)V
    .locals 0

    .line 122
    iput-object p1, p0, Lus/zoom/zrc/incoming/IncomingCallActivity$2$1;->this$0:Lus/zoom/zrc/incoming/IncomingCallActivity$2;

    iput p2, p0, Lus/zoom/zrc/incoming/IncomingCallActivity$2$1;->val$result:I

    invoke-direct {p0}, Lus/zoom/zrc/base/util/ZRCForegroundTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lus/zoom/zrc/ZRCActivity;)V
    .locals 0

    .line 122
    check-cast p1, Lus/zoom/zrc/incoming/IncomingCallActivity;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/incoming/IncomingCallActivity$2$1;->run(Lus/zoom/zrc/incoming/IncomingCallActivity;)V

    return-void
.end method

.method public run(Lus/zoom/zrc/incoming/IncomingCallActivity;)V
    .locals 1

    .line 125
    iget v0, p0, Lus/zoom/zrc/incoming/IncomingCallActivity$2$1;->val$result:I

    invoke-static {p1, v0}, Lus/zoom/zrc/incoming/IncomingCallActivity;->access$300(Lus/zoom/zrc/incoming/IncomingCallActivity;I)V

    return-void
.end method
