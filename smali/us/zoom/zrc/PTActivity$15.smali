.class final Lus/zoom/zrc/PTActivity$15;
.super Lus/zoom/zrc/base/util/ZRCForegroundTask;
.source "PTActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/PTActivity;->showNeedWaitingForHost(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$needWait:Z

.field final synthetic val$waitingType:I


# direct methods
.method constructor <init>(ZI)V
    .locals 0

    .line 1646
    iput-boolean p1, p0, Lus/zoom/zrc/PTActivity$15;->val$needWait:Z

    iput p2, p0, Lus/zoom/zrc/PTActivity$15;->val$waitingType:I

    invoke-direct {p0}, Lus/zoom/zrc/base/util/ZRCForegroundTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/zrc/PTActivity;)V
    .locals 1

    .line 1649
    iget-boolean v0, p0, Lus/zoom/zrc/PTActivity$15;->val$needWait:Z

    if-eqz v0, :cond_0

    .line 1650
    iget v0, p0, Lus/zoom/zrc/PTActivity$15;->val$waitingType:I

    invoke-static {p1, v0}, Lus/zoom/zrc/PTActivity;->access$1100(Lus/zoom/zrc/PTActivity;I)V

    goto :goto_0

    .line 1652
    :cond_0
    invoke-static {p1}, Lus/zoom/zrc/PTActivity;->access$1200(Lus/zoom/zrc/PTActivity;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic run(Lus/zoom/zrc/ZRCActivity;)V
    .locals 0

    .line 1646
    check-cast p1, Lus/zoom/zrc/PTActivity;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/PTActivity$15;->run(Lus/zoom/zrc/PTActivity;)V

    return-void
.end method
