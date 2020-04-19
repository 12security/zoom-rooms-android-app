.class final Lus/zoom/zrc/PTActivity$18;
.super Lus/zoom/zrc/base/util/ZRCForegroundTask;
.source "PTActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/PTActivity;->showPhoneInPresentation()V
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1706
    invoke-direct {p0}, Lus/zoom/zrc/base/util/ZRCForegroundTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/zrc/PTActivity;)V
    .locals 0

    .line 1709
    invoke-static {p1}, Lus/zoom/zrc/PTActivity;->access$1300(Lus/zoom/zrc/PTActivity;)V

    return-void
.end method

.method public bridge synthetic run(Lus/zoom/zrc/ZRCActivity;)V
    .locals 0

    .line 1706
    check-cast p1, Lus/zoom/zrc/PTActivity;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/PTActivity$18;->run(Lus/zoom/zrc/PTActivity;)V

    return-void
.end method
