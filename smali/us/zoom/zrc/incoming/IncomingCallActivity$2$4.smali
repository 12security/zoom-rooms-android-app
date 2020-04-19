.class Lus/zoom/zrc/incoming/IncomingCallActivity$2$4;
.super Lus/zoom/zrc/base/util/ZRCForegroundTask;
.source "IncomingCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/incoming/IncomingCallActivity$2;->onAppStateChanged()V
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


# direct methods
.method constructor <init>(Lus/zoom/zrc/incoming/IncomingCallActivity$2;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lus/zoom/zrc/incoming/IncomingCallActivity$2$4;->this$0:Lus/zoom/zrc/incoming/IncomingCallActivity$2;

    invoke-direct {p0}, Lus/zoom/zrc/base/util/ZRCForegroundTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lus/zoom/zrc/ZRCActivity;)V
    .locals 0

    .line 159
    check-cast p1, Lus/zoom/zrc/incoming/IncomingCallActivity;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/incoming/IncomingCallActivity$2$4;->run(Lus/zoom/zrc/incoming/IncomingCallActivity;)V

    return-void
.end method

.method public run(Lus/zoom/zrc/incoming/IncomingCallActivity;)V
    .locals 0

    .line 162
    invoke-static {p1}, Lus/zoom/zrc/incoming/IncomingCallActivity;->access$600(Lus/zoom/zrc/incoming/IncomingCallActivity;)V

    return-void
.end method
